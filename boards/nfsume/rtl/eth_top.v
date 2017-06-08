`timescale 1ps/1ps
module eth_top #(
	parameter PL_LINK_CAP_MAX_LINK_WIDTH = 2,
	parameter C_DATA_WIDTH               = 64,
	parameter KEEP_WIDTH                 = C_DATA_WIDTH / 32,
	parameter KEY_SIZE                   = 96,
	parameter VAL_SIZE                   = 32
)(
`ifndef SIM_ETH_IP
	input  wire                SFP_CLK_P,
	input  wire                SFP_CLK_N,
	output wire                SFP_REC_CLK_P,
	output wire                SFP_REC_CLK_N,

	inout  wire                I2C_FPGA_SCL,
	inout  wire                I2C_FPGA_SDA,

	input  wire                SFP_CLK_ALARM_B,
	// Ether Port 0
	input  wire                ETH0_TX_P,
	input  wire                ETH0_TX_N,
	output wire                ETH0_RX_P,
	output wire                ETH0_RX_N,

	input  wire                ETH0_TX_FAULT,
	input  wire                ETH0_RX_LOS,
	output wire                ETH0_TX_DISABLE,
	// Ether Port 0
	input  wire                ETH1_TX_P,
	input  wire                ETH1_TX_N,
	output wire                ETH1_RX_P,
	output wire                ETH1_RX_N,

	input  wire                ETH1_TX_FAULT,
	input  wire                ETH1_RX_LOS,
	output wire                ETH1_TX_DISABLE,
`endif /* SIM_ETH_IP */ 
	input  wire                clk100,
	input  wire                sys_rst,
	output wire                eth_rst,
	output wire [7:0]          debug,

	output wire                db_clk,
	output wire [KEY_SIZE-1:0] in_key,
	output wire [3:0]          in_flag,
	output wire                in_valid,
	input  wire                out_valid,
	input  wire [3:0]          out_flag
);

/*
 * Ethernet Clock Domain : Clocking
 */
wire clk156;
assign db_clk = clk156;
`ifndef SIMULATION_DEBUG
sfp_refclk_init sfp_refclk_init0 (
	.CLK               (clk100),
	.RST               (sys_rst),
	.SFP_REC_CLK_P     (SFP_REC_CLK_P), //: out std_logic;
	.SFP_REC_CLK_N     (SFP_REC_CLK_N), //: out std_logic;
	.SFP_CLK_ALARM_B   (SFP_CLK_ALARM_B), //: in std_logic;
	.I2C_FPGA_SCL      (I2C_FPGA_SCL), //: inout std_logic;
	.I2C_FPGA_SDA      (I2C_FPGA_SDA)  //: inout std_logic
);
`endif

/*
 *  Ethernet Clock Domain : Reset
 */
reg [13:0] cold_counter = 0; 
reg        eth_rst_reg;
`ifndef SIM_ETH_IP
assign eth_rst = eth_rst_reg;
always @(posedge clk156) 
`ifndef SIMULATION_DEBUG
	if (cold_counter != 14'h3fff) begin
`else
	if (cold_counter != 14'h9) begin
`endif /* SIMULATION_DEBUG */
		cold_counter <= cold_counter + 14'd1;
		eth_rst_reg  <= 1'b1;
	end else
		eth_rst_reg  <= 1'b0;
`endif /* SIM_ETH_IP */


/*
 * Ethernet MAC and PCS/PMA Configuration
 */

`ifndef SIM_ETH_IP
wire [535:0] pcs_pma_configuration_vector;
pcs_pma_conf pcs_pma_conf0(
	.pcs_pma_configuration_vector(pcs_pma_configuration_vector)
);

wire [79:0] mac_tx_configuration_vector;
wire [79:0] mac_rx_configuration_vector;
eth_mac_conf eth_mac_conf0(
	.mac_tx_configuration_vector(mac_tx_configuration_vector),
	.mac_rx_configuration_vector(mac_rx_configuration_vector)
);
`endif /* SIM_ETH_IP */

/*
 * AXI interface (Master : encap ---> MAC)
 */
wire        m_axis_tx0_tvalid;
wire        m_axis_tx0_tready;
wire [63:0] m_axis_tx0_tdata;
wire [ 7:0] m_axis_tx0_tkeep;
wire        m_axis_tx0_tlast;
wire        m_axis_tx0_tuser;

wire        m_axis_tx1_tvalid;
wire        m_axis_tx1_tready;
wire [63:0] m_axis_tx1_tdata;
wire [ 7:0] m_axis_tx1_tkeep;
wire        m_axis_tx1_tlast;
wire        m_axis_tx1_tuser;
/*
 * AXI interface (Slave : MAC ---> encap)
 */
wire        s_axis_rx0_tvalid;
wire [63:0] s_axis_rx0_tdata;
wire [ 7:0] s_axis_rx0_tkeep;
wire        s_axis_rx0_tlast;
wire        s_axis_rx0_tuser;

wire        s_axis_rx1_tvalid;
wire [63:0] s_axis_rx1_tdata;
wire [ 7:0] s_axis_rx1_tkeep;
wire        s_axis_rx1_tlast;
wire        s_axis_rx1_tuser;

wire [ 7:0] eth_debug;

eth_encap #(
	.KEY_SIZE  (96),
	.VAL_SIZE  (32)
) u_eth_encap (
	.clk156           (clk156),
	.eth_rst          (eth_rst),
	.debug            (eth_debug),

	.in_key           (in_key   ),
	.in_flag          (in_flag  ),
	.in_valid         (in_valid ),
	.out_valid        (out_valid),
	.out_flag         (out_flag ),
	// Port0 
	.s_axis_rx0_tvalid    (s_axis_rx0_tvalid),
	.s_axis_rx0_tdata     (s_axis_rx0_tdata),
	.s_axis_rx0_tkeep     (s_axis_rx0_tkeep),
	.s_axis_rx0_tlast     (s_axis_rx0_tlast),
	.s_axis_rx0_tuser     (s_axis_rx0_tuser),

	.m_axis_tx0_tvalid    (m_axis_tx0_tvalid),
	.m_axis_tx0_tready    (m_axis_tx0_tready),
	.m_axis_tx0_tdata     (m_axis_tx0_tdata),
	.m_axis_tx0_tkeep     (m_axis_tx0_tkeep),
	.m_axis_tx0_tlast     (m_axis_tx0_tlast),
	.m_axis_tx0_tuser     (m_axis_tx0_tuser),
	// Port1 
	.s_axis_rx1_tvalid    (s_axis_rx1_tvalid),
	.s_axis_rx1_tdata     (s_axis_rx1_tdata),
	.s_axis_rx1_tkeep     (s_axis_rx1_tkeep),
	.s_axis_rx1_tlast     (s_axis_rx1_tlast),
	.s_axis_rx1_tuser     (s_axis_rx1_tuser),

	.m_axis_tx1_tvalid    (m_axis_tx1_tvalid),
	.m_axis_tx1_tready    (m_axis_tx1_tready),
	.m_axis_tx1_tdata     (m_axis_tx1_tdata),
	.m_axis_tx1_tkeep     (m_axis_tx1_tkeep),
	.m_axis_tx1_tlast     (m_axis_tx1_tlast),
	.m_axis_tx1_tuser     (m_axis_tx1_tuser)
);


