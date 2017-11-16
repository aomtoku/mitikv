//
// Copyright (C) 2017 Yuta Tokusashi
// All rights reserved.
//
// This software was developed by
// Stanford University and the University of Cambridge Computer Laboratory
// under National Science Foundation under Grant No. CNS-0855268,
// the University of Cambridge Computer Laboratory under EPSRC INTERNET Project EP/H040536/1 and
// by the University of Cambridge Computer Laboratory under DARPA/AFRL contract FA8750-11-C-0249 ("MRC2"), 
// as part of the DARPA MRC research programme.
//
// @NETFPGA_LICENSE_HEADER_START@
//
// Licensed to NetFPGA C.I.C. (NetFPGA) under one or more contributor
// license agreements.  See the NOTICE file distributed with this work for
// additional information regarding copyright ownership.  NetFPGA licenses this
// file to you under the NetFPGA Hardware-Software License, Version 1.0 (the
// "License"); you may not use this file except in compliance with the
// License.  You may obtain a copy of the License at:
//
//   http://www.netfpga-cic.org
//
// Unless required by applicable law or agreed to in writing, Work distributed
// under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations under the License.
//
// @NETFPGA_LICENSE_HEADER_END@
//
/*******************************************************************************
 *  File:
 *        db_dram.v
 *
 *  Library:
 *        hw/contrib/cores/db_dram_v0_0_0
 *
 *  Module:
 *        db_dram
 *
 *  Author:
 *        Yuta Tokusashi
 * 
 *  Description:
 *        Database on DRAM
 *
 */
`define DRAM_SUPPORT
//`define DPRAM_SUPPORT

