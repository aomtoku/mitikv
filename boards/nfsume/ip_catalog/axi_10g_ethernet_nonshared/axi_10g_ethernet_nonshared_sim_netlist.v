// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Tue Jun  6 13:02:46 2017
// Host        : nf-test100 running 64-bit Ubuntu 14.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/aom/work/mitikv/boards/nfsume/tmp/project_1/project_1.srcs/sources_1/ip/axi_10g_ethernet_nonshared/axi_10g_ethernet_nonshared_sim_netlist.v
// Design      : axi_10g_ethernet_nonshared
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_10g_ethernet_nonshared,bd_7ad4,{ten_gig_eth_mac=bought,ten_gig_eth_pcs_pma_basekr=design_linking}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_7ad4,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module axi_10g_ethernet_nonshared
   (tx_axis_aresetn,
    rx_axis_aresetn,
    tx_ifg_delay,
    dclk,
    txp,
    txn,
    rxp,
    rxn,
    signal_detect,
    tx_fault,
    tx_disable,
    pcspma_status,
    sim_speedup_control,
    rxrecclk_out,
    mac_tx_configuration_vector,
    mac_rx_configuration_vector,
    mac_status_vector,
    pcs_pma_configuration_vector,
    pcs_pma_status_vector,
    areset_coreclk,
    txusrclk,
    txusrclk2,
    txoutclk,
    txuserrdy,
    tx_resetdone,
    rx_resetdone,
    coreclk,
    areset,
    gttxreset,
    gtrxreset,
    qplllock,
    qplloutclk,
    qplloutrefclk,
    reset_counter_done,
    s_axis_tx_tdata,
    s_axis_tx_tkeep,
    s_axis_tx_tlast,
    s_axis_tx_tready,
    s_axis_tx_tuser,
    s_axis_tx_tvalid,
    s_axis_pause_tdata,
    s_axis_pause_tvalid,
    m_axis_rx_tdata,
    m_axis_rx_tkeep,
    m_axis_rx_tlast,
    m_axis_rx_tuser,
    m_axis_rx_tvalid,
    tx_statistics_valid,
    tx_statistics_vector,
    rx_statistics_valid,
    rx_statistics_vector);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.tx_axis_aresetn RST" *) input tx_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.rx_axis_aresetn RST" *) input rx_axis_aresetn;
  input [7:0]tx_ifg_delay;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dclk CLK" *) input dclk;
  output txp;
  output txn;
  input rxp;
  input rxn;
  input signal_detect;
  input tx_fault;
  output tx_disable;
  output [7:0]pcspma_status;
  input sim_speedup_control;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rxrecclk_out CLK" *) output rxrecclk_out;
  input [79:0]mac_tx_configuration_vector;
  input [79:0]mac_rx_configuration_vector;
  output [2:0]mac_status_vector;
  input [535:0]pcs_pma_configuration_vector;
  output [447:0]pcs_pma_status_vector;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.areset_coreclk RST" *) input areset_coreclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txusrclk CLK" *) input txusrclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txusrclk2 CLK" *) input txusrclk2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.txoutclk CLK" *) output txoutclk;
  input txuserrdy;
  output tx_resetdone;
  output rx_resetdone;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.coreclk CLK" *) input coreclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.areset RST" *) input areset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.gttxreset RST" *) input gttxreset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.gtrxreset RST" *) input gtrxreset;
  input qplllock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.qplloutclk CLK" *) input qplloutclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.qplloutrefclk CLK" *) input qplloutrefclk;
  input reset_counter_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TDATA" *) input [63:0]s_axis_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TKEEP" *) input [7:0]s_axis_tx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TLAST" *) input s_axis_tx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TREADY" *) output s_axis_tx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TUSER" *) input [0:0]s_axis_tx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_tx TVALID" *) input s_axis_tx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TDATA" *) input [15:0]s_axis_pause_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pause TVALID" *) input s_axis_pause_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *) output [63:0]m_axis_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TKEEP" *) output [7:0]m_axis_rx_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TLAST" *) output m_axis_rx_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TUSER" *) output m_axis_rx_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *) output m_axis_rx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics valid" *) output tx_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 tx_statistics vector" *) output [25:0]tx_statistics_vector;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics valid" *) output rx_statistics_valid;
  (* X_INTERFACE_INFO = "xilinx.com:display_ten_gig_eth_mac:statistics:2.0 rx_statistics vector" *) output [29:0]rx_statistics_vector;

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
  wire [79:0]mac_rx_configuration_vector;
  wire [2:0]mac_status_vector;
  wire [79:0]mac_tx_configuration_vector;
  wire [535:0]pcs_pma_configuration_vector;
  wire [447:0]pcs_pma_status_vector;
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

  (* HW_HANDOFF = "axi_10g_ethernet_nonshared.hwdef" *) 
  axi_10g_ethernet_nonshared_bd_7ad4 inst
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
        .mac_rx_configuration_vector(mac_rx_configuration_vector),
        .mac_status_vector(mac_status_vector),
        .mac_tx_configuration_vector(mac_tx_configuration_vector),
        .pcs_pma_configuration_vector(pcs_pma_configuration_vector),
        .pcs_pma_status_vector(pcs_pma_status_vector),
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
        .txusrclk2(txusrclk2));
