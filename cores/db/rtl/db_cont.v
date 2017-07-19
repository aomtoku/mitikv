`timescale 1ps/1ps

module db_cont #(
`ifdef DRAM_SUPPORT
	parameter CK_WIDTH              = 1,
	parameter nCS_PER_RANK          = 1,
	parameter CKE_WIDTH             = 1,
	parameter DM_WIDTH              = 8,
	parameter ODT_WIDTH             = 1,
	parameter BANK_WIDTH            = 3,
	parameter COL_WIDTH             = 10,
	parameter CS_WIDTH              = 1,
	parameter DQ_WIDTH              = 64,
	parameter DQS_WIDTH             = 8,
	parameter DQS_CNT_WIDTH         = 3,
	parameter DRAM_WIDTH            = 8,
	parameter ECC                   = "OFF",
	parameter ECC_TEST              = "OFF",
	parameter nBANK_MACHS           = 2,
	parameter RANKS                 = 1,
	parameter ROW_WIDTH             = 16,
	parameter ADDR_WIDTH            = 30,
	
	parameter BURST_MODE            = "8",
	                                  // DDR3 SDRAM:
	                                  // Burst Length (Mode Register 0).
	                                  // # = "8", "4", "OTF".
	parameter CLKIN_PERIOD          = 5000,
	parameter CLKFBOUT_MULT         = 8,
	parameter DIVCLK_DIVIDE         = 1,
	parameter CLKOUT0_PHASE         = 337.5,
	parameter CLKOUT0_DIVIDE        = 2,
	parameter CLKOUT1_DIVIDE        = 2,
	parameter CLKOUT2_DIVIDE        = 32,
	parameter CLKOUT3_DIVIDE        = 8,
	parameter MMCM_VCO              = 800,
	parameter MMCM_MULT_F           = 4,
	parameter MMCM_DIVCLK_DIVIDE    = 1,
	
	parameter SIMULATION            = "FALSE",
	parameter TCQ                   = 100,
	parameter DRAM_TYPE             = "DDR3",
	parameter nCK_PER_CLK           = 4,
	parameter DEBUG_PORT            = "OFF",
	
	parameter RST_ACT_LOW           = 1,
`endif /* DRAM_SUPPORT */
	parameter HASH_SIZE   = 32,
	parameter KEY_SIZE    = 96, // 80bit + 32bit
	parameter VAL_SIZE    = 32,
	parameter FLAG_SIZE   =  4,
	parameter RAM_ADDR    = 10,
	parameter RAM_DWIDTH  = 32,
	parameter RAM_SIZE    = 1024
)(
	/* System Interface */
	input  wire  clk156,
	input  wire  [7:0] rst,
	input  wire        sys_rst,
`ifdef DRAM_SUPPORT
	/* DDRS SDRAM Infra */
	input  wire    sys_clk_p,
	input  wire    sys_clk_n,

	inout  [63:0]  ddr3_dq,
	inout  [ 7:0]  ddr3_dqs_n,
	inout  [ 7:0]  ddr3_dqs_p,
	output [15:0]  ddr3_addr,
	output [ 2:0]  ddr3_ba,
	output         ddr3_ras_n,
	output         ddr3_cas_n,
	output         ddr3_we_n,
	output         ddr3_reset_n,
	output [ 0:0]  ddr3_ck_p,
	output [ 0:0]  ddr3_ck_n,
	output [ 0:0]  ddr3_cke,
	output [ 0:0]  ddr3_cs_n,
	output [ 7:0]  ddr3_dm,
	output [ 0:0]  ddr3_odt,
