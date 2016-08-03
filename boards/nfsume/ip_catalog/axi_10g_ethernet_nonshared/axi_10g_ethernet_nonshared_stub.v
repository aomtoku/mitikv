// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Thu Aug  4 01:08:51 2016
// Host        : jgn-tv4 running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/aom/project_2/project_2.srcs/sources_1/ip/axi_10g_ethernet_nonshared/axi_10g_ethernet_nonshared_stub.v
// Design      : axi_10g_ethernet_nonshared
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_1,Vivado 2015.4" *)
module axi_10g_ethernet_nonshared(tx_axis_aresetn, rx_axis_aresetn, tx_ifg_delay, dclk, txp, txn, rxp, rxn, signal_detect, tx_fault, tx_disable, pcspma_status, sim_speedup_control, rxrecclk_out, s_axi_aclk, s_axi_aresetn, xgmacint, areset_coreclk, txusrclk, txusrclk2, txoutclk, txuserrdy, tx_resetdone, rx_resetdone, coreclk, areset, gttxreset, gtrxreset, qplllock, qplloutclk, qplloutrefclk, reset_counter_done, s_axi_araddr, s_axi_arready, s_axi_arvalid, s_axi_awaddr, s_axi_awready, s_axi_awvalid, s_axi_bready, s_axi_bresp, s_axi_bvalid, s_axi_rdata, s_axi_rready, s_axi_rresp, s_axi_rvalid, s_axi_wdata, s_axi_wready, s_axi_wvalid, s_axis_tx_tdata, s_axis_tx_tkeep, s_axis_tx_tlast, s_axis_tx_tready, s_axis_tx_tuser, s_axis_tx_tvalid, s_axis_pause_tdata, s_axis_pause_tvalid, m_axis_rx_tdata, m_axis_rx_tkeep, m_axis_rx_tlast, m_axis_rx_tuser, m_axis_rx_tvalid, tx_statistics_valid, tx_statistics_vector, rx_statistics_valid, rx_statistics_vector)
/* synthesis syn_black_box black_box_pad_pin="tx_axis_aresetn,rx_axis_aresetn,tx_ifg_delay[7:0],dclk,txp,txn,rxp,rxn,signal_detect,tx_fault,tx_disable,pcspma_status[7:0],sim_speedup_control,rxrecclk_out,s_axi_aclk,s_axi_aresetn,xgmacint,areset_coreclk,txusrclk,txusrclk2,txoutclk,txuserrdy,tx_resetdone,rx_resetdone,coreclk,areset,gttxreset,gtrxreset,qplllock,qplloutclk,qplloutrefclk,reset_counter_done,s_axi_araddr[10:0],s_axi_arready,s_axi_arvalid,s_axi_awaddr[10:0],s_axi_awready,s_axi_awvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rready,s_axi_rresp[1:0],s_axi_rvalid,s_axi_wdata[31:0],s_axi_wready,s_axi_wvalid,s_axis_tx_tdata[63:0],s_axis_tx_tkeep[7:0],s_axis_tx_tlast,s_axis_tx_tready,s_axis_tx_tuser[0:0],s_axis_tx_tvalid,s_axis_pause_tdata[15:0],s_axis_pause_tvalid,m_axis_rx_tdata[63:0],m_axis_rx_tkeep[7:0],m_axis_rx_tlast,m_axis_rx_tuser,m_axis_rx_tvalid,tx_statistics_valid,tx_statistics_vector[25:0],rx_statistics_valid,rx_statistics_vector[29:0]" */;
  input tx_axis_aresetn;
  input rx_axis_aresetn;
  input [7:0]tx_ifg_delay;
  input dclk;
  output txp;
  output txn;
  input rxp;
  input rxn;
  input signal_detect;
  input tx_fault;
  output tx_disable;
  output [7:0]pcspma_status;
  input sim_speedup_control;
  output rxrecclk_out;
  input s_axi_aclk;
  input s_axi_aresetn;
  output xgmacint;
  input areset_coreclk;
  input txusrclk;
  input txusrclk2;
  output txoutclk;
  input txuserrdy;
  output tx_resetdone;
  output rx_resetdone;
  input coreclk;
  input areset;
  input gttxreset;
  input gtrxreset;
  input qplllock;
  input qplloutclk;
  input qplloutrefclk;
  input reset_counter_done;
  input [10:0]s_axi_araddr;
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
  input [63:0]s_axis_tx_tdata;
  input [7:0]s_axis_tx_tkeep;
  input s_axis_tx_tlast;
  output s_axis_tx_tready;
  input [0:0]s_axis_tx_tuser;
  input s_axis_tx_tvalid;
  input [15:0]s_axis_pause_tdata;
  input s_axis_pause_tvalid;
  output [63:0]m_axis_rx_tdata;
  output [7:0]m_axis_rx_tkeep;
  output m_axis_rx_tlast;
  output m_axis_rx_tuser;
  output m_axis_rx_tvalid;
  output tx_statistics_valid;
  output [25:0]tx_statistics_vector;
  output rx_statistics_valid;
  output [29:0]rx_statistics_vector;
endmodule
