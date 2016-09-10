`timescale 1ns / 1ps

module eth_top #(
   //***************************************************************************
   // The following parameters refer to width of various ports
   //***************************************************************************
   parameter CK_WIDTH              = 1,
                                     // # of CK/CK# outputs to memory.
   parameter nCS_PER_RANK          = 1,
                                     // # of unique CS outputs per rank for phy
   parameter CKE_WIDTH             = 1,
                                     // # of CKE outputs to memory.
   parameter DM_WIDTH              = 8,
                                     // # of DM (data mask)
   parameter ODT_WIDTH             = 1,
                                     // # of ODT outputs to memory.
   parameter BANK_WIDTH            = 3,
                                     // # of memory Bank Address bits.
   parameter COL_WIDTH             = 10,
                                     // # of memory Column Address bits.
   parameter CS_WIDTH              = 1,
                                     // # of unique CS outputs to memory.
   parameter DQ_WIDTH              = 64,
                                     // # of DQ (data)
   parameter DQS_WIDTH             = 8,
   parameter DQS_CNT_WIDTH         = 3,
                                     // = ceil(log2(DQS_WIDTH))
   parameter DRAM_WIDTH            = 8,
                                     // # of DQ per DQS
   parameter ECC                   = "OFF",
   parameter ECC_TEST              = "OFF",
   parameter nBANK_MACHS           = 4,
   parameter RANKS                 = 1,
                                     // # of Ranks.
   parameter ROW_WIDTH             = 16,
                                     // # of memory Row Address bits.
   parameter ADDR_WIDTH            = 30,
                                     // # = RANK_WIDTH + BANK_WIDTH
                                     //     + ROW_WIDTH + COL_WIDTH;

   //***************************************************************************
   // The following parameters are mode register settings
   //***************************************************************************
   parameter BURST_MODE            = "8",
                                     // DDR3 SDRAM:
                                     // Burst Length (Mode Register 0).
                                     // # = "8", "4", "OTF".
                                     // DDR2 SDRAM:
                                     // Burst Length (Mode Register).
                                     // # = "8", "4".

   
   //***************************************************************************
   // The following parameters are multiplier and divisor factors for PLLE2.
   // Based on the selected design frequency these parameters vary.
   //***************************************************************************
   parameter CLKIN_PERIOD          = 5000,
                                     // Input Clock Period
   parameter CLKFBOUT_MULT         = 8,
                                     // write PLL VCO multiplier
   parameter DIVCLK_DIVIDE         = 1,
                                     // write PLL VCO divisor
   parameter CLKOUT0_PHASE         = 337.5,
                                     // Phase for PLL output clock (CLKOUT0)
   parameter CLKOUT0_DIVIDE        = 2,
                                     // VCO output divisor for PLL output clock (CLKOUT0)
   parameter CLKOUT1_DIVIDE        = 2,
                                     // VCO output divisor for PLL output clock (CLKOUT1)
   parameter CLKOUT2_DIVIDE        = 32,
                                     // VCO output divisor for PLL output clock (CLKOUT2)
   parameter CLKOUT3_DIVIDE        = 8,
                                     // VCO output divisor for PLL output clock (CLKOUT3)
   parameter MMCM_VCO              = 800,
                                     // Max Freq (MHz) of MMCM VCO
   parameter MMCM_MULT_F           = 4,
                                     // write MMCM VCO multiplier
   parameter MMCM_DIVCLK_DIVIDE    = 1,
                                     // write MMCM VCO divisor

   //***************************************************************************
   // Simulation parameters
   //***************************************************************************
   parameter SIMULATION            = "FALSE",
                                     // Should be TRUE during design simulations and
                                     // FALSE during implementations

   //***************************************************************************
   // IODELAY and PHY related parameters
   //***************************************************************************
   parameter TCQ                   = 100,
   
   parameter DRAM_TYPE             = "DDR3",

   
   //***************************************************************************
   // System clock frequency parameters
   //***************************************************************************
   parameter nCK_PER_CLK           = 4,
                                     // # of memory CKs per fabric CLK

   
   //***************************************************************************
   // AXI4 Shim parameters
   //***************************************************************************
   parameter C_S_AXI_ID_WIDTH              = 4,
                                             // Width of all master and slave ID signals.
                                             // # = >= 1.
   parameter C_S_AXI_ADDR_WIDTH            = 32,
                                             // Width of S_AXI_AWADDR, S_AXI_ARADDR, M_AXI_AWADDR and
                                             // M_AXI_ARADDR for all SI/MI slots.
                                             // # = 32.
   parameter C_S_AXI_DATA_WIDTH            = 64,
                                             // Width of WDATA and RDATA on SI slot.
                                             // Must be <= APP_DATA_WIDTH.
                                             // # = 32, 64, 128, 256.
   parameter C_S_AXI_SUPPORTS_NARROW_BURST = 0,
                                             // Indicates whether to instatiate upsizer
                                             // Range: 0, 1
      

   //***************************************************************************
   // Debug parameters
   //***************************************************************************
   parameter DEBUG_PORT            = "OFF",
                                     // # = "ON" Enable debug signals/controls.
                                     //   = "OFF" Disable debug signals/controls.
      
   parameter RST_ACT_LOW           = 0,
                                     // =1 for active low reset,
                                     // =0 for active high.
	parameter cold_reset_count = 14'h3fff,
	parameter ifg_len = 28'hFFFF
)(
	input logic clk50,
	input logic clk200,

   // Inouts
   inout [63:0]                         ddr3_dq,
   inout [7:0]                        ddr3_dqs_n,
   inout [7:0]                        ddr3_dqs_p,

   // Outputs
   output [15:0]                       ddr3_addr,
   output [2:0]                      ddr3_ba,
   output                                       ddr3_ras_n,
   output                                       ddr3_cas_n,
   output                                       ddr3_we_n,
   output                                       ddr3_reset_n,
   output [0:0]                        ddr3_ck_p,
   output [0:0]                        ddr3_ck_n,
   output [0:0]                       ddr3_cke,
   
   output [0:0]           ddr3_cs_n,
   
   output [7:0]                        ddr3_dm,
   
   output [0:0]                       ddr3_odt,
   

   //// Inputs
   //
   //// Differential system clocks
   //input                                        sys_clk_p,
   //input                                        sys_clk_n,
   //

   //output                                       tg_compare_error,
   //output                                       init_calib_complete,
   

	input  logic SFP_CLK_P,
	input  logic SFP_CLK_N,

	input  logic ETH1_TX_P,
	input  logic ETH1_TX_N,
	output logic ETH1_RX_P,
	output logic ETH1_RX_N,

	input  logic ETH1_TX_FAULT,
	input  logic ETH1_RX_LOS,
	output logic ETH1_TX_DISABLE
);


wire ui_clk;
// Slave Interface Write Address Ports
wire [C_S_AXI_ID_WIDTH-1:0]       s_axi_dram_awid;
wire [C_S_AXI_ADDR_WIDTH-1:0]     s_axi_dram_awaddr;
wire [7:0]                        s_axi_dram_awlen;
wire [2:0]                        s_axi_dram_awsize;
wire [1:0]                        s_axi_dram_awburst;
wire [0:0]                        s_axi_dram_awlock;
wire [3:0]                        s_axi_dram_awcache;
wire [2:0]                        s_axi_dram_awprot;
wire                              s_axi_dram_awvalid;
wire                              s_axi_dram_awready;
 // Slave Interface Write Data Ports
wire [C_S_AXI_DATA_WIDTH-1:0]     s_axi_dram_wdata;
wire [(C_S_AXI_DATA_WIDTH/8)-1:0]   s_a_dramxi_wstrb;
wire                              s_axi_dram_wlast;
wire                              s_axi_dram_wvalid;
wire                              s_axi_dram_wready;
 // Slave Interface Write Response Port_drams
wire                              s_axi_dram_bready;
wire [C_S_AXI_ID_WIDTH-1:0]       s_axi_dram_bid;
wire [1:0]                        s_axi_dram_bresp;
wire                              s_axi_dram_bvalid;
 // Slave Interface Read Address Ports
wire [C_S_AXI_ID_WIDTH-1:0]       s_axi_dram_arid;
wire [C_S_AXI_ADDR_WIDTH-1:0]     s_axi_dram_araddr;
wire [7:0]                        s_axi_dram_arlen;
wire [2:0]                        s_axi_dram_arsize;
wire [1:0]                        s_axi_dram_arburst;
wire [0:0]                        s_axi_dram_arlock;
wire [3:0]                        s_axi_dram_arcache;
wire [2:0]                        s_axi_dram_arprot;
wire                              s_axi_dram_arvalid;
wire                              s_axi_dram_arready;
 // Slave Interface Read Data Ports
wire                              s_axi_dram_rready;
wire [C_S_AXI_ID_WIDTH-1:0]       s_axi_dram_rid;
wire [C_S_AXI_DATA_WIDTH-1:0]     s_axi_dram_rdata;
wire [1:0]                        s_axi_dram_rresp;
wire                              s_axi_dram_rlast;
wire                              s_axi_dram_rvalid;

wire        s_axis_rxfifo_tvalid;
wire        s_axis_rxfifo_tready;
wire [63:0] s_axis_rxfifo_tdata ;
wire [ 7:0] s_axis_rxfifo_tstrb ;
wire [ 7:0] s_axis_rxfifo_tkeep ;
wire        s_axis_rxfifo_tlast ;
wire        s_axis_rxfifo_tid   ;
wire        s_axis_rxfifo_tdest ;
                                ;
wire        s_axis_txfifo_tvalid;
wire        s_axis_txfifo_tready;
wire [63:0] s_axis_txfifo_tdata ;
wire [ 7:0] s_axis_txfifo_tstrb ;
wire [ 7:0] s_axis_txfifo_tkeep ;
wire        s_axis_txfifo_tlast ;
wire        s_axis_txfifo_tid   ;
wire        s_axis_txfifo_tdest ;



logic sys_rst;
logic [13:0] cold_counter;
always_ff @(posedge clk156) begin
	if (cold_counter != cold_reset_count) begin
		sys_rst <= 1'b1;
		cold_counter <= cold_counter + 14'd1;
	end else
		sys_rst <= 1'b0;
end


// pcs_pma_conf
logic [535:0] pcs_pma_configuration_vector;
pcs_pma_conf pcs_pma_conf0(.*);

// eth_mac_conf
logic [79:0] mac_tx_configuration_vector;
logic [79:0] mac_rx_configuration_vector;
eth_mac_conf eth_mac_conf0(.*);

// eth_send
logic        s_axis_tx1_tvalid;
logic        s_axis_tx1_tready;
logic [63:0] s_axis_tx1_tdata;
logic [ 7:0] s_axis_tx1_tkeep;
logic        s_axis_tx1_tlast;
logic        s_axis_tx1_tuser;

logic        m_axis_rx1_tvalid;
logic        m_axis_rx1_tready;
logic [63:0] m_axis_rx1_tdata;
logic [ 7:0] m_axis_rx1_tkeep;
logic        m_axis_rx1_tlast;
logic        m_axis_rx1_tuser;

// Ethernet IP
logic txusrclk_out;
logic txusrclk2_out;
logic gttxreset_out;
logic gtrxreset_out;
logic txuserrdy_out;
logic areset_datapathclk_out;
logic reset_counter_done_out;
logic qplllock_out;
logic qplloutclk_out;
logic qplloutrefclk_out;
logic [447:0] pcs_pma_status_vector;
logic [1:0] mac_status_vector;
logic [7:0] pcspma_status;
logic rx_statistics_valid;
logic tx_statistics_valid;
wire zero = 1'b0;
axi_10g_ethernet_0 axi_10g_ethernet_0_ins (
	.coreclk_out(clk156),
	.refclk_n(SFP_CLK_N),
	.refclk_p(SFP_CLK_P),
	.dclk(clk50),
	.reset(sys_rst),
	.rx_statistics_vector(),
	.rxn(ETH1_TX_N),
	.rxp(ETH1_TX_P),
	.s_axis_pause_tdata(16'b0),
	.s_axis_pause_tvalid(1'b0),
	.signal_detect(!ETH1_RX_LOS),
	.tx_disable(ETH1_TX_DISABLE),
	.tx_fault(ETH1_TX_FAULT),
	.tx_ifg_delay(8'd0),
	.tx_statistics_vector(),
	.txn(ETH1_RX_N),
	.txp(ETH1_RX_P),

	.rxrecclk_out(rxrecclk),
	.resetdone_out(),

	// eth tx
	.s_axis_tx_tready(s_axis_tx1_tready),
	.s_axis_tx_tdata (s_axis_tx1_tdata),
	.s_axis_tx_tkeep (s_axis_tx1_tkeep),
	.s_axis_tx_tlast (s_axis_tx1_tlast),
	.s_axis_tx_tvalid(s_axis_tx1_tvalid),
	.s_axis_tx_tuser (s_axis_tx1_tuser & zero),
	
	// eth rx
	.m_axis_rx_tdata (m_axis_rx1_tdata),
	.m_axis_rx_tkeep (m_axis_rx1_tkeep),
	.m_axis_rx_tlast (m_axis_rx1_tlast),
	.m_axis_rx_tuser (m_axis_rx1_tuser),
	.m_axis_rx_tvalid(m_axis_rx1_tvalid),

	.sim_speedup_control(1'b0),
	.rx_axis_aresetn(~sys_rst),
	.tx_axis_aresetn(~sys_rst),

	.*
);

//axi_10g_ethernet_0_shared u_eth2 (
//  .tx_axis_aresetn(~sys_rst),                            // input wire tx_axis_aresetn
//  .rx_axis_aresetn(~sys_rst),                            // input wire rx_axis_aresetn
//  .tx_ifg_delay(8'd0),                                  // input wire [7 : 0] tx_ifg_delay
//  .dclk(clk50),                                                  // input wire dclk
//  .txp(ETH2_RX_P),                                                    // output wire txp
//  .txn(ETH2_RX_N),                                                    // output wire txn
//  .rxp(ETH2_TX_P),                                                    // input wire rxp
//  .rxn(ETH2_TX_N),                                                    // input wire rxn
//  .signal_detect(!ETH2_RX_LOS),                                // input wire signal_detect
//  .tx_fault(ETH2_TX_FAULT),                                          // input wire tx_fault
//  .tx_disable(ETH2_TX_DISABLE),                                      // output wire tx_disable
//  .pcspma_status(),                                // output wire [7 : 0] pcspma_status
//  .sim_speedup_control(1'd0),                    // input wire sim_speedup_control
//  .rxrecclk_out(rxrecclk),                                  // output wire rxrecclk_out
//  .mac_tx_configuration_vector(mac_tx_configuration_vector),    // input wire [79 : 0] mac_tx_configuration_vector
//  .mac_rx_configuration_vector(mac_rx_configuration_vector),    // input wire [79 : 0] mac_rx_configuration_vector
//  .mac_status_vector(),                        // output wire [1 : 0] mac_status_vector
//  .pcs_pma_configuration_vector(pcs_pma_configuration_vector),  // input wire [535 : 0] pcs_pma_configuration_vector
//  .pcs_pma_status_vector(),                // output wire [447 : 0] pcs_pma_status_vector
//  .areset_coreclk(areset_coreclk),                              // input wire areset_coreclk
//  .txusrclk(txusrclk),                                          // input wire txusrclk
//  .txusrclk2(txusrclk2),                                        // input wire txusrclk2
//  .txoutclk(txoutclk),                                          // output wire txoutclk
//  .txuserrdy(txuserrdy),                                        // input wire txuserrdy
//  .tx_resetdone(tx_resetdone),                                  // output wire tx_resetdone
//  .rx_resetdone(rx_resetdone),                                  // output wire rx_resetdone
//  .coreclk(coreclk),                                            // input wire coreclk
//  .areset(areset),                                              // input wire areset
//  .gttxreset(gttxreset),                                        // input wire gttxreset
//  .gtrxreset(gtrxreset),                                        // input wire gtrxreset
//  .qplllock(qplllock),                                          // input wire qplllock
//  .qplloutclk(qplloutclk),                                      // input wire qplloutclk
//  .qplloutrefclk(qplloutrefclk),                                // input wire qplloutrefclk
//  .reset_counter_done(reset_counter_done),                      // input wire reset_counter_done
//  .s_axis_tx_tdata(s_axis_tx_tdata),                            // input wire [63 : 0] s_axis_tx_tdata
//  .s_axis_tx_tkeep(s_axis_tx_tkeep),                            // input wire [7 : 0] s_axis_tx_tkeep
//  .s_axis_tx_tlast(s_axis_tx_tlast),                            // input wire s_axis_tx_tlast
//  .s_axis_tx_tready(s_axis_tx_tready),                          // output wire s_axis_tx_tready
//  .s_axis_tx_tuser(s_axis_tx_tuser),                            // input wire [0 : 0] s_axis_tx_tuser
//  .s_axis_tx_tvalid(s_axis_tx_tvalid),                          // input wire s_axis_tx_tvalid
//  .s_axis_pause_tdata(s_axis_pause_tdata),                      // input wire [15 : 0] s_axis_pause_tdata
//  .s_axis_pause_tvalid(s_axis_pause_tvalid),                    // input wire s_axis_pause_tvalid
//  .m_axis_rx_tdata(m_axis_rx_tdata),                            // output wire [63 : 0] m_axis_rx_tdata
//  .m_axis_rx_tkeep(m_axis_rx_tkeep),                            // output wire [7 : 0] m_axis_rx_tkeep
//  .m_axis_rx_tlast(m_axis_rx_tlast),                            // output wire m_axis_rx_tlast
//  .m_axis_rx_tuser(m_axis_rx_tuser),                            // output wire m_axis_rx_tuser
//  .m_axis_rx_tvalid(m_axis_rx_tvalid),                          // output wire m_axis_rx_tvalid
//  .tx_statistics_valid(tx_statistics_valid),                    // output wire tx_statistics_valid
//  .tx_statistics_vector(tx_statistics_vector),                  // output wire [25 : 0] tx_statistics_vector
//  .rx_statistics_valid(rx_statistics_valid),                    // output wire rx_statistics_valid
//  .rx_statistics_vector(rx_statistics_vector)                  // output wire [29 : 0] rx_statistics_vector
//);

axis_data_fifo_0 u_rx_path (
  .m_axis_aresetn     (~ui_clk_sync_rst),          // input wire s_axis_aresetn
  .s_axis_aresetn     (~sys_rst),          // input wire m_axis_aresetn
  .m_axis_aclk        (ui_clk),                // input wire s_axis_aclk
  .m_axis_tvalid      (s_axis_rxfifo_tvalid),            // input wire s_axis_tvalid
  .m_axis_tready      (s_axis_rxfifo_tready),            // output wire s_axis_tready
  .m_axis_tdata       (s_axis_rxfifo_tdata),              // input wire [63 : 0] s_axis_tdata
  .m_axis_tkeep       (s_axis_rxfifo_tkeep),              // input wire [7 : 0] s_axis_tkeep
  .m_axis_tlast       (s_axis_rxfifo_tlast),              // input wire s_axis_tlast
  .m_axis_tuser       (s_axis_rxfifo_tuser),              // input wire [0 : 0] s_axis_tuser
  .s_axis_aclk        (clk156),                // input wire m_axis_aclk
  .s_axis_tvalid      (m_axis_rx1_tvalid),            // output wire m_axis_tvalid
  .s_axis_tready      (m_axis_rx1_tready),            // input wire m_axis_tready
  .s_axis_tdata       (m_axis_rx1_tdata),              // output wire [63 : 0] m_axis_tdata
  .s_axis_tkeep       (m_axis_rx1_tkeep),              // output wire [7 : 0] m_axis_tkeep
  .s_axis_tlast       (m_axis_rx1_tlast),              // output wire m_axis_tlast
  .s_axis_tuser       (m_axis_rx1_tuser),              // output wire [0 : 0] m_axis_tuser
  .axis_data_count    (),        // output wire [31 : 0] axis_data_count
  .axis_wr_data_count (),  // output wire [31 : 0] axis_wr_data_count
  .axis_rd_data_count ()  // output wire [31 : 0] axis_rd_data_count
);

axis_data_fifo_0 u_tx_path (
  .s_axis_aresetn     (~ui_clk_sync_rst),          // input wire s_axis_aresetn
  .m_axis_aresetn     (~sys_rst),          // input wire m_axis_aresetn
  .s_axis_aclk        (ui_clk),                // input wire s_axis_aclk
  .s_axis_tvalid      (s_axis_txfifo_tvalid),            // input wire s_axis_tvalid
  .s_axis_tready      (s_axis_txfifo_tready),            // output wire s_axis_tready
  .s_axis_tdata       (s_axis_txfifo_tdata),              // input wire [63 : 0] s_axis_tdata
  .s_axis_tkeep       (s_axis_txfifo_tkeep),              // input wire [7 : 0] s_axis_tkeep
  .s_axis_tlast       (s_axis_txfifo_tlast),              // input wire s_axis_tlast
  .s_axis_tuser       (s_axis_txfifo_tuser),              // input wire [0 : 0] s_axis_tuser
  .m_axis_aclk        (clk156),                // input wire m_axis_aclk
  .m_axis_tvalid      (s_axis_tx1_tvalid),            // output wire m_axis_tvalid
  .m_axis_tready      (s_axis_tx1_tready),            // input wire m_axis_tready
  .m_axis_tdata       (s_axis_tx1_tdata),              // output wire [63 : 0] m_axis_tdata
  .m_axis_tkeep       (s_axis_tx1_tkeep),              // output wire [7 : 0] m_axis_tkeep
  .m_axis_tlast       (s_axis_tx1_tlast),              // output wire m_axis_tlast
  .m_axis_tuser       (s_axis_tx1_tuser),              // output wire [0 : 0] m_axis_tuser
  .axis_data_count    (),        // output wire [31 : 0] axis_data_count
  .axis_wr_data_count (),  // output wire [31 : 0] axis_wr_data_count
  .axis_rd_data_count ()  // output wire [31 : 0] axis_rd_data_count
);

axi_vfifo_ctrl_0 axi_vfifo_ctl0 (
  .aclk           (ui_clk),            // input wire aclk
  .aresetn        (~ui_clk_sync_rst),  // input wire aresetn

  .s_axis_tvalid  (s_axis_rxfifo_tvalid), // input wire s_axis_tvalid
  .s_axis_tready  (s_axis_rxfifo_tready), // output wire s_axis_tready
  .s_axis_tdata   (s_axis_rxfifo_tdata),  // input wire [63 : 0] s_axis_tdata
  .s_axis_tstrb   (s_axis_rxfifo_tstrb),  // input wire [7 : 0] s_axis_tstrb
  .s_axis_tkeep   (s_axis_rxfifo_tkeep),  // input wire [7 : 0] s_axis_tkeep
  .s_axis_tlast   (s_axis_rxfifo_tlast),  // input wire s_axis_tlast
  .s_axis_tid     (s_axis_rxfifo_tid),    // input wire [0 : 0] s_axis_tid
  .s_axis_tdest   (s_axis_rxfifo_tdest),  // input wire [0 : 0] s_axis_tdest

  .m_axis_tvalid  (s_axis_txfifo_tvalid), // output wire m_axis_tvalid
  .m_axis_tready  (s_axis_txfifo_tready), // input wire m_axis_tready
  .m_axis_tdata   (s_axis_txfifo_tdata),  // output wire [63 : 0] m_axis_tdata
  .m_axis_tstrb   (s_axis_txfifo_tstrb),  // output wire [7 : 0] m_axis_tstrb
  .m_axis_tkeep   (s_axis_txfifo_tkeep),  // output wire [7 : 0] m_axis_tkeep
  .m_axis_tlast   (s_axis_txfifo_tlast),  // output wire m_axis_tlast
  .m_axis_tid     (s_axis_txfifo_tid),    // output wire [0 : 0] m_axis_tid
  .m_axis_tdest   (s_axis_txfifo_tdest),  // output wire [0 : 0] m_axis_tdest
  // DRAM
  .m_axi_awid      (s_axi_dram_awid),     // output wire [0 : 0] m_axi_awid
  .m_axi_awaddr    (s_axi_dram_awaddr),   // output wire [31 : 0] m_axi_awaddr
  .m_axi_awlen     (s_axi_dram_awlen),    // output wire [7 : 0] m_axi_awlen
  .m_axi_awsize    (s_axi_dram_awsize),   // output wire [2 : 0] m_axi_awsize
  .m_axi_awburst   (s_axi_dram_awburst),  // output wire [1 : 0] m_axi_awburst
  .m_axi_awlock    (s_axi_dram_awlock),   // output wire [0 : 0] m_axi_awlock
  .m_axi_awcache   (s_axi_dram_awcache),  // output wire [3 : 0] m_axi_awcache
  .m_axi_awprot    (s_axi_dram_awprot),   // output wire [2 : 0] m_axi_awprot
  .m_axi_awqos     (s_axi_dram_awqos),    // output wire [3 : 0] m_axi_awqos
  .m_axi_awregion  (s_axi_dram_awregion), // output wire [3 : 0] m_axi_awregion
  .m_axi_awuser    (s_axi_dram_awuser),   // output wire [0 : 0] m_axi_awuser
  .m_axi_awvalid   (s_axi_dram_awvalid),  // output wire m_axi_awvalid
  .m_axi_awready   (s_axi_dram_awready),  // input wire m_axi_awready
  .m_axi_wdata     (s_axi_dram_wdata),    // output wire [63 : 0] m_axi_wdata
  .m_axi_wstrb     (s_axi_dram_wstrb),    // output wire [7 : 0] m_axi_wstrb
  .m_axi_wlast     (s_axi_dram_wlast),    // output wire m_axi_wlast
  .m_axi_wuser     (s_axi_dram_wuser),    // output wire [0 : 0] m_axi_wuser
  .m_axi_wvalid    (s_axi_dram_wvalid),   // output wire m_axi_wvalid
  .m_axi_wready    (s_axi_dram_wready),   // input wire m_axi_wready
  .m_axi_bid       (s_axi_dram_bid),      // input wire [0 : 0] m_axi_bid
  .m_axi_bresp     (s_axi_dram_bresp),    // input wire [1 : 0] m_axi_bresp
  .m_axi_buser     (s_axi_dram_buser),    // input wire [0 : 0] m_axi_buser
  .m_axi_bvalid    (s_axi_dram_bvalid),   // input wire m_axi_bvalid
  .m_axi_bready    (s_axi_dram_bready),   // output wire m_axi_bready
  .m_axi_arid      (s_axi_dram_arid),     // output wire [0 : 0] m_axi_arid
  .m_axi_araddr    (s_axi_dram_araddr),   // output wire [31 : 0] m_axi_araddr
  .m_axi_arlen     (s_axi_dram_arlen),    // output wire [7 : 0] m_axi_arlen
  .m_axi_arsize    (s_axi_dram_arsize),   // output wire [2 : 0] m_axi_arsize
  .m_axi_arburst   (s_axi_dram_arburst),  // output wire [1 : 0] m_axi_arburst
  .m_axi_arlock    (s_axi_dram_arlock),   // output wire [0 : 0] m_axi_arlock
  .m_axi_arcache   (s_axi_dram_arcache),  // output wire [3 : 0] m_axi_arcache
  .m_axi_arprot    (s_axi_dram_arprot),   // output wire [2 : 0] m_axi_arprot
  .m_axi_arqos     (s_axi_dram_arqos),    // output wire [3 : 0] m_axi_arqos
  .m_axi_arregion  (s_axi_dram_arregion), // output wire [3 : 0] m_axi_arregion
  .m_axi_aruser    (s_axi_dram_aruser),   // output wire [0 : 0] m_axi_aruser
  .m_axi_arvalid   (s_axi_dram_arvalid),  // output wire m_axi_arvalid
  .m_axi_arready   (s_axi_dram_arready),  // input wire m_axi_arready
  .m_axi_rid       (s_axi_dram_rid),      // input wire [0 : 0] m_axi_rid
  .m_axi_rdata     (s_axi_dram_rdata),    // input wire [63 : 0] m_axi_rdata
  .m_axi_rresp     (s_axi_dram_rresp),    // input wire [1 : 0] m_axi_rresp
  .m_axi_rlast     (s_axi_dram_rlast),    // input wire m_axi_rlast
  .m_axi_ruser     (s_axi_dram_ruser),    // input wire [0 : 0] m_axi_ruser
  .m_axi_rvalid    (s_axi_dram_rvalid),   // input wire m_axi_rvalid
  .m_axi_rready    (s_axi_dram_rready),   // output wire m_axi_rready
  .vfifo_mm2s_channel_full (2'd0),        // input wire [1 : 0] vfifo_mm2s_channel_full
  .vfifo_s2mm_channel_full (),            // output wire [1 : 0] vfifo_s2mm_channel_full
  .vfifo_mm2s_channel_empty(),            // output wire [1 : 0] vfifo_mm2s_channel_empty
  .vfifo_idle              ()             // output wire [1 : 0] vfifo_idle
);

mig_7series_0 u_mig_7series_0 (
	// Memory interface ports
	.ddr3_addr                      (ddr3_addr),  // output [15:0]		ddr3_addr
	.ddr3_ba                        (ddr3_ba),  // output [2:0]		ddr3_ba
	.ddr3_cas_n                     (ddr3_cas_n),  // output			ddr3_cas_n
	.ddr3_ck_n                      (ddr3_ck_n),  // output [0:0]		ddr3_ck_n
	.ddr3_ck_p                      (ddr3_ck_p),  // output [0:0]		ddr3_ck_p
	.ddr3_cke                       (ddr3_cke),  // output [0:0]		ddr3_cke
	.ddr3_ras_n                     (ddr3_ras_n),  // output			ddr3_ras_n
	.ddr3_reset_n                   (ddr3_reset_n),  // output			ddr3_reset_n
	.ddr3_we_n                      (ddr3_we_n),  // output			ddr3_we_n
	.ddr3_dq                        (ddr3_dq),  // inout [63:0]		ddr3_dq
	.ddr3_dqs_n                     (ddr3_dqs_n),  // inout [7:0]		ddr3_dqs_n
	.ddr3_dqs_p                     (ddr3_dqs_p),  // inout [7:0]		ddr3_dqs_p
	.init_calib_complete            (init_calib_complete),  // output			init_calib_complete
	  
	.ddr3_cs_n                      (ddr3_cs_n),  // output [0:0]		ddr3_cs_n
	.ddr3_dm                        (ddr3_dm),  // output [7:0]		ddr3_dm
	.ddr3_odt                       (ddr3_odt),  // output [0:0]		ddr3_odt
	// Application interface ports
	.ui_clk                         (ui_clk),  // output			ui_clk
	.ui_clk_sync_rst                (ui_clk_sync_rst),  // output			ui_clk_sync_rst
	.mmcm_locked                    (mmcm_locked),  // output			mmcm_locked
	.aresetn                        (~sys_rst),  // input			aresetn
	.app_sr_req                     (0),  // input			app_sr_req
	.app_ref_req                    (0),  // input			app_ref_req
	.app_zq_req                     (0),  // input			app_zq_req
	.app_sr_active                  (),  // output			app_sr_active
	.app_ref_ack                    (),  // output			app_ref_ack
	.app_zq_ack                     (),  // output			app_zq_ack
	// Slave Interface Write Address Ports
	.s_axi_awid                     (s_axi_dram_awid),  // input [3:0]			s_axi_awid
	.s_axi_awaddr                   (s_axi_dram_awaddr),  // input [31:0]			s_axi_awaddr
	.s_axi_awlen                    (s_axi_dram_awlen),  // input [7:0]			s_axi_awlen
	.s_axi_awsize                   (s_axi_dram_awsize),  // input [2:0]			s_axi_awsize
	.s_axi_awburst                  (s_axi_dram_awburst),  // input [1:0]			s_axi_awburst
	.s_axi_awlock                   (s_axi_dram_awlock),  // input [0:0]			s_axi_awlock
	.s_axi_awcache                  (s_axi_dram_awcache),  // input [3:0]			s_axi_awcache
	.s_axi_awprot                   (s_axi_dram_awprot),  // input [2:0]			s_axi_awprot
	.s_axi_awqos                    (s_axi_dram_awqos),  // input [3:0]			s_axi_awqos
	.s_axi_awvalid                  (s_axi_dram_awvalid),  // input			s_axi_awvalid
	.s_axi_awready                  (s_axi_dram_awready),  // output			s_axi_awready
	// Slave Interface Write Data Ports
	.s_axi_wdata                    (s_axi_dram_wdata),  // input [63:0]			s_axi_wdata
	.s_axi_wstrb                    (s_axi_dram_wstrb),  // input [7:0]			s_axi_wstrb
	.s_axi_wlast                    (s_axi_dram_wlast),  // input			s_axi_wlast
	.s_axi_wvalid                   (s_axi_dram_wvalid),  // input			s_axi_wvalid
	.s_axi_wready                   (s_axi_dram_wready),  // output			s_axi_wready
	// Slave Interface Write Response Ports
	.s_axi_bid                      (s_axi_dram_bid),  // output [3:0]			s_axi_bid
	.s_axi_bresp                    (s_axi_dram_bresp),  // output [1:0]			s_axi_bresp
	.s_axi_bvalid                   (s_axi_dram_bvalid),  // output			s_axi_bvalid
	.s_axi_bready                   (s_axi_dram_bready),  // input			s_axi_bready
	// Slave Interface Read Address Ports
	.s_axi_arid                     (s_axi_dram_arid),  // input [3:0]			s_axi_arid
	.s_axi_araddr                   (s_axi_dram_araddr),  // input [31:0]			s_axi_araddr
	.s_axi_arlen                    (s_axi_dram_arlen),  // input [7:0]			s_axi_arlen
	.s_axi_arsize                   (s_axi_dram_arsize),  // input [2:0]			s_axi_arsize
	.s_axi_arburst                  (s_axi_dram_arburst),  // input [1:0]			s_axi_arburst
	.s_axi_arlock                   (s_axi_dram_arlock),  // input [0:0]			s_axi_arlock
	.s_axi_arcache                  (s_axi_dram_arcache),  // input [3:0]			s_axi_arcache
	.s_axi_arprot                   (s_axi_dram_arprot),  // input [2:0]			s_axi_arprot
	.s_axi_arqos                    (s_axi_dram_arqos),  // input [3:0]			s_axi_arqos
	.s_axi_arvalid                  (s_axi_dram_arvalid),  // input			s_axi_arvalid
	.s_axi_arready                  (s_axi_dram_arready),  // output			s_axi_arready
	// Slave Interface Read Data Ports
	.s_axi_rid                      (s_axi_dram_rid),  // output [3:0]			s_axi_rid
	.s_axi_rdata                    (s_axi_dram_rdata),  // output [63:0]			s_axi_rdata
	.s_axi_rresp                    (s_axi_dram_rresp),  // output [1:0]			s_axi_rresp
	.s_axi_rlast                    (s_axi_dram_rlast),  // output			s_axi_rlast
	.s_axi_rvalid                   (s_axi_dram_rvalid),  // output			s_axi_rvalid
	.s_axi_rready                   (s_axi_dram_rready),  // input			s_axi_rready
	// System Clock Ports
    .sys_clk_i                      (clk200),  // input			sys_clk_i
	.sys_rst                        (sys_rst) // input sys_rst
);


ila_0 u_debug_eth (
	.clk   (clk156),
	.probe0({
s_axis_tx1_tvalid,
s_axis_tx1_tready,
s_axis_tx1_tdata,
s_axis_tx1_tkeep,
s_axis_tx1_tlast,
s_axis_tx1_tuser,
m_axis_rx1_tvalid,
m_axis_rx1_tready,
m_axis_rx1_tdata,
m_axis_rx1_tkeep,
m_axis_rx1_tlast,
m_axis_rx1_tuser 
	})
);

ila_0 u_dram_eth (
	.clk   (ui_clk),
	.probe0({
s_axis_rxfifo_tvalid,
s_axis_rxfifo_tready,
s_axis_rxfifo_tdata,
s_axis_rxfifo_tstrb,
s_axis_rxfifo_tkeep,
s_axis_rxfifo_tlast,
s_axis_rxfifo_tid, 
s_axis_rxfifo_tdest,
s_axis_txfifo_tvalid,
s_axis_txfifo_tready,
s_axis_txfifo_tdata,
s_axis_txfifo_tstrb,
s_axis_txfifo_tkeep,
s_axis_txfifo_tlast,
s_axis_txfifo_tid, 
s_axis_txfifo_tdest
	})
);

endmodule