`endif /* DRAM_SUPPORT */
	/* Network Interface side */
	input  wire [4:0]            in_valid     ,
	input  wire [3:0]            in_op        ,
	input  wire [HASH_SIZE-1:0]  in_hash      ,
	input  wire [KEY_SIZE-1:0]   in_key       ,
	input  wire [VAL_SIZE-1:0]   in_value     , 

	output wire                  out_valid    ,
	output wire [3:0]            out_flag     ,
	output wire [VAL_SIZE-1:0]   out_value     
);

// ------------------------------------------------------
//   Reset Vector 
// ------------------------------------------------------
(* keep = "true" *) wire [15:0] eth_rst;
(* dont_touch = "true" *) reg [15:0] rst_reg = 0;
assign eth_rst = rst_reg;
always @ (posedge clk156) begin
	rst_reg[7:0]  <= rst;
	rst_reg[15:8] <= rst;
end

// ------------------------------------------------------
//   Functions
// ------------------------------------------------------
function integer clogb2 (input integer size);
begin
	size = size - 1;
	for (clogb2=1; size>1; clogb2=clogb2+1)
		size = size >> 1;
end
endfunction // clogb2

function integer STR_TO_INT;
input [7:0] in;
begin
	if (in == "8")
		STR_TO_INT = 8;
	else if (in == "4")
		STR_TO_INT = 4; else
		STR_TO_INT = 0;
end
endfunction

// ------------------------------------------------------
//   Parameters
// ------------------------------------------------------
localparam SET_REQ = 1'b1,
           GET_REQ = 1'b0;

localparam DATA_WIDTH     = 64;
localparam RANK_WIDTH     = clogb2(RANKS);
localparam PAYLOAD_WIDTH  = (ECC_TEST == "OFF") ? DATA_WIDTH : DQ_WIDTH;
localparam BURST_LENGTH   = STR_TO_INT(BURST_MODE);
localparam APP_DATA_WIDTH = 2 * nCK_PER_CLK * PAYLOAD_WIDTH;
localparam APP_MASK_WIDTH = APP_DATA_WIDTH / 8;

localparam MIG_CMD_READ  = 3'b001;
localparam MIG_CMD_WRITE = 3'b000;

localparam ARB_RD        = 2'b01;
localparam ARB_WR        = 2'b10;

// ------------------------------------------------------
//   Timecounter for value stored in hash-table 
// ------------------------------------------------------
//wire div_clk;
//reg [23:0] div_cnt;
//
//always @ (posedge clk156)
//	if (rst[0])
//		div_cnt <= 0;
//	else
//		div_cnt <= div_cnt + 1;
//
//reg [15:0] sys_cnt = 0;
//always @ (posedge div_clk)
//	sys_cnt <= sys_cnt + 1;
//
//`ifndef SIMULATION_DEBUG
//BUFG u_bufg_sys_clk (.I(div_cnt[23]), .O(div_clk));
//`else
//assign div_clk = div_cnt[3];
//`endif  /* SIMULATION_DEBUG */

// ------------------------------------------------------
//   User Interface for MIG 
// ------------------------------------------------------
wire                                  ui_mig_clk;
wire                                  ui_mig_rst;
wire                                  init_calib_complete;
wire [(2*nCK_PER_CLK)-1:0]            app_ecc_multiple_err;
wire [ADDR_WIDTH-1:0]                 app_addr;
wire [2:0]                            app_cmd;
wire                                  app_en;
wire                                  app_rdy;
wire [APP_DATA_WIDTH-1:0]             app_rd_data;
wire                                  app_rd_data_end;
wire                                  app_rd_data_valid;
wire [APP_DATA_WIDTH-1:0]             app_wdf_data;
wire                                  app_wdf_end;
wire [APP_MASK_WIDTH-1:0]             app_wdf_mask;
wire                                  app_wdf_rdy;
wire                                  app_sr_active;
wire                                  app_ref_ack;
wire                                  app_zq_ack;
wire                                  app_wdf_wren;

