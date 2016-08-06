// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4.1 (lin64) Build 1431336 Fri Dec 11 14:52:39 MST 2015
// Date        : Sat Aug  6 15:56:23 2016
// Host        : anago.arc.ics.keio.ac.jp running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /home2/tokusasi/work/mitikv/boards/nfsume/ip_catalog/dpram_128_1024/dpram_128_1024_stub.v
// Design      : dpram_128_1024
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "blk_mem_gen_v8_3_1,Vivado 2015.4.1" *)
module dpram_128_1024(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[9:0],dina[127:0],douta[127:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [127:0]dina;
  output [127:0]douta;
endmodule
