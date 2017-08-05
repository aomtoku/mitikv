`timescale 1ps / 1ps

//`define SIMULATION_ILA

module top 
`ifdef DRAM_SUPPORT
#(
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
   
   parameter RST_ACT_LOW           = 1
)
`endif /* DRAM_SUPPORT */
(
	input  wire    FPGA_SYSCLK_P,
	input  wire    FPGA_SYSCLK_N,
	inout  wire    I2C_FPGA_SCL,
	inout  wire    I2C_FPGA_SDA,
	output [7:0]   LED,


`ifdef SIMULATION_DEBUG
	input  wire    sys_rst_n,
`endif /* SIMULATION_DEBUG */

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
wire                eth_rst;
localparam KEY_SIZE = 96;
wire [KEY_SIZE-1:0] in_key;
wire [3:0]          in_flag, out_flag;
wire                in_valid, out_valid;
wire                db_clk;
eth_top #(
	.KEY_SIZE           (96),
	.VAL_SIZE           (32)
) u_eth_top (
	.clk100             (clk100),
	.sys_rst            (sys_rst),
	.eth_rst            (eth_rst),
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
`ifndef SIMULATION_DEBUG
	.rst              (eth_rst), 
`else
	.rst              (!sys_rst_n), 
`endif

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