endmodule

(* HW_HANDOFF = "axi_10g_ethernet_nonshared.hwdef" *) (* ORIG_REF_NAME = "bd_7ad4" *) 
module axi_10g_ethernet_nonshared_bd_7ad4
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
    mac_rx_configuration_vector,
    mac_status_vector,
    mac_tx_configuration_vector,
    pcs_pma_configuration_vector,
    pcs_pma_status_vector,
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
    txusrclk2);
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
  input [79:0]mac_rx_configuration_vector;
  output [2:0]mac_status_vector;
  input [79:0]mac_tx_configuration_vector;
  input [535:0]pcs_pma_configuration_vector;
  output [447:0]pcs_pma_status_vector;
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

  wire areset;
  wire areset_coreclk;
  wire coreclk;
  wire dclk;
  wire dcm_locked_driver_dout;
  wire gtrxreset;
  wire gttxreset;
  wire [63:0]m_axis_rx_tdata;
  wire [7:0]m_axis_rx_tkeep;
  wire m_axis_rx_tlast;
  wire m_axis_rx_tuser;
  wire m_axis_rx_tvalid;
  wire [79:0]mac_rx_configuration_vector;
  wire [2:0]mac_status_vector;
  wire [79:0]mac_tx_configuration_vector;
  wire [535:0]pcs_pma_configuration_vector;
  wire [447:0]pcs_pma_status_vector;
  wire [7:0]pcspma_status;
  wire [2:0]pma_pmd_type_driver_dout;
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
  wire [7:0]xmac_xgmii_xgmac_RXC;
  wire [63:0]xmac_xgmii_xgmac_RXD;
  wire [7:0]xmac_xgmii_xgmac_TXC;
  wire [63:0]xmac_xgmii_xgmac_TXD;
  wire [15:0]xpcs_core_gt_drp_interface_DADDR;
  wire xpcs_core_gt_drp_interface_DEN;
  wire [15:0]xpcs_core_gt_drp_interface_DI;
  wire [15:0]xpcs_core_gt_drp_interface_DO;
  wire xpcs_core_gt_drp_interface_DRDY;
  wire xpcs_core_gt_drp_interface_DWE;
  wire xpcs_drp_req;

  axi_10g_ethernet_nonshared_bd_7ad4_dcm_locked_driver_0 dcm_locked_driver
       (.dout(dcm_locked_driver_dout));
  axi_10g_ethernet_nonshared_bd_7ad4_pma_pmd_type_driver_0 pma_pmd_type_driver
       (.dout(pma_pmd_type_driver_dout));
  (* X_CORE_INFO = "ten_gig_eth_mac_v15_1_2,Vivado 2016.4" *) 
  axi_10g_ethernet_nonshared_bd_7ad4_xmac_0 xmac
       (.pause_req(s_axis_pause_tvalid),
        .pause_val(s_axis_pause_tdata),
        .reset(areset),
        .rx_axis_aresetn(rx_axis_aresetn),
        .rx_axis_tdata(m_axis_rx_tdata),
        .rx_axis_tkeep(m_axis_rx_tkeep),
        .rx_axis_tlast(m_axis_rx_tlast),
        .rx_axis_tuser(m_axis_rx_tuser),
        .rx_axis_tvalid(m_axis_rx_tvalid),
        .rx_clk0(coreclk),
        .rx_configuration_vector(mac_rx_configuration_vector),
        .rx_dcm_locked(dcm_locked_driver_dout),
        .rx_statistics_valid(rx_statistics_valid),
        .rx_statistics_vector(rx_statistics_vector),
        .status_vector(mac_status_vector),
        .tx_axis_aresetn(tx_axis_aresetn),
        .tx_axis_tdata(s_axis_tx_tdata),
        .tx_axis_tkeep(s_axis_tx_tkeep),
        .tx_axis_tlast(s_axis_tx_tlast),
        .tx_axis_tready(s_axis_tx_tready),
        .tx_axis_tuser(s_axis_tx_tuser),
        .tx_axis_tvalid(s_axis_tx_tvalid),
        .tx_clk0(coreclk),
        .tx_configuration_vector(mac_tx_configuration_vector),
        .tx_dcm_locked(dcm_locked_driver_dout),
        .tx_ifg_delay(tx_ifg_delay),
        .tx_statistics_valid(tx_statistics_valid),
        .tx_statistics_vector(tx_statistics_vector),
        .xgmii_rxc(xmac_xgmii_xgmac_RXC),
        .xgmii_rxd(xmac_xgmii_xgmac_RXD),
        .xgmii_txc(xmac_xgmii_xgmac_TXC),
        .xgmii_txd(xmac_xgmii_xgmac_TXD));
  (* X_CORE_INFO = "ten_gig_eth_pcs_pma_wrapper,Vivado 2016.4" *) 
  axi_10g_ethernet_nonshared_bd_7ad4_xpcs_0 xpcs
       (.areset(areset),
        .areset_coreclk(areset_coreclk),
        .configuration_vector(pcs_pma_configuration_vector),
        .core_status(pcspma_status),
        .coreclk(coreclk),
        .dclk(dclk),
        .drp_daddr_i(xpcs_core_gt_drp_interface_DADDR),
        .drp_daddr_o(xpcs_core_gt_drp_interface_DADDR),
        .drp_den_i(xpcs_core_gt_drp_interface_DEN),
        .drp_den_o(xpcs_core_gt_drp_interface_DEN),
        .drp_di_i(xpcs_core_gt_drp_interface_DI),
        .drp_di_o(xpcs_core_gt_drp_interface_DI),
        .drp_drdy_i(xpcs_core_gt_drp_interface_DRDY),
        .drp_drdy_o(xpcs_core_gt_drp_interface_DRDY),
        .drp_drpdo_i(xpcs_core_gt_drp_interface_DO),
        .drp_drpdo_o(xpcs_core_gt_drp_interface_DO),
        .drp_dwe_i(xpcs_core_gt_drp_interface_DWE),
        .drp_dwe_o(xpcs_core_gt_drp_interface_DWE),
        .drp_gnt(xpcs_drp_req),
        .drp_req(xpcs_drp_req),
        .gtrxreset(gtrxreset),
        .gttxreset(gttxreset),
        .pma_pmd_type(pma_pmd_type_driver_dout),
        .qplllock(qplllock),
        .qplloutclk(qplloutclk),
        .qplloutrefclk(qplloutrefclk),
        .reset_counter_done(reset_counter_done),
        .rx_resetdone(rx_resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxrecclk_out(rxrecclk_out),
        .signal_detect(signal_detect),
        .sim_speedup_control(sim_speedup_control),
        .status_vector(pcs_pma_status_vector),
        .tx_disable(tx_disable),
        .tx_fault(tx_fault),
        .tx_resetdone(tx_resetdone),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .txuserrdy(txuserrdy),
        .txusrclk(txusrclk),
        .txusrclk2(txusrclk2),
        .xgmii_rxc(xmac_xgmii_xgmac_RXC),
        .xgmii_rxd(xmac_xgmii_xgmac_RXD),
        .xgmii_txc(xmac_xgmii_xgmac_TXC),
        .xgmii_txd(xmac_xgmii_xgmac_TXD));
endmodule

(* ORIG_REF_NAME = "bd_7ad4_dcm_locked_driver_0" *) 
module axi_10g_ethernet_nonshared_bd_7ad4_dcm_locked_driver_0
   (dout);
  output [0:0]dout;


endmodule

(* ORIG_REF_NAME = "bd_7ad4_pma_pmd_type_driver_0" *) 
module axi_10g_ethernet_nonshared_bd_7ad4_pma_pmd_type_driver_0
   (dout);
  output [2:0]dout;


endmodule

(* ORIG_REF_NAME = "bd_7ad4_xmac_0" *) (* X_CORE_INFO = "ten_gig_eth_mac_v15_1_2,Vivado 2016.4" *) 
module axi_10g_ethernet_nonshared_bd_7ad4_xmac_0
   (tx_clk0,
    reset,
    tx_axis_aresetn,
    tx_axis_tdata,
    tx_axis_tkeep,
    tx_axis_tvalid,
    tx_axis_tlast,
    tx_axis_tuser,
    tx_ifg_delay,
    tx_axis_tready,
    tx_statistics_vector,
    tx_statistics_valid,
    pause_val,
    pause_req,
    rx_axis_aresetn,
    rx_axis_tdata,
    rx_axis_tkeep,
    rx_axis_tvalid,
    rx_axis_tuser,
    rx_axis_tlast,
    rx_statistics_vector,
    rx_statistics_valid,
    tx_configuration_vector,
    rx_configuration_vector,
    status_vector,
    tx_dcm_locked,
    xgmii_txd,
    xgmii_txc,
    rx_clk0,
    rx_dcm_locked,
    xgmii_rxd,
    xgmii_rxc);
  input tx_clk0;
  input reset;
  input tx_axis_aresetn;
  input [63:0]tx_axis_tdata;
  input [7:0]tx_axis_tkeep;
  input tx_axis_tvalid;
  input tx_axis_tlast;
  input tx_axis_tuser;
  input [7:0]tx_ifg_delay;
  output tx_axis_tready;
  output [25:0]tx_statistics_vector;
  output tx_statistics_valid;
  input [15:0]pause_val;
  input pause_req;
  input rx_axis_aresetn;
  output [63:0]rx_axis_tdata;
  output [7:0]rx_axis_tkeep;
  output rx_axis_tvalid;
  output rx_axis_tuser;
  output rx_axis_tlast;
  output [29:0]rx_statistics_vector;
  output rx_statistics_valid;
  input [79:0]tx_configuration_vector;
  input [79:0]rx_configuration_vector;
  output [2:0]status_vector;
  input tx_dcm_locked;
  output [63:0]xgmii_txd;
  output [7:0]xgmii_txc;
  input rx_clk0;
  input rx_dcm_locked;
  input [63:0]xgmii_rxd;
  input [7:0]xgmii_rxc;


endmodule

(* ORIG_REF_NAME = "bd_7ad4_xpcs_0" *) (* X_CORE_INFO = "ten_gig_eth_pcs_pma_wrapper,Vivado 2016.4" *) 
module axi_10g_ethernet_nonshared_bd_7ad4_xpcs_0
   (dclk,
    rxrecclk_out,
    coreclk,
    txusrclk,
    txusrclk2,
    txoutclk,
    areset,
    areset_coreclk,
    gttxreset,
    gtrxreset,
    sim_speedup_control,
    txuserrdy,
    qplllock,
    qplloutclk,
    qplloutrefclk,
    reset_counter_done,
    xgmii_txd,
    xgmii_txc,
    xgmii_rxd,
    xgmii_rxc,
    txp,
    txn,
    rxp,
    rxn,
    configuration_vector,
    status_vector,
    core_status,
    tx_resetdone,
    rx_resetdone,
    signal_detect,
    tx_fault,
    drp_req,
    drp_gnt,
    drp_den_o,
    drp_dwe_o,
    drp_daddr_o,
    drp_di_o,
    drp_drdy_o,
    drp_drpdo_o,
    drp_den_i,
    drp_dwe_i,
    drp_daddr_i,
    drp_di_i,
    drp_drdy_i,
    drp_drpdo_i,
    pma_pmd_type,
    tx_disable);
  input dclk;
  output rxrecclk_out;
  input coreclk;
  input txusrclk;
  input txusrclk2;
  output txoutclk;
  input areset;
  input areset_coreclk;
  input gttxreset;
  input gtrxreset;
  input sim_speedup_control;
  input txuserrdy;
  input qplllock;
  input qplloutclk;
  input qplloutrefclk;
  input reset_counter_done;
  input [63:0]xgmii_txd;
  input [7:0]xgmii_txc;
  output [63:0]xgmii_rxd;
  output [7:0]xgmii_rxc;
  output txp;
  output txn;
  input rxp;
  input rxn;
  input [535:0]configuration_vector;
  output [447:0]status_vector;
  output [7:0]core_status;
  output tx_resetdone;
  output rx_resetdone;
  input signal_detect;
  input tx_fault;
  output drp_req;
  input drp_gnt;
  output drp_den_o;
  output drp_dwe_o;
  output [15:0]drp_daddr_o;
  output [15:0]drp_di_o;
  output drp_drdy_o;
  output [15:0]drp_drpdo_o;
  input drp_den_i;
  input drp_dwe_i;
  input [15:0]drp_daddr_i;
  input [15:0]drp_di_i;
  input drp_drdy_i;
  input [15:0]drp_drpdo_i;
  input [2:0]pma_pmd_type;
  output tx_disable;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
