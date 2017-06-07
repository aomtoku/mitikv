`timescale 1ps/100fs

module tb_sim ();

localparam FREQ = 5000;

parameter SIMULATION            = "TRUE";
parameter PORT_MODE             = "BI_MODE";
parameter DATA_MODE             = 4'b0010;
parameter TST_MEM_INSTR_MODE    = "R_W_INSTR_MODE";
parameter EYE_TEST              = "FALSE";
parameter DATA_PATTERN          = "DGEN_ALL";
parameter CMD_PATTERN           = "CGEN_ALL";
parameter BEGIN_ADDRESS         = 32'h00000000;
parameter END_ADDRESS           = 32'h00000fff;
parameter PRBS_EADDR_MASK_POS   = 32'hff000000;

parameter COL_WIDTH             = 10;
parameter CS_WIDTH              = 1;
parameter DM_WIDTH              = 8;
parameter DQ_WIDTH              = 64;
parameter DQS_WIDTH             = 8;
parameter DQS_CNT_WIDTH         = 3;
parameter DRAM_WIDTH            = 8;
parameter ECC                   = "OFF";
parameter RANKS                 = 1;
parameter ODT_WIDTH             = 1;
parameter ROW_WIDTH             = 16;
parameter ADDR_WIDTH            = 30;
parameter BURST_MODE            = "8";
parameter CA_MIRROR             = "OFF";
parameter CLKIN_PERIOD          = 5000;
parameter ETHCLK_PERIOD         = 6400;
parameter SIM_BYPASS_INIT_CAL   = "SKIP";
                                  // # = "SIM_INIT_CAL_FULL" -  Complete //              memory init &
                                  //              calibration sequence
                                  // # = "SKIP" - Not supported
                                  // # = "FAST" - Complete memory init & use
                                  //              abbreviated calib sequence
parameter TCQ                   = 100;
parameter RST_ACT_LOW           = 1;
parameter REFCLK_FREQ           = 200.0;
parameter ETHCLK_FREQ           = 156.25;
parameter tCK                   = 1250;
parameter nCK_PER_CLK           = 4;
//***************************************************************************
// Debug and Internal parameters
//***************************************************************************
parameter DRAM_TYPE             = "DDR3";
//**************************************************************************//
// Local parameters Declarations
//**************************************************************************//
localparam real TPROP_DQS          = 0.00;
localparam real TPROP_DQS_RD       = 0.00;
localparam real TPROP_PCB_CTRL     = 0.00;
localparam real TPROP_PCB_DATA     = 0.00;
localparam real TPROP_PCB_DATA_RD  = 0.00;

localparam MEMORY_WIDTH            = 8;
localparam NUM_COMP                = DQ_WIDTH/MEMORY_WIDTH;
localparam ECC_TEST 		   	= "OFF" ;
localparam ERR_INSERT = (ECC_TEST == "ON") ? "OFF" : ECC ;

localparam real REFCLK_PERIOD = (1000000.0/(2*REFCLK_FREQ));
//localparam real ETHCLK_PERIOD = (1000000.0/(2*ETHCLK_FREQ));
localparam RESET_PERIOD = 200000; //in pSec  
localparam real SYSCLK_PERIOD = tCK;

/*
 *   System Clock
 */ 
reg sys_clk;
initial sys_clk = 1'b0;
always #(FREQ/2) sys_clk <= ~sys_clk;

wire fpga_clk_p = sys_clk;
wire fpga_clk_n = !sys_clk;

/*
 * Ethernet pins
 */

wire SFP_REC_CLK_P;
wire SFP_REC_CLK_N;
wire ETH0_RX_P;
wire ETH0_RX_N;
wire ETH0_TX_DISABLE;

wire ETH1_RX_P;
wire ETH1_RX_N;
wire ETH1_TX_DISABLE;

/*
 * DRAM pins 
 */
wire                               ddr3_reset_n;
wire [DQ_WIDTH-1:0]                ddr3_dq_fpga;
wire [DQS_WIDTH-1:0]               ddr3_dqs_p_fpga;
wire [DQS_WIDTH-1:0]               ddr3_dqs_n_fpga;
wire [ROW_WIDTH-1:0]               ddr3_addr_fpga;
wire [3-1:0]                       ddr3_ba_fpga;
wire                               ddr3_ras_n_fpga;
wire                               ddr3_cas_n_fpga;
wire                               ddr3_we_n_fpga;
wire [1-1:0]                       ddr3_cke_fpga;
wire [1-1:0]                       ddr3_ck_p_fpga;
wire [1-1:0]                       ddr3_ck_n_fpga;
    
  
wire                               init_calib_complete;
wire                               tg_compare_error;
wire [(CS_WIDTH*1)-1:0]            ddr3_cs_n_fpga;
  
wire [DM_WIDTH-1:0]                ddr3_dm_fpga;
wire [ODT_WIDTH-1:0]               ddr3_odt_fpga;

reg [(CS_WIDTH*1)-1:0]             ddr3_cs_n_sdram_tmp;
reg [DM_WIDTH-1:0]                 ddr3_dm_sdram_tmp;
reg [ODT_WIDTH-1:0]                ddr3_odt_sdram_tmp;
    

  
wire [DQ_WIDTH-1:0]                ddr3_dq_sdram;
reg [ROW_WIDTH-1:0]                ddr3_addr_sdram [0:1];
reg [3-1:0]                        ddr3_ba_sdram [0:1];
reg                                ddr3_ras_n_sdram;
reg                                ddr3_cas_n_sdram;
reg                                ddr3_we_n_sdram;
wire [(CS_WIDTH*1)-1:0]            ddr3_cs_n_sdram;
wire [ODT_WIDTH-1:0]               ddr3_odt_sdram;
reg [1-1:0]                        ddr3_cke_sdram;
wire [DM_WIDTH-1:0]                ddr3_dm_sdram;
wire [DQS_WIDTH-1:0]               ddr3_dqs_p_sdram;
wire [DQS_WIDTH-1:0]               ddr3_dqs_n_sdram;
reg [1-1:0]                        ddr3_ck_p_sdram;
reg [1-1:0]                        ddr3_ck_n_sdram;

reg sys_rst_n;
wire sys_rst;

initial begin
	sys_rst_n = 1'b0;
	#RESET_PERIOD
	sys_rst_n = 1'b1;
end

assign sys_rst = RST_ACT_LOW ? sys_rst_n : ~sys_rst_n;



//*****************************************************************
// Clock Generation
//*****************************************************************


reg sys_clk_i;
wire sys_clk_p, sys_clk_n;
reg clk_ref_i;

reg ref_clk_i;
wire ref_clk_p, ref_clk_n;

// 200MHz
initial
	sys_clk_i = 1'b0;
always
	sys_clk_i = #(CLKIN_PERIOD/2.0) ~sys_clk_i;

assign sys_clk_p = sys_clk_i;
assign sys_clk_n = ~sys_clk_i;

initial
	clk_ref_i = 1'b0;
always
	clk_ref_i = #REFCLK_PERIOD ~clk_ref_i;

// 156.25MHz
initial
	ref_clk_i = 1'b0;
always
	ref_clk_i = #(ETHCLK_PERIOD/2.0) ~ref_clk_i;

assign ref_clk_p = ref_clk_i;
assign ref_clk_n = ~ref_clk_i;
assign u_top.u_eth_top.clk156 = ref_clk_i;

always @( * ) begin
	ddr3_ck_p_sdram      <=  #(TPROP_PCB_CTRL) ddr3_ck_p_fpga;
	ddr3_ck_n_sdram      <=  #(TPROP_PCB_CTRL) ddr3_ck_n_fpga;
	ddr3_addr_sdram[0]   <=  #(TPROP_PCB_CTRL) ddr3_addr_fpga;
	ddr3_addr_sdram[1]   <=  #(TPROP_PCB_CTRL) (CA_MIRROR == "ON") ?
							{ddr3_addr_fpga[ROW_WIDTH-1:9],
							ddr3_addr_fpga[7], ddr3_addr_fpga[8],
							ddr3_addr_fpga[5], ddr3_addr_fpga[6],
							ddr3_addr_fpga[3], ddr3_addr_fpga[4],
							ddr3_addr_fpga[2:0]} :
							ddr3_addr_fpga;
	ddr3_ba_sdram[0]     <=  #(TPROP_PCB_CTRL) ddr3_ba_fpga;
	ddr3_ba_sdram[1]     <=  #(TPROP_PCB_CTRL) (CA_MIRROR == "ON") ?
							{ddr3_ba_fpga[3-1:2],
							ddr3_ba_fpga[0],
							ddr3_ba_fpga[1]} :
							ddr3_ba_fpga;
	ddr3_ras_n_sdram     <=  #(TPROP_PCB_CTRL) ddr3_ras_n_fpga;
	ddr3_cas_n_sdram     <=  #(TPROP_PCB_CTRL) ddr3_cas_n_fpga;
	ddr3_we_n_sdram      <=  #(TPROP_PCB_CTRL) ddr3_we_n_fpga;
	ddr3_cke_sdram       <=  #(TPROP_PCB_CTRL) ddr3_cke_fpga;
end
    

always @( * )
	ddr3_cs_n_sdram_tmp   <=  #(TPROP_PCB_CTRL) ddr3_cs_n_fpga;
assign ddr3_cs_n_sdram =  ddr3_cs_n_sdram_tmp;
  

always @( * )
	ddr3_dm_sdram_tmp <=  #(TPROP_PCB_DATA) ddr3_dm_fpga;//DM signal generation
assign ddr3_dm_sdram = ddr3_dm_sdram_tmp;
  

always @( * )
	ddr3_odt_sdram_tmp  <=  #(TPROP_PCB_CTRL) ddr3_odt_fpga;
assign ddr3_odt_sdram =  ddr3_odt_sdram_tmp;

// Controlling the bi-directional BUS

genvar dqwd;
generate
	for (dqwd = 1;dqwd < DQ_WIDTH;dqwd = dqwd+1) begin : dq_delay
		WireDelay #(
			.Delay_g       (TPROP_PCB_DATA),
			.Delay_rd      (TPROP_PCB_DATA_RD),
			.ERR_INSERT    ("OFF")
		) u_delay_dq (
			.A             (ddr3_dq_fpga[dqwd]),
			.B             (ddr3_dq_sdram[dqwd]),
			.reset         (sys_rst_n),
			.phy_init_done (u_top.u_db_top.u_db_cont.init_calib_complete)
		);
	end
	// For ECC ON case error is inserted on LSB bit from DRAM to FPGA
	WireDelay #(
		.Delay_g       (TPROP_PCB_DATA),
		.Delay_rd      (TPROP_PCB_DATA_RD),
		.ERR_INSERT    (ERR_INSERT)
	) u_delay_dq_0 (
		.A             (ddr3_dq_fpga[0]),
		.B             (ddr3_dq_sdram[0]),
		.reset         (sys_rst_n),
		.phy_init_done (u_top.u_db_top.u_db_cont.init_calib_complete)
	);
endgenerate

genvar dqswd;
generate
	for (dqswd = 0;dqswd < DQS_WIDTH;dqswd = dqswd+1) begin : dqs_delay
		WireDelay #(
			.Delay_g       (TPROP_DQS),
			.Delay_rd      (TPROP_DQS_RD),
			.ERR_INSERT    ("OFF")
		) u_delay_dqs_p (
			.A             (ddr3_dqs_p_fpga[dqswd]),
			.B             (ddr3_dqs_p_sdram[dqswd]),
			.reset         (sys_rst_n),
			.phy_init_done (u_top.u_db_top.u_db_cont.init_calib_complete)
		);

		WireDelay #(
			.Delay_g       (TPROP_DQS),
			.Delay_rd      (TPROP_DQS_RD),
			.ERR_INSERT    ("OFF")
		) u_delay_dqs_n (
			.A             (ddr3_dqs_n_fpga[dqswd]),
			.B             (ddr3_dqs_n_sdram[dqswd]),
			.reset         (sys_rst_n),
			.phy_init_done (u_top.u_db_top.u_db_cont.init_calib_complete)
		);
end
endgenerate


/*
 *   Target Instance 
 */ 

defparam u_top.u_db_top.u_db_cont.u_sume_ddr_mig.u_sume_ddr_mig_mig.SIMULATION = "TRUE";
defparam u_top.u_db_top.u_db_cont.u_sume_ddr_mig.u_sume_ddr_mig_mig.SIM_BYPASS_INIT_CAL = "FAST";
defparam u_top.u_db_top.u_db_cont.u_sume_ddr_mig.u_sume_ddr_mig_mig.ORDERING = "RELAXED";
defparam u_top.u_db_top.u_db_cont.u_sume_ddr_mig.u_sume_ddr_mig_mig.nBANK_MACHS = 4;

top #(
	.SIMULATION             ("TRUE"),
	.TCQ                    (100),
	.DRAM_TYPE              ("DDR3"),
	.nCK_PER_CLK            (4),
	.DEBUG_PORT             ("OFF"),
	.RST_ACT_LOW            (1)
) u_top (
	.FPGA_SYSCLK_P          (sys_clk_p),
	.FPGA_SYSCLK_N          (sys_clk_n),
	.I2C_FPGA_SCL           (),
	.I2C_FPGA_SDA           (),
	.LED                    (),

	.sys_rst_n              (sys_rst_n),
	.sys_clk_p              (sys_clk_p),
	.sys_clk_n              (sys_clk_n),
	// DDR3 SDRAM
	.ddr3_dq                (ddr3_dq_fpga     ),
	.ddr3_dqs_n             (ddr3_dqs_n_fpga  ),
	.ddr3_dqs_p             (ddr3_dqs_p_fpga  ),
	.ddr3_addr              (ddr3_addr_fpga  ),
	.ddr3_ba                (ddr3_ba_fpga  ),
	.ddr3_ras_n             (ddr3_ras_n_fpga  ),
	.ddr3_cas_n             (ddr3_cas_n_fpga  ),
	.ddr3_we_n              (ddr3_we_n_fpga  ),
	.ddr3_reset_n           (ddr3_reset_n),
	.ddr3_ck_p              (ddr3_ck_p_fpga   ),
	.ddr3_ck_n              (ddr3_ck_n_fpga   ),
	.ddr3_cke               (ddr3_cke_fpga   ),
	.ddr3_cs_n              (ddr3_cs_n_fpga   ),
	.ddr3_dm                (ddr3_dm_fpga   ),
	.ddr3_odt               (ddr3_odt_fpga   ),
	// Ethernet
	.SFP_CLK_P              (ref_clk_p),
	.SFP_CLK_N              (ref_clk_n),
	.SFP_REC_CLK_P          (),
	.SFP_REC_CLK_N          (),
	.SFP_CLK_ALARM_B        (1'b0),

	// Ethernet (ETH0)
	.ETH0_TX_P              (ETH0_TX_P),
	.ETH0_TX_N              (ETH0_TX_N),
	.ETH0_RX_P              (ETH0_RX_P),
	.ETH0_RX_N              (ETH0_RX_N),
	.ETH0_TX_FAULT          (1'b0),
	.ETH0_RX_LOS            (1'b0),
	.ETH0_TX_DISABLE        (ETH0_TX_DISABLE),
	// Ethernet (ETH1)
	.ETH1_TX_P              (ETH1_TX_P),
	.ETH1_TX_N              (ETH1_TX_N),
	.ETH1_RX_P              (ETH1_RX_P),
	.ETH1_RX_N              (ETH1_RX_N),
	.ETH1_TX_FAULT          (1'b0),
	.ETH1_RX_LOS            (1'b0),
	.ETH1_TX_DISABLE        (ETH1_TX_DISABLE) 
);

reg [63:0] h0_s_axis_tx_tdata ;
reg [7:0]  h0_s_axis_tx_tkeep ;
reg        h0_s_axis_tx_tlast ;
//reg        h0_s_axis_tx_tready;
reg        h0_s_axis_tx_tuser ;
reg        h0_s_axis_tx_tvalid;

wire [63:0] h0_m_axis_rx_tdata ;
wire [7:0]  h0_m_axis_rx_tkeep ;
wire        h0_m_axis_rx_tlast ;
wire        h0_m_axis_rx_tuser ;
wire        h0_m_axis_rx_tvalid;
wire        h0_m_axis_rx_tready;

reg [63:0] h1_s_axis_tx_tdata ;
reg [7:0]  h1_s_axis_tx_tkeep ;
reg        h1_s_axis_tx_tlast ;
//reg        h1_s_axis_tx_tready;
reg        h1_s_axis_tx_tuser ;
reg        h1_s_axis_tx_tvalid;

wire [63:0] h1_m_axis_rx_tdata ;
wire [7:0]  h1_m_axis_rx_tkeep ;
wire        h1_m_axis_rx_tlast ;
wire        h1_m_axis_rx_tready;
wire        h1_m_axis_rx_tuser ;
wire        h1_m_axis_rx_tvalid;

assign u_top.u_eth_top.s_axis_rx0_tvalid = h0_s_axis_tx_tvalid;
assign u_top.u_eth_top.s_axis_rx0_tdata  = h0_s_axis_tx_tdata;
assign u_top.u_eth_top.s_axis_rx0_tkeep  = h0_s_axis_tx_tkeep;
assign u_top.u_eth_top.s_axis_rx0_tlast  = h0_s_axis_tx_tlast;
assign u_top.u_eth_top.s_axis_rx0_tuser  = h0_s_axis_tx_tuser;

assign u_top.u_eth_top.s_axis_rx1_tvalid = h1_s_axis_tx_tvalid;
assign u_top.u_eth_top.s_axis_rx1_tdata  = h1_s_axis_tx_tdata;
assign u_top.u_eth_top.s_axis_rx1_tkeep  = h1_s_axis_tx_tkeep;
assign u_top.u_eth_top.s_axis_rx1_tlast  = h1_s_axis_tx_tlast;
assign u_top.u_eth_top.s_axis_rx1_tuser  = h1_s_axis_tx_tuser;

assign h0_m_axis_rx_tvalid = u_top.u_eth_top.m_axis_tx0_tvalid;
assign h0_m_axis_rx_tdata  = u_top.u_eth_top.m_axis_tx0_tdata;
assign h0_m_axis_rx_tkeep  = u_top.u_eth_top.m_axis_tx0_tkeep;
assign h0_m_axis_rx_tlast  = u_top.u_eth_top.m_axis_tx0_tlast;
assign h0_m_axis_rx_tuser  = u_top.u_eth_top.m_axis_tx0_tuser;
assign u_top.u_eth_top.m_axis_tx0_tready = h0_m_axis_rx_tready;
                        
assign h1_s_axis_mx_tvalid = u_top.u_eth_top.m_axis_tx1_tvalid;
assign h1_s_axis_mx_tready = u_top.u_eth_top.m_axis_tx1_tready;
assign h1_s_axis_mx_tdata  = u_top.u_eth_top.m_axis_tx1_tdata;
assign h1_s_axis_mx_tkeep  = u_top.u_eth_top.m_axis_tx1_tkeep;
assign h1_s_axis_mx_tlast  = u_top.u_eth_top.m_axis_tx1_tlast;
assign h1_s_axis_mx_tuser  = u_top.u_eth_top.m_axis_tx1_tuser;
assign u_top.u_eth_top.m_axis_tx1_tready = h1_m_axis_rx_tready;


/*
 *   Task
 */ 

reg [31:0] sys_cnt = 0;
always @ (posedge u_top.clk200)
	sys_cnt <= sys_cnt + 1;

task waitaclk;
begin
	@(posedge u_top.clk200);
end
endtask

task waitclk;
input integer max;
integer i;
begin
	for (i = 0; i < max; i = i + 1)
		waitaclk;
end
endtask

/*      
 *  +--+ -- Attack ----> mitiKV ---- Attack ----> +--+
 *  |H0|                                          |H1|
 *  +--+ <--- ICMP ---- mitiKV <----- ICMP ------ +--+
 */


//
//  Test Data generation
//     $ mitikv/test/scripts/pcap2text <input_pcap>
//

// 00 45 00 08 00 00 00 00   00 00 00 00 00 00 00 00
// 00 7f 01 00 00 7f 7b 2e   11 40 00 40 37 0e 39 00
// 31 5c 01 01 51 50 38 fe   25 00 35 82 39 30 01 00
// 33 33 5c 33 33 5c 32 32   5c 32 32 5c 31 31 5c 31
// 0a 34 34 5c 34 34 5c

task h0_attack_to_mitikv;
begin
	// First flit
	h0_s_axis_tx_tvalid = 1'b1;
	h0_s_axis_tx_tdata  = 64'h11005544_33221100;
	h0_s_axis_tx_tkeep  = 8'hff;
	h0_s_axis_tx_tlast  = 1'b0;
	h0_s_axis_tx_tuser  = 1'b1;
	waitclk(1);
	h0_s_axis_tx_tdata  = 64'h00450008_56443322;
	waitclk(1);
	h0_s_axis_tx_tdata  = 64'h11400040_370e3900;
	waitclk(1);
	h0_s_axis_tx_tdata  = 64'h007f0100_007f7b2e;
	waitclk(1);
	h0_s_axis_tx_tdata  = 64'h25003582_39300100;
	waitclk(1);
	h0_s_axis_tx_tdata  = 64'h315c0101_515038fe;
	waitclk(1);
	h0_s_axis_tx_tdata  = 64'h5c32325c_31315c31;
	waitclk(1);
	h0_s_axis_tx_tdata  = 64'h33335c33_335c3232;
	waitclk(1);
	h0_s_axis_tx_tkeep  = 8'b0111_1111;
	h0_s_axis_tx_tdata  = 64'h000a3434_5c34345c;
	h0_s_axis_tx_tlast  = 1'b1;
	waitclk(1);
	h0_s_axis_tx_tvalid = 1'b0;
	h0_s_axis_tx_tlast  = 1'b0;
	h0_s_axis_tx_tuser  = 1'b0;
	h0_s_axis_tx_tkeep  = 8'h00;
end
endtask

// c0 45 00 08 00 00 00 00   00 00 00 00 00 00 00 00
// 00 7f 01 00 00 7f fd 88   01 40 00 00 e8 f2 55 00
// 37 0e 39 00 00 45 00 00   00 00 d6 e9 03 03 01 00
// 39 30 01 00 00 7f 01 00   00 7f 7b 2e 11 40 00 40 
// 31 31 5c 31 31 5c 01 01   51 50 38 fe 25 00 35 82
// 5c 34 34 5c 33 33 5c 33   33 5c 32 32 5c 32 32 5c 
// 0a 34 34                                        

task h1_icmp_to_mitikv;
begin
	// First flit
	h1_s_axis_tx_tvalid = 1'b1;
	h1_s_axis_tx_tdata  = 64'h00;
	h1_s_axis_tx_tkeep  = 8'hff;
	h1_s_axis_tx_tlast  = 1'b0;
	h1_s_axis_tx_tuser  = 1'b1;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h00000000_00000000;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'hc0450008_00000000;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h01400000_e8f25500;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h007f0100_007ffd88;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h0000d6e9_03030100;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h370e3900_00450000;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h007f7b2e_11400040;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h39300100_007f0100;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h515038fe_25003582;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h31315c31_315c0101;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h335c3232_5c32325c;
	waitclk(1);
	h1_s_axis_tx_tdata  = 64'h5c34345c_33335c33;
	waitclk(1);
	waitclk(1);
	h1_s_axis_tx_tkeep  = 8'b0000_0111;
	h1_s_axis_tx_tdata  = 64'h00000000_000a3434;
	h1_s_axis_tx_tlast  = 1'b1;
	waitclk(1);
	h1_s_axis_tx_tvalid = 1'b0;
	h1_s_axis_tx_tlast  = 1'b0;
	h1_s_axis_tx_tuser  = 1'b0;
	h1_s_axis_tx_tkeep  = 8'h00;
end
endtask


//*******************************************************************
// Monitoring mitiKV behavior
//*******************************************************************

// Monitoring init_calib_complete signal
reg init_calib;
always @ (posedge u_top.clk200) 
	init_calib <= u_top.u_db_top.u_db_cont.init_calib_complete;

always @ (posedge u_top.clk200)
	if ({u_top.u_db_top.u_db_cont.init_calib_complete, init_calib} == 2'b10) begin
		$write("%c[1;34m",27); 
		$display("Clk[%8d]\tinit_calib_complete is high", sys_cnt);
		$write("%c[0m",27); 
	end

// Monitoring eth_rst signal (To check the clock generated by ETH)
reg eth_reset_buf;
reg DEBUG_ETH_RESET = 1'b0;
always @ (posedge u_top.u_eth_top.clk156) 
	eth_reset_buf <= u_top.u_eth_top.eth_rst;

always @ (posedge u_top.u_eth_top.clk156)
	if ({u_top.u_eth_top.eth_rst, eth_reset_buf} == 2'b10) begin
		$write("%c[1;34m",27); 
		$display("Clk[%8d]\tETH_RST is asserted", sys_cnt);
		$write("%c[0m",27); 
		DEBUG_ETH_RESET <= 1'b1;
	end
// Monitoring ICMP port unreachable message
always @ (posedge u_top.u_eth_top.clk156) 
	if (u_top.u_eth_top.u_eth_encap.filter_mode) begin
		$write("%c[1;34m",27); 
		$display("Clk[%8d]\t ICMP port unreachable message is found.", 
			sys_cnt);
		$display("\tThe flow below is inserted into mitiKV table.");
		$display("\t\tSrc  IP addr  : %d.%d.%d.%d", 
			u_top.u_eth_top.u_eth_encap.filter_src_ip[31:24], 
			u_top.u_eth_top.u_eth_encap.filter_src_ip[23:16], 
			u_top.u_eth_top.u_eth_encap.filter_src_ip[15:8], 
			u_top.u_eth_top.u_eth_encap.filter_src_ip[7:0]);
		$display("\t\tDest IP addr  : %d.%d.%d.%d", 
			u_top.u_eth_top.u_eth_encap.filter_dst_ip[31:24], 
			u_top.u_eth_top.u_eth_encap.filter_dst_ip[23:16], 
			u_top.u_eth_top.u_eth_encap.filter_dst_ip[15:8], 
			u_top.u_eth_top.u_eth_encap.filter_dst_ip[7:0]);
		$display("\t\tSrc  UDP port : %d", 
			u_top.u_eth_top.u_eth_encap.filter_src_udp);
		$display("\t\tDest UDP port : %d", 
			u_top.u_eth_top.u_eth_encap.filter_dst_udp);
		//$display("\t\tHash value    : %d", );
		$write("%c[0m",27); 
	end

always @ (posedge u_top.u_eth_top.clk156) 
	if (u_top.u_eth_top.u_eth_encap.filter_block) begin
		$write("%c[1;34m",27); 
		$display("Clk[%8d]\t Packet is filtered.", sys_cnt);
		//$display("\t\tSrc  IP addr  : %d.%d.%d.%d", );
		//$display("\t\tDest IP addr  : %d.%d.%d.%d", );
		//$display("\t\tSrc  UDP port : %d", );
		//$display("\t\tDest UDP port : %d", );
		//$display("\t\tHash value    : %d", );
		$write("%c[0m",27); 
	end
//*******************************************************************
// Memory Models instantiations
//*******************************************************************

genvar r,i;
generate
	for (r = 0; r < CS_WIDTH; r = r + 1) begin: mem_rnk
		for (i = 0; i < NUM_COMP; i = i + 1) begin: gen_mem
			ddr3_model u_comp_ddr3 (
				.rst_n   (ddr3_reset_n),
				.ck      (ddr3_ck_p_sdram[(i*MEMORY_WIDTH)/72]),
				.ck_n    (ddr3_ck_n_sdram[(i*MEMORY_WIDTH)/72]),
				.cke     (ddr3_cke_sdram[((i*MEMORY_WIDTH)/72)+(1*r)]),
				.cs_n    (ddr3_cs_n_sdram[((i*MEMORY_WIDTH)/72)+(1*r)]),
				.ras_n   (ddr3_ras_n_sdram),
				.cas_n   (ddr3_cas_n_sdram),
				.we_n    (ddr3_we_n_sdram),
				.dm_tdqs (ddr3_dm_sdram[i]),
				.ba      (ddr3_ba_sdram[r]),
				.addr    (ddr3_addr_sdram[r]),
				.dq      (ddr3_dq_sdram[MEMORY_WIDTH*(i+1)-1:MEMORY_WIDTH*(i)]),
				.dqs     (ddr3_dqs_p_sdram[i]),
				.dqs_n   (ddr3_dqs_n_sdram[i]),
				.tdqs_n  (),
				.odt     (ddr3_odt_sdram[((i*MEMORY_WIDTH)/72)+(1*r)])
			);
		end
	end
endgenerate
    

/*
 *   scenario
 */ 

initial begin
	//$dumpfile("./test.vcd");
	//$dumpvars(0, tb_sim);
	$display("Simulation begins.");
	$display("================================================");

	wait (u_top.u_db_top.u_db_cont.init_calib_complete);
	waitclk(10);

	h0_attack_to_mitikv;
	waitclk(40);
	h1_icmp_to_mitikv;
	waitclk(40);
	$display("================================================");
	$display("Simulation finishes.");



	$finish;
end

endmodule

