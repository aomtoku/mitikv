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
	input  wire  rst,
`ifdef DRAM_SUPPORT
	/* DDRS SDRAM Infra */
	input  wire    sys_clk_p,
	input  wire    sys_clk_n,
	output wire    ui_mig_clk,
	output wire    ui_mig_rst,
	output wire    init_calib_complete,

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
	input  wire                  in_valid     ,
	input  wire [3:0]            in_op        ,
	input  wire [HASH_SIZE-1:0]  in_hash      ,
	input  wire [KEY_SIZE-1:0]   in_key       ,
	input  wire [VAL_SIZE-1:0]   in_value     , 

	output wire                  out_valid    ,
	output wire [3:0]            out_flag     ,
	output wire [VAL_SIZE-1:0]   out_value     
);

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
		STR_TO_INT = 4;
	else
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
wire div_clk;
reg [23:0] div_cnt;

always @ (posedge clk156)
	if (rst)
		div_cnt <= 0;
	else
		div_cnt <= div_cnt + 1;

reg [15:0] sys_cnt = 0;
always @ (posedge div_clk)
	sys_cnt <= sys_cnt + 1;

`ifndef SIMULATION_DEBUG
BUFG u_bufg_sys_clk (.I(div_cnt[23]), .O(div_clk));
`else
assign div_clk = div_cnt[3];
`endif  /* SIMULATION_DEBUG */

// ------------------------------------------------------
//   User Interface for MIG 
// ------------------------------------------------------
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

asfifo_608_64 u_wrfifo (
	.rst      ( rst ),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( ui_mig_clk   ), 
	.din      ( din_wrfifo   ), 
	.wr_en    ( wr_en_wrfifo ),
	.rd_en    ( rd_en_wrfifo ),
	.dout     ( dout_wrfifo  ), 
	.full     ( full_wrfifo  ), 
	.empty    ( empty_wrfifo ) 
);

// ------------------------------------------------------
// DRAM fifo (update)
//     512(wr_data) + 64(wr_strb) + 30(addr) + 1(cmd) + 1(vadid)
// ------------------------------------------------------
wire [512+64+30+1+1-1:0] din_upfifo, dout_upfifo;
wire                     wr_en_upfifo, rd_en_upfifo;
wire                     empty_upfifo, full_upfifo;

asfifo_608_64 u_upfifo (
	.rst      ( rst | ui_mig_rst ),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( ui_mig_clk   ), 
	.din      ( din_upfifo   ), 
	.wr_en    ( wr_en_upfifo ),
	.rd_en    ( rd_en_upfifo ),
	.dout     ( dout_upfifo  ), 
	.full     ( full_upfifo  ), 
	.empty    ( empty_upfifo ) 
);

// ------------------------------------------------------
// DRAM fifo (rd)
//     configuration: 32width x 64depth
//     width bitmap : 30(addr) + 1(cmd) + 1(vadid)
// ------------------------------------------------------
wire [30+1+1-1:0] din_rdfifo, dout_rdfifo;
wire              wr_en_rdfifo, rd_en_rdfifo;
wire              empty_rdfifo, full_rdfifo;

asfifo_32_64 u_rd_fifo (
	.rst      ( rst | ui_mig_rst),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( ui_mig_clk   ), 
	.din      ( din_rdfifo  ), 
	.wr_en    ( wr_en_rdfifo ),
	.rd_en    ( rd_en_rdfifo ),
	.dout     ( dout_rdfifo  ), 
	.full     ( full_rdfifo  ), 
	.empty    ( empty_rdfifo ) 
);

// ------------------------------------------------------
// DRAM fifo (save)
//     configuration: 160 bit width x 64 depth
//     width bitmap : 32(value) + 96(key) + 30(addr) + 1(rsrv) + 1(vadid)
// ------------------------------------------------------
wire [32+96+30+1+1-1:0] din_savefifo, dout_savefifo;
wire wr_en_savefifo, rd_en_savefifo;
wire empty_savefifo, full_savefifo;

asfifo_160_64 u_save_fifo (
	.rst      ( rst ),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( clk156 ), 
	.din      ( din_savefifo   ), 
	.wr_en    ( wr_en_savefifo ),
	.rd_en    ( rd_en_savefifo ),
	.dout     ( dout_savefifo  ), 
	.full     ( full_savefifo  ), 
	.empty    ( empty_savefifo ) 
);


