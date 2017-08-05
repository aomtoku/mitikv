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
 *        prevent.v
 *
 *  Library:
 *        hw/contrib/cores/prev_v0_0_0
 *
 *  Module:
 *        prevent
 *
 *  Author:
 *        Yuta Tokusashi
 * 
 *  Description:
 *        Prevention Module for DDoS mitigation
 *
 */

module prevent #(
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
	output wire [3:0]          in_flag,
	output wire                in_valid,
	input  wire                in_ready,
	input  wire                out_valid,
	input  wire [3:0]          out_flag,

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
parameter ETH_TYPE_POS      = 96;
// IP Header
parameter IP_PROTO_POS      = 184;
parameter IP_SRC_ADDR_POS   = 208;
parameter IP_DST_ADDR_POS0  = 240;
parameter IP_DST_ADDR_POS1  = 0;
// UDP Header 
parameter UDP_SRC_UPORT_POS = 16;
parameter UDP_DST_UPORT_POS = 32;

localparam IP_TYPE      = 16'h0008;
localparam UDP_PROTO    =  8'h11;

localparam STATUS_IP     = 0,
           STATUS_UDP    = 1;
/***************************************************************
 * Header Parser 
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

wire empty_ivalid_fifo, full_ivalid_fifo;
wire [3:0] in_flag_pre = 4'b0000;

fallthrough_small_fifo #(
	.WIDTH           (100),
	.MAX_DEPTH_BITS  (5)
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
assign in_key   = key_input;
assign in_valid  = !empty_ivalid_fifo && in_ready;
/***************************************************************
 * lookup to Memory Device
 ***************************************************************/
 
/***************************************************************
 * FIFO instances; Waiting Lookup!
 ***************************************************************/
fallthrough_small_fifo #( 
	.WIDTH    (C_M_AXIS_DATA_WIDTH+C_M_AXIS_TUSER_WIDTH+C_M_AXIS_DATA_WIDTH/8+1),
	.MAX_DEPTH_BITS(2)
) input_fifo (
// Outputs
	.dout         ({m_axis_tlast, tuser_fifo, m_axis_tkeep, m_axis_tdata}),
	.full         (),
	.nearly_full  (in_fifo_nearly_full),
	.prog_full    (),
	.empty        (in_fifo_empty),
	// Inputs
	.din          ({s_axis_tlast, s_axis_tuser, s_axis_tkeep, s_axis_tdata}),
	.wr_en        (s_axis_tvalid & ~in_fifo_nearly_full),
	.rd_en        (in_fifo_rd_en),
	.reset        (~axis_resetn),
	.clk          (axis_aclk)
);

// Nomarl traffic : to network port 1 from switch_interconnect
axis_data_fifo_0 u_axis_data_fifo0 (
	.s_axis_aresetn      (!eth_rst[8]),  
	.s_axis_aclk         (clk156),  
	
	.s_axis_tvalid       (out_axis_tvalid),
	.s_axis_tready       (out_axis_tready),          
	.s_axis_tdata        (out_axis_tdata), 
	.s_axis_tkeep        (out_axis_tkeep), 
	.s_axis_tlast        (out_axis_tlast), 
	.s_axis_tuser        (out_axis_tuser),          
	
	.m_axis_tvalid       (m_axis_tx1_tvalid),
	.m_axis_tready       (m_axis_tx1_tready),
	.m_axis_tdata        (m_axis_tx1_tdata), 
	.m_axis_tkeep        (m_axis_tx1_tkeep), 
	.m_axis_tlast        (m_axis_tx1_tlast), 
	.m_axis_tuser        (m_axis_tx1_tuser), 
	.axis_data_count     (), 
	.axis_wr_data_count  (outbound_wr_dcnt), 
	.axis_rd_data_count  (outbound_rd_dcnt)  
);

