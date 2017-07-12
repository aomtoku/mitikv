//`define DEBUG
`timescale 1ps/1ps

module eth_encap #(
	parameter KEY_SIZE = 96,
	parameter VAL_SIZE = 32
)(
	input  wire        clk156,
	input  wire [15:0] eth_rst,
	output wire [ 7:0] debug,

	output wire [KEY_SIZE-1:0] in_key,
	output wire [3:0]          in_flag,
	output wire                in_valid,
	input  wire                out_valid,
	input  wire [3:0]          out_flag,

	input  wire        s_axis_rx0_tvalid,
	input  wire [63:0] s_axis_rx0_tdata,
	input  wire [ 7:0] s_axis_rx0_tkeep,
	input  wire        s_axis_rx0_tlast,
	input  wire        s_axis_rx0_tuser,

	input  wire        m_axis_tx0_tready,
	output wire        m_axis_tx0_tvalid,
	output wire [63:0] m_axis_tx0_tdata,
	output wire [ 7:0] m_axis_tx0_tkeep,
	output wire        m_axis_tx0_tlast,
	output wire        m_axis_tx0_tuser,

	input  wire        s_axis_rx1_tvalid,
	input  wire [63:0] s_axis_rx1_tdata,
	input  wire [ 7:0] s_axis_rx1_tkeep,
	input  wire        s_axis_rx1_tlast,
	input  wire        s_axis_rx1_tuser,

	input  wire        m_axis_tx1_tready,
	output wire        m_axis_tx1_tvalid,
	output wire [63:0] m_axis_tx1_tdata,
	output wire [ 7:0] m_axis_tx1_tkeep,
	output wire        m_axis_tx1_tlast,
	output wire        m_axis_tx1_tuser
);

localparam TX_IDLE = 2'b00,
           TX_HDR  = 2'b01,
           TX_DATA = 2'b10,
           TX_WAIT = 2'b11;

reg [15:0] tx_count, tx_count_next;
reg [ 1:0] tx_state, tx_state_next;
reg [15:0] wait_cnt, wait_cnt_next;

/*
 *  RX path
 */
localparam ETH_FTYPE_IP  = 16'h0800;
localparam IP_PROTO_UDP  = 8'h11,
           IP_PROTO_ICMP = 8'h01;
localparam ICMP_PORT_UNREACH = 8'h03;
localparam ICMP_DEST_UNREACH = 8'h03;
localparam ICMP_ADMIN_PROHIB = 8'h0a;
localparam DNS_SERV_PORT__   = 16'd53;
localparam DEBUG_SERV_PORT__ = 16'd12345;
`ifdef DEBUG
localparam DNS_SERV_PORT = DEBUG_SERV_PORT__;
`else
localparam DNS_SERV_PORT = DNS_SERV_PORT__;
`endif /* DEBUG */
localparam DNS_PARAM_RESPONSE = 1'b1,
           DNS_PARAM_REQUEST  = 1'b0;

localparam STATUS_SUSPECT = 2'b01,
           STATUS_ARREST  = 2'b10,
           STATUS_FILTERE = 2'b11;


/* general regs for parsering */
reg  [9:0] rx_cnt0, rx_cnt1;
reg  [7:0] hit_cnt;
/* regs for parsering */
reg [15:0] rx0_ftype;
reg  [7:0] rx0_ip_proto;
reg [15:0] rx0_dst_uport, rx0_src_uport;
reg [31:0] rx0_dst_ip,    rx0_src_ip;
reg  [7:0] rx0_icmp_type, rx0_icmp_code;
reg [15:0] rx1_ftype;
reg  [7:0] rx1_ip_proto;
reg [15:0] rx1_dst_uport, rx1_src_uport;
reg [31:0] rx1_dst_ip,    rx1_src_ip;
reg  [7:0] rx1_icmp_type, rx1_icmp_code;
reg [ 7:0] filter_ip_proto;
reg [31:0] filter_src_ip, filter_dst_ip;
reg [15:0] filter_dst_udp, filter_len_udp, filter_qid_dns, filter_src_udp;
reg [15:0] filter_parm_dns, filter_qcnt_dns, filter_acnt_dns, filter_auth_dns;
reg [15:0] suspect_parm_dns, suspect_qcnt_dns, suspect_acnt_dns,suspect_auth_dns;
reg [15:0] suspect_qid_dns;
reg  [7:0] filter_iph_len;
reg [15:0] filter_ipd_len;
/* DB Request Registers */
reg [3:0] db_op0, db_op1;
/* pipelined stages */
reg  [1+1+8+64-1:0] pipe_stg0_0, pipe_stg0_1, pipe_stg0_2, pipe_stg0_3;
reg  [1+1+8+64-1:0] pipe_stg0_4, pipe_stg0_5, pipe_stg0_6, pipe_stg0_7;
reg  [1+1+8+64-1:0] pipe_stg0_8, pipe_stg0_9, pipe_stg0_a, pipe_stg0_b;
wire [1+1+8+64-1:0] pipe_in_stage0 = {s_axis_rx0_tvalid, s_axis_rx0_tdata, 
						s_axis_rx0_tkeep, s_axis_rx0_tlast}; 
