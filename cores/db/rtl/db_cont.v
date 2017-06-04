module db_cont #(
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

	/* DDR3 SDRAM Interface */
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

	output reg                   out_valid    ,
	output reg  [3:0]            out_flag     ,
	output wire [VAL_SIZE-1:0]   out_value     
);

localparam SET_REQ = 1'b1,
           GET_REQ = 1'b0;
localparam IDLE_STATE    = 2'b00,
           SUSPECT_STATE = 2'b01,
           ARREST_STATE  = 2'b10,
           EXPIRE_STATE  = 2'b11;
/*
 * Free Running Counter
 *
 */
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

`ifdef SIMULATION
assign div_clk = div_cnt[3];
`else
BUFG u_bufg_sys_clk (.I(div_cnt[23]), .O(div_clk));
`endif  /* SIMULATION */

/*
 * Flag field
 *    flag  [0] : RD / WR
 *    flag[3:1] : state
 *                3'b000 : IDLE
 *                3'b001 : SUSPECTION
 *                3'b010 : ARREST
 *                3'b011 : FILTERED
 */


/*
 * Hash Table Access Logic
 */
// HashTable 0x0000_0000--0x0000_ffff
wire [HASH_SIZE-1:0] hash = in_hash; 
wire [RAM_ADDR-1:0] hash_addr = hash[RAM_ADDR-1:0];

localparam IDLE   = 0,
           CHECK  = 1,
           MISS   = 2,
           UPDATE = 3;
integer i;
reg                valid_reg0, valid_reg1, valid_reg2, valid_reg3;
reg [1:0]          state;
reg [KEY_SIZE-1:0] fetched_key;
reg [VAL_SIZE-1:0] fetched_val, get_val;
reg                judge;
/* Hash Table & Data Store */
wire [3:0] fetched_flag = fetched_val[27:24];
wire [1:0] fetched_state = fetched_val[26:25];

/* DPRAM interface */
wire [KEY_SIZE-1:0] dpram_out_key, dpram_in_key;
wire [VAL_SIZE-1:0] dpram_out_val, dpram_in_val;
wire wea = state == UPDATE;
wire ena = 1'b1;

always @ (posedge clk156)
	if (rst) begin
		judge       <=    0;
		state       <= IDLE;
		fetched_key <=    0;
		fetched_val <=    0;
		out_valid   <=    0;
		out_flag    <=    0;
	end else begin
		valid_reg0 <= in_valid;
		valid_reg1 <= valid_reg0;
		valid_reg2 <= valid_reg1;
		valid_reg3 <= valid_reg2;
		case (state)
			IDLE  : begin
				judge <= 0;
				out_valid <= 0;
				out_flag  <= 0;
				if (valid_reg0) begin
					fetched_key <= dpram_out_key;
					fetched_val <= dpram_out_val;
					if (in_key == dpram_out_key) 
						state <= CHECK;
					else
						state <= MISS;
				end
			end
			CHECK : if (fetched_val[15:0] < sys_cnt[15:0]) begin
				// Time is Okay
				judge <= 0;
				if (in_op[0] == SET_REQ)
					state <= UPDATE;
				else
					state <= IDLE;
				out_valid <= 1;
				out_flag  <= fetched_val[27:24];
			end else begin  // Time is Expired
				if (in_op[0] == SET_REQ) begin
					state <= UPDATE;
					case (in_op[2:1])
						IDLE_STATE   : begin
							state <= IDLE;
							out_flag  <= fetched_val[27:24];
						end
						SUSPECT_STATE: begin
							if (fetched_state[1] == 0) begin
								state <= UPDATE;
								out_flag  <= 4'b0100;
							end else begin
								state <= IDLE;
								out_flag  <= fetched_val[27:24];
							end
						end
						ARREST_STATE: begin
							state <= UPDATE;
							out_flag  <= fetched_val[27:24];
						end
						EXPIRE_STATE: begin
							state <= IDLE;
							out_flag  <= fetched_val[27:24];
						end
					endcase
				end else begin // GET request
					state     <= IDLE;
					judge     <= 1;
					out_flag  <= fetched_val[27:24];
				end
				out_valid <= 1;
			end
			MISS  : if (in_op[0] == SET_REQ)
				state <= UPDATE;
			else // in_op == GET
				state <= IDLE;
			UPDATE: begin
				state <= IDLE;
			end
			default : state <= IDLE;
		endcase
	end


assign dpram_in_key = in_key;
//assign dpram_in_val = (fetched_state == ARREST_STATE) ? {4'd0, fetched_flag, 8'd0, sys_cnt[15:0]} : 
//{4'd0, in_op, 8'd0, sys_cnt[15:0]};
assign dpram_in_val = (fetched_state == ARREST_STATE) ? {4'd0, 4'b0100, 8'd0, sys_cnt[15:0]} : 
{4'd0, 4'b0100, 8'd0, sys_cnt[15:0]};




`ifdef DRAM_SUPPORT
/*
 * DRAM APP Interface 
 */