// ------------------------------------------------------
// DRAM fifo (wr)
//     512(wr_data) + 64(wr_strb) + 30(addr) + 1(cmd) + 1(vadid)
// ------------------------------------------------------
wire [512+64+30+1+1-1:0] din_wrfifo, dout_wrfifo;
wire                     wr_en_wrfifo, rd_en_wrfifo;
wire                     empty_wrfifo, full_wrfifo;
//`define NOT_XILINX_FIFO
`ifdef NOT_XILINX_FIFO
asfifo #(
	.DATA_WIDTH     (608),
	.ADDRESS_WIDTH  (6)
) u_wrfifo (
	.dout           ( dout_wrfifo  ), 
	.empty          ( empty_wrfifo ),
	.rd_en          ( rd_en_wrfifo ),
	.rd_clk         ( ui_mig_clk   ),        
	
	.din            ( din_wrfifo   ),  
	.full           ( full_wrfifo  ),
	.wr_en          ( wr_en_wrfifo ),
	.wr_clk         ( clk156       ),
	
	.rst            ( eth_rst[1] | ui_mig_rst ) 
);
`else
asfifo_608_64 u_wrfifo (
	.rst      ( eth_rst[1] | ui_mig_rst ),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( ui_mig_clk   ), 
	.din      ( din_wrfifo   ), 
	.wr_en    ( wr_en_wrfifo ),
	.rd_en    ( rd_en_wrfifo ),
	.dout     ( dout_wrfifo  ), 
	.full     ( full_wrfifo  ), 
	.empty    ( empty_wrfifo ) 
);
`endif
// ------------------------------------------------------
// DRAM fifo (update)
//     512(wr_data) + 64(wr_strb) + 30(addr) + 1(cmd) + 1(vadid)
// ------------------------------------------------------
wire [512+64+30+1+1-1:0] din_upfifo, dout_upfifo;
wire                     wr_en_upfifo, rd_en_upfifo;
wire                     empty_upfifo, full_upfifo;

`ifdef NOT_XILINX_FIFO
asfifo #(
	.DATA_WIDTH     (608),
	.ADDRESS_WIDTH  (6)
) u_upfifo (
	.dout           ( dout_upfifo  ), 
	.empty          ( empty_upfifo ),
	.rd_en          ( rd_en_upfifo ),
	.rd_clk         ( clk156       ),        
	
	.din            ( din_upfifo   ),  
	.full           ( full_upfifo  ),
	.wr_en          ( wr_en_upfifo ),
	.wr_clk         ( ui_mig_clk   ),
	
	.rst            ( eth_rst[2] | ui_mig_rst ) 
);
`else
asfifo_608_64 u_upfifo (
	.rst      ( eth_rst[2] | ui_mig_rst ),  
	.wr_clk   ( ui_mig_clk   ),  
	.rd_clk   ( clk156       ), 
	.din      ( din_upfifo   ), 
	.wr_en    ( wr_en_upfifo ),
	.rd_en    ( rd_en_upfifo ),
	.dout     ( dout_upfifo  ), 
	.full     ( full_upfifo  ), 
	.empty    ( empty_upfifo ) 
);
`endif /* NOT_XILINX_FIFO */

// ------------------------------------------------------
// DRAM fifo (rd)
//     configuration: 32width x 64depth
//     width bitmap : 30(addr) + 1(cmd) + 1(vadid)
// ------------------------------------------------------
wire [30+1+1-1:0] din_rdfifo, dout_rdfifo;
wire              wr_en_rdfifo, rd_en_rdfifo;
wire              empty_rdfifo, full_rdfifo;

`ifdef NOT_XILINX_FIFO
asfifo #(
	.DATA_WIDTH     (32),
	.ADDRESS_WIDTH  (6)
) u_rd_fifo (
	.dout           ( dout_rdfifo  ), 
	.empty          ( empty_rdfifo ),
	.rd_en          ( rd_en_rdfifo ),
	.rd_clk         ( ui_mig_clk   ),        
	
	.din            ( din_rdfifo   ),  
	.full           ( full_rdfifo  ),
	.wr_en          ( wr_en_rdfifo ),
	.wr_clk         ( clk156       ),
	
	.rst            ( eth_rst[3] | ui_mig_rst ) 
);
`else
asfifo_32_64 u_rd_fifo (
	.rst      ( eth_rst[3] | ui_mig_rst),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( ui_mig_clk   ), 
	.din      ( din_rdfifo  ), 
	.wr_en    ( wr_en_rdfifo ),
	.rd_en    ( rd_en_rdfifo ),
	.dout     ( dout_rdfifo  ), 
	.full     ( full_rdfifo  ), 
	.empty    ( empty_rdfifo ) 
);
`endif /* NOT_XILINX_FIFO */

// ------------------------------------------------------
// DRAM fifo (save)
//     configuration: 160 bit width x 64 depth
//     width bitmap : 32(value) + 96(key) + 30(addr) + 1(rsrv) + 1(vadid)
// ------------------------------------------------------
wire [32+96+30+1+1-1:0] din_savefifo, dout_savefifo;
wire wr_en_savefifo, rd_en_savefifo;
wire empty_savefifo, full_savefifo;

`ifdef NOT_XILINX_FIFO
asfifo #(
	.DATA_WIDTH     (160),
	.ADDRESS_WIDTH  (6)
) u_save_fifo (
	.dout           ( dout_savefifo  ), 
	.empty          ( empty_savefifo ),
	.rd_en          ( rd_en_savefifo ),
	.rd_clk         ( ui_mig_clk     ),        
	
	.din            ( din_savefifo   ),  
	.full           ( full_savefifo  ),
	.wr_en          ( wr_en_savefifo ),
	.wr_clk         ( clk156         ),
	
	.rst            ( eth_rst[4] | ui_mig_rst ) 
);
`else
asfifo_160_64 u_save_fifo (
	.rst      ( eth_rst[4] | ui_mig_rst),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( ui_mig_clk     ), 
	.din      ( din_savefifo   ), 
	.wr_en    ( wr_en_savefifo ),
	.rd_en    ( rd_en_savefifo ),
	.dout     ( dout_savefifo  ), 
	.full     ( full_savefifo  ), 
	.empty    ( empty_savefifo ) 
);
`endif /* NOT_XILINX_FIFO */


