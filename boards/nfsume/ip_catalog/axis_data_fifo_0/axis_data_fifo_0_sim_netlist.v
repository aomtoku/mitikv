// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Tue Jun  6 12:57:34 2017
// Host        : nf-test100 running 64-bit Ubuntu 14.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/aom/work/mitikv/boards/nfsume/tmp/project_1/project_1.srcs/sources_1/ip/axis_data_fifo_0/axis_data_fifo_0_sim_netlist.v
// Design      : axis_data_fifo_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axis_data_fifo_0,axis_data_fifo_v1_1_12_axis_data_fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_data_fifo_v1_1_12_axis_data_fifo,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module axis_data_fifo_0
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tuser,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [511:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [63:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) input [0:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [511:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [63:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) output [0:0]m_axis_tuser;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire [31:0]axis_data_count;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire [511:0]m_axis_tdata;
  wire [63:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [511:0]s_axis_tdata;
  wire [63:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [63:0]NLW_inst_m_axis_tstrb_UNCONNECTED;

  (* C_ACLKEN_CONV_MODE = "0" *) 
  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000010011011" *) 
  (* C_AXIS_TDATA_WIDTH = "512" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FIFO_DEPTH = "512" *) 
  (* C_FIFO_MODE = "1" *) 
  (* C_IS_ACLK_ASYNC = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_RD_PNTR_WIDTH_RACH = "4" *) 
  (* C_RD_PNTR_WIDTH_RDCH = "10" *) 
  (* C_RD_PNTR_WIDTH_WACH = "4" *) 
  (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
  (* C_RD_PNTR_WIDTH_WRCH = "4" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "9" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
  (* P_APPLICATION_TYPE_AXIS = "0" *) 
  (* P_AXIS_PAYLOAD_WIDTH = "578" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_FIFO_COUNT_WIDTH = "10" *) 
  (* P_FIFO_TYPE = "1" *) 
  (* P_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* P_MSGON_VAL = "1" *) 
  (* P_TDATA_EXISTS = "1" *) 
  (* P_TDEST_EXISTS = "0" *) 
  (* P_TID_EXISTS = "0" *) 
  (* P_TKEEP_EXISTS = "1" *) 
  (* P_TLAST_EXISTS = "1" *) 
  (* P_TREADY_EXISTS = "1" *) 
  (* P_TSTRB_EXISTS = "0" *) 
  (* P_TUSER_EXISTS = "1" *) 
  (* P_WR_PNTR_WIDTH = "9" *) 
  axis_data_fifo_0_axis_data_fifo_v1_1_12_axis_data_fifo inst
       (.axis_data_count(axis_data_count),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(1'b0),
        .m_axis_aclken(1'b1),
        .m_axis_aresetn(1'b0),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[63:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_ACLKEN_CONV_MODE = "0" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000010011011" *) (* C_AXIS_TDATA_WIDTH = "512" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_DATA_COUNT_WIDTH = "10" *) 
(* C_DIN_WIDTH = "18" *) (* C_DOUT_WIDTH = "18" *) (* C_FAMILY = "virtex7" *) 
(* C_FIFO_DEPTH = "512" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "0" *) 
(* C_RD_DATA_COUNT_WIDTH = "10" *) (* C_RD_PNTR_WIDTH = "10" *) (* C_RD_PNTR_WIDTH_RACH = "4" *) 
(* C_RD_PNTR_WIDTH_RDCH = "10" *) (* C_RD_PNTR_WIDTH_WACH = "4" *) (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
(* C_RD_PNTR_WIDTH_WRCH = "4" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH = "10" *) (* C_WR_PNTR_WIDTH_AXIS = "9" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) 
(* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WRCH = "4" *) (* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) 
(* G_INDX_SS_TREADY = "0" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) 
(* G_MASK_SS_TDATA = "2" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) 
(* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) 
(* G_TASK_SEVERITY_INFO = "0" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
(* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* ORIG_REF_NAME = "axis_data_fifo_v1_1_12_axis_data_fifo" *) (* P_APPLICATION_TYPE_AXIS = "0" *) 
(* P_AXIS_PAYLOAD_WIDTH = "578" *) (* P_COMMON_CLOCK = "1" *) (* P_FIFO_COUNT_WIDTH = "10" *) 
(* P_FIFO_TYPE = "1" *) (* P_IMPLEMENTATION_TYPE_AXIS = "1" *) (* P_MSGON_VAL = "1" *) 
(* P_TDATA_EXISTS = "1" *) (* P_TDEST_EXISTS = "0" *) (* P_TID_EXISTS = "0" *) 
(* P_TKEEP_EXISTS = "1" *) (* P_TLAST_EXISTS = "1" *) (* P_TREADY_EXISTS = "1" *) 
(* P_TSTRB_EXISTS = "0" *) (* P_TUSER_EXISTS = "1" *) (* P_WR_PNTR_WIDTH = "9" *) 
module axis_data_fifo_0_axis_data_fifo_v1_1_12_axis_data_fifo
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [511:0]s_axis_tdata;
  input [63:0]s_axis_tstrb;
  input [63:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output [511:0]m_axis_tdata;
  output [63:0]m_axis_tstrb;
  output [63:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [9:0]\^axis_rd_data_count ;
  wire [511:0]m_axis_tdata;
  wire [63:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  (* RTL_KEEP = "true" *) wire s_and_m_aresetn_i;
  wire s_axis_aclk;
  wire [511:0]s_axis_tdata;
  wire [63:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED ;
  wire \NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED ;
  wire [4:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_axis_rd_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_axis_wr_data_count_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED ;
  wire [17:0]\NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED ;
  wire [31:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED ;
  wire [31:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED ;
  wire [2:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED ;
  wire [7:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axis_tid_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_m_axis_tstrb_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED ;
  wire [63:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED ;
  wire [1:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED ;
  wire [9:0]\NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED ;

  assign axis_data_count[31] = \<const0> ;
  assign axis_data_count[30] = \<const0> ;
  assign axis_data_count[29] = \<const0> ;
  assign axis_data_count[28] = \<const0> ;
  assign axis_data_count[27] = \<const0> ;
  assign axis_data_count[26] = \<const0> ;
  assign axis_data_count[25] = \<const0> ;
  assign axis_data_count[24] = \<const0> ;
  assign axis_data_count[23] = \<const0> ;
  assign axis_data_count[22] = \<const0> ;
  assign axis_data_count[21] = \<const0> ;
  assign axis_data_count[20] = \<const0> ;
  assign axis_data_count[19] = \<const0> ;
  assign axis_data_count[18] = \<const0> ;
  assign axis_data_count[17] = \<const0> ;
  assign axis_data_count[16] = \<const0> ;
  assign axis_data_count[15] = \<const0> ;
  assign axis_data_count[14] = \<const0> ;
  assign axis_data_count[13] = \<const0> ;
  assign axis_data_count[12] = \<const0> ;
  assign axis_data_count[11] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9:0] = \^axis_rd_data_count [9:0];
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9:0] = \^axis_rd_data_count [9:0];
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9:0] = \^axis_rd_data_count [9:0];
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[63] = \<const0> ;
  assign m_axis_tstrb[62] = \<const0> ;
  assign m_axis_tstrb[61] = \<const0> ;
  assign m_axis_tstrb[60] = \<const0> ;
  assign m_axis_tstrb[59] = \<const0> ;
  assign m_axis_tstrb[58] = \<const0> ;
  assign m_axis_tstrb[57] = \<const0> ;
  assign m_axis_tstrb[56] = \<const0> ;
  assign m_axis_tstrb[55] = \<const0> ;
  assign m_axis_tstrb[54] = \<const0> ;
  assign m_axis_tstrb[53] = \<const0> ;
  assign m_axis_tstrb[52] = \<const0> ;
  assign m_axis_tstrb[51] = \<const0> ;
  assign m_axis_tstrb[50] = \<const0> ;
  assign m_axis_tstrb[49] = \<const0> ;
  assign m_axis_tstrb[48] = \<const0> ;
  assign m_axis_tstrb[47] = \<const0> ;
  assign m_axis_tstrb[46] = \<const0> ;
  assign m_axis_tstrb[45] = \<const0> ;
  assign m_axis_tstrb[44] = \<const0> ;
  assign m_axis_tstrb[43] = \<const0> ;
  assign m_axis_tstrb[42] = \<const0> ;
  assign m_axis_tstrb[41] = \<const0> ;
  assign m_axis_tstrb[40] = \<const0> ;
  assign m_axis_tstrb[39] = \<const0> ;
  assign m_axis_tstrb[38] = \<const0> ;
  assign m_axis_tstrb[37] = \<const0> ;
  assign m_axis_tstrb[36] = \<const0> ;
  assign m_axis_tstrb[35] = \<const0> ;
  assign m_axis_tstrb[34] = \<const0> ;
  assign m_axis_tstrb[33] = \<const0> ;
  assign m_axis_tstrb[32] = \<const0> ;
  assign m_axis_tstrb[31] = \<const0> ;
  assign m_axis_tstrb[30] = \<const0> ;
  assign m_axis_tstrb[29] = \<const0> ;
  assign m_axis_tstrb[28] = \<const0> ;
  assign m_axis_tstrb[27] = \<const0> ;
  assign m_axis_tstrb[26] = \<const0> ;
  assign m_axis_tstrb[25] = \<const0> ;
  assign m_axis_tstrb[24] = \<const0> ;
  assign m_axis_tstrb[23] = \<const0> ;
  assign m_axis_tstrb[22] = \<const0> ;
  assign m_axis_tstrb[21] = \<const0> ;
  assign m_axis_tstrb[20] = \<const0> ;
  assign m_axis_tstrb[19] = \<const0> ;
  assign m_axis_tstrb[18] = \<const0> ;
  assign m_axis_tstrb[17] = \<const0> ;
  assign m_axis_tstrb[16] = \<const0> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign s_and_m_aresetn_i = s_axis_aresetn;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "512" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "64" *) 
  (* C_AXIS_TSTRB_WIDTH = "64" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "18" *) 
  (* C_DIN_WIDTH_AXIS = "578" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "18" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "1" *) 
  (* C_HAS_AXIS_TLAST = "1" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "1" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "2" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "2" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx4" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "510" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "511" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "512" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "9" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  axis_data_fifo_0_fifo_generator_v13_1_3 \gen_fifo_generator.fifo_generator_inst 
       (.almost_empty(\NLW_gen_fifo_generator.fifo_generator_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gen_fifo_generator.fifo_generator_inst_almost_full_UNCONNECTED ),
        .axi_ar_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_data_count_UNCONNECTED [4:0]),
        .axi_ar_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_dbiterr_UNCONNECTED ),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_overflow_UNCONNECTED ),
        .axi_ar_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_empty_UNCONNECTED ),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_prog_full_UNCONNECTED ),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_rd_data_count_UNCONNECTED [4:0]),
        .axi_ar_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_sbiterr_UNCONNECTED ),
        .axi_ar_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_underflow_UNCONNECTED ),
        .axi_ar_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_ar_wr_data_count_UNCONNECTED [4:0]),
        .axi_aw_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_data_count_UNCONNECTED [4:0]),
        .axi_aw_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_dbiterr_UNCONNECTED ),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_overflow_UNCONNECTED ),
        .axi_aw_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_empty_UNCONNECTED ),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_prog_full_UNCONNECTED ),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_rd_data_count_UNCONNECTED [4:0]),
        .axi_aw_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_sbiterr_UNCONNECTED ),
        .axi_aw_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_underflow_UNCONNECTED ),
        .axi_aw_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_aw_wr_data_count_UNCONNECTED [4:0]),
        .axi_b_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_data_count_UNCONNECTED [4:0]),
        .axi_b_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_dbiterr_UNCONNECTED ),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_overflow_UNCONNECTED ),
        .axi_b_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_empty_UNCONNECTED ),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_prog_full_UNCONNECTED ),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_rd_data_count_UNCONNECTED [4:0]),
        .axi_b_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_sbiterr_UNCONNECTED ),
        .axi_b_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_underflow_UNCONNECTED ),
        .axi_b_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_b_wr_data_count_UNCONNECTED [4:0]),
        .axi_r_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_data_count_UNCONNECTED [10:0]),
        .axi_r_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_dbiterr_UNCONNECTED ),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_overflow_UNCONNECTED ),
        .axi_r_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_empty_UNCONNECTED ),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_prog_full_UNCONNECTED ),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_rd_data_count_UNCONNECTED [10:0]),
        .axi_r_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_sbiterr_UNCONNECTED ),
        .axi_r_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_underflow_UNCONNECTED ),
        .axi_r_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_r_wr_data_count_UNCONNECTED [10:0]),
        .axi_w_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_data_count_UNCONNECTED [10:0]),
        .axi_w_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_dbiterr_UNCONNECTED ),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_overflow_UNCONNECTED ),
        .axi_w_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_empty_UNCONNECTED ),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_prog_full_UNCONNECTED ),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_rd_data_count_UNCONNECTED [10:0]),
        .axi_w_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_sbiterr_UNCONNECTED ),
        .axi_w_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_underflow_UNCONNECTED ),
        .axi_w_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axi_w_wr_data_count_UNCONNECTED [10:0]),
        .axis_data_count(\^axis_rd_data_count ),
        .axis_dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axis_dbiterr_UNCONNECTED ),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(\NLW_gen_fifo_generator.fifo_generator_inst_axis_overflow_UNCONNECTED ),
        .axis_prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_empty_UNCONNECTED ),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_axis_prog_full_UNCONNECTED ),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axis_rd_data_count_UNCONNECTED [9:0]),
        .axis_sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_axis_sbiterr_UNCONNECTED ),
        .axis_underflow(\NLW_gen_fifo_generator.fifo_generator_inst_axis_underflow_UNCONNECTED ),
        .axis_wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_axis_wr_data_count_UNCONNECTED [9:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(\NLW_gen_fifo_generator.fifo_generator_inst_data_count_UNCONNECTED [9:0]),
        .dbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_dbiterr_UNCONNECTED ),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(\NLW_gen_fifo_generator.fifo_generator_inst_dout_UNCONNECTED [17:0]),
        .empty(\NLW_gen_fifo_generator.fifo_generator_inst_empty_UNCONNECTED ),
        .full(\NLW_gen_fifo_generator.fifo_generator_inst_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_araddr_UNCONNECTED [31:0]),
        .m_axi_arburst(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arburst_UNCONNECTED [1:0]),
        .m_axi_arcache(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arcache_UNCONNECTED [3:0]),
        .m_axi_arid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arid_UNCONNECTED [3:0]),
        .m_axi_arlen(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlen_UNCONNECTED [7:0]),
        .m_axi_arlock(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arlock_UNCONNECTED [1:0]),
        .m_axi_arprot(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arprot_UNCONNECTED [2:0]),
        .m_axi_arqos(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arqos_UNCONNECTED [3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arregion_UNCONNECTED [3:0]),
        .m_axi_arsize(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arsize_UNCONNECTED [2:0]),
        .m_axi_aruser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_aruser_UNCONNECTED [0]),
        .m_axi_arvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_arvalid_UNCONNECTED ),
        .m_axi_awaddr(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awaddr_UNCONNECTED [31:0]),
        .m_axi_awburst(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awburst_UNCONNECTED [1:0]),
        .m_axi_awcache(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awcache_UNCONNECTED [3:0]),
        .m_axi_awid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awid_UNCONNECTED [3:0]),
        .m_axi_awlen(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlen_UNCONNECTED [7:0]),
        .m_axi_awlock(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awlock_UNCONNECTED [1:0]),
        .m_axi_awprot(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awprot_UNCONNECTED [2:0]),
        .m_axi_awqos(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awqos_UNCONNECTED [3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awregion_UNCONNECTED [3:0]),
        .m_axi_awsize(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awsize_UNCONNECTED [2:0]),
        .m_axi_awuser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awuser_UNCONNECTED [0]),
        .m_axi_awvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_awvalid_UNCONNECTED ),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_bready_UNCONNECTED ),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_rready_UNCONNECTED ),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wdata_UNCONNECTED [63:0]),
        .m_axi_wid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wid_UNCONNECTED [3:0]),
        .m_axi_wlast(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wlast_UNCONNECTED ),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wstrb_UNCONNECTED [7:0]),
        .m_axi_wuser(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wuser_UNCONNECTED [0]),
        .m_axi_wvalid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axi_wvalid_UNCONNECTED ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo_generator.fifo_generator_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo_generator.fifo_generator_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo_generator.fifo_generator_inst_m_axis_tstrb_UNCONNECTED [63:0]),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .overflow(\NLW_gen_fifo_generator.fifo_generator_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_gen_fifo_generator.fifo_generator_inst_prog_empty_UNCONNECTED ),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(\NLW_gen_fifo_generator.fifo_generator_inst_prog_full_UNCONNECTED ),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_rd_data_count_UNCONNECTED [9:0]),
        .rd_en(1'b0),
        .rd_rst(1'b0),
        .rd_rst_busy(\NLW_gen_fifo_generator.fifo_generator_inst_rd_rst_busy_UNCONNECTED ),
        .rst(1'b0),
        .s_aclk(s_axis_aclk),
        .s_aclk_en(1'b0),
        .s_aresetn(s_and_m_aresetn_i),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_arready_UNCONNECTED ),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_awready_UNCONNECTED ),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bid_UNCONNECTED [3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bresp_UNCONNECTED [1:0]),
        .s_axi_buser(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_buser_UNCONNECTED [0]),
        .s_axi_bvalid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_bvalid_UNCONNECTED ),
        .s_axi_rdata(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rdata_UNCONNECTED [63:0]),
        .s_axi_rid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rid_UNCONNECTED [3:0]),
        .s_axi_rlast(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rlast_UNCONNECTED ),
        .s_axi_rready(1'b0),
        .s_axi_rresp(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rresp_UNCONNECTED [1:0]),
        .s_axi_ruser(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_ruser_UNCONNECTED [0]),
        .s_axi_rvalid(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_rvalid_UNCONNECTED ),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(\NLW_gen_fifo_generator.fifo_generator_inst_s_axi_wready_UNCONNECTED ),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(\NLW_gen_fifo_generator.fifo_generator_inst_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(\NLW_gen_fifo_generator.fifo_generator_inst_underflow_UNCONNECTED ),
        .valid(\NLW_gen_fifo_generator.fifo_generator_inst_valid_UNCONNECTED ),
        .wr_ack(\NLW_gen_fifo_generator.fifo_generator_inst_wr_ack_UNCONNECTED ),
        .wr_clk(1'b0),
        .wr_data_count(\NLW_gen_fifo_generator.fifo_generator_inst_wr_data_count_UNCONNECTED [9:0]),
        .wr_en(1'b0),
        .wr_rst(1'b0),
        .wr_rst_busy(\NLW_gen_fifo_generator.fifo_generator_inst_wr_rst_busy_UNCONNECTED ));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "512" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "64" *) (* C_AXIS_TSTRB_WIDTH = "64" *) 
(* C_AXIS_TUSER_WIDTH = "1" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "18" *) 
(* C_DIN_WIDTH_AXIS = "578" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "18" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "virtex7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "1" *) (* C_HAS_AXIS_TLAST = "1" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "1" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "2" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "2" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "2" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "1" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx4" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "510" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "14" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "14" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "14" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "511" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "15" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "15" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "15" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "512" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "9" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_1_3" *) 
module axis_data_fifo_0_fifo_generator_v13_1_3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [17:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [17:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [511:0]s_axis_tdata;
  input [63:0]s_axis_tstrb;
  input [63:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [511:0]m_axis_tdata;
  output [63:0]m_axis_tstrb;
  output [63:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [8:0]axis_prog_full_thresh;
  input [8:0]axis_prog_empty_thresh;
  output [9:0]axis_data_count;
  output [9:0]axis_wr_data_count;
  output [9:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ;
  wire [9:0]axis_data_count;
  wire \count[0]_i_1_n_0 ;
  wire fwft_rst_done;
  wire \gc0.count[8]_i_2_n_0 ;
  wire \gcc0.gc0.count[8]_i_2_n_0 ;
  wire \gfwft_rst_done.fwft_rst_done_i_1_n_0 ;
  wire \gmux.gm[0].gm1.m1_i_1__2_n_0 ;
  wire \gmux.gm[1].gms.ms_i_1__2_n_0 ;
  wire \gmux.gm[2].gms.ms_i_1__2_n_0 ;
  wire \gmux.gm[3].gms.ms_i_1__2_n_0 ;
  wire \gmux.gm[4].gms.ms_i_1__0_n_0 ;
  wire \gmux.gm[4].gms.ms_i_1__1_n_0 ;
  wire \gmux.gm[4].gms.ms_i_1__2_n_0 ;
  wire \gmux.gm[4].gms.ms_i_1_n_0 ;
  wire \goreg_bm.dout_i[577]_i_1_n_0 ;
  wire \gpregsm1.curr_fwft_state[1]_i_1_n_0 ;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_1 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_2 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_3 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_4 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_5 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_6 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_7 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__1_n_7 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_1 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_2 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_3 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_4 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_5 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_6 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_7 ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_fb_i ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i0 ;
  (* DONT_TOUCH *) wire [1:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_i ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_o_i ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_o_i_reg0 ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/fwft_rst_done_q ;
  wire [1:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/next_fwft_state ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/sckt_rd_rst_fwft ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/user_valid ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_1 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_2 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_3 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_1 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_2 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_3 ;
  wire [3:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_reg ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i ;
  wire [8:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_1 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_2 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_3 ;
  wire [3:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_reg ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_1 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_2 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_3 ;
  wire [3:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_reg ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i ;
  (* DONT_TOUCH *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i ;
  wire [577:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_23 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_24 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_30 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_31 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_39 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_47 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_55 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_56 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_63 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_77 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_78 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_79 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92 ;
  wire [8:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ;
  wire [8:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ;
  wire [8:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[1].rd_rst_wr_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[2].rd_rst_wr_inst/Q_reg ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1_n_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1_n_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst/Q_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst/Q_reg ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/p_0_out_n_0 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_active ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_asreg ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_comb ;
  (* DONT_TOUCH *) wire [2:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d1 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d2 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d3 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_rd_reg1 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_rd_reg2 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg1 ;
  (* async_reg = "true" *) (* msgon = "true" *) wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg2 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/sckt_rd_rst_d1 ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/sckt_wr_rst_i_q ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_asreg ;
  wire \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_busy_i1_out ;
  (* DONT_TOUCH *) wire [2:0]\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_reg ;
  wire inverted_reset;
  wire [511:0]m_axis_tdata;
  wire [63:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ;
  wire [8:0]plusOp;
  wire [8:0]plusOp__0;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_i_5_n_0;
  wire ram_empty_fb_i_i_1_n_0;
  wire s_aclk;
  wire s_aresetn;
  wire [511:0]s_axis_tdata;
  wire [63:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ;
  wire \NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ;
  wire [7:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[63] = \<const0> ;
  assign m_axis_tstrb[62] = \<const0> ;
  assign m_axis_tstrb[61] = \<const0> ;
  assign m_axis_tstrb[60] = \<const0> ;
  assign m_axis_tstrb[59] = \<const0> ;
  assign m_axis_tstrb[58] = \<const0> ;
  assign m_axis_tstrb[57] = \<const0> ;
  assign m_axis_tstrb[56] = \<const0> ;
  assign m_axis_tstrb[55] = \<const0> ;
  assign m_axis_tstrb[54] = \<const0> ;
  assign m_axis_tstrb[53] = \<const0> ;
  assign m_axis_tstrb[52] = \<const0> ;
  assign m_axis_tstrb[51] = \<const0> ;
  assign m_axis_tstrb[50] = \<const0> ;
  assign m_axis_tstrb[49] = \<const0> ;
  assign m_axis_tstrb[48] = \<const0> ;
  assign m_axis_tstrb[47] = \<const0> ;
  assign m_axis_tstrb[46] = \<const0> ;
  assign m_axis_tstrb[45] = \<const0> ;
  assign m_axis_tstrb[44] = \<const0> ;
  assign m_axis_tstrb[43] = \<const0> ;
  assign m_axis_tstrb[42] = \<const0> ;
  assign m_axis_tstrb[41] = \<const0> ;
  assign m_axis_tstrb[40] = \<const0> ;
  assign m_axis_tstrb[39] = \<const0> ;
  assign m_axis_tstrb[38] = \<const0> ;
  assign m_axis_tstrb[37] = \<const0> ;
  assign m_axis_tstrb[36] = \<const0> ;
  assign m_axis_tstrb[35] = \<const0> ;
  assign m_axis_tstrb[34] = \<const0> ;
  assign m_axis_tstrb[33] = \<const0> ;
  assign m_axis_tstrb[32] = \<const0> ;
  assign m_axis_tstrb[31] = \<const0> ;
  assign m_axis_tstrb[30] = \<const0> ;
  assign m_axis_tstrb[29] = \<const0> ;
  assign m_axis_tstrb[28] = \<const0> ;
  assign m_axis_tstrb[27] = \<const0> ;
  assign m_axis_tstrb[26] = \<const0> ;
  assign m_axis_tstrb[25] = \<const0> ;
  assign m_axis_tstrb[24] = \<const0> ;
  assign m_axis_tstrb[23] = \<const0> ;
  assign m_axis_tstrb[22] = \<const0> ;
  assign m_axis_tstrb[21] = \<const0> ;
  assign m_axis_tstrb[20] = \<const0> ;
  assign m_axis_tstrb[19] = \<const0> ;
  assign m_axis_tstrb[18] = \<const0> ;
  assign m_axis_tstrb[17] = \<const0> ;
  assign m_axis_tstrb[16] = \<const0> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  LUT4 #(
    .INIT(16'h00F7)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .I2(m_axis_tready),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(s_axis_tvalid),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ));
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hEEFD8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i ),
        .I2(m_axis_tready),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_fb_i ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(axis_data_count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8788)) 
    \count[9]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/user_valid ),
        .I1(m_axis_tready),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i ),
        .I3(s_axis_tvalid),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_i_i_1
       (.I0(m_axis_tready),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_i ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i0 ));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_o_i_i_1
       (.I0(m_axis_tready),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_o_i ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_o_i_reg0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [2]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [2]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [2]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [3]),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [3]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [2]),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [4]),
        .I5(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[8]_i_2_n_0 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [6]),
        .O(plusOp[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[8]_i_2_n_0 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [6]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [7]),
        .O(plusOp[7]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [6]),
        .I1(\gc0.count[8]_i_2_n_0 ),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [7]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [8]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[8]_i_2 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [5]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [3]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [2]),
        .I5(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [4]),
        .O(\gc0.count[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00BF)) 
    \gc0.count_d1[8]_i_1 
       (.I0(m_axis_tready),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ));
  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .O(plusOp__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [2]),
        .O(plusOp__0[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [2]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [3]),
        .O(plusOp__0[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [2]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [3]),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [3]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [2]),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [4]),
        .I5(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [6]),
        .O(plusOp__0[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [6]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [7]),
        .O(plusOp__0[7]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [6]),
        .I1(\gcc0.gc0.count[8]_i_2_n_0 ),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [7]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [8]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[8]_i_2 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [5]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [3]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [2]),
        .I5(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [4]),
        .O(\gcc0.gc0.count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \gfwft_rst_done.fwft_rst_done_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/sckt_rd_rst_fwft ),
        .I2(fwft_rst_done),
        .O(\gfwft_rst_done.fwft_rst_done_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [1]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_reg [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_reg [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [1]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_reg [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [0]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [1]),
        .O(\gmux.gm[0].gm1.m1_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [2]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [2]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [3]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [3]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_reg [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [2]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [2]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [3]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [3]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_reg [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [2]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [2]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [3]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [3]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_reg [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [2]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [2]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [3]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [3]),
        .O(\gmux.gm[1].gms.ms_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [4]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [4]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [5]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [5]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_reg [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [4]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [4]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [5]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [5]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_reg [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [4]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [4]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [5]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [5]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_reg [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [4]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [4]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [5]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [5]),
        .O(\gmux.gm[2].gms.ms_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [6]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [6]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [7]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [7]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_reg [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [6]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [6]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [7]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [7]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_reg [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [6]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [6]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [7]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [7]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_reg [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [6]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [6]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [7]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [7]),
        .O(\gmux.gm[3].gms.ms_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [8]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [8]),
        .O(\gmux.gm[4].gms.ms_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [8]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [8]),
        .O(\gmux.gm[4].gms.ms_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [8]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [8]),
        .O(\gmux.gm[4].gms.ms_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [8]),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [8]),
        .O(\gmux.gm[4].gms.ms_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h00B0)) 
    \goreg_bm.dout_i[577]_i_1 
       (.I0(m_axis_tready),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [0]),
        .O(\goreg_bm.dout_i[577]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .I1(m_axis_tready),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/next_fwft_state [0]));
  LUT2 #(
    .INIT(4'hB)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/fwft_rst_done_q ),
        .O(\gpregsm1.curr_fwft_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_2 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .I1(m_axis_tready),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/next_fwft_state [1]));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d2 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[0] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\count[0]_i_1_n_0 ),
        .Q(axis_data_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[1] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_7 ),
        .Q(axis_data_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[2] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_6 ),
        .Q(axis_data_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[3] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_5 ),
        .Q(axis_data_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[4] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_4 ),
        .Q(axis_data_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[5] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_7 ),
        .Q(axis_data_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[6] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_6 ),
        .Q(axis_data_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[7] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_5 ),
        .Q(axis_data_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[8] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_4 ),
        .Q(axis_data_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/count_reg[9] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/cntr_en ),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__1_n_7 ),
        .Q(axis_data_count[9]));
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry 
       (.CI(1'b0),
        .CO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_0 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_1 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_2 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_3 }),
        .CYINIT(axis_data_count[0]),
        .DI({axis_data_count[3:2],plusOp_carry_i_1_n_0,axis_data_count[1]}),
        .O({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_4 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_5 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_6 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_7 }),
        .S({plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0,plusOp_carry_i_5_n_0}));
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0 
       (.CI(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry_n_0 ),
        .CO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_0 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_1 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_2 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(axis_data_count[7:4]),
        .O({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_4 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_5 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_6 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_7 }),
        .S({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0}));
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__1 
       (.CI(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__0_n_0 ),
        .CO(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__1_O_UNCONNECTED [3:1],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gdcf.dc/dc/plusOp_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b0,plusOp_carry__1_i_1_n_0}));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_fb_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i0 ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_fb_i ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i0 ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i0 ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_i ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_o_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_o_i_reg0 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_fb_o_i ),
        .S(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i0 ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gfwft_rst_done.fwft_rst_done_q_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(fwft_rst_done),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/fwft_rst_done_q ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gfwft_rst_done.fwft_rst_done_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .CLR(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .D(\gfwft_rst_done.fwft_rst_done_i_1_n_0 ),
        .Q(fwft_rst_done));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gfwft_rst_done.sckt_rd_rst_fwft_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/sckt_rd_rst_fwft ),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_aclk),
        .CE(fwft_rst_done),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/next_fwft_state [0]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [0]),
        .R(\gpregsm1.curr_fwft_state[1]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_aclk),
        .CE(fwft_rst_done),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/next_fwft_state [1]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/curr_fwft_state [1]),
        .R(\gpregsm1.curr_fwft_state[1]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_reg 
       (.C(s_aclk),
        .CE(fwft_rst_done),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/next_fwft_state [0]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/user_valid ),
        .R(\gpregsm1.curr_fwft_state[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_3 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_2 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_1 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_0 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[3].gms.ms_i_1__2_n_0 ,\gmux.gm[2].gms.ms_i_1__2_n_0 ,\gmux.gm[1].gms.ms_i_1__2_n_0 ,\gmux.gm[0].gm1.m1_i_1__2_n_0 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4 
       (.CI(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet_3 ),
        .CO({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 }),
        .CYINIT(1'b0),
        .DI({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gmux.gm[4].gms.ms_i_1__2_n_0 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_3 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_2 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_1 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_0 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_reg ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4 
       (.CI(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet_3 ),
        .CO({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 }),
        .CYINIT(1'b0),
        .DI({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gmux.gm[4].gms.ms_i_1__0_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_empty_fb_i_i_1_n_0),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i ),
        .S(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_empty_fb_i_i_1_n_0),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [0]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [1]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [2]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [3]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [3]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [4]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [4]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [5]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [5]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [6]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [6]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [7]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [7]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [8]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out [8]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[0]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [0]),
        .S(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[1]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [1]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [2]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[3]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [3]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[4]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [4]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[5]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [5]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[6]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [6]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[7]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [7]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .D(plusOp[8]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/rd_pntr_plus1 [8]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_3 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_2 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_1 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_0 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_reg ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4 
       (.CI(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet_3 ),
        .CO({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 }),
        .CYINIT(1'b0),
        .DI({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gmux.gm[4].gms.ms_i_1_n_0 }));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_3 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_2 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_1 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_0 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_reg ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4 
       (.CI(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet_3 ),
        .CO({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 }),
        .CYINIT(1'b0),
        .DI({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gmux.gm[4].gms.ms_i_1__1_n_0 }));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i ),
        .S(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d2 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[0] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [0]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[1] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [1]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[2] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [2]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[3] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [3]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [3]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[4] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [4]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [4]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[5] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [5]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [5]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[6] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [6]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [6]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[7] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [7]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [7]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_d1_reg[8] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [8]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out [8]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[0] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[0]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [0]),
        .S(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[1] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[1]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [1]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[2] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[2]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [2]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[3] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[3]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [3]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[4] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[4]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [4]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[5] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[5]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [5]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[6] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[6]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [6]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[7] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[7]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [7]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gcc0.gc0.count_reg[8] 
       (.C(s_aclk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .D(plusOp__0[8]),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_13_out [8]),
        .R(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DIADI({s_axis_tkeep[14:7],s_axis_tkeep[5:0],s_axis_tuser,s_axis_tlast}),
        .DIBDI({s_axis_tkeep[32:25],s_axis_tkeep[23:16]}),
        .DIPADIP({s_axis_tkeep[15],s_axis_tkeep[6]}),
        .DIPBDIP({s_axis_tkeep[33],s_axis_tkeep[24]}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [16:9],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [7:0]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [34:27],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [25:18]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [17],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [8]}),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [35],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [26]}),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axis_tdata[4:0],s_axis_tkeep[63:61],s_axis_tkeep[59:52],s_axis_tkeep[50:43],s_axis_tkeep[41:34]}),
        .DIBDI({s_axis_tdata[40:33],s_axis_tdata[31:24],s_axis_tdata[22:15],s_axis_tdata[13:6]}),
        .DIPADIP({s_axis_tdata[5],s_axis_tkeep[60],s_axis_tkeep[51],s_axis_tkeep[42]}),
        .DIPBDIP({s_axis_tdata[41],s_axis_tdata[32],s_axis_tdata[23],s_axis_tdata[14]}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [70:63],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [61:54],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [52:45],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [43:36]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [106:99],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [97:90],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [88:81],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [79:72]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [71],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [62],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [53],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [44]}),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [107],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [98],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [89],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [80]}),
        .ECCPARITY(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[1].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axis_tdata[76:69],s_axis_tdata[67:60],s_axis_tdata[58:51],s_axis_tdata[49:42]}),
        .DIBDI({s_axis_tdata[112:105],s_axis_tdata[103:96],s_axis_tdata[94:87],s_axis_tdata[85:78]}),
        .DIPADIP({s_axis_tdata[77],s_axis_tdata[68],s_axis_tdata[59],s_axis_tdata[50]}),
        .DIPBDIP({s_axis_tdata[113],s_axis_tdata[104],s_axis_tdata[95],s_axis_tdata[86]}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [142:135],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [133:126],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [124:117],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [115:108]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [178:171],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [169:162],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [160:153],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [151:144]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [143],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [134],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [125],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [116]}),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [179],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [170],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [161],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [152]}),
        .ECCPARITY(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[2].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axis_tdata[148:141],s_axis_tdata[139:132],s_axis_tdata[130:123],s_axis_tdata[121:114]}),
        .DIBDI({s_axis_tdata[184:177],s_axis_tdata[175:168],s_axis_tdata[166:159],s_axis_tdata[157:150]}),
        .DIPADIP({s_axis_tdata[149],s_axis_tdata[140],s_axis_tdata[131],s_axis_tdata[122]}),
        .DIPBDIP({s_axis_tdata[185],s_axis_tdata[176],s_axis_tdata[167],s_axis_tdata[158]}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [214:207],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [205:198],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [196:189],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [187:180]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [250:243],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [241:234],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [232:225],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [223:216]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [215],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [206],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [197],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [188]}),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [251],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [242],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [233],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [224]}),
        .ECCPARITY(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[3].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axis_tdata[220:213],s_axis_tdata[211:204],s_axis_tdata[202:195],s_axis_tdata[193:186]}),
        .DIBDI({s_axis_tdata[256:249],s_axis_tdata[247:240],s_axis_tdata[238:231],s_axis_tdata[229:222]}),
        .DIPADIP({s_axis_tdata[221],s_axis_tdata[212],s_axis_tdata[203],s_axis_tdata[194]}),
        .DIPBDIP({s_axis_tdata[257],s_axis_tdata[248],s_axis_tdata[239],s_axis_tdata[230]}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [286:279],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [277:270],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [268:261],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [259:252]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [322:315],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [313:306],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [304:297],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [295:288]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [287],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [278],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [269],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [260]}),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [323],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [314],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [305],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [296]}),
        .ECCPARITY(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[4].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axis_tdata[292:285],s_axis_tdata[283:276],s_axis_tdata[274:267],s_axis_tdata[265:258]}),
        .DIBDI({s_axis_tdata[328:321],s_axis_tdata[319:312],s_axis_tdata[310:303],s_axis_tdata[301:294]}),
        .DIPADIP({s_axis_tdata[293],s_axis_tdata[284],s_axis_tdata[275],s_axis_tdata[266]}),
        .DIPBDIP({s_axis_tdata[329],s_axis_tdata[320],s_axis_tdata[311],s_axis_tdata[302]}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [358:351],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [349:342],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [340:333],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [331:324]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [394:387],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [385:378],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [376:369],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [367:360]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [359],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [350],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [341],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [332]}),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [395],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [386],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [377],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [368]}),
        .ECCPARITY(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[5].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axis_tdata[364:357],s_axis_tdata[355:348],s_axis_tdata[346:339],s_axis_tdata[337:330]}),
        .DIBDI({s_axis_tdata[400:393],s_axis_tdata[391:384],s_axis_tdata[382:375],s_axis_tdata[373:366]}),
        .DIPADIP({s_axis_tdata[365],s_axis_tdata[356],s_axis_tdata[347],s_axis_tdata[338]}),
        .DIPBDIP({s_axis_tdata[401],s_axis_tdata[392],s_axis_tdata[383],s_axis_tdata[374]}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [430:423],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [421:414],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [412:405],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [403:396]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [466:459],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [457:450],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [448:441],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [439:432]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [431],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [422],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [413],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [404]}),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [467],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [458],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [449],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [440]}),
        .ECCPARITY(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[6].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({s_axis_tdata[436:429],s_axis_tdata[427:420],s_axis_tdata[418:411],s_axis_tdata[409:402]}),
        .DIBDI({s_axis_tdata[472:465],s_axis_tdata[463:456],s_axis_tdata[454:447],s_axis_tdata[445:438]}),
        .DIPADIP({s_axis_tdata[437],s_axis_tdata[428],s_axis_tdata[419],s_axis_tdata[410]}),
        .DIPBDIP({s_axis_tdata[473],s_axis_tdata[464],s_axis_tdata[455],s_axis_tdata[446]}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [502:495],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [493:486],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [484:477],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [475:468]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [538:531],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [529:522],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [520:513],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [511:504]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [503],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [494],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [485],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [476]}),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [539],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [530],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [521],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [512]}),
        .ECCPARITY(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[7].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  (* CLOCK_DOMAINS = "COMMON" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram 
       (.ADDRARDADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_0_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_12_out ,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,s_axis_tdata[492:489],1'b0,1'b0,1'b0,s_axis_tdata[488:484],1'b0,1'b0,1'b0,s_axis_tdata[483:479],1'b0,1'b0,1'b0,s_axis_tdata[478:474]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,s_axis_tdata[511:508],1'b0,1'b0,1'b0,s_axis_tdata[507:503],1'b0,1'b0,1'b0,s_axis_tdata[502:498],1'b0,1'b0,1'b0,s_axis_tdata[497:493]}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_21 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_22 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_23 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_24 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [558:555],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_29 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_30 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_31 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [554:550],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_37 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_38 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_39 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [549:545],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_45 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_46 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_47 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [544:540]}),
        .DOBDO({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_53 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_54 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_55 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_56 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [577:574],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_61 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_62 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_63 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [573:569],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_69 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_70 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_71 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [568:564],\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_77 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_78 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_79 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [563:559]}),
        .DOPADOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_85 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_86 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_87 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_88 }),
        .DOPBDOP({\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_89 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_90 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_91 ,\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_n_92 }),
        .ECCPARITY(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[8].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM36_NO_ECC.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[0] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [0]),
        .Q(m_axis_tlast),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[100] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [100]),
        .Q(m_axis_tdata[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[101] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [101]),
        .Q(m_axis_tdata[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[102] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [102]),
        .Q(m_axis_tdata[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[103] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [103]),
        .Q(m_axis_tdata[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[104] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [104]),
        .Q(m_axis_tdata[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[105] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [105]),
        .Q(m_axis_tdata[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[106] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [106]),
        .Q(m_axis_tdata[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[107] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [107]),
        .Q(m_axis_tdata[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[108] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [108]),
        .Q(m_axis_tdata[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[109] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [109]),
        .Q(m_axis_tdata[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[10] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [10]),
        .Q(m_axis_tkeep[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[110] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [110]),
        .Q(m_axis_tdata[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[111] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [111]),
        .Q(m_axis_tdata[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[112] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [112]),
        .Q(m_axis_tdata[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[113] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [113]),
        .Q(m_axis_tdata[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[114] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [114]),
        .Q(m_axis_tdata[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[115] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [115]),
        .Q(m_axis_tdata[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[116] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [116]),
        .Q(m_axis_tdata[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[117] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [117]),
        .Q(m_axis_tdata[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[118] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [118]),
        .Q(m_axis_tdata[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[119] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [119]),
        .Q(m_axis_tdata[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[11] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [11]),
        .Q(m_axis_tkeep[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[120] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [120]),
        .Q(m_axis_tdata[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[121] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [121]),
        .Q(m_axis_tdata[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[122] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [122]),
        .Q(m_axis_tdata[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[123] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [123]),
        .Q(m_axis_tdata[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[124] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [124]),
        .Q(m_axis_tdata[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[125] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [125]),
        .Q(m_axis_tdata[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[126] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [126]),
        .Q(m_axis_tdata[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[127] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [127]),
        .Q(m_axis_tdata[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[128] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [128]),
        .Q(m_axis_tdata[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[129] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [129]),
        .Q(m_axis_tdata[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[12] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [12]),
        .Q(m_axis_tkeep[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[130] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [130]),
        .Q(m_axis_tdata[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[131] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [131]),
        .Q(m_axis_tdata[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[132] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [132]),
        .Q(m_axis_tdata[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[133] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [133]),
        .Q(m_axis_tdata[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[134] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [134]),
        .Q(m_axis_tdata[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[135] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [135]),
        .Q(m_axis_tdata[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[136] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [136]),
        .Q(m_axis_tdata[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[137] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [137]),
        .Q(m_axis_tdata[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[138] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [138]),
        .Q(m_axis_tdata[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[139] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [139]),
        .Q(m_axis_tdata[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[13] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [13]),
        .Q(m_axis_tkeep[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[140] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [140]),
        .Q(m_axis_tdata[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[141] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [141]),
        .Q(m_axis_tdata[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[142] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [142]),
        .Q(m_axis_tdata[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[143] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [143]),
        .Q(m_axis_tdata[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[144] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [144]),
        .Q(m_axis_tdata[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[145] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [145]),
        .Q(m_axis_tdata[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[146] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [146]),
        .Q(m_axis_tdata[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[147] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [147]),
        .Q(m_axis_tdata[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[148] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [148]),
        .Q(m_axis_tdata[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[149] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [149]),
        .Q(m_axis_tdata[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[14] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [14]),
        .Q(m_axis_tkeep[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[150] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [150]),
        .Q(m_axis_tdata[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[151] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [151]),
        .Q(m_axis_tdata[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[152] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [152]),
        .Q(m_axis_tdata[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[153] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [153]),
        .Q(m_axis_tdata[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[154] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [154]),
        .Q(m_axis_tdata[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[155] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [155]),
        .Q(m_axis_tdata[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[156] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [156]),
        .Q(m_axis_tdata[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[157] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [157]),
        .Q(m_axis_tdata[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[158] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [158]),
        .Q(m_axis_tdata[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[159] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [159]),
        .Q(m_axis_tdata[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[15] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [15]),
        .Q(m_axis_tkeep[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[160] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [160]),
        .Q(m_axis_tdata[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[161] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [161]),
        .Q(m_axis_tdata[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[162] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [162]),
        .Q(m_axis_tdata[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[163] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [163]),
        .Q(m_axis_tdata[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[164] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [164]),
        .Q(m_axis_tdata[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[165] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [165]),
        .Q(m_axis_tdata[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[166] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [166]),
        .Q(m_axis_tdata[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[167] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [167]),
        .Q(m_axis_tdata[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[168] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [168]),
        .Q(m_axis_tdata[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[169] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [169]),
        .Q(m_axis_tdata[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[16] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [16]),
        .Q(m_axis_tkeep[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[170] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [170]),
        .Q(m_axis_tdata[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[171] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [171]),
        .Q(m_axis_tdata[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[172] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [172]),
        .Q(m_axis_tdata[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[173] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [173]),
        .Q(m_axis_tdata[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[174] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [174]),
        .Q(m_axis_tdata[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[175] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [175]),
        .Q(m_axis_tdata[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[176] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [176]),
        .Q(m_axis_tdata[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[177] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [177]),
        .Q(m_axis_tdata[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[178] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [178]),
        .Q(m_axis_tdata[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[179] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [179]),
        .Q(m_axis_tdata[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[17] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [17]),
        .Q(m_axis_tkeep[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[180] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [180]),
        .Q(m_axis_tdata[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[181] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [181]),
        .Q(m_axis_tdata[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[182] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [182]),
        .Q(m_axis_tdata[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[183] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [183]),
        .Q(m_axis_tdata[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[184] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [184]),
        .Q(m_axis_tdata[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[185] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [185]),
        .Q(m_axis_tdata[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[186] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [186]),
        .Q(m_axis_tdata[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[187] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [187]),
        .Q(m_axis_tdata[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[188] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [188]),
        .Q(m_axis_tdata[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[189] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [189]),
        .Q(m_axis_tdata[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[18] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [18]),
        .Q(m_axis_tkeep[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[190] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [190]),
        .Q(m_axis_tdata[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[191] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [191]),
        .Q(m_axis_tdata[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[192] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [192]),
        .Q(m_axis_tdata[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[193] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [193]),
        .Q(m_axis_tdata[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[194] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [194]),
        .Q(m_axis_tdata[128]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[195] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [195]),
        .Q(m_axis_tdata[129]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[196] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [196]),
        .Q(m_axis_tdata[130]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[197] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [197]),
        .Q(m_axis_tdata[131]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[198] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [198]),
        .Q(m_axis_tdata[132]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[199] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [199]),
        .Q(m_axis_tdata[133]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[19] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [19]),
        .Q(m_axis_tkeep[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[1] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [1]),
        .Q(m_axis_tuser),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[200] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [200]),
        .Q(m_axis_tdata[134]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[201] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [201]),
        .Q(m_axis_tdata[135]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[202] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [202]),
        .Q(m_axis_tdata[136]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[203] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [203]),
        .Q(m_axis_tdata[137]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[204] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [204]),
        .Q(m_axis_tdata[138]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[205] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [205]),
        .Q(m_axis_tdata[139]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[206] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [206]),
        .Q(m_axis_tdata[140]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[207] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [207]),
        .Q(m_axis_tdata[141]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[208] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [208]),
        .Q(m_axis_tdata[142]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[209] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [209]),
        .Q(m_axis_tdata[143]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[20] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [20]),
        .Q(m_axis_tkeep[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[210] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [210]),
        .Q(m_axis_tdata[144]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[211] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [211]),
        .Q(m_axis_tdata[145]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[212] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [212]),
        .Q(m_axis_tdata[146]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[213] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [213]),
        .Q(m_axis_tdata[147]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[214] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [214]),
        .Q(m_axis_tdata[148]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[215] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [215]),
        .Q(m_axis_tdata[149]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[216] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [216]),
        .Q(m_axis_tdata[150]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[217] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [217]),
        .Q(m_axis_tdata[151]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[218] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [218]),
        .Q(m_axis_tdata[152]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[219] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [219]),
        .Q(m_axis_tdata[153]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[21] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [21]),
        .Q(m_axis_tkeep[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[220] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [220]),
        .Q(m_axis_tdata[154]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[221] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [221]),
        .Q(m_axis_tdata[155]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[222] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [222]),
        .Q(m_axis_tdata[156]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[223] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [223]),
        .Q(m_axis_tdata[157]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[224] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [224]),
        .Q(m_axis_tdata[158]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[225] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [225]),
        .Q(m_axis_tdata[159]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[226] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [226]),
        .Q(m_axis_tdata[160]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[227] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [227]),
        .Q(m_axis_tdata[161]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[228] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [228]),
        .Q(m_axis_tdata[162]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[229] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [229]),
        .Q(m_axis_tdata[163]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[22] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [22]),
        .Q(m_axis_tkeep[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[230] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [230]),
        .Q(m_axis_tdata[164]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[231] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [231]),
        .Q(m_axis_tdata[165]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[232] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [232]),
        .Q(m_axis_tdata[166]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[233] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [233]),
        .Q(m_axis_tdata[167]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[234] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [234]),
        .Q(m_axis_tdata[168]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[235] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [235]),
        .Q(m_axis_tdata[169]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[236] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [236]),
        .Q(m_axis_tdata[170]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[237] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [237]),
        .Q(m_axis_tdata[171]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[238] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [238]),
        .Q(m_axis_tdata[172]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[239] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [239]),
        .Q(m_axis_tdata[173]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[23] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [23]),
        .Q(m_axis_tkeep[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[240] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [240]),
        .Q(m_axis_tdata[174]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[241] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [241]),
        .Q(m_axis_tdata[175]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[242] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [242]),
        .Q(m_axis_tdata[176]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[243] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [243]),
        .Q(m_axis_tdata[177]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[244] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [244]),
        .Q(m_axis_tdata[178]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[245] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [245]),
        .Q(m_axis_tdata[179]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[246] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [246]),
        .Q(m_axis_tdata[180]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[247] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [247]),
        .Q(m_axis_tdata[181]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[248] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [248]),
        .Q(m_axis_tdata[182]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[249] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [249]),
        .Q(m_axis_tdata[183]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[24] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [24]),
        .Q(m_axis_tkeep[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[250] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [250]),
        .Q(m_axis_tdata[184]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[251] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [251]),
        .Q(m_axis_tdata[185]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[252] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [252]),
        .Q(m_axis_tdata[186]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[253] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [253]),
        .Q(m_axis_tdata[187]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[254] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [254]),
        .Q(m_axis_tdata[188]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[255] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [255]),
        .Q(m_axis_tdata[189]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[256] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [256]),
        .Q(m_axis_tdata[190]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[257] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [257]),
        .Q(m_axis_tdata[191]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[258] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [258]),
        .Q(m_axis_tdata[192]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[259] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [259]),
        .Q(m_axis_tdata[193]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[25] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [25]),
        .Q(m_axis_tkeep[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[260] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [260]),
        .Q(m_axis_tdata[194]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[261] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [261]),
        .Q(m_axis_tdata[195]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[262] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [262]),
        .Q(m_axis_tdata[196]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[263] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [263]),
        .Q(m_axis_tdata[197]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[264] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [264]),
        .Q(m_axis_tdata[198]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[265] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [265]),
        .Q(m_axis_tdata[199]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[266] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [266]),
        .Q(m_axis_tdata[200]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[267] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [267]),
        .Q(m_axis_tdata[201]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[268] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [268]),
        .Q(m_axis_tdata[202]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[269] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [269]),
        .Q(m_axis_tdata[203]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[26] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [26]),
        .Q(m_axis_tkeep[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[270] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [270]),
        .Q(m_axis_tdata[204]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[271] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [271]),
        .Q(m_axis_tdata[205]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[272] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [272]),
        .Q(m_axis_tdata[206]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[273] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [273]),
        .Q(m_axis_tdata[207]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[274] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [274]),
        .Q(m_axis_tdata[208]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[275] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [275]),
        .Q(m_axis_tdata[209]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[276] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [276]),
        .Q(m_axis_tdata[210]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[277] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [277]),
        .Q(m_axis_tdata[211]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[278] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [278]),
        .Q(m_axis_tdata[212]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[279] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [279]),
        .Q(m_axis_tdata[213]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[27] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [27]),
        .Q(m_axis_tkeep[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[280] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [280]),
        .Q(m_axis_tdata[214]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[281] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [281]),
        .Q(m_axis_tdata[215]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[282] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [282]),
        .Q(m_axis_tdata[216]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[283] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [283]),
        .Q(m_axis_tdata[217]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[284] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [284]),
        .Q(m_axis_tdata[218]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[285] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [285]),
        .Q(m_axis_tdata[219]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[286] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [286]),
        .Q(m_axis_tdata[220]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[287] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [287]),
        .Q(m_axis_tdata[221]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[288] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [288]),
        .Q(m_axis_tdata[222]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[289] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [289]),
        .Q(m_axis_tdata[223]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[28] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [28]),
        .Q(m_axis_tkeep[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[290] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [290]),
        .Q(m_axis_tdata[224]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[291] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [291]),
        .Q(m_axis_tdata[225]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[292] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [292]),
        .Q(m_axis_tdata[226]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[293] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [293]),
        .Q(m_axis_tdata[227]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[294] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [294]),
        .Q(m_axis_tdata[228]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[295] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [295]),
        .Q(m_axis_tdata[229]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[296] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [296]),
        .Q(m_axis_tdata[230]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[297] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [297]),
        .Q(m_axis_tdata[231]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[298] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [298]),
        .Q(m_axis_tdata[232]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[299] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [299]),
        .Q(m_axis_tdata[233]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[29] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [29]),
        .Q(m_axis_tkeep[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[2] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [2]),
        .Q(m_axis_tkeep[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[300] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [300]),
        .Q(m_axis_tdata[234]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[301] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [301]),
        .Q(m_axis_tdata[235]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[302] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [302]),
        .Q(m_axis_tdata[236]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[303] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [303]),
        .Q(m_axis_tdata[237]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[304] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [304]),
        .Q(m_axis_tdata[238]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[305] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [305]),
        .Q(m_axis_tdata[239]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[306] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [306]),
        .Q(m_axis_tdata[240]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[307] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [307]),
        .Q(m_axis_tdata[241]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[308] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [308]),
        .Q(m_axis_tdata[242]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[309] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [309]),
        .Q(m_axis_tdata[243]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[30] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [30]),
        .Q(m_axis_tkeep[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[310] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [310]),
        .Q(m_axis_tdata[244]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[311] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [311]),
        .Q(m_axis_tdata[245]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[312] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [312]),
        .Q(m_axis_tdata[246]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[313] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [313]),
        .Q(m_axis_tdata[247]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[314] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [314]),
        .Q(m_axis_tdata[248]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[315] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [315]),
        .Q(m_axis_tdata[249]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[316] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [316]),
        .Q(m_axis_tdata[250]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[317] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [317]),
        .Q(m_axis_tdata[251]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[318] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [318]),
        .Q(m_axis_tdata[252]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[319] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [319]),
        .Q(m_axis_tdata[253]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[31] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [31]),
        .Q(m_axis_tkeep[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[320] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [320]),
        .Q(m_axis_tdata[254]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[321] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [321]),
        .Q(m_axis_tdata[255]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[322] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [322]),
        .Q(m_axis_tdata[256]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[323] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [323]),
        .Q(m_axis_tdata[257]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[324] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [324]),
        .Q(m_axis_tdata[258]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[325] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [325]),
        .Q(m_axis_tdata[259]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[326] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [326]),
        .Q(m_axis_tdata[260]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[327] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [327]),
        .Q(m_axis_tdata[261]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[328] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [328]),
        .Q(m_axis_tdata[262]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[329] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [329]),
        .Q(m_axis_tdata[263]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[32] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [32]),
        .Q(m_axis_tkeep[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[330] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [330]),
        .Q(m_axis_tdata[264]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[331] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [331]),
        .Q(m_axis_tdata[265]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[332] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [332]),
        .Q(m_axis_tdata[266]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[333] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [333]),
        .Q(m_axis_tdata[267]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[334] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [334]),
        .Q(m_axis_tdata[268]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[335] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [335]),
        .Q(m_axis_tdata[269]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[336] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [336]),
        .Q(m_axis_tdata[270]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[337] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [337]),
        .Q(m_axis_tdata[271]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[338] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [338]),
        .Q(m_axis_tdata[272]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[339] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [339]),
        .Q(m_axis_tdata[273]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[33] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [33]),
        .Q(m_axis_tkeep[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[340] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [340]),
        .Q(m_axis_tdata[274]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[341] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [341]),
        .Q(m_axis_tdata[275]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[342] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [342]),
        .Q(m_axis_tdata[276]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[343] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [343]),
        .Q(m_axis_tdata[277]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[344] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [344]),
        .Q(m_axis_tdata[278]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[345] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [345]),
        .Q(m_axis_tdata[279]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[346] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [346]),
        .Q(m_axis_tdata[280]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[347] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [347]),
        .Q(m_axis_tdata[281]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[348] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [348]),
        .Q(m_axis_tdata[282]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[349] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [349]),
        .Q(m_axis_tdata[283]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[34] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [34]),
        .Q(m_axis_tkeep[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[350] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [350]),
        .Q(m_axis_tdata[284]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[351] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [351]),
        .Q(m_axis_tdata[285]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[352] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [352]),
        .Q(m_axis_tdata[286]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[353] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [353]),
        .Q(m_axis_tdata[287]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[354] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [354]),
        .Q(m_axis_tdata[288]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[355] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [355]),
        .Q(m_axis_tdata[289]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[356] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [356]),
        .Q(m_axis_tdata[290]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[357] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [357]),
        .Q(m_axis_tdata[291]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[358] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [358]),
        .Q(m_axis_tdata[292]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[359] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [359]),
        .Q(m_axis_tdata[293]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[35] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [35]),
        .Q(m_axis_tkeep[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[360] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [360]),
        .Q(m_axis_tdata[294]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[361] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [361]),
        .Q(m_axis_tdata[295]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[362] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [362]),
        .Q(m_axis_tdata[296]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[363] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [363]),
        .Q(m_axis_tdata[297]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[364] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [364]),
        .Q(m_axis_tdata[298]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[365] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [365]),
        .Q(m_axis_tdata[299]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[366] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [366]),
        .Q(m_axis_tdata[300]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[367] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [367]),
        .Q(m_axis_tdata[301]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[368] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [368]),
        .Q(m_axis_tdata[302]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[369] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [369]),
        .Q(m_axis_tdata[303]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[36] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [36]),
        .Q(m_axis_tkeep[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[370] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [370]),
        .Q(m_axis_tdata[304]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[371] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [371]),
        .Q(m_axis_tdata[305]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[372] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [372]),
        .Q(m_axis_tdata[306]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[373] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [373]),
        .Q(m_axis_tdata[307]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[374] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [374]),
        .Q(m_axis_tdata[308]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[375] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [375]),
        .Q(m_axis_tdata[309]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[376] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [376]),
        .Q(m_axis_tdata[310]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[377] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [377]),
        .Q(m_axis_tdata[311]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[378] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [378]),
        .Q(m_axis_tdata[312]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[379] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [379]),
        .Q(m_axis_tdata[313]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[37] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [37]),
        .Q(m_axis_tkeep[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[380] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [380]),
        .Q(m_axis_tdata[314]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[381] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [381]),
        .Q(m_axis_tdata[315]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[382] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [382]),
        .Q(m_axis_tdata[316]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[383] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [383]),
        .Q(m_axis_tdata[317]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[384] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [384]),
        .Q(m_axis_tdata[318]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[385] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [385]),
        .Q(m_axis_tdata[319]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[386] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [386]),
        .Q(m_axis_tdata[320]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[387] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [387]),
        .Q(m_axis_tdata[321]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[388] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [388]),
        .Q(m_axis_tdata[322]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[389] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [389]),
        .Q(m_axis_tdata[323]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[38] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [38]),
        .Q(m_axis_tkeep[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[390] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [390]),
        .Q(m_axis_tdata[324]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[391] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [391]),
        .Q(m_axis_tdata[325]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[392] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [392]),
        .Q(m_axis_tdata[326]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[393] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [393]),
        .Q(m_axis_tdata[327]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[394] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [394]),
        .Q(m_axis_tdata[328]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[395] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [395]),
        .Q(m_axis_tdata[329]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[396] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [396]),
        .Q(m_axis_tdata[330]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[397] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [397]),
        .Q(m_axis_tdata[331]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[398] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [398]),
        .Q(m_axis_tdata[332]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[399] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [399]),
        .Q(m_axis_tdata[333]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[39] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [39]),
        .Q(m_axis_tkeep[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[3] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [3]),
        .Q(m_axis_tkeep[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[400] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [400]),
        .Q(m_axis_tdata[334]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[401] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [401]),
        .Q(m_axis_tdata[335]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[402] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [402]),
        .Q(m_axis_tdata[336]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[403] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [403]),
        .Q(m_axis_tdata[337]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[404] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [404]),
        .Q(m_axis_tdata[338]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[405] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [405]),
        .Q(m_axis_tdata[339]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[406] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [406]),
        .Q(m_axis_tdata[340]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[407] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [407]),
        .Q(m_axis_tdata[341]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[408] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [408]),
        .Q(m_axis_tdata[342]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[409] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [409]),
        .Q(m_axis_tdata[343]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[40] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [40]),
        .Q(m_axis_tkeep[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[410] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [410]),
        .Q(m_axis_tdata[344]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[411] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [411]),
        .Q(m_axis_tdata[345]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[412] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [412]),
        .Q(m_axis_tdata[346]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[413] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [413]),
        .Q(m_axis_tdata[347]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[414] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [414]),
        .Q(m_axis_tdata[348]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[415] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [415]),
        .Q(m_axis_tdata[349]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[416] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [416]),
        .Q(m_axis_tdata[350]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[417] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [417]),
        .Q(m_axis_tdata[351]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[418] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [418]),
        .Q(m_axis_tdata[352]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[419] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [419]),
        .Q(m_axis_tdata[353]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[41] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [41]),
        .Q(m_axis_tkeep[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[420] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [420]),
        .Q(m_axis_tdata[354]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[421] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [421]),
        .Q(m_axis_tdata[355]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[422] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [422]),
        .Q(m_axis_tdata[356]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[423] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [423]),
        .Q(m_axis_tdata[357]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[424] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [424]),
        .Q(m_axis_tdata[358]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[425] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [425]),
        .Q(m_axis_tdata[359]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[426] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [426]),
        .Q(m_axis_tdata[360]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[427] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [427]),
        .Q(m_axis_tdata[361]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[428] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [428]),
        .Q(m_axis_tdata[362]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[429] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [429]),
        .Q(m_axis_tdata[363]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[42] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [42]),
        .Q(m_axis_tkeep[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[430] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [430]),
        .Q(m_axis_tdata[364]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[431] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [431]),
        .Q(m_axis_tdata[365]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[432] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [432]),
        .Q(m_axis_tdata[366]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[433] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [433]),
        .Q(m_axis_tdata[367]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[434] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [434]),
        .Q(m_axis_tdata[368]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[435] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [435]),
        .Q(m_axis_tdata[369]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[436] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [436]),
        .Q(m_axis_tdata[370]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[437] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [437]),
        .Q(m_axis_tdata[371]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[438] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [438]),
        .Q(m_axis_tdata[372]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[439] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [439]),
        .Q(m_axis_tdata[373]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[43] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [43]),
        .Q(m_axis_tkeep[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[440] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [440]),
        .Q(m_axis_tdata[374]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[441] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [441]),
        .Q(m_axis_tdata[375]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[442] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [442]),
        .Q(m_axis_tdata[376]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[443] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [443]),
        .Q(m_axis_tdata[377]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[444] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [444]),
        .Q(m_axis_tdata[378]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[445] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [445]),
        .Q(m_axis_tdata[379]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[446] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [446]),
        .Q(m_axis_tdata[380]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[447] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [447]),
        .Q(m_axis_tdata[381]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[448] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [448]),
        .Q(m_axis_tdata[382]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[449] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [449]),
        .Q(m_axis_tdata[383]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[44] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [44]),
        .Q(m_axis_tkeep[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[450] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [450]),
        .Q(m_axis_tdata[384]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[451] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [451]),
        .Q(m_axis_tdata[385]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[452] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [452]),
        .Q(m_axis_tdata[386]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[453] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [453]),
        .Q(m_axis_tdata[387]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[454] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [454]),
        .Q(m_axis_tdata[388]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[455] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [455]),
        .Q(m_axis_tdata[389]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[456] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [456]),
        .Q(m_axis_tdata[390]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[457] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [457]),
        .Q(m_axis_tdata[391]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[458] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [458]),
        .Q(m_axis_tdata[392]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[459] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [459]),
        .Q(m_axis_tdata[393]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[45] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [45]),
        .Q(m_axis_tkeep[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[460] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [460]),
        .Q(m_axis_tdata[394]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[461] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [461]),
        .Q(m_axis_tdata[395]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[462] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [462]),
        .Q(m_axis_tdata[396]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[463] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [463]),
        .Q(m_axis_tdata[397]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[464] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [464]),
        .Q(m_axis_tdata[398]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[465] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [465]),
        .Q(m_axis_tdata[399]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[466] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [466]),
        .Q(m_axis_tdata[400]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[467] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [467]),
        .Q(m_axis_tdata[401]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[468] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [468]),
        .Q(m_axis_tdata[402]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[469] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [469]),
        .Q(m_axis_tdata[403]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[46] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [46]),
        .Q(m_axis_tkeep[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[470] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [470]),
        .Q(m_axis_tdata[404]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[471] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [471]),
        .Q(m_axis_tdata[405]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[472] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [472]),
        .Q(m_axis_tdata[406]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[473] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [473]),
        .Q(m_axis_tdata[407]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[474] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [474]),
        .Q(m_axis_tdata[408]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[475] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [475]),
        .Q(m_axis_tdata[409]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[476] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [476]),
        .Q(m_axis_tdata[410]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[477] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [477]),
        .Q(m_axis_tdata[411]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[478] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [478]),
        .Q(m_axis_tdata[412]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[479] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [479]),
        .Q(m_axis_tdata[413]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[47] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [47]),
        .Q(m_axis_tkeep[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[480] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [480]),
        .Q(m_axis_tdata[414]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[481] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [481]),
        .Q(m_axis_tdata[415]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[482] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [482]),
        .Q(m_axis_tdata[416]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[483] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [483]),
        .Q(m_axis_tdata[417]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[484] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [484]),
        .Q(m_axis_tdata[418]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[485] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [485]),
        .Q(m_axis_tdata[419]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[486] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [486]),
        .Q(m_axis_tdata[420]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[487] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [487]),
        .Q(m_axis_tdata[421]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[488] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [488]),
        .Q(m_axis_tdata[422]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[489] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [489]),
        .Q(m_axis_tdata[423]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[48] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [48]),
        .Q(m_axis_tkeep[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[490] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [490]),
        .Q(m_axis_tdata[424]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[491] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [491]),
        .Q(m_axis_tdata[425]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[492] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [492]),
        .Q(m_axis_tdata[426]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[493] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [493]),
        .Q(m_axis_tdata[427]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[494] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [494]),
        .Q(m_axis_tdata[428]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[495] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [495]),
        .Q(m_axis_tdata[429]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[496] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [496]),
        .Q(m_axis_tdata[430]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[497] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [497]),
        .Q(m_axis_tdata[431]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[498] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [498]),
        .Q(m_axis_tdata[432]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[499] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [499]),
        .Q(m_axis_tdata[433]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[49] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [49]),
        .Q(m_axis_tkeep[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[4] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [4]),
        .Q(m_axis_tkeep[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[500] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [500]),
        .Q(m_axis_tdata[434]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[501] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [501]),
        .Q(m_axis_tdata[435]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[502] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [502]),
        .Q(m_axis_tdata[436]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[503] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [503]),
        .Q(m_axis_tdata[437]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[504] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [504]),
        .Q(m_axis_tdata[438]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[505] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [505]),
        .Q(m_axis_tdata[439]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[506] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [506]),
        .Q(m_axis_tdata[440]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[507] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [507]),
        .Q(m_axis_tdata[441]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[508] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [508]),
        .Q(m_axis_tdata[442]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[509] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [509]),
        .Q(m_axis_tdata[443]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[50] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [50]),
        .Q(m_axis_tkeep[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[510] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [510]),
        .Q(m_axis_tdata[444]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[511] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [511]),
        .Q(m_axis_tdata[445]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[512] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [512]),
        .Q(m_axis_tdata[446]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[513] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [513]),
        .Q(m_axis_tdata[447]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[514] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [514]),
        .Q(m_axis_tdata[448]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[515] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [515]),
        .Q(m_axis_tdata[449]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[516] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [516]),
        .Q(m_axis_tdata[450]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[517] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [517]),
        .Q(m_axis_tdata[451]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[518] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [518]),
        .Q(m_axis_tdata[452]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[519] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [519]),
        .Q(m_axis_tdata[453]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[51] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [51]),
        .Q(m_axis_tkeep[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[520] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [520]),
        .Q(m_axis_tdata[454]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[521] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [521]),
        .Q(m_axis_tdata[455]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[522] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [522]),
        .Q(m_axis_tdata[456]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[523] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [523]),
        .Q(m_axis_tdata[457]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[524] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [524]),
        .Q(m_axis_tdata[458]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[525] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [525]),
        .Q(m_axis_tdata[459]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[526] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [526]),
        .Q(m_axis_tdata[460]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[527] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [527]),
        .Q(m_axis_tdata[461]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[528] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [528]),
        .Q(m_axis_tdata[462]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[529] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [529]),
        .Q(m_axis_tdata[463]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[52] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [52]),
        .Q(m_axis_tkeep[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[530] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [530]),
        .Q(m_axis_tdata[464]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[531] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [531]),
        .Q(m_axis_tdata[465]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[532] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [532]),
        .Q(m_axis_tdata[466]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[533] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [533]),
        .Q(m_axis_tdata[467]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[534] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [534]),
        .Q(m_axis_tdata[468]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[535] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [535]),
        .Q(m_axis_tdata[469]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[536] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [536]),
        .Q(m_axis_tdata[470]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[537] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [537]),
        .Q(m_axis_tdata[471]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[538] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [538]),
        .Q(m_axis_tdata[472]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[539] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [539]),
        .Q(m_axis_tdata[473]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[53] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [53]),
        .Q(m_axis_tkeep[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[540] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [540]),
        .Q(m_axis_tdata[474]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[541] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [541]),
        .Q(m_axis_tdata[475]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[542] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [542]),
        .Q(m_axis_tdata[476]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[543] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [543]),
        .Q(m_axis_tdata[477]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[544] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [544]),
        .Q(m_axis_tdata[478]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[545] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [545]),
        .Q(m_axis_tdata[479]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[546] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [546]),
        .Q(m_axis_tdata[480]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[547] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [547]),
        .Q(m_axis_tdata[481]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[548] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [548]),
        .Q(m_axis_tdata[482]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[549] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [549]),
        .Q(m_axis_tdata[483]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[54] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [54]),
        .Q(m_axis_tkeep[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[550] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [550]),
        .Q(m_axis_tdata[484]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[551] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [551]),
        .Q(m_axis_tdata[485]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[552] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [552]),
        .Q(m_axis_tdata[486]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[553] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [553]),
        .Q(m_axis_tdata[487]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[554] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [554]),
        .Q(m_axis_tdata[488]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[555] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [555]),
        .Q(m_axis_tdata[489]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[556] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [556]),
        .Q(m_axis_tdata[490]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[557] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [557]),
        .Q(m_axis_tdata[491]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[558] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [558]),
        .Q(m_axis_tdata[492]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[559] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [559]),
        .Q(m_axis_tdata[493]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[55] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [55]),
        .Q(m_axis_tkeep[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[560] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [560]),
        .Q(m_axis_tdata[494]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[561] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [561]),
        .Q(m_axis_tdata[495]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[562] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [562]),
        .Q(m_axis_tdata[496]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[563] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [563]),
        .Q(m_axis_tdata[497]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[564] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [564]),
        .Q(m_axis_tdata[498]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[565] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [565]),
        .Q(m_axis_tdata[499]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[566] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [566]),
        .Q(m_axis_tdata[500]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[567] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [567]),
        .Q(m_axis_tdata[501]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[568] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [568]),
        .Q(m_axis_tdata[502]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[569] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [569]),
        .Q(m_axis_tdata[503]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[56] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [56]),
        .Q(m_axis_tkeep[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[570] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [570]),
        .Q(m_axis_tdata[504]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[571] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [571]),
        .Q(m_axis_tdata[505]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[572] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [572]),
        .Q(m_axis_tdata[506]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[573] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [573]),
        .Q(m_axis_tdata[507]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[574] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [574]),
        .Q(m_axis_tdata[508]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[575] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [575]),
        .Q(m_axis_tdata[509]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[576] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [576]),
        .Q(m_axis_tdata[510]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[577] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [577]),
        .Q(m_axis_tdata[511]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[57] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [57]),
        .Q(m_axis_tkeep[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[58] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [58]),
        .Q(m_axis_tkeep[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[59] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [59]),
        .Q(m_axis_tkeep[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[5] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [5]),
        .Q(m_axis_tkeep[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[60] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [60]),
        .Q(m_axis_tkeep[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[61] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [61]),
        .Q(m_axis_tkeep[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[62] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [62]),
        .Q(m_axis_tkeep[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[63] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [63]),
        .Q(m_axis_tkeep[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[64] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [64]),
        .Q(m_axis_tkeep[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[65] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [65]),
        .Q(m_axis_tkeep[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[66] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [66]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[67] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [67]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[68] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [68]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[69] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [69]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[6] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [6]),
        .Q(m_axis_tkeep[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[70] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [70]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[71] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [71]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[72] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [72]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[73] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [73]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[74] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [74]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[75] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [75]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[76] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [76]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[77] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [77]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[78] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [78]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[79] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [79]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[7] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [7]),
        .Q(m_axis_tkeep[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[80] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [80]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[81] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [81]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[82] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [82]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[83] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [83]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[84] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [84]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[85] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [85]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[86] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [86]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[87] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [87]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[88] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [88]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[89] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [89]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[8] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [8]),
        .Q(m_axis_tkeep[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[90] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [90]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[91] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [91]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[92] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [92]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[93] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [93]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[94] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [94]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[95] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [95]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[96] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [96]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[97] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [97]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[98] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [98]),
        .Q(m_axis_tdata[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[99] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [99]),
        .Q(m_axis_tdata[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/goreg_bm.dout_i_reg[9] 
       (.C(s_aclk),
        .CE(\goreg_bm.dout_i[577]_i_1_n_0 ),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.mem/doutb [9]),
        .Q(m_axis_tkeep[7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_busy_i1_out ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg2 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d1 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d1 ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg2 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d2 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg2 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d3 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg2 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[1].rd_rst_wr_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[1].rd_rst_wr_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[2].rd_rst_wr_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[1].rd_rst_wr_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[2].rd_rst_wr_inst/Q_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/p_0_out_n_0 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.safety_ckt_wr_rst_i_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_i_q_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_busy_i1_out ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/sckt_wr_rst_i_q ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h444F4444)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[2].rd_rst_wr_inst/Q_reg ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_active ),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst/Q_reg ),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst/Q_reg ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1_n_0 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_active ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hD0DFD0D0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/sckt_rd_rst_d1 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[2].rd_rst_wr_inst/Q_reg ),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst/Q_reg ),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst/Q_reg ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1_n_0 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.sckt_rd_rst_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[2].rd_rst_wr_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/sckt_rd_rst_d1 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_asreg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_asreg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst/Q_reg ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst/Q_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst/Q_reg ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst/Q_reg ),
        .R(1'b0));
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_rd_reg2 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_asreg ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_comb ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_comb ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_comb ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_reg [2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_rd_reg1 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_rd_reg1 ),
        .PRE(inverted_reset),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_rd_reg2 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(inverted_reset),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg1 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg1 ),
        .PRE(inverted_reset),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg2 ));
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_wr_reg2 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_asreg ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_reg [0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_reg [1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_reg [2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/p_0_out 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/sckt_wr_rst_i_q ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[2].rd_rst_wr_inst/Q_reg ),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst/Q_reg ),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst/Q_reg ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/p_0_out_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    inst_fifo_geni_0
       (.I0(1'b1),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i ));
  LUT1 #(
    .INIT(2'h2)) 
    inst_fifo_geni_1
       (.I0(1'b1),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb ));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i ),
        .O(m_axis_tvalid));
  LUT3 #(
    .INIT(8'hFE)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.sckt_wr_rst_i_q_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst/Q_reg ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst/Q_reg ),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gsckt_wrst.gcc_rst.garst_sync_cc[2].rd_rst_wr_inst/Q_reg ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_busy_i1_out ));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_asreg ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst/Q_reg ),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_active ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst/Q_reg ),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_asreg ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rd_rst_comb ));
  LUT1 #(
    .INIT(2'h1)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_i_1 
       (.I0(s_aresetn),
        .O(inverted_reset));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_asreg ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst/Q_reg ),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1 
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/wr_rst_asreg ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst/Q_reg ),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_1
       (.I0(axis_data_count[7]),
        .I1(axis_data_count[8]),
        .O(plusOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_2
       (.I0(axis_data_count[6]),
        .I1(axis_data_count[7]),
        .O(plusOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_3
       (.I0(axis_data_count[5]),
        .I1(axis_data_count[6]),
        .O(plusOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_4
       (.I0(axis_data_count[4]),
        .I1(axis_data_count[5]),
        .O(plusOp_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__1_i_1
       (.I0(axis_data_count[8]),
        .I1(axis_data_count[9]),
        .O(plusOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    plusOp_carry_i_1
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/user_valid ),
        .I1(m_axis_tready),
        .O(plusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_2
       (.I0(axis_data_count[3]),
        .I1(axis_data_count[4]),
        .O(plusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_3
       (.I0(axis_data_count[2]),
        .I1(axis_data_count[3]),
        .O(plusOp_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    plusOp_carry_i_4
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/user_valid ),
        .I1(m_axis_tready),
        .I2(axis_data_count[2]),
        .O(plusOp_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h78)) 
    plusOp_carry_i_5
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/user_valid ),
        .I1(m_axis_tready),
        .I2(axis_data_count[1]),
        .O(plusOp_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hFCCCFCCC4444FCCC)) 
    ram_empty_fb_i_i_1
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 ),
        .I1(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i ),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ),
        .I4(s_axis_tvalid),
        .I5(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i ),
        .O(ram_empty_fb_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h0055000000FFC0C0)) 
    ram_full_fb_i_i_1
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 ),
        .I1(s_axis_tvalid),
        .I2(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 ),
        .I3(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/rst_d3 ),
        .I4(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i ),
        .I5(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/p_8_out ),
        .O(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_INST_0
       (.I0(\inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i ),
        .O(s_axis_tready));
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