// Lookuped traffic : to switch from network port0
axis_data_fifo_0 u_axis_data_fifo1 (
	.s_axis_aresetn      (!eth_rst[9]),  
	.s_axis_aclk         (clk156),  
	
	.s_axis_tvalid       (p0_axis_tvalid & udp_traffic_en),
	.s_axis_tready       (),          
	.s_axis_tdata        (p0_axis_tdata), 
	.s_axis_tkeep        (p0_axis_tkeep), 
	.s_axis_tlast        (p0_axis_tlast & udp_traffic_en), 
	.s_axis_tuser        (1'b0),          
	
	.m_axis_tvalid       (save_axis_tvalid),
	.m_axis_tready       (sw_pkt_ready),
	.m_axis_tdata        (save_axis_tdata), 
	.m_axis_tkeep        (save_axis_tkeep), 
	.m_axis_tlast        (save_axis_tlast), 
	.m_axis_tuser        (save_axis_tuser), 
	
	.axis_data_count     (), 
	.axis_wr_data_count  (inbound_wr_dcnt), 
	.axis_rd_data_count  (inbound_rd_dcnt)  
);

/***************************************************************
 * Interconnect Switch
 ***************************************************************/
wire [31:0] inter_s0_dcnt, inter_s1_dcnt, inter_s2_dcnt;
 
axis_interconnect_0 u_interconnect_2_1 (
	.ACLK                 ( axis_aclk   ),   
	.ARESETN              ( axis_resetn ), 

	// traffic except UDP
	.S00_AXIS_ACLK        ( axis_aclk   ),  
	.S00_AXIS_ARESETN     ( axis_resetn ), 
	.S00_AXIS_TVALID      ( p0_axis_tvalid & !udp_traffic_en), // todo   
	.S00_AXIS_TREADY      ( s0_ready),   
	.S00_AXIS_TDATA       ( p0_axis_tdata),   
	.S00_AXIS_TKEEP       ( p0_axis_tkeep),   
	.S00_AXIS_TLAST       ( p0_axis_tlast & !udp_traffic_en),   
	.S00_AXIS_TUSER       ( 8'd0),  // 8bit 

	// Traffic UDP with lookup into DRAM HashTable
	.S01_AXIS_ACLK        ( axis_aclk   ),  
	.S01_AXIS_ARESETN     ( axis_resetn ),
	.S01_AXIS_TVALID      (save_axis_tvalid & sw_pkt_ready_checked),   
	.S01_AXIS_TREADY      (save_axis_tready),   
	.S01_AXIS_TDATA       (save_axis_tdata),   
	.S01_AXIS_TKEEP       (save_axis_tkeep),   
	.S01_AXIS_TLAST       (save_axis_tlast & sw_pkt_ready_checked),   
	.S01_AXIS_TUSER       (8'd0),   

	.M00_AXIS_ACLK        ( axis_aclk   ),   
	.M00_AXIS_ARESETN     ( axis_resetn ), 
	.M00_AXIS_TVALID      (out_axis_tvalid),  
	.M00_AXIS_TREADY      (out_axis_tready),  
	.M00_AXIS_TDATA       (out_axis_tdata),   
	.M00_AXIS_TKEEP       (out_axis_tkeep),   
	.M00_AXIS_TLAST       (out_axis_tlast),   
	.M00_AXIS_TUSER       ({out_axis_dummy_tuser, out_axis_tuser}),   
	.S00_ARB_REQ_SUPPRESS (1'b0),  // input wire
	.S01_ARB_REQ_SUPPRESS (1'b0),  // input wire 

	.S00_FIFO_DATA_COUNT  (inter_s0_dcnt),    // output wire [31 : 0] S00_FIFO_DATA_COUNT
	.S01_FIFO_DATA_COUNT  (inter_s1_dcnt),    // output wire [31 : 0] S01_FIFO_DATA_COUNT
	.M00_FIFO_DATA_COUNT  (inter_s2_dcnt)    // output wire [31 : 0] M00_FIFO_DATA_COUNT
);



/***************************************************************
 * Registers for Statistics
 ***************************************************************/
reg [31:0] drop_pkts, pass_pkts, all_pkts;
reg [31:0] inbound_pkts, outbound_pkts;

always @ (posedge clk156) begin
	if (eth_rst) begin
		drop_pkts     <= 0;
		pass_pkts     <= 0;
		all_pkts      <= 0;
		inbound_pkts  <= 0;
		outbound_pkts <= 0;
	end else begin
		if (check_pkt_en) begin
			all_pkts  <= all_pkts + 1;
			if (check_pkt == CHECK_DROP)
				drop_pkts <= drop_pkts + 1;
			else if (check_pkt == CHECK_THROUGH)
				pass_pkts <= pass_pkts + 1;
		end
		if (s_axis_rx0_tlast && s_axis_rx0_tvalid)
			inbound_pkts <= inbound_pkts + 1;
		if (m_axis_tx1_tlast && m_axis_tx1_tvalid)
			outbound_pkts <= outbound_pkts + 1;
	end
end

reg [31:0] max_inbound_fifo, inbound_fifo_buf;
reg [31:0] max_outbound_fifo, outbound_fifo_buf;
reg [31:0] max_s0_fifo, s0_fifo_buf;
reg [31:0] max_s1_fifo, s1_fifo_buf;
reg [31:0] max_s2_fifo, s2_fifo_buf;

always @ (posedge clk156) begin
	if (eth_rst) begin
		max_inbound_fifo  <= 0;
		inbound_fifo_buf  <= 0;
		max_outbound_fifo <= 0;
		outbound_fifo_buf <= 0;
		max_s0_fifo       <= 0; 
		s0_fifo_buf       <= 0;
		max_s1_fifo       <= 0; 
		s1_fifo_buf       <= 0;
		max_s2_fifo       <= 0; 
		s2_fifo_buf       <= 0;
	end else begin
		inbound_fifo_buf <= inbound_rd_dcnt;
		if (max_inbound_fifo <= inbound_fifo_buf)
			max_inbound_fifo <= inbound_fifo_buf;

		outbound_fifo_buf <= outbound_rd_dcnt;
		if (max_outbound_fifo <= outbound_fifo_buf)
			max_outbound_fifo <= outbound_fifo_buf;
		
		s0_fifo_buf <= inter_s0_dcnt;
		if (max_s0_fifo <= s0_fifo_buf)
			max_s0_fifo <= s0_fifo_buf;

		s1_fifo_buf <= inter_s1_dcnt;
		if (max_s1_fifo <= s1_fifo_buf)
			max_s1_fifo <= s1_fifo_buf;

		s2_fifo_buf <= inter_s2_dcnt;
		if (max_s2_fifo <= s2_fifo_buf)
			max_s2_fifo <= s2_fifo_buf;
	end
end

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