localparam DATA_WIDTH            = 64;
localparam RANK_WIDTH = clogb2(RANKS);
localparam PAYLOAD_WIDTH         = (ECC_TEST == "OFF") ? DATA_WIDTH : DQ_WIDTH;
localparam BURST_LENGTH          = STR_TO_INT(BURST_MODE);
localparam APP_DATA_WIDTH        = 2 * nCK_PER_CLK * PAYLOAD_WIDTH;
localparam APP_MASK_WIDTH        = APP_DATA_WIDTH / 8;

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
      if(in == "8")
        STR_TO_INT = 8;
      else if(in == "4")
        STR_TO_INT = 4;
      else
        STR_TO_INT = 0;
    end
  endfunction

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

/*
 *  DRAM fifo (wr)
 *      512(wr_data) + 64(wr_strb) + 30(addr) + 1(cmd) + 1(vadid)
 */
wire [512+64+30+1+1-1:0] din_wrfifo, dout_wrfifo;
wire wr_en_wrfifo, rd_en_wrfifo;
wire empty_wrfifo, full_wrfifo;

fifo_512 u_wrfifo (
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

/*
 *  DRAM fifo (rd)
 *      configuration: 32width x 64depth
 *      width bitmap : 30(addr) + 1(cmd) + 1(vadid)
 */
wire [30+1+1-1:0] din_rdfifo, dout_rdfifo;
wire wr_en_rdfifo, rd_en_rdfifo;
wire empty_rdfifo, full_rdfifo;

fifo_512 u_rd_fifo (
	.rst      ( rst ),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( ui_mig_clk   ), 
	.din      ( din_fifo_in  ), 
	.wr_en    ( wr_en_rdfifo ),
	.rd_en    ( rd_en_rdfifo ),
	.dout     ( dout_rdfifo  ), 
	.full     ( full_rdfifo  ), 
	.empty    ( empty_rdfifo ) 
);

/*
 *  DRAM fifo (save)
 *      configuration: 32width x 64depth
 *      width bitmap : 32(value) + 96(key) + 30(addr) + 1(vadid)
 */
wire [32+96+30+1+1-1:0] din_savefifo, dout_savefifo;
wire wr_en_savefifo, rd_en_savefifo;
wire empty_savefifo, full_savefifo;

fifo_512 u_rd_fifo (
	.rst      ( rst ),  
	.wr_clk   ( clk156 ),  
	.rd_clk   ( clk156 ), 
	.din      ( din_fifo_in  ), 
	.wr_en    ( wr_en_rdfifo ),
	.rd_en    ( rd_en_rdfifo ),
	.dout     ( dout_rdfifo  ), 
	.full     ( full_rdfifo  ), 
	.empty    ( empty_rdfifo ) 
);


/*
 *  Arbiter 
 *     WR-FIFO or RD-FIFO
 */
localparam MIG_CMD_READ  = 3'b001;
localparam MIG_CMD_WRITE = 3'b000;
localparam ARB_RD        = 2'b01;
localparam ARB_WR        = 2'b10;

wire [2:0]   wr_fifo_cmd = (dout_wrfifo[1] == 1'b1) ? MIG_CMD_READ : MIG_CMD_WRITE ;
wire [2:0]   rd_fifo_cmd = (dout_wrfifo[0] == 1'b1) ? MIG_CMD_READ : MIG_CMD_WRITE ;
wire [29:0]  wrfifo_addr = dout_wrfifo[31:2];
wire [29:0]  rdfifo_addr = dout_rdfifo[31:2];

wire [63:0]  wrfifo_strb = dout_wrfifo[95:32];
wire [511:0] wrfifo_data = dout_wrfifo[607:96];
wire       fifo_valid  = dout_rdfifo[0] | dout_wrfifo[0];

wire [1:0] arb_switch = (app_wdf_rdy && dout_wrfifo[0]) ? ARB_WR :
                                       (dout_rdfifo[0]) ? ARB_RD : 2'b00;

// FIFO assignment
assign rd_en_wrfifo = arb_switch == ARB_WR && app_rdy == 1'b1;
assign rd_en_rdfifo = arb_switch == ARB_RD && app_rdy == 1'b1;
assign wr_en_wrfifo = ;
assign wr_en_rdfifo = in_valid;

assign din_rdfifo = {in_hash[29:0], 2'b11};
assign din_wrfifo = {, , 2'b01};



// MIG assignment
assign app_addr = rd_fifo_addr : wr_fifo_addr ;
assign app_cmd  = rd_fifo_cmd : wr_fifo_cmd ;
assign app_en = fifo_valid;
assign app_wdf_data = wrfifo_data;
assign app_wdf_wren = arb_switch == ARB_WR;
assign app_wdf_end  = 1;

// 
assign din_savefifo = {in_value, in_key[95:0], in_hash[29:0], 2'b01};
assign wr_en_savefifo = in_valid;


// To support 1024bit data width of MIG,
// you need to setup 4-7 regiseters.
reg [511:0] rd_data_buf;
reg [95:0] key_reg0, key_reg1, key_reg2, key_reg3,
           key_reg4, key_reg5, key_reg6, key_reg7;
reg         stage_valid0, stage_valid1, stage_valid2;

wire [127:0] slot0, slot1, slot2, slot3;
wire [127:0] slot4, slot5, slot6, slot7;

wire key_lookup0 = slot0[95:0] == key_reg0;
wire key_lookup1 = slot1[95:0] == key_reg1;
wire key_lookup2 = slot2[95:0] == key_reg2;
wire key_lookup3 = slot3[95:0] == key_reg3;

wire value_cmp0  = slot

wire table_hit = key_lookup0 | key_lookup1 | key_lookup2 | key_lookup3;
wire update_en   = stage_valid_0 & ~table_hit;

reg [159:0] stage_data_0;

assign slot0 = rd_data_buf[127:0];
assign slot1 = rd_data_buf[255:128];
assign slot2 = rd_data_buf[383:256];
assign slot3 = rd_data_buf[511:384];

wire [31:0] rand;

wire insert0 = table_hit ? key_lookup0 : (rand[1:0] == 2'b00) ? 1'b1 : 1'b0;
wire insert1 = table_hit ? key_lookup1 : (rand[1:0] == 2'b01) ? 1'b1 : 1'b0;
wire insert2 = table_hit ? key_lookup2 : (rand[1:0] == 2'b10) ? 1'b1 : 1'b0;
wire insert3 = table_hit ? key_lookup3 : (rand[1:0] == 2'b11) ? 1'b1 : 1'b0;

wire [511:0] wr_data_pre = (insert0) ? {rd_data_buf[511:128], stage_data_0[127:0]} :
                           (insert1) ? {rd_data_buf[511:256], stage_data_0[127:0], rd_data_buf[127:0]} : 
                           (insert2) ? {rd_data_buf[511:384], stage_data_0[127:0], rd_data_buf[255:0]} : 
                           (insert3) ? {stage_data_0[127:0], rd_data_buf[383:0]} : 512'd0;



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
	end else begin
		if (init_calib_complete) begin
			if (app_rd_valid) begin
				rd_data_buf <= app_rd_data;
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


prbs u_prbs (
	.do       (rand),
	.clk      (clk156),
	.advance  (1'b1),
	.rstn     (init_calib_complete) 
);

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
`else 
`ifdef SIMULATION_DEBUG
dpram #(
	.ADDR    (10),
	.DWIDTH  (128)
) u_dpram (
	.clka      (clk),    
	.ena       (ena),   
	.wea       (wea),   
	.addra     (hash_addr), 
	.dina      ({dpram_in_val, dpram_in_key}),   
	.douta     ({dpram_out_val, dpram_out_key})  
);
`else
dpram_128_262k u_dpram (
	.clka      (clk),    
	.ena       (ena),   
	.wea       (wea),   
	.addra     (hash_addr), 
	.dina      ({dpram_in_val, dpram_in_key}),   
	.douta     ({dpram_out_val, dpram_out_key})  
);
`endif /* SIMULATION_DEBUG */
`endif /* DRAM_SUPPORT */

`ifdef DEBUG_ILA
ila_0 u_ila (
	.clk     (clk), // input wire clk
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