/*
 *  Arbiter 
 *     WR-FIFO or RD-FIFO
 */

reg  [1:0] arb_reg;
reg  [1:0] arb_switch;
wire [2:0]   wr_fifo_cmd  = MIG_CMD_WRITE ;
wire [2:0]   rd_fifo_cmd  = MIG_CMD_READ  ;
// Todo : address will be 6'b00000 as lower bits.
//        to lookup 4 entries.
wire [29:0]  wr_fifo_addr = {dout_wrfifo[31:8], 6'h00};
wire [29:0]  rd_fifo_addr = {dout_rdfifo[31:8], 6'h00};

wire [63:0]  wrfifo_strb  = dout_wrfifo[95:32];
wire [511:0] wrfifo_data  = dout_wrfifo[607:96];
wire         fifo_valid   = (~empty_rdfifo && arb_switch == ARB_RD) 
                              || (~empty_wrfifo && arb_switch == ARB_WR);

// ----------------------------------------------------
//   Arbitor between RD-FIFO and WR-FIFO on issueing CMD
// ----------------------------------------------------

always @ (posedge ui_mig_clk) 
	if (ui_mig_rst)
		arb_reg <= ARB_RD;
	else begin
		if (~empty_rdfifo & ~empty_wrfifo && arb_reg == ARB_RD)
			arb_reg <= ARB_WR;
		else if (~empty_rdfifo & ~empty_wrfifo && arb_reg == ARB_WR)  
			arb_reg <= ARB_RD;
	end

always @ (*) begin
	arb_switch = 0;

	if (app_rdy && app_wdf_rdy && ~empty_rdfifo && ~empty_wrfifo)
		arb_switch = arb_reg;
	else if (app_rdy && app_wdf_rdy && ~empty_wrfifo)
		arb_switch = ARB_WR;
	else if (app_rdy && ~empty_rdfifo)
		arb_switch = ARB_RD;

end

// ---------------------------------------------------------------
//  Write Data using RANDOM(PRBS-based) as Replacement Policy
// ---------------------------------------------------------------
reg [1:0] rand_reg0, rand_reg1;
wire [1:0] rand0, rand1;
wire [511:0] rand_wrdata = {384'h0, in_key, in_value};
//wire [511:0] rand_wrdata = 
//           (rand_reg0 == 0) ? {384'h0, in_key, in_value}         :
//           (rand_reg0 == 1) ? {256'h0, in_key, in_value, 128'h0} :
//           (rand_reg0 == 2) ? {128'h0, in_key, in_value, 256'h0} :
//           (rand_reg0 == 3) ? {in_key, in_value, 384'h0}         : 0;
//wire [63:0] rand_wrstrb = (rand_reg0 == 0) ? 64'hffff_ffff_ffff_0000 :
//                          (rand_reg0 == 1) ? 64'hffff_ffff_0000_ffff :
//                          (rand_reg0 == 2) ? 64'hffff_0000_ffff_ffff :
//                          (rand_reg0 == 3) ? 64'a0000_ffff_ffff_ffff : 0;
//wire [63:0] rand_wrstrb = (rand_reg0 == 0) ? 64'h0000_0000_0000_ffff :
//                          (rand_reg0 == 1) ? 64'h0000_0000_ffff_0000 :
//                          (rand_reg0 == 2) ? 64'h0000_ffff_0000_0000 :
//                          (rand_reg0 == 3) ? 64'hffff_0000_0000_0000 : 0;
wire [63:0] rand_wrstrb = 64'hffff_ffff_ffff_0000 ;

//reg [3:0] rand_reg;
//
//always @ (posedge clk156)
//	if (rst[5]) begin
//		rand_reg <= 0;
//	end else begin
//		rand_reg <= rand_reg + 1;
//	end
//assign rand = rand_reg ;

always @ (posedge clk156)
	rand_reg0 <= rand0;

always @ (posedge ui_mig_clk)
	rand_reg1 <= rand1;

prbs #(
	.WIDTH (2)
) u_prbs0 (
	.do       (rand0),
	.clk      (clk156),
	.advance  (1'b1),
	.rstn     (!eth_rst[5]) 
);


prbs #(
	.WIDTH (2)
) u_prbs1 (
	.do       (rand1),
	.clk      (ui_mig_clk),
	.advance  (1'b1),
	.rstn     (!ui_mig_rst) 
);
// ----------------------------------------------------
//   MIG User Interface assignment
// ---------------------------------------------------
assign app_addr     = (arb_switch == ARB_RD) ? rd_fifo_addr : wr_fifo_addr;
assign app_cmd      = (arb_switch == ARB_RD) ? rd_fifo_cmd  : wr_fifo_cmd;
assign app_en       = fifo_valid;
assign app_wdf_data = wrfifo_data;
assign app_wdf_wren = arb_switch == ARB_WR;
assign app_wdf_end  = 1;
//assign app_wdf_mask = 0; // TODO
assign app_wdf_mask = wrfifo_strb; // TODO

// To support 1024bit data width of MIG,
// you need to setup 4-7 regiseters.

// ----------------------------------------------------
//   Lookup Logic
// ---------------------------------------------------
(* dont_touch = "true" *) reg [511:0] rd_data_buf0, rd_data_buf1, rd_data_buf2;
(* dont_touch = "true" *) reg [ 95:0] key_reg0, key_reg1, key_reg2, key_reg3;
(* dont_touch = "true" *) reg [29:0] hash_reg;
//(* dont_touch = "true" *) reg  [ 95:0] key_reg4, key_reg5, key_reg6, key_reg7;
(* keep = "true" *) wire [127:0] slot0, slot1, slot2, slot3;
//(* keep = "true" *) wire [127:0] slot4, slot5, slot6, slot7;
wire [511:0] wr_data_pre;
(* dont_touch = "true" *) reg          stage_valid_0;
(* dont_touch = "true" *) reg stage_valid_1, stage_valid_2;
(* dont_touch = "true" *) reg  [159:0] stage_data_0, stage_data_1, stage_data_2;

(* keep = "true" *) wire key_lookup0 = slot0[127:32] == key_reg0;
(* keep = "true" *) wire key_lookup1 = slot1[127:32] == key_reg1;
(* keep = "true" *) wire key_lookup2 = slot2[127:32] == key_reg2;
(* keep = "true" *) wire key_lookup3 = slot3[127:32] == key_reg3;
(* dont_touch = "true" *) reg key_lookup_reg0, key_lookup_reg1, 
                              key_lookup_reg2, key_lookup_reg3;

(* dont_touch = "true" *) reg table_hit_reg0, table_hit_reg1;
wire table_hit = stage_valid_0 & (key_lookup0 | key_lookup1 | key_lookup2 | key_lookup3);
wire update_en   = stage_valid_0 & ~table_hit;
// Todo : value comparison logic
// 
//wire value_cmp0  = slot;

wire insert0 = (table_hit_reg0) ? key_lookup_reg0 : 
                             (rand_reg1 == 2'b00) ? 1'b1 : 1'b0;
wire insert1 = (table_hit_reg0) ? key_lookup_reg1 : 
                             (rand_reg1 == 2'b01) ? 1'b1 : 1'b0;
wire insert2 = (table_hit_reg0) ? key_lookup_reg2 : 
                             (rand_reg1 == 2'b10) ? 1'b1 : 1'b0;
wire insert3 = (table_hit_reg0) ? key_lookup_reg3 : 
                             (rand_reg1 == 2'b11) ? 1'b1 : 1'b0;

(* dont_touch = "true" *) reg  [63:0] update_strb_reg;
(* keep = "true" *) wire [63:0] update_strb = 
                          (key_lookup_reg0) ? 64'hffff_ffff_ffff_0000 :
                          (key_lookup_reg1) ? 64'hffff_ffff_0000_ffff :
                          (key_lookup_reg2) ? 64'hffff_0000_ffff_ffff :
                          (key_lookup_reg3) ? 64'h0000_ffff_ffff_ffff : 64'hffff_ffff_ffff_ffff;


assign wr_data_pre = 
             (insert0) ? {rd_data_buf1[511:128], stage_data_1[159:32]} :
             (insert1) ? {rd_data_buf1[511:256], stage_data_1[159:32], 
                          rd_data_buf1[127:0]} : 
             (insert2) ? {rd_data_buf1[511:384], stage_data_1[159:32], 
                          rd_data_buf1[255:0]} : 
             (insert3) ? {stage_data_1[159:32], rd_data_buf1[383:0]} : 
                          512'd0;

assign slot0 = rd_data_buf0[127:0];
assign slot1 = rd_data_buf0[255:128];
assign slot2 = rd_data_buf0[383:256];
assign slot3 = rd_data_buf0[511:384];

always @ (posedge ui_mig_clk)
	if (ui_mig_rst) begin
		hash_reg <= 0; 
		rd_data_buf0 <= 0;
		rd_data_buf1 <= 0;
		rd_data_buf2 <= 0;
		key_reg0    <= 0;
		key_reg1    <= 0;
		key_reg2    <= 0;
		key_reg3    <= 0;
		//key_reg4    <= 0;
		//key_reg5    <= 0;
		//key_reg6    <= 0;
		//key_reg7    <= 0;
		key_lookup_reg0 <= 0;
		key_lookup_reg1 <= 0;
		key_lookup_reg2 <= 0;
		key_lookup_reg3 <= 0;
		update_strb_reg <= 0;
		stage_valid_0 <= 1'b0;
		stage_valid_1 <= 1'b0;
	end else begin
		if (init_calib_complete) begin
			if (app_rd_data_valid) begin
				// Todo & Consideration 
				//   - 8B alignment ? (need to make confimation.)
				//   - in_key lower 16bits as 0 at nfsume/rtl/eth_encap. 
				//          8B alignment is needed.
				//   - in_key lower 16bits as src_udp_port at nfsume/rtl/eth_encap. 
				//          8B alignment is not needed.
				rd_data_buf0 <= app_rd_data;
                     //{app_rd_data[63:0],    app_rd_data[127:64], 
                     // app_rd_data[191:128], app_rd_data[255:192], 
                     // app_rd_data[319:256], app_rd_data[383:320], 
                     // app_rd_data[447:384], app_rd_data[511:448]};
				key_reg0    <= dout_savefifo[127:32];
				key_reg1    <= dout_savefifo[127:32];
				key_reg2    <= dout_savefifo[127:32];
				key_reg3    <= dout_savefifo[127:32];
				hash_reg    <= dout_savefifo[31:2];
				stage_data_0 <= dout_savefifo;
				stage_valid_0 <= 1'b1;
			end else begin
				stage_valid_0 <= 1'b0;
			end
			rd_data_buf1    <= rd_data_buf0;
			rd_data_buf2    <= wr_data_pre;
			stage_data_1    <= stage_data_0;
			stage_data_2    <= stage_data_1;
			stage_valid_1   <= stage_valid_0;
			stage_valid_2   <= stage_valid_1;
			update_strb_reg <= update_strb;
			table_hit_reg0  <= table_hit;
			table_hit_reg1  <= table_hit_reg0;
			key_lookup_reg0 <= key_lookup0;
			key_lookup_reg1 <= key_lookup1;
			key_lookup_reg2 <= key_lookup2;
			key_lookup_reg3 <= key_lookup3;
		end
	end

// ----------------------------------------------------
//   FIFO assignment
// ----------------------------------------------------
assign rd_en_wrfifo   = arb_switch == ARB_WR && app_rdy == 1'b1;
assign rd_en_rdfifo   = arb_switch == ARB_RD && app_rdy == 1'b1;
assign rd_en_savefifo = app_rd_data_valid;
assign rd_en_upfifo   = ~empty_upfifo & ~in_valid[0];

assign wr_en_wrfifo   = (in_valid[1] && in_op[0] == SET_REQ) || rd_en_upfifo;
assign wr_en_rdfifo   = in_valid[2] && in_op[0] == GET_REQ;
assign wr_en_savefifo = in_valid[3] && in_op[0] == GET_REQ;
assign wr_en_upfifo   = 0;//stage_valid_2 & table_hit_reg1; // Todo

assign din_rdfifo     = {in_hash[29:0], 2'b11};
assign din_wrfifo     =  (in_valid[4] && in_op[0] == SET_REQ) ?  
                   {rand_wrdata, rand_wrstrb, in_hash[29:0], 2'b01} : 
                   dout_upfifo[607:96];
assign din_savefifo   = {in_value, in_key[95:0], in_hash[29:0], 2'b01};
assign din_upfifo = {rd_data_buf2, update_strb_reg, stage_data_2[31:2], 2'b11};

// ----------------------------------------------------
//   To MAC layer 
// ----------------------------------------------------

// Todo : Replacing FIFO into simple logic
// 
// @ui_mig_clk     ----> clk156
//   stage_valid_2
//   table_hit_reg1
wire [31:0] flag_out_mig = (table_hit_reg1) ? 32'd1 : 32'd0;
wire [31:0] dout_flag;
wire        rd_en_flag;
wire        empty_flag, full_flag;

assign rd_en_flag = !empty_flag;
`ifdef NOT_XILINX_FIFO
asfifo #(
	.DATA_WIDTH     (32),
	.ADDRESS_WIDTH  (6)
) u_flag_fifo (
	.dout           ( dout_flag  ), 
	.empty          ( empty_flag ),
	.rd_en          ( rd_en_flag ),
	.rd_clk         ( clk156     ),        
	
	.din            ( flag_out_mig   ),  
	.full           ( full_flag      ),
	.wr_en          ( stage_valid_2  ),
	.wr_clk         ( ui_mig_clk     ),
	
	.rst            ( eth_rst[3] | ui_mig_rst ) 
);
`else
asfifo_32_64 u_flag_fifo (
	.rst      ( eth_rst[3] | ui_mig_rst),  
	.wr_clk   ( ui_mig_clk   ),  
	.rd_clk   ( clk156       ), 
	.din      ( flag_out_mig ), 
	.wr_en    ( stage_valid_2 ),
	.rd_en    ( rd_en_flag ),
	.dout     ( dout_flag  ), 
	.full     ( full_flag  ), 
	.empty    ( empty_flag ) 
);
`endif /* NOT_XILINX_FIFO */
assign out_valid = rd_en_flag;
assign out_flag  = dout_flag[3:0];

sume_ddr_mig u_sume_ddr_mig (
       .ddr3_addr                      (ddr3_addr),
       .ddr3_ba                        (ddr3_ba),
       .ddr3_cas_n                     (ddr3_cas_n),
       .ddr3_ck_n                      (ddr3_ck_n),
       .ddr3_ck_p                      (ddr3_ck_p),
       .ddr3_cke                       (ddr3_cke),
       .ddr3_ras_n                     (ddr3_ras_n),
       .ddr3_we_n                      (ddr3_we_n),
       .ddr3_dq                        (ddr3_dq),
       .ddr3_dqs_n                     (ddr3_dqs_n),
       .ddr3_dqs_p                     (ddr3_dqs_p),
       .ddr3_reset_n                   (ddr3_reset_n),
       .ddr3_cs_n                      (ddr3_cs_n),
       .ddr3_dm                        (ddr3_dm),
       .ddr3_odt                       (ddr3_odt),

       .init_calib_complete            (init_calib_complete),
       .app_addr                       (app_addr),
       .app_cmd                        (app_cmd),
       .app_en                         (app_en),
       .app_wdf_data                   (app_wdf_data),
       .app_wdf_end                    (app_wdf_end),
       .app_wdf_wren                   (app_wdf_wren),
       .app_rd_data                    (app_rd_data),
       .app_rd_data_end                (app_rd_data_end),
       .app_rd_data_valid              (app_rd_data_valid),
       .app_rdy                        (app_rdy),
       .app_wdf_rdy                    (app_wdf_rdy),
       .app_sr_req                     (1'b0),
       .app_ref_req                    (1'b0),
       .app_zq_req                     (1'b0),
       .app_sr_active                  (app_sr_active),
       .app_ref_ack                    (app_ref_ack),
       .app_zq_ack                     (app_zq_ack),
       .app_wdf_mask                   (app_wdf_mask),
      
       .ui_clk                         (ui_mig_clk),
       .ui_clk_sync_rst                (ui_mig_rst),
       
       .sys_clk_p                      (sys_clk_p),
       .sys_clk_n                      (sys_clk_n),
       //.sys_rst                        (!eth_rst[6])
       .sys_rst                        (!sys_rst)
);

`ifndef SIMULATION_DEBUG
reg [29:0] ila_app_addr;
reg [2:0] ila_app_cmd;
reg ila_app_en;
reg [275:0] ila_app_wdf_data;
reg ila_app_wdf_end;
reg ila_app_wdf_wren;
reg [63:0] ila_app_wdf_mask;
reg ila_init_calib_complete;
reg ila_full_flag;
reg ila_full_savefifo;
reg ila_full_rdfifo;
reg ila_full_wrfifo;

always @ (posedge ui_mig_clk) begin
	ila_app_addr          		<= app_addr;
	ila_app_cmd            		<= app_cmd;
	ila_app_en             		<= app_en;
	ila_app_wdf_data			<= app_wdf_data[275:0];
	ila_app_wdf_end        		<= app_wdf_end;   
	ila_app_wdf_wren       		<= app_wdf_wren;  
	ila_app_wdf_mask            <= app_wdf_mask;
	ila_init_calib_complete		<= init_calib_complete;
	ila_full_flag          		<= full_flag; 
	ila_full_savefifo      		<= full_savefifo;
	ila_full_rdfifo       		<= full_rdfifo;
	ila_full_wrfifo        		<= full_wrfifo;
end

ila_1 inst_ila (
	.clk     (ui_mig_clk), // input wire clk
	/* verilator lint_off WIDTH */
	.probe0  ({
		ila_app_addr,
		ila_app_cmd,
		ila_app_en,
		ila_app_wdf_data[255:0],
		ila_app_wdf_end,   
		ila_app_wdf_wren,  
		ila_app_wdf_mask,
		ila_init_calib_complete,
		ila_full_flag, 
		ila_full_savefifo,
		ila_full_rdfifo,
		ila_full_wrfifo
	})/* verilator lint_on WIDTH */ 
);

reg [95:0] ila_slot0, ila_slot1, ila_slot2, ila_slot3; 
reg ila_key_lookup0, ila_key_lookup1, ila_key_lookup2, ila_key_lookup3;
reg [95:0] ila_key_reg0;
reg [23:0] ila_hash;
reg [5:0] ila_ref;
always @ (posedge ui_mig_clk) begin
	ila_ref <= hash_reg[5:0];
	ila_hash <= hash_reg[29:6];
	ila_slot0 <= slot0[127:32];
	ila_slot1 <= slot1[127:32];
	ila_slot2 <= slot2[127:32];
	ila_slot3 <= slot3[127:32];
	ila_key_lookup0 <= key_lookup0;
	ila_key_lookup1 <= key_lookup1;
	ila_key_lookup2 <= key_lookup2;
	ila_key_lookup3 <= key_lookup3;
	ila_key_reg0 <= key_reg0;
end



ila_2 u_ila2 (
	.clk     (ui_mig_clk), // input wire clk
	/* verilator lint_off WIDTH */
	.probe0  ({ // 256pin
		in_hash,
		in_key[79:72],
		ila_ref,
		ila_hash,
		ila_slot0, 
        ila_slot1, 
        ila_slot2, 
        ila_slot3, 
		ila_key_lookup0,
		ila_key_lookup1,
		ila_key_lookup2,
		ila_key_lookup3,
		ila_key_reg0
	})
);    
`endif


endmodule