wire        p0_axis_tvalid, p0_axis_tlast;
wire [ 7:0] p0_axis_tkeep;
wire [63:0] p0_axis_tdata;
reg  [15:0] p0_lookup_traffic_en;
assign {p0_axis_tvalid, p0_axis_tdata, p0_axis_tkeep, p0_axis_tlast} = pipe_stg0_b;

wire filter_mode    = rx1_ftype      == ETH_FTYPE_IP      && 
                      rx1_ip_proto   == IP_PROTO_ICMP     &&
                      rx1_icmp_type  == ICMP_DEST_UNREACH &&
                      (rx1_icmp_code == ICMP_PORT_UNREACH ||
                      rx1_icmp_code  == ICMP_ADMIN_PROHIB) && 
                      s_axis_rx1_tvalid;
wire suspect_mode   = rx0_ftype      == ETH_FTYPE_IP      &&
                      rx0_ip_proto   == IP_PROTO_UDP      ;//&&
                      //rx0_src_uport  == DNS_SERV_PORT;
wire lookup_traffic = rx0_ftype      == ETH_FTYPE_IP      &&
                      rx0_ip_proto   == IP_PROTO_UDP;

reg valid_udp_traffic;
wire udp_traffic_en = valid_udp_traffic | 
                         (p0_lookup_traffic_en[8] & p0_axis_tvalid);

always @ (posedge clk156) begin
	if (eth_rst[0])
		valid_udp_traffic <= 0;
	else begin
		if (p0_lookup_traffic_en[8] & p0_axis_tvalid)
			valid_udp_traffic <= 1;
		if (p0_axis_tlast & p0_axis_tvalid)
			valid_udp_traffic <= 0;
	end
end


