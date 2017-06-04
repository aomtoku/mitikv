`timescale 1ps / 1ps

//`define SIMULATION_ILA

module top 
`ifdef DRAM_SUPPORT
#(
   parameter SIMULATION            = "FALSE",
   parameter TCQ                   = 100,
   parameter DRAM_TYPE             = "DDR3",
   parameter nCK_PER_CLK           = 4,
   parameter DEBUG_PORT            = "OFF",
   
   parameter RST_ACT_LOW           = 1

)
`endif /* DRAM_SUPPORT */
(
	input  wire    FPGA_SYSCLK_P,
	input  wire    FPGA_SYSCLK_N,
	inout  wire    I2C_FPGA_SCL,
	inout  wire    I2C_FPGA_SDA,
	output [7:0]   LED,

`ifdef DRAM_SUPPORT
	input  wire    sys_clk_p,
	input  wire    sys_clk_n,
	// DDR3 SDRAM
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

	// Ethernet
	input  wire    SFP_CLK_P,
	input  wire    SFP_CLK_N,
	output wire    SFP_REC_CLK_P,
	output wire    SFP_REC_CLK_N,
	input  wire    SFP_CLK_ALARM_B,

	// Ethernet (ETH0)
	input  wire    ETH0_TX_P,
	input  wire    ETH0_TX_N,
	output wire    ETH0_RX_P,
	output wire    ETH0_RX_N,
	input  wire    ETH0_TX_FAULT,
	input  wire    ETH0_RX_LOS,
	output wire    ETH0_TX_DISABLE,
	// Ethernet (ETH1)
	input  wire    ETH1_TX_P,
	input  wire    ETH1_TX_N,
	output wire    ETH1_RX_P,
	output wire    ETH1_RX_N,
	input  wire    ETH1_TX_FAULT,
	input  wire    ETH1_RX_LOS,
	output wire    ETH1_TX_DISABLE
);


/*
 *  Core Clocking 
 */
wire clk200;
IBUFDS IBUFDS_clk200 (
	.I   (FPGA_SYSCLK_P),
	.IB  (FPGA_SYSCLK_N),
	.O   (clk200)
);

wire clk100;
reg clock_divide = 1'b0;
always @(posedge clk200)
	clock_divide <= ~clock_divide;

BUFG buffer_clk100 (
	.I  (clock_divide),
	.O  (clk100)
);

/*
 *  Core Reset 
 *  ***FPGA specified logic
 */
reg [13:0] cold_counter = 14'd0;
reg        sys_rst;
always @(posedge clk200) 
`ifndef SIMULATION_DEBUG
	if (cold_counter != 14'h3fff) begin
`else
	if (cold_counter != 14'h9) begin
`endif /* SIMULATION_DEBUG */
		cold_counter <= cold_counter + 14'd1;
		sys_rst <= 1'b1;
	end else
		sys_rst <= 1'b0;
/*
 *  Ethernet Top Instance
 */
localparam KEY_SIZE = 96;
wire [KEY_SIZE-1:0] in_key;
wire [3:0]          in_flag, out_flag;
wire                in_valid, out_valid;
wire                db_clk;
eth_top #(
	.KEY_SIZE           (96),
	.VAL_SIZE           (32)
) eth0_top (
	.clk100             (clk100),
	.sys_rst            (sys_rst),
	.debug              (LED),
	
	/* KVS Interface */
	.db_clk           (db_clk),
	.in_key           (in_key   ),
	.in_flag          (in_flag  ),
	.in_valid         (in_valid ),
	.out_valid        (out_valid),
	.out_flag         (out_flag ),

	/* XGMII */
	.SFP_CLK_P          (SFP_CLK_P),
	.SFP_CLK_N          (SFP_CLK_N),
	.SFP_REC_CLK_P      (SFP_REC_CLK_P),
	.SFP_REC_CLK_N      (SFP_REC_CLK_N),

	.ETH0_TX_P          (ETH0_TX_P),
	.ETH0_TX_N          (ETH0_TX_N),
	.ETH0_RX_P          (ETH0_RX_P),
	.ETH0_RX_N          (ETH0_RX_N),

	.I2C_FPGA_SCL       (I2C_FPGA_SCL),
	.I2C_FPGA_SDA       (I2C_FPGA_SDA),

	.SFP_CLK_ALARM_B    (SFP_CLK_ALARM_B),

	.ETH0_TX_FAULT      (ETH0_TX_FAULT ),
	.ETH0_RX_LOS        (ETH0_RX_LOS   ),
	.ETH0_TX_DISABLE    (ETH0_TX_DISABLE),
	
	.ETH1_TX_P          (ETH1_TX_P),
	.ETH1_TX_N          (ETH1_TX_N),
	.ETH1_RX_P          (ETH1_RX_P),
	.ETH1_RX_N          (ETH1_RX_N),
	.ETH1_TX_FAULT      (ETH1_TX_FAULT ),
	.ETH1_RX_LOS        (ETH1_RX_LOS   ),
	.ETH1_TX_DISABLE    (ETH1_TX_DISABLE)
);

db_top #(
	.KEY_SIZE(96),
	.VAL_SIZE(32),
	.RAM_SIZE(4),
	.RAM_ADDR(18)
) u_db_top (
	.clk              (db_clk),
	.rst              (sys_rst), 
`ifdef DRAM_SUPPORT
	.sys_clk_p        (sys_clk_p),
	.sys_clk_n        (sys_clk_n),

	.ddr3_addr        (ddr3_addr),
	.ddr3_ba          (ddr3_ba),
	.ddr3_cas_n       (ddr3_cas_n),
	.ddr3_ck_n        (ddr3_ck_n),
	.ddr3_ck_p        (ddr3_ck_p),
	.ddr3_cke         (ddr3_cke),
	.ddr3_ras_n       (ddr3_ras_n),
	.ddr3_we_n        (ddr3_we_n),
	.ddr3_dq          (ddr3_dq),
	.ddr3_dqs_n       (ddr3_dqs_n),
	.ddr3_dqs_p       (ddr3_dqs_p),
	.ddr3_reset_n     (ddr3_reset_n),
	.ddr3_cs_n        (ddr3_cs_n),
	.ddr3_dm          (ddr3_dm),
	.ddr3_odt         (ddr3_odt),
`endif /* DRAM_SUPPORT */
	/* Network Interface */
	.in_key           (in_key   ),
	.in_flag          (in_flag  ),
	.in_valid         (in_valid ),
	.out_valid        (out_valid),
	.out_flag         (out_flag )

	/* DRAM interace */ 
	//input wire    dram_wr_strb,
	//input wire    dram_wr_data, 
);


/*
 * Debug : Clock
 */
//reg [31:0] led_cnt;
//always @ (posedge clk100)
//	if (sys_rst)
//		led_cnt <= 32'd0;
//	else 
//		led_cnt <= led_cnt + 32'd1;
//
//assign LED = led_cnt[31:24];

endmodule