`ifndef SIM_ETH_IP
/*
 * Ethernet MAC
 */
wire txusrclk, txusrclk2;
wire gttxreset, gtrxreset;
wire txuserrdy;
wire areset_coreclk;
wire reset_counter_done;
wire qplllock, qplloutclk, qplloutrefclk;
wire [447:0] pcs_pma_status_vector;
wire [1:0] mac_status_vector;
wire [7:0] pcspma_status;
wire rx_statistics_valid, tx_statistics_valid;

axi_10g_ethernet_0 u_axi_10g_ethernet_0 (
	.coreclk_out                   (clk156),
	.refclk_n                      (SFP_CLK_N),
	.refclk_p                      (SFP_CLK_P),
	.dclk                          (clk100),
`ifndef SIMULATION_DEBUG
	.reset                         (eth_rst),
`else
	.reset                         (sys_rst),
`endif /* SIMULATION_DEBUG */
	.rx_statistics_vector          (),
	.rxn                           (ETH0_TX_N),
	.rxp                           (ETH0_TX_P),
	.s_axis_pause_tdata            (16'b0),
	.s_axis_pause_tvalid           (1'b0),
	.signal_detect                 (!ETH0_RX_LOS),
	.tx_disable                    (ETH0_TX_DISABLE),
	.tx_fault                      (ETH0_TX_FAULT),
	.tx_ifg_delay                  (8'd0),
	.tx_statistics_vector          (),
	.txn                           (ETH0_RX_N),
	.txp                           (ETH0_RX_P),

	.rxrecclk_out                  (),
	.resetdone_out                 (),

	// eth tx
	.s_axis_tx_tready              (m_axis_tx0_tready),
	.s_axis_tx_tdata               (m_axis_tx0_tdata),
	.s_axis_tx_tkeep               (m_axis_tx0_tkeep),
	.s_axis_tx_tlast               (m_axis_tx0_tlast),
	.s_axis_tx_tvalid              (m_axis_tx0_tvalid),
	.s_axis_tx_tuser               (m_axis_tx0_tuser),
	
	// eth rx
	.m_axis_rx_tdata               (s_axis_rx0_tdata),
	.m_axis_rx_tkeep               (s_axis_rx0_tkeep),
	.m_axis_rx_tlast               (s_axis_rx0_tlast),
	.m_axis_rx_tuser               (s_axis_rx0_tuser),
	.m_axis_rx_tvalid              (s_axis_rx0_tvalid),

`ifndef SIMULATION_DEBUG
	.sim_speedup_control           (1'b0),
`else
	.sim_speedup_control           (1'b1),
`endif /* SIMULATION_DEBUG */
	.rx_axis_aresetn               (!eth_rst),
	.tx_axis_aresetn               (!eth_rst),

	.tx_statistics_valid           (tx_statistics_valid),         
	.rx_statistics_valid           (rx_statistics_valid),
	.pcspma_status                 (pcspma_status),                
	.mac_tx_configuration_vector   (mac_tx_configuration_vector),  
	.mac_rx_configuration_vector   (mac_rx_configuration_vector),  
	.mac_status_vector             (mac_status_vector),            
	.pcs_pma_configuration_vector  (pcs_pma_configuration_vector), 
	.pcs_pma_status_vector         (pcs_pma_status_vector),        
	.areset_datapathclk_out        (areset_coreclk),        
	.txusrclk_out                  (txusrclk),                  
	.txusrclk2_out                 (txusrclk2),                 
	.gttxreset_out                 (gttxreset),
	.gtrxreset_out                 (gtrxreset),
	.txuserrdy_out                 (txuserrdy), 
	.reset_counter_done_out        (reset_counter_done),
	.qplllock_out                  (qplllock     ),       
	.qplloutclk_out                (qplloutclk   ),     
	.qplloutrefclk_out             (qplloutrefclk)  
);


axi_10g_ethernet_nonshared u_axi_10g_ethernet_1 (
	.tx_axis_aresetn              (!eth_rst),      
	.rx_axis_aresetn              (!eth_rst),      
	.tx_ifg_delay                 (8'd0),          
	.dclk                         (clk100),        
	.txp                          (ETH1_RX_P),     
	.txn                          (ETH1_RX_N),     
	.rxp                          (ETH1_TX_P),     
	.rxn                          (ETH1_TX_N),     
	.signal_detect                (!ETH1_RX_LOS),  
	.tx_fault                     (ETH1_TX_FAULT), 
	.tx_disable                   (ETH1_TX_DISABLE),   
	.pcspma_status                (),               
`ifndef SIMULATION_DEBUG
	.sim_speedup_control          (1'b0),           
`else
	.sim_speedup_control          (1'b1),
`endif /* SIMULATION_DEBUG */
	.rxrecclk_out                 (),               
	.areset_coreclk               (areset_coreclk), 
	.txusrclk                     (txusrclk),       
	.txusrclk2                    (txusrclk2),      
	.txoutclk                     (),       
	.txuserrdy                    (txuserrdy),      
	.tx_resetdone                 (),          
	.rx_resetdone                 (),          
	.coreclk                      (clk156),    
	.areset                       (eth_rst),        
	.gttxreset                    (gttxreset),      
	.gtrxreset                    (gtrxreset),      
	.qplllock                     (qplllock),       
	.qplloutclk                   (qplloutclk),     
	.qplloutrefclk                (qplloutrefclk),  
	.reset_counter_done           (reset_counter_done),  

	.mac_tx_configuration_vector  (mac_tx_configuration_vector),
	.mac_rx_configuration_vector  (mac_rx_configuration_vector),
	.mac_status_vector            (),                     
	.pcs_pma_configuration_vector (pcs_pma_configuration_vector),
	.pcs_pma_status_vector        (),    
	// AXI Stream Interface
	.s_axis_tx_tdata              (m_axis_tx1_tdata),  
	.s_axis_tx_tkeep              (m_axis_tx1_tkeep),  
	.s_axis_tx_tlast              (m_axis_tx1_tlast),  
	.s_axis_tx_tready             (m_axis_tx1_tready), 
	.s_axis_tx_tuser              (m_axis_tx1_tuser),  
	.s_axis_tx_tvalid             (m_axis_tx1_tvalid), 
	.s_axis_pause_tdata           (16'd0),             
	.s_axis_pause_tvalid          (1'd0),              
	.m_axis_rx_tdata              (s_axis_rx1_tdata),  
	.m_axis_rx_tkeep              (s_axis_rx1_tkeep),  
	.m_axis_rx_tlast              (s_axis_rx1_tlast),  
	.m_axis_rx_tuser              (s_axis_rx1_tuser),  
	.m_axis_rx_tvalid             (s_axis_rx1_tvalid), 
	.tx_statistics_valid          (),  
	.tx_statistics_vector         (),  
	.rx_statistics_valid          (),  
	.rx_statistics_vector         ()   
);
`endif /* SIM_ETH_IP */
 
///*
// * Loopback FIFO
// */
//axis_data_fifo_1 u_axis_data_fifo (
//  .s_axis_aresetn      (!eth_rst),          // input wire s_axis_aresetn
//  .s_axis_aclk         (clk156),            // input wire s_axis_aclk
//  .s_axis_tvalid       (s_axis_rx1_tvalid), // input wire s_axis_tvalid
//  .s_axis_tready       (),                  // output wire s_axis_tready
//  .s_axis_tdata        (s_axis_rx1_tdata),  // input wire [63 : 0] s_axis_tdata
//  .s_axis_tkeep        (s_axis_rx1_tkeep),  // input wire [7 : 0] s_axis_tkeep
//  .s_axis_tlast        (s_axis_rx1_tlast),  // input wire s_axis_tlast
//  .s_axis_tuser        (1'b0),              // input wire [0 : 0] s_axis_tuser
//  .m_axis_tvalid       (m_axis_tx1_tvalid), // output wire m_axis_tvalid
//  .m_axis_tready       (m_axis_tx1_tready), // input wire m_axis_tready
//  .m_axis_tdata        (m_axis_tx1_tdata),  // output wire [63 : 0] m_axis_tdata
//  .m_axis_tkeep        (m_axis_tx1_tkeep),  // output wire [7 : 0] m_axis_tkeep
//  .m_axis_tlast        (m_axis_tx1_tlast),  // output wire m_axis_tlast
//  .m_axis_tuser        (m_axis_tx1_tuser),  // output wire [0 : 0] m_axis_tuser
//  .axis_data_count     (), 
//  .axis_wr_data_count  (), 
//  .axis_rd_data_count  ()  
//);
//
/*
 * Loopback FIFO for packet mode
 */
//axis_data_fifo_0 u_axis_data_fifo (
//  .s_axis_aresetn      (!eth_rst),     // input wire s_axis_aresetn
//  .s_axis_aclk         (clk156),       // input wire s_axis_aclk
//
//  .s_axis_tvalid       (s_axis_tvalid),// input wire s_axis_tvalid
//  .s_axis_tready       (),             // te s_axis_tready
//  .s_axis_tdata        (s_axis_tdata), // input wire [63 : 0] s_axis_tdata
//  .s_axis_tkeep        (s_axis_tkeep), // input wire [7 : 0] s_axis_tkeep
//  .s_axis_tlast        (s_axis_tlast), // input wire s_axis_tlast
//  .s_axis_tuser        (1'b0), // input wire [0 : 0] s_axis_tuser
//  //.s_axis_tuser        (s_axis_tuser), // input wire [0 : 0] s_axis_tuser
//
//  .m_axis_tvalid       (m_axis_tvalid),// output wire m_axis_tvalid
//  .m_axis_tready       (m_axis_tready),// input wire m_axis_tready
//  .m_axis_tdata        (m_axis_tdata), // output wire [63 : 0] m_axis_tdata
//  .m_axis_tkeep        (m_axis_tkeep), // output wire [7 : 0] m_axis_tkeep
//  .m_axis_tlast        (m_axis_tlast), // output wire m_axis_tlast
//  .m_axis_tuser        (m_axis_tuser), // output wire [0 : 0] m_axis_tuser
//  .axis_data_count     (),        // output wire [31 : 0] axis_data_count
//  .axis_wr_data_count  (),  // output wire [31 : 0] axis_wr_data_count
//  .axis_rd_data_count  ()  // output wire [31 : 0] axis_rd_data_count
//);

reg [31:0] led_cnt;
always @ (posedge clk156)
	if (eth_rst)
		led_cnt <= 32'd0;
	else 
		led_cnt <= led_cnt + 32'd1;

//assign debug = led_cnt[31:24];
//assign debug = {eth_debug, led_cnt[30:24]};
assign debug = eth_debug;

endmodule

