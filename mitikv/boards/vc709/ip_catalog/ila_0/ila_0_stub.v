// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4.1 (lin64) Build 1431336 Fri Dec 11 14:52:39 MST 2015
// Date        : Thu Sep  1 18:10:18 2016
// Host        : anago.arc.ics.keio.ac.jp running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -force -mode synth_stub /home2/tokusasi/delayemu/boards/vc709/ip_catalog/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2015.4.1" *)
module ila_0(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[255:0]" */;
  input clk;
  input [255:0]probe0;
endmodule