module db_dram #(
	parameter KEY_SIZE = 96,
	parameter VAL_SIZE = 32,
	parameter RAM_SIZE = 1024,
	parameter RAM_ADDR = 22
	// AXI Registers Data Width
	parameter C_S_AXI_DATA_WIDTH    = 32,          
	parameter C_S_AXI_ADDR_WIDTH    = 12,          
	parameter C_BASEADDR            = 32'h00000000
)(
	// Global Ports
	input axis_aclk,
	input axis_resetn,

`ifdef DRAM_SUPPORT
	/* DDRS SDRAM Infra */
	input  wire                sys_clk_p,
	input  wire                sys_clk_n,

	/* DRAM interace */ 
	inout  [63:0]              ddr3_dq,
	inout  [ 7:0]              ddr3_dqs_n,
	inout  [ 7:0]              ddr3_dqs_p,
	output [15:0]              ddr3_addr,
	output [ 2:0]              ddr3_ba,
	output                     ddr3_ras_n,
	output                     ddr3_cas_n,
	output                     ddr3_we_n,
	output                     ddr3_reset_n,
	output [ 0:0]              ddr3_ck_p,
	output [ 0:0]              ddr3_ck_n,
	output [ 0:0]              ddr3_cke,
	output [ 0:0]              ddr3_cs_n,
	output [ 7:0]              ddr3_dm,
	output [ 0:0]              ddr3_odt,
`endif

	output wire                init_mem,
	input  wire [KEY_SIZE-1:0] in_key,
	input  wire [3:0]          in_flag,
	input  wire                in_valid,
	output wire                in_ready,
	output wire                out_valid,
	output wire [3:0]          out_flag,

	// Slave AXI Ports
	input                                     S_AXI_ACLK,
	input                                     S_AXI_ARESETN,
	input      [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
	input                                     S_AXI_AWVALID,
	input      [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
	input      [C_S_AXI_DATA_WIDTH/8-1 : 0]   S_AXI_WSTRB,
	input                                     S_AXI_WVALID,
	input                                     S_AXI_BREADY,
	input      [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
	input                                     S_AXI_ARVALID,
	input                                     S_AXI_RREADY,
	output                                    S_AXI_ARREADY,
	output     [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_RDATA,
	output     [1 : 0]                        S_AXI_RRESP,
	output                                    S_AXI_RVALID,
	output                                    S_AXI_WREADY,
	output     [1 :0]                         S_AXI_BRESP,
	output                                    S_AXI_BVALID,
	output                                    S_AXI_AWREADY
);

// Todo: 
//    support AXI-mapped DRAM access
wire [31:0] dram_addr;
wire [31:0] dram_wdata;


db_top #(
	.KEY_SIZE     ( KEY_SIZE ),
	.VAL_SIZE     ( VAL_SIZE ),
	.RAM_SIZE     ( RAM_SIZE ),
	.RAM_ADDR     ( RAM_ADDR )
) u_db_top (
	.clk          ( axis_aclk ),
	.rst          (  ), 
	.sys_rst      ( !axis_resetn ),

`ifdef DRAM_SUPPORT
	/* DDRS SDRAM Infra */
	.sys_clk_p    ( sys_clk_p ),
	.sys_clk_n    ( sys_clk_n ),
	
	/* DRAM interace */ 
	.ddr3_dq      ( ddr3_dq      ),
	.ddr3_dqs_n   ( ddr3_dqs_n   ),
	.ddr3_dqs_p   ( ddr3_dqs_p   ),
	.ddr3_addr    ( ddr3_addr    ),
	.ddr3_ba      ( ddr3_ba      ),
	.ddr3_ras_n   ( ddr3_ras_n   ),
	.ddr3_cas_n   ( ddr3_cas_n   ),
	.ddr3_we_n    ( ddr3_we_n    ),
	.ddr3_reset_n ( ddr3_reset_n ),
	.ddr3_ck_p    ( ddr3_ck_p    ),
	.ddr3_ck_n    ( ddr3_ck_n    ),
	.ddr3_cke     ( ddr3_cke     ),
	.ddr3_cs_n    ( ddr3_cs_n    ),
	.ddr3_dm      ( ddr3_dm      ),
	.ddr3_odt     ( ddr3_odt     ),
`endif
	/* Network Interface */
	.init_mem     ( init_mem  ),
	.in_key       ( in_key    ),
	.in_flag      ( in_flag   ),
	.in_valid     ( in_valid  ),
	.in_ready     ( in_ready  ),
	.out_valid    ( out_valid ),
	.out_flag     ( out_flag  )
);

cpu_regs # (
	.C_BASE_ADDRESS        ( C_BASE_ADDRESS     ),
	.C_S_AXI_DATA_WIDTH    ( C_S_AXI_DATA_WIDTH ),
	.C_S_AXI_ADDR_WIDTH    ( C_S_AXI_ADDR_WIDTH )
) u_cpu_regs (
	// General ports
	.clk                   ( axis_aclk   ),
	.resetn                ( axis_resetn ),
	// Global Registers
	.cpu_resetn_soft       (),
	.resetn_soft           (),
	.resetn_sync           (),
	// Register ports

	// AXI Lite ports
	.S_AXI_ACLK            ( S_AXI_ACLK    ),
	.S_AXI_ARESETN         ( S_AXI_ARESETN ),
	.S_AXI_AWADDR          ( S_AXI_AWADDR  ),
	.S_AXI_AWVALID         ( S_AXI_AWVALID ),
	.S_AXI_WDATA           ( S_AXI_WDATA   ),
	.S_AXI_WSTRB           ( S_AXI_WSTRB   ),
	.S_AXI_WVALID          ( S_AXI_WVALID  ),
	.S_AXI_BREADY          ( S_AXI_BREADY  ),
	.S_AXI_ARADDR          ( S_AXI_ARADDR  ),
	.S_AXI_ARVALID         ( S_AXI_ARVALID ),
	.S_AXI_RREADY          ( S_AXI_RREADY  ),
	.S_AXI_ARREADY         ( S_AXI_ARREADY ),
	.S_AXI_RDATA           ( S_AXI_RDATA   ),
	.S_AXI_RRESP           ( S_AXI_RRESP   ),
	.S_AXI_RVALID          ( S_AXI_RVALID  ),
	.S_AXI_WREADY          ( S_AXI_WREADY  ),
	.S_AXI_BRESP           ( S_AXI_BRESP   ),
	.S_AXI_BVALID          ( S_AXI_BVALID  ),
	.S_AXI_AWREADY         ( S_AXI_AWREADY )
);

endmodule