/*
 *  Arbiter 
 *     WR-FIFO or RD-FIFO
 */

wire [2:0]   wr_fifo_cmd  = MIG_CMD_WRITE ;
wire [2:0]   rd_fifo_cmd  = MIG_CMD_READ  ;
wire [29:0]  wr_fifo_addr = dout_wrfifo[31:2];
wire [29:0]  rd_fifo_addr = dout_rdfifo[31:2];

wire [63:0]  wrfifo_strb  = dout_wrfifo[95:32];
wire [511:0] wrfifo_data  = dout_wrfifo[607:96];
wire         fifo_valid   = ~empty_rdfifo | ~empty_wrfifo;

// ----------------------------------------------------
//   Arbitor between RD-FIFO and WR-FIFO on issueing CMD
// ----------------------------------------------------
reg  [1:0] arb_reg;
reg  [1:0] arb_switch;

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

	if (~empty_rdfifo & ~empty_wrfifo)
		arb_switch = arb_reg;
	else if (app_wdf_rdy && ~empty_wrfifo)
		arb_switch = ARB_WR;
	else if (~empty_rdfifo)
		arb_switch = ARB_RD;

end

// ---------------------------------------------------------------
//  Write Data using RANDOM(PRBS-based) as Replacement Policy
// ---------------------------------------------------------------
wire [31:0] rand;
wire [511:0] rand_wrdata = 
           (rand[3:2] == 0) ? {384'h0, in_key, in_value}         :
           (rand[3:2] == 1) ? {256'h0, in_key, in_value, 128'h0} :
           (rand[3:2] == 2) ? {128'h0, in_key, in_value, 256'h0} :
           (rand[3:2] == 3) ? {in_key, in_value, 384'h0}         : 0;
wire [63:0] rand_wrstrb = (rand[3:2] == 0) ? 64'h0000_0000_0000_ffff :
                          (rand[3:2] == 1) ? 64'h0000_0000_ffff_0000 :
                          (rand[3:2] == 2) ? 64'h0000_ffff_0000_0000 :
                          (rand[3:2] == 3) ? 64'hffff_0000_0000_0000 : 0;

prbs u_prbs (
	.do       (rand),
	.clk      (clk156),
	.advance  (1'b1),
	.rstn     (init_calib_complete) 
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
assign app_wdf_mask = 0; // TODO

// To support 1024bit data width of MIG,
// you need to setup 4-7 regiseters.

// ----------------------------------------------------
//   Lookup Logic
// ---------------------------------------------------
reg  [511:0] rd_data_buf;
reg  [ 95:0] key_reg0, key_reg1, key_reg2, key_reg3,
             key_reg4, key_reg5, key_reg6, key_reg7;
wire [127:0] slot0, slot1, slot2, slot3;
wire [127:0] slot4, slot5, slot6, slot7;
wire [511:0] wr_data_pre;
reg          stage_valid_0, stage_valid_1, stage_valid_2;
reg  [159:0] stage_data_0;

wire key_lookup0 = slot0[127:32] == key_reg0;
wire key_lookup1 = slot1[127:32] == key_reg1;
wire key_lookup2 = slot2[127:32] == key_reg2;
wire key_lookup3 = slot3[127:32] == key_reg3;

wire table_hit = stage_valid_0 & (key_lookup0 | key_lookup1 | key_lookup2 | key_lookup3);
wire update_en   = stage_valid_0 & ~table_hit;
// Todo : value comparison logic
// 
//wire value_cmp0  = slot;

wire insert0 = table_hit ? key_lookup0 : (rand[1:0] == 2'b00) ? 1'b1 : 1'b0;
wire insert1 = table_hit ? key_lookup1 : (rand[1:0] == 2'b01) ? 1'b1 : 1'b0;
wire insert2 = table_hit ? key_lookup2 : (rand[1:0] == 2'b10) ? 1'b1 : 1'b0;
wire insert3 = table_hit ? key_lookup3 : (rand[1:0] == 2'b11) ? 1'b1 : 1'b0;

wire [64:0] update_strb = (key_lookup0) ? 64'h0000_0000_0000_ffff :
                          (key_lookup1) ? 64'h0000_0000_ffff_0000 :
                          (key_lookup2) ? 64'h0000_ffff_0000_0000 :
                          (key_lookup3) ? 64'hffff_0000_0000_0000 : 64'h0;


assign wr_data_pre = 
             (insert0) ? {rd_data_buf[511:128], stage_data_0[159:32]} :
             (insert1) ? {rd_data_buf[511:256], stage_data_0[159:32], 
                          rd_data_buf[127:0]} : 
             (insert2) ? {rd_data_buf[511:384], stage_data_0[159:32], 
                          rd_data_buf[255:0]} : 
             (insert3) ? {stage_data_0[159:32], rd_data_buf[383:0]} : 
                          512'd0;

assign slot0 = rd_data_buf[127:0];
assign slot1 = rd_data_buf[255:128];
assign slot2 = rd_data_buf[383:256];
assign slot3 = rd_data_buf[511:384];

always @ (posedge clk156)
	if (rst) begin
		rd_data_buf <= 0;
		key_reg0    <= 0;
		key_reg1    <= 0;
		key_reg2    <= 0;
		key_reg3    <= 0;
		key_reg4    <= 0;
		key_reg5    <= 0;
		key_reg6    <= 0;
		key_reg7    <= 0;
		stage_valid_0 <= 1'b0;
	end else begin
		if (init_calib_complete) begin
			if (app_rd_data_valid) begin
				rd_data_buf <=
                     {app_rd_data[63:0],    app_rd_data[127:64], 
                      app_rd_data[191:128], app_rd_data[255:192], 
                      app_rd_data[319:256], app_rd_data[383:320], 
                      app_rd_data[447:384], app_rd_data[511:448]};
				key_reg0    <= dout_savefifo[127:32];
				key_reg1    <= dout_savefifo[127:32];
				key_reg2    <= dout_savefifo[127:32];
				key_reg3    <= dout_savefifo[127:32];
				stage_data_0 <= dout_savefifo;
				stage_valid_0 <= 1'b1;
			end else begin
				stage_valid_0 <= 1'b0;
			end
			stage_valid_1 <= stage_valid_0;
			stage_valid_2 <= stage_valid_1;
		end
	end

// ----------------------------------------------------
//   FIFO assignment
// ----------------------------------------------------
assign rd_en_wrfifo   = arb_switch == ARB_WR && app_rdy == 1'b1;
assign rd_en_rdfifo   = arb_switch == ARB_RD && app_rdy == 1'b1;
assign rd_en_savefifo = app_rd_data_valid;
assign rd_en_upfifo = ~empty_upfifo & ~in_valid;

assign wr_en_wrfifo   = (in_valid & in_op[0] == SET_REQ) || rd_en_upfifo;
assign wr_en_rdfifo   = in_valid & in_op[0] == GET_REQ;
assign wr_en_savefifo = in_valid & in_op[0] == GET_REQ;
assign wr_en_upfifo = stage_valid_0 & table_hit;

assign din_rdfifo     = {in_hash[29:0], 2'b11};
assign din_wrfifo     =  (in_valid & in_op[0] == SET_REQ) ?  
                   {rand_wrdata, rand_wrstrb, in_hash[29:0], 2'b01} : 
                   dout_upfifo[607:96];
assign din_savefifo   = {in_value, in_key[95:0], in_hash[29:0], 2'b01};
assign din_upfifo = {wr_data_pre, update_strb, stage_data_0[31:2], 2'b11};

// ----------------------------------------------------
//   To MAC layer 
// ----------------------------------------------------
assign out_valid = stage_valid_0;
assign out_flag  = (table_hit) ? 4'b0001 : 4'b0000;

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
       .sys_rst                        (!rst)
);

`ifdef DEBUG_ILA
ila_0 u_ila (
	.clk     (clk156), // input wire clk
	/* verilator lint_off WIDTH */
	.probe0  ({ // 256pin
		//126'd0       ,
		//in_hash      ,
		//in_key       ,
		//in_value     ,
		in_valid     ,// 1
		in_op        ,// 4
	    out_valid    ,// 1
	    out_flag     ,// 4
	    out_value    ,//32
		state        ,// 2
		fetched_key  ,//96
		dpram_in_key ,//96
		dpram_out_key,//96
		fetched_flag ,// 4
		fetched_val  ,//32
		hash          //32
	})
	/* verilator lint_on WIDTH */
);
`endif /* DEBUG_ILA */

endmodule
