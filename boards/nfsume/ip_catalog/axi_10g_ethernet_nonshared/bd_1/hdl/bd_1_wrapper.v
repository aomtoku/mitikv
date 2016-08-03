//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Thu Aug  4 01:07:10 2016
//Host        : jgn-tv4 running 64-bit unknown
//Command     : generate_target bd_1_wrapper.bd
//Design      : bd_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_1_wrapper
   (areset,
    areset_coreclk,
    coreclk,
    dclk,
    gtrxreset,
    gttxreset,
    m_axis_rx_tdata,
    m_axis_rx_tkeep,
    m_axis_rx_tlast,
    m_axis_rx_tuser,
    m_axis_rx_tvalid,
    pcspma_status,
    qplllock,
    qplloutclk,
    qplloutrefclk,
    reset_counter_done,
    rx_axis_aresetn,
    rx_resetdone,
    rx_statistics_valid,
    rx_statistics_vector,
    rxn,
    rxp,
    rxrecclk_out,
    s_axi_aclk,
    s_axi_araddr,
    s_axi_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wvalid,
    s_axis_pause_tdata,
    s_axis_pause_tvalid,
    s_axis_tx_tdata,
    s_axis_tx_tkeep,
    s_axis_tx_tlast,
    s_axis_tx_tready,
    s_axis_tx_tuser,
    s_axis_tx_tvalid,
    signal_detect,
    sim_speedup_control,
    tx_axis_aresetn,
    tx_disable,
    tx_fault,
    tx_ifg_delay,
    tx_resetdone,
    tx_statistics_valid,
    tx_statistics_vector,
    txn,
    txoutclk,
    txp,
    txuserrdy,
    txusrclk,
    txusrclk2,
    xgmacint);
  input areset;
  input areset_coreclk;
  input coreclk;
  input dclk;
  input gtrxreset;
  input gttxreset;
  output [63:0]m_axis_rx_tdata;
  output [7:0]m_axis_rx_tkeep;
  output m_axis_rx_tlast;
  output m_axis_rx_tuser;
  output m_axis_rx_tvalid;
  output [7:0]pcspma_status;
  input qplllock;
  input qplloutclk;
  input qplloutrefclk;
  input reset_counter_done;
  input rx_axis_aresetn;
  output rx_resetdone;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
  input rxn;
  input rxp;
  output rxrecclk_out;
  input s_axi_aclk;
  input [10:0]s_axi_araddr;
  input s_axi_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  input [10:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input s_axi_wvalid;
  input [15:0]s_axis_pause_tdata;
  input s_axis_pause_tvalid;
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input s_axis_tx_tlast;
  output s_axis_tx_tready;
  input [0:0]s_axis_tx_tuser;
  input s_axis_tx_tvalid;
  input signal_detect;
  input sim_speedup_control;
  input tx_axis_aresetn;
  output tx_disable;
  input tx_fault;
  input [7:0]tx_ifg_delay;
  output tx_resetdone;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output txn;
  output txoutclk;
  output txp;
  input txuserrdy;
  input txusrclk;
  input txusrclk2;
  output xgmacint;

  wire areset;
  wire areset_coreclk;
  wire coreclk;
  wire dclk;
  wire gtrxreset;
  wire gttxreset;
  wire [63:0]m_axis_rx_tdata;
  wire [7:0]m_axis_rx_tkeep;
  wire m_axis_rx_tlast;
  wire m_axis_rx_tuser;
  wire m_axis_rx_tvalid;
  wire [7:0]pcspma_status;
  wire qplllock;
  wire qplloutclk;
  wire qplloutrefclk;
  wire reset_counter_done;
  wire rx_axis_aresetn;
  wire rx_resetdone;
  wire rx_statistics_valid;
  wire [29:0]rx_statistics_vector;
  wire rxn;
  wire rxp;
  wire rxrecclk_out;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [15:0]s_axis_pause_tdata;
  wire s_axis_pause_tvalid;
  wire [63:0]s_axis_tx_tdata;
  wire [7:0]s_axis_tx_tkeep;
  wire s_axis_tx_tlast;
  wire s_axis_tx_tready;
  wire [0:0]s_axis_tx_tuser;
  wire s_axis_tx_tvalid;
  wire signal_detect;
  wire sim_speedup_control;
  wire tx_axis_aresetn;
  wire tx_disable;
  wire tx_fault;
  wire [7:0]tx_ifg_delay;
  wire tx_resetdone;
  wire tx_statistics_valid;
  wire [25:0]tx_statistics_vector;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txuserrdy;
  wire txusrclk;
  wire txusrclk2;
  wire xgmacint;

  bd_1 bd_1_i
       (.areset(areset),
        .areset_coreclk(areset_coreclk),
        .coreclk(coreclk),
        .dclk(dclk),
        .gtrxreset(gtrxreset),
        .gttxreset(gttxreset),
        .m_axis_rx_tdata(m_axis_rx_tdata),
        .m_axis_rx_tkeep(m_axis_rx_tkeep),
        .m_axis_rx_tlast(m_axis_rx_tlast),
        .m_axis_rx_tuser(m_axis_rx_tuser),
        .m_axis_rx_tvalid(m_axis_rx_tvalid),
        .pcspma_status(pcspma_status),
        .qplllock(qplllock),
        .qplloutclk(qplloutclk),
        .qplloutrefclk(qplloutrefclk),
        .reset_counter_done(reset_counter_done),
        .rx_axis_aresetn(rx_axis_aresetn),
        .rx_resetdone(rx_resetdone),
        .rx_statistics_valid(rx_statistics_valid),
        .rx_statistics_vector(rx_statistics_vector),
        .rxn(rxn),
        .rxp(rxp),
        .rxrecclk_out(rxrecclk_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_pause_tdata(s_axis_pause_tdata),
        .s_axis_pause_tvalid(s_axis_pause_tvalid),
        .s_axis_tx_tdata(s_axis_tx_tdata),
        .s_axis_tx_tkeep(s_axis_tx_tkeep),
        .s_axis_tx_tlast(s_axis_tx_tlast),
        .s_axis_tx_tready(s_axis_tx_tready),
        .s_axis_tx_tuser(s_axis_tx_tuser),
        .s_axis_tx_tvalid(s_axis_tx_tvalid),
        .signal_detect(signal_detect),
        .sim_speedup_control(sim_speedup_control),
        .tx_axis_aresetn(tx_axis_aresetn),
        .tx_disable(tx_disable),
        .tx_fault(tx_fault),
        .tx_ifg_delay(tx_ifg_delay),
        .tx_resetdone(tx_resetdone),
        .tx_statistics_valid(tx_statistics_valid),
        .tx_statistics_vector(tx_statistics_vector),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .txuserrdy(txuserrdy),
        .txusrclk(txusrclk),
        .txusrclk2(txusrclk2),
        .xgmacint(xgmacint));
endmodule
