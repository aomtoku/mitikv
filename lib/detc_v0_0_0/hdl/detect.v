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
 *        detect.v
 *
 *  Library:
 *        hw/contrib/cores/detc_v0_0_0
 *
 *  Module:
 *        detect
 *
 *  Author:
 *        Yuta Tokusashi
 * 
 *  Description:
 *        Detection module for DDoS mitigation
 *
 */

module detect #(
	parameter KEY_SIZE = 96,
	parameter OP_SIZE  = 4,
	parameter VAL_SIZE = 32,
	//Master AXI Stream Data Width
	parameter C_M_AXIS_DATA_WIDTH=256,
	parameter C_S_AXIS_DATA_WIDTH=256,
	parameter C_M_AXIS_TUSER_WIDTH=128,
	parameter C_S_AXIS_TUSER_WIDTH=128,

	// AXI Registers Data Width
	parameter C_S_AXI_DATA_WIDTH    = 32,          
	parameter C_S_AXI_ADDR_WIDTH    = 12,          
	parameter C_BASEADDR            = 32'h00000000
) (
	// Global Ports
	input axis_aclk,
	input axis_resetn,

	// Master Stream Ports (interface to data path)
	output [C_M_AXIS_DATA_WIDTH - 1:0] m_axis_tdata,
	output [((C_M_AXIS_DATA_WIDTH / 8)) - 1:0] m_axis_tkeep,
	output [C_M_AXIS_TUSER_WIDTH-1:0] m_axis_tuser,
	output m_axis_tvalid,
	input  m_axis_tready,
	output m_axis_tlast,

	// Slave Stream Ports (interface to RX queues)
	input [C_S_AXIS_DATA_WIDTH - 1:0] s_axis_tdata,
	input [((C_S_AXIS_DATA_WIDTH / 8)) - 1:0] s_axis_tkeep,
	input [C_S_AXIS_TUSER_WIDTH-1:0] s_axis_tuser,
	input  s_axis_tvalid,
	output s_axis_tready,
	input  s_axis_tlast,

	input  wire                init_mem,
	output wire [KEY_SIZE-1:0] in_key,
	output wire [OP_SIZE-1:0]  in_flag,
	output wire                in_valid,
	input  wire                in_ready,
	input  wire                out_valid,
	input  wire [OP_SIZE-1:0]  out_flag,

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

/***************************************************************
 * Parameters
 ***************************************************************/
// Ethernet Frame Header
parameter ETH_TYPE_POS        = 96;
// IP Header
parameter IP_PROTO_POS        = 184;
parameter IP_SRC_ADDR_POS     = 208;
parameter IP_DST_ADDR_POS0    = 240;
parameter IP_DST_ADDR_POS1    = 0;
// UDP Header 
parameter UDP_SRC_UPORT_POS   = 16;
parameter UDP_DST_UPORT_POS   = 32;

localparam IP_TYPE            = 16'h0008;
localparam IP_PROTO_ICMP      = 8'h01;

localparam STATUS_IP          = 0,
           STATUS_ICMP        = 1,
		   STATUS_PORTUNREACH = 2;

localparam DB_CMD_UPDATE      = 4'b0101;
localparam DB_CMD_LOOKUP      = 4'b0000;
/***************************************************************
 * Parser
 ***************************************************************/
reg [31:0] src_ipaddr, dst_ipaddr, src_ipaddr_next, dst_ipaddr_next;
reg [15:0] src_uport, dst_uport, src_uport_next, dst_uport_next;
reg [1:0]  status, status_next;
reg [9:0]  s_axis_cnt;
wire [95:0] key_input = {src_ipaddr, dst_ipaddr, src_uport, dst_uport};
wire lookup_pkt_en = status == 2'b11;

always @ (*) begin
		status_next = status;
		src_ipaddr_next = src_ipaddr;
		dst_ipaddr_next = dst_ipaddr;
		src_uport_next = src_uport;
		dst_uport_next = dst_uport;

		if (s_axis_tvalid && s_axis_tready) begin
			case (s_axis_cnt)
				0: begin
					if (s_axis_tdata[ETH_TYPE_POS+15:ETH_TYPE_POS] == IP_TYPE) 
						status_next[STATUS_IP] = 1'b1;
					if (s_axis_tdata[IP_PROTO_POS+7:IP_PROTO_POS] == UDP_PROTO)
						status_next[STATUS_UDP] = 1'b1;
					src_ipaddr_next =  s_axis_tdata[IP_SRC_ADDR_POS+31:IP_SRC_ADDR_POS];
					dst_ipaddr_next[15:0] = s_axis_tdata[IP_DST_ADDR_POS0+15:IP_DST_ADDR_POS0];

				end
				1: begin
					dst_ipaddr_next[31:15] = s_axis_tdata[IP_DST_ADDR_POS1+15:IP_DST_ADDR_POS1];
					dst_uport_next = s_axis_tdata[UDP_DST_UPORT_POS+15:UDP_DST_UPORT_POS];
					src_uport_next = s_axis_tdata[UDP_SRC_UPORT_POS+15:UDP_SRC_UPORT_POS];
				end
				default: ;
			endcase
		end
		// Last flit of outgoing Packet
		if (m_axis_tvalid && m_axis_tready && m_axis_tlast) begin
			status_next = 0;
		end
	end
end


reg lookup_pkt_en_buf;
always @ (posedge axis_aclk) begin
	if (!axis_resetn) begin
		s_axis_cnt <= 0;
		status     <= 0;
		src_ipaddr <= 0;
		dst_ipaddr <= 0;
		src_uport  <= 0; 
		dst_uport  <= 0;
	end else begin
		status     <= status_next;
		src_ipaddr <= src_ipaddr_next;
		dst_ipaddr <= dst_ipaddr_next;
		src_uport  <= src_uport_next; 
		dst_uport  <= dst_uport_next;
	
		lookup_pkt_en_buf <= lookup_pkt_en;
		if (s_axis_tvalid && s_axis_tready) begin
			if (s_axis_tlast) begin
				s_axis_ready_latch <= 0;
				s_axis_cnt <= 0;
			end else begin
				s_axis_ready_latch <= 1;
				s_axis_cnt <= s_axis_cnt + 1;
			end
		end

	end

/***************************************************************
 * Signature
 ***************************************************************/
wire filter_mode    = rx1_ftype      == ETH_FTYPE_IP      && 
                      rx1_ip_proto   == IP_PROTO_ICMP     &&
                      rx1_icmp_type  == ICMP_DEST_UNREACH &&
                      (rx1_icmp_code == ICMP_PORT_UNREACH ||
                      rx1_icmp_code  == ICMP_ADMIN_PROHIB) && 
                      s_axis_rx1_tvalid;
/***************************************************************
 * Lookup logic
 ***************************************************************/
wire [OP_SIZE-1:0] in_flag_pre = DB_CMD_UPDATE;
wire               empty_ivalid_fifo, full_ivalid_fifo;

fallthrough_small_fifo #(
	.WIDTH           (100),
	.MAX_DEPTH_BITS  (3)
) u_ivalid_fifo (
	.din         ( {in_flag_pre, key_input} ),
	.wr_en       ( {lookup_pkt_en, lookup_pkt_en_buf} == 2'b10 ),
	.rd_en       ( in_valid          ),   
	.dout        ( {in_flag, in_key} ), 
	.full        ( full_ivalid_fifo  ),
	.empty       ( empty_ivalid_fifo ),
	.nearly_full (),
	.prog_full   (),
	.reset       ( axis_resetn       ),
	.clk         ( axis_aclk         )
);

assign in_valid  = !empty_ivalid_fifo && in_ready;

/***************************************************************
 * Registers
 ***************************************************************/
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