always @ (posedge clk156) begin
	if (eth_rst[1]) begin
		rx_cnt0          <= 0;
		rx_cnt1          <= 0;
		hit_cnt          <= 0;
		rx0_ip_proto     <= 0;
		rx0_src_ip       <= 0;
		rx0_dst_ip       <= 0;
		rx0_src_uport    <= 0;
		rx0_dst_uport    <= 0;
		rx0_ftype        <= 0;
		rx0_icmp_type    <= 0;
		rx0_icmp_code    <= 0;
		rx1_ip_proto     <= 0;
		rx1_src_ip       <= 0;
		rx1_dst_ip       <= 0;
		rx1_src_uport    <= 0;
		rx1_dst_uport    <= 0;
		rx1_ftype        <= 0;
		rx1_icmp_type    <= 0;
		rx1_icmp_code    <= 0;
		filter_ip_proto  <= 0;
		filter_src_ip    <= 0; 
		filter_dst_ip    <= 0; 
		filter_dst_udp   <= 0; 
		filter_len_udp   <= 0; 
		filter_qid_dns   <= 0; 
		filter_src_udp   <= 0;
		filter_parm_dns  <= 0; 
		filter_qcnt_dns  <= 0; 
		filter_acnt_dns  <= 0; 
		filter_auth_dns  <= 0;
		suspect_qid_dns  <= 0; 
		suspect_parm_dns <= 0; 
		suspect_qcnt_dns <= 0; 
		suspect_acnt_dns <= 0; 
		suspect_auth_dns <= 0;
		db_op0           <= 0;
		db_op1           <= 0;
		pipe_stg0_0      <= 0;
		pipe_stg0_1      <= 0;
		pipe_stg0_2      <= 0;
		pipe_stg0_3      <= 0;
		pipe_stg0_4      <= 0;
		pipe_stg0_5      <= 0;
		pipe_stg0_6      <= 0;
		pipe_stg0_7      <= 0;
		pipe_stg0_8      <= 0;
		pipe_stg0_9      <= 0;
		pipe_stg0_a      <= 0;
		pipe_stg0_b      <= 0;
		p0_lookup_traffic_en <= 0;
	end else begin
		/* Pipelining  */
		p0_lookup_traffic_en <= {p0_lookup_traffic_en[15:0], lookup_traffic};
		pipe_stg0_0 <= pipe_in_stage0;
		pipe_stg0_1 <= pipe_stg0_0;
		pipe_stg0_2 <= pipe_stg0_1;
		pipe_stg0_3 <= pipe_stg0_2;
		pipe_stg0_4 <= pipe_stg0_3;
		pipe_stg0_5 <= pipe_stg0_4;
		pipe_stg0_6 <= pipe_stg0_5;
		pipe_stg0_7 <= pipe_stg0_6;
		pipe_stg0_8 <= pipe_stg0_7;
		pipe_stg0_9 <= pipe_stg0_8;
		pipe_stg0_a <= pipe_stg0_9;
		pipe_stg0_b <= pipe_stg0_a;

		/* Packet Parser */
		if (s_axis_rx0_tvalid) begin
			if (s_axis_rx0_tlast)
				rx_cnt0 <= 0;
			else
				rx_cnt0 <= rx_cnt0 + 1;
			case (rx_cnt0)
				0: begin // Reset all registers
					rx0_ip_proto      <= 0;
					rx0_src_ip        <= 0;
					rx0_dst_ip        <= 0;
					rx0_src_uport     <= 0;
					rx0_dst_uport     <= 0;
					rx0_ftype         <= 0;
					rx0_icmp_type     <= 0;
					rx0_icmp_code     <= 0;
					suspect_qid_dns  <= 0; 
					suspect_parm_dns <= 0; 
					suspect_qcnt_dns <= 0; 
					suspect_acnt_dns <= 0; 
					suspect_auth_dns <= 0;
					db_op0           <= 0;
				end
				1: rx0_ftype <= {s_axis_rx0_tdata[39:32], s_axis_rx0_tdata[47:40]};
				2: rx0_ip_proto <= s_axis_rx0_tdata[63:56];
				3: begin
					rx0_src_ip <= {s_axis_rx0_tdata[23:16],
					               s_axis_rx0_tdata[31:24],
					               s_axis_rx0_tdata[39:32],
					               s_axis_rx0_tdata[47:40]};
					rx0_dst_ip[31:16] <= {s_axis_rx0_tdata[55:48],
					                     s_axis_rx0_tdata[63:56]};
				end
				4: begin
					rx0_dst_ip[15: 0] <= {s_axis_rx0_tdata[ 7: 0],
                                         s_axis_rx0_tdata[15: 8]};
					if (rx0_ftype == ETH_FTYPE_IP && 
							rx0_ip_proto == IP_PROTO_UDP) begin
							rx0_src_uport <= {s_axis_rx0_tdata[23:16], 
							                  s_axis_rx0_tdata[31:24]};
							rx0_dst_uport <= {s_axis_rx0_tdata[39:32], 
							                 s_axis_rx0_tdata[47:40]};
					end
				end
				5: if (suspect_mode) begin
					suspect_qid_dns <= {s_axis_rx0_tdata[23:16],
					                    s_axis_rx0_tdata[31:24]};
					suspect_parm_dns <= {s_axis_rx0_tdata[39:32],
                                         s_axis_rx0_tdata[47:40]};
					suspect_qcnt_dns <= {s_axis_rx0_tdata[55:48],
					                     s_axis_rx0_tdata[63:56]};
				end                          
				6: if (suspect_mode) begin
					suspect_acnt_dns <= {s_axis_rx0_tdata[ 7: 0],
					                     s_axis_rx0_tdata[15: 8]};
					suspect_auth_dns <= {s_axis_rx0_tdata[23:16],
					                     s_axis_rx0_tdata[31:24]};
				end
				default : ;
			endcase
			/* Debug Logic */
			if (rx0_ftype == ETH_FTYPE_IP && 
					rx0_ip_proto  == IP_PROTO_UDP  &&
					rx0_dst_uport == DNS_SERV_PORT &&
					s_axis_rx0_tlast)
				hit_cnt[3:0] <= hit_cnt[3:0] + 1;
			if (filter_mode)
				hit_cnt[4]  <= 1;
			if (suspect_mode)
				hit_cnt[5]  <= 1;
			if (suspect_mode && rx_cnt0 == 10'd4) begin
				db_op0 <= 4'b0000;
				hit_cnt[6] <= 1;
			end
		end
		// Port 1
		if (s_axis_rx1_tvalid) begin
			if (s_axis_rx1_tlast)
				rx_cnt1 <= 0;
			else
				rx_cnt1 <= rx_cnt1 + 1;
			case (rx_cnt1)
				0: begin // Reset all registers
					rx1_ip_proto      <= 0;
					rx1_src_ip        <= 0;
					rx1_dst_ip        <= 0;
					rx1_src_uport     <= 0;
					rx1_dst_uport     <= 0;
					rx1_ftype         <= 0;
					rx1_icmp_type     <= 0;
					rx1_icmp_code     <= 0;
					filter_ip_proto  <= 0;
					filter_src_ip    <= 0; 
					filter_dst_ip    <= 0; 
					filter_dst_udp   <= 0; 
					filter_len_udp   <= 0; 
					filter_qid_dns   <= 0; 
					filter_src_udp   <= 0;
					filter_parm_dns  <= 0; 
					filter_qcnt_dns  <= 0; 
					filter_acnt_dns  <= 0; 
					filter_auth_dns  <= 0;
					db_op1           <= 0;
				end
				1: rx1_ftype <= {s_axis_rx1_tdata[39:32], s_axis_rx1_tdata[47:40]};
				2: rx1_ip_proto <= s_axis_rx1_tdata[63:56];
				3: begin
					rx1_src_ip <= {s_axis_rx1_tdata[23:16],
					              s_axis_rx1_tdata[31:24],
					              s_axis_rx1_tdata[39:32],
					              s_axis_rx1_tdata[47:40]};
					rx1_dst_ip[31:16] <= {s_axis_rx1_tdata[55:48],
					                      s_axis_rx1_tdata[63:56]};
				end
				4: begin
					rx1_dst_ip[15: 0] <= {s_axis_rx1_tdata[ 7: 0],
                                         s_axis_rx1_tdata[15: 8]};
					if (rx1_ftype == ETH_FTYPE_IP 
						&& rx1_ip_proto == IP_PROTO_ICMP) begin
							rx1_icmp_type <= s_axis_rx1_tdata[23:16];
							rx1_icmp_code <= s_axis_rx1_tdata[31:24];
					end
				end
				5: if (filter_mode) begin
					filter_iph_len <= s_axis_rx1_tdata[23:16];
					filter_ipd_len <= {s_axis_rx1_tdata[39:32],
                                       s_axis_rx1_tdata[47:40]};
				end 
				6: if (filter_mode) begin
					filter_ip_proto      <= s_axis_rx1_tdata[31:24];
					filter_src_ip[31:16] <= {s_axis_rx1_tdata[55:48],
					                         s_axis_rx1_tdata[63:56]};
				end 
				7: if (filter_mode) begin
					filter_src_ip[15:0] <= {s_axis_rx1_tdata[ 7: 0],
					                        s_axis_rx1_tdata[15: 8]};
					filter_dst_ip       <= {s_axis_rx1_tdata[23:16],
					                        s_axis_rx1_tdata[31:24],
					                        s_axis_rx1_tdata[39:32],
					                        s_axis_rx1_tdata[47:40]};
					filter_src_udp      <= {s_axis_rx1_tdata[55:48],
					                        s_axis_rx1_tdata[63:56]};
				end
				8: if (filter_mode) begin
					filter_dst_udp      <= {s_axis_rx1_tdata[ 7: 0],
					                        s_axis_rx1_tdata[15: 8]};
					filter_len_udp      <= {s_axis_rx1_tdata[23:16],
					                        s_axis_rx1_tdata[31:24]};
					filter_qid_dns      <= {s_axis_rx1_tdata[55:48],
					                        s_axis_rx1_tdata[63:56]};
				end
				9: if (filter_mode) begin
					filter_parm_dns      <= {s_axis_rx1_tdata[ 7: 0],
					                         s_axis_rx1_tdata[15: 8]};
					filter_qcnt_dns      <= {s_axis_rx1_tdata[23:16],
					                         s_axis_rx1_tdata[31:24]};
					filter_acnt_dns      <= {s_axis_rx1_tdata[39:32],
					                         s_axis_rx1_tdata[47:40]};
					filter_auth_dns      <= {s_axis_rx1_tdata[55:48],
					                         s_axis_rx1_tdata[63:56]};
				end
				default : ;
			endcase
			if (filter_mode && filter_src_udp == DNS_SERV_PORT &&
				rx_cnt1 == 10'd10) begin
				db_op1 <= 4'b0101;
				hit_cnt[7] <= 1;
			end
		end
	end
end

wire [1:0] status = suspect_mode ? db_op0[2:1] : 
                    filter_mode  ? db_op1[2:1] : 2'd0;
assign in_flag    = suspect_mode ? db_op0 : 
                    filter_mode  ? db_op1 : 4'd0;
assign in_valid   = (suspect_mode && rx_cnt0 == 10'd7) || 
                    (filter_mode  && rx_cnt1 == 10'd11 && 
                     filter_src_udp == DNS_SERV_PORT);

assign in_key = (suspect_mode) ? {rx0_src_ip, rx0_dst_ip, 
                                  rx0_dst_uport , rx0_src_uport}  :
                (filter_mode)  ? {filter_src_ip, filter_dst_ip, 
                                  filter_dst_udp, filter_src_udp} : 0;

assign debug = hit_cnt;

wire        save_axis_tvalid;
wire [63:0] save_axis_tdata;
wire        save_axis_tready;
wire        save_axis_tlast;
wire        save_axis_tuser;
wire [7:0]  save_axis_tkeep;

wire        out_axis_tvalid;
wire [63:0] out_axis_tdata;
wire        out_axis_tready;
wire        out_axis_tlast;
wire        out_axis_tuser;
wire [7:0]  out_axis_tkeep;
wire [6:0]  out_axis_dummy_tuser;

// To network
localparam CHECK_THROUGH = 0;
localparam CHECK_DROP    = 1;

wire [31:0] inbound_rd_dcnt, inbound_wr_dcnt;
wire [31:0] outbound_rd_dcnt, outbound_wr_dcnt;
wire [31:0] inter_s0_dcnt, inter_s1_dcnt, inter_s2_dcnt;

reg load_pkt, load_pkt_next;
reg filter_pkt, filter_pkt_next;
reg last_reg, valid_reg;

wire empty_valid_fifo, full_valid_fifo;
wire [3:0] dout_flag;
wire trig_rd_en = !empty_valid_fifo & !load_pkt;

wire check_pkt_en = trig_rd_en;//out_valid ;
wire check_pkt    = (dout_flag == 4'b0001) ? CHECK_DROP : CHECK_THROUGH;
//(out_flag == 4'b0001) ? CHECK_DROP : CHECK_THROUGH;

fallthrough_small_fifo #(
	.WIDTH           (4),
	.MAX_DEPTH_BITS  (3)
) u_valid_fifo (
	.din         (out_flag),     // Data in
	.wr_en       (out_valid),   // Write enable
	.rd_en       (trig_rd_en),   // Read the next word
	.dout        (dout_flag),    // Data out
	.full        (full_valid_fifo),
	.empty       (empty_valid_fifo),
	.nearly_full (),
	.prog_full   (),
	.reset       (eth_rst[1]),
	.clk         (clk156)
);

always @ (posedge clk156)
	if (eth_rst[2]) begin
		last_reg  <= 0;
		valid_reg <= 0;
	end else begin
		last_reg  <= save_axis_tlast;
		valid_reg <= save_axis_tvalid;
	end

always @ (*) begin
	filter_pkt_next = filter_pkt;
	load_pkt_next = load_pkt;

	if (check_pkt_en)
		load_pkt_next = 1;
	if (last_reg & valid_reg)
		load_pkt_next = 0;

	if (check_pkt_en && check_pkt == CHECK_THROUGH)
		filter_pkt_next = 1;
	if (last_reg & valid_reg)
		filter_pkt_next = 0;
end

always @ (posedge clk156) 
	if (eth_rst[3]) begin
		load_pkt <= 0;
		filter_pkt <= 0;
	end else begin
		load_pkt <= load_pkt_next;
		filter_pkt <= filter_pkt_next;
	end

wire sw_pkt_ready = save_axis_tready & load_pkt_next;
wire sw_pkt_ready_checked = save_axis_tready & filter_pkt_next;
wire s0_ready;

axis_interconnect_0 u_interconnect_2_1 (
	.ACLK                 (clk156),   
	.ARESETN              (!eth_rst[4]), 

	// traffic except UDP
	.S00_AXIS_ACLK        (clk156),  
	.S00_AXIS_ARESETN     (!eth_rst[5]), 
	.S00_AXIS_TVALID      (p0_axis_tvalid & !udp_traffic_en), // todo   
	.S00_AXIS_TREADY      (s0_ready),   
	.S00_AXIS_TDATA       (p0_axis_tdata),   
	.S00_AXIS_TKEEP       (p0_axis_tkeep),   
	.S00_AXIS_TLAST       (p0_axis_tlast & !udp_traffic_en),   
	.S00_AXIS_TUSER       (8'd0),  // 8bit 

	// Traffic UDP with lookup into DRAM HashTable
	.S01_AXIS_ACLK        (clk156),  
	.S01_AXIS_ARESETN     (!eth_rst[6]),
	.S01_AXIS_TVALID      (save_axis_tvalid & sw_pkt_ready_checked),   
	.S01_AXIS_TREADY      (save_axis_tready),   
	.S01_AXIS_TDATA       (save_axis_tdata),   
	.S01_AXIS_TKEEP       (save_axis_tkeep),   
	.S01_AXIS_TLAST       (save_axis_tlast & sw_pkt_ready_checked),   
	.S01_AXIS_TUSER       (8'd0),   

	.M00_AXIS_ACLK        (clk156),   
	.M00_AXIS_ARESETN     (!eth_rst[7]), 
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

axis_data_fifo_0 u_axis_data_fifo2 (
	.s_axis_aresetn      (!eth_rst[10]),   
	.s_axis_aclk         (clk156), 
	
	.s_axis_tvalid       (s_axis_rx1_tvalid),
	.s_axis_tready       (),              
	.s_axis_tdata        (s_axis_rx1_tdata), 
	.s_axis_tkeep        (s_axis_rx1_tkeep), 
	.s_axis_tlast        (s_axis_rx1_tlast), 
	.s_axis_tuser        (1'b0),          
	
	.m_axis_tvalid       (m_axis_tx0_tvalid),
	.m_axis_tready       (m_axis_tx0_tready),
	.m_axis_tdata        (m_axis_tx0_tdata), 
	.m_axis_tkeep        (m_axis_tx0_tkeep), 
	.m_axis_tlast        (m_axis_tx0_tlast), 
	.m_axis_tuser        (m_axis_tx0_tuser), 
	
	.axis_data_count     (),                 
	.axis_wr_data_count  (),                 
	.axis_rd_data_count  ()                  
);

/*
 * DEBUG
 */


/*
 *  Statistics
 */
reg [31:0] drop_pkts;
reg [31:0] pass_pkts;
reg [31:0] all_pkts;
reg [31:0] inbound_pkts;
reg [31:0] outbound_pkts;

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


///*
// * Errors related to FIFO full
// */
//reg [31:0] fifo_error;
//always @ (posedge clk156) begin
//	if (eth_rst)
//		fifo_error <= 0;
//	else begin
//
//	end
//end
`ifndef DEBUG
ila_1 inst_ila (
	.clk     (clk156), // input wire clk
	/* verilator lint_off WIDTH */
	.probe0  ({
		inbound_rd_dcnt, 
		inbound_wr_dcnt,
		outbound_rd_dcnt, 
		outbound_wr_dcnt,
		inter_s0_dcnt, 
		inter_s1_dcnt, 
		inter_s2_dcnt,
		drop_pkts,
		pass_pkts,
		all_pkts,
		inbound_pkts[28:0],
		outbound_pkts[28:0],
		save_axis_tready,
		load_pkt_next,
		filter_pkt_next,
		s0_ready,
		in_valid,
		out_valid
	})/* verilator lint_on WIDTH */ 
);
`endif

endmodule

