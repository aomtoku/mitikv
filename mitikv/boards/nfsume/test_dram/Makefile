proj = "nfsume-dram"

sim_top = app_tb
outdir = build

# Xilinx sources and top module
RTL_SRC := ../rtl/top.v \
           ../rtl/prbs.v\
           ../rtl/eth_top.v\
           ../rtl/eth_encap.v\
           ../rtl/eth_mac_conf.v\
           ../rtl/pcs_pma_conf.v\
           ../../../cores/db/rtl/db_top.v\
           ../../../cores/db/rtl/db_cont.v\
           ../../../cores/db/rtl/crc32.v\
           wiredly.v\
           ddr3_model.sv\
		   ddr3_model_parameter.vh\
           tb_sim.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_arb_select.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_common.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_state.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_col_mach.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_mc.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_rank_common.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_std.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_top.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ui/mig_7series_v4_0_ui_top.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/sume_ddr_mig.v\
           ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/sume_ddr_mig_mig_sim.v\
			../ip_catalog/asfifo_160_64/asfifo_160_64_sim_netlist.v\
			../ip_catalog/asfifo_32_64/asfifo_32_64_sim_netlist.v\
			../ip_catalog/asfifo_608_64/asfifo_608_64_sim_netlist.v\
            ../ip_catalog/axis_interconnect_0/hdl/axis_interconnect_v1_1_vl_rfs.v ../ip_catalog/axis_interconnect_0/hdl/fifo_generator_v13_1_rfs.v\
            ../ip_catalog/axis_interconnect_0/simulation/fifo_generator_vlog_beh.v\
            ../ip_catalog/axis_interconnect_0/sim/axis_interconnect_0.v\
            ../ip_catalog/axis_data_fifo_0/hdl/axis_data_fifo_v1_1_vl_rfs.v ../ip_catalog/axis_data_fifo_0/hdl/axis_infrastructure_v1_1_vl_rfs.v ../ip_catalog/axis_data_fifo_0/hdl/fifo_generator_v13_1_rfs.v\
            ../ip_catalog/axis_data_fifo_0/sim/axis_data_fifo_0.v\
            ../ip_catalog/axis_data_fifo_0/simulation/fifo_generator_vlog_beh.v\
            axi_10g_ethernet_0_sim_netlist.v\
            axi_10g_ethernet_nonshared_sim_netlist.v\
      /opt/Xilinx/Vivado/2016.4/data/verilog/src/glbl.v

#../.srcs/sources_1/ip/sume_ddr_mig/sume_ddr_mig_sim_netlist.v\
#../ip_catalog/axis_data_fifo_0/axis_data_fifo_0_sim_netlist.v\
#../ip_catalog/axis_data_fifo_1/axis_data_fifo_1_sim_netlist.v\
#IP_SRC := ../ip_catalog/sume_ddr_mig/sume_ddr_mig.xci  

XDC_SRC := ../constraints/sume.xdc     

all: questa

gui: questa-gui

xsim:
	test -e $(outdir) || mkdir $(outdir)
	vivado -mode batch -source sim.tcl -log $(outdir)/createprj_log.txt -nojournal -tclargs "$(RTL_SRC)" "$(IP_SRC)"

xsim-gui:
	test -e $(outdir) || mkdir $(outdir)
	vivado -mode gui -source sim.tcl -log $(outdir)/createprj_log.txt -nojournal -tclargs "$(RTL_SRC)" "$(IP_SRC)"

questa:
	vsim -64 -c -do questa_sim.do

questa-gui: $(IP_SIM_SRC)
	vsim -64 -do questa_sim.do -gui

wave:
	gtkwave `find ./ -name test.vcd` &

clean:
	rm -f wave.vcd
	rm -rf obj_dir
	rm -f wlft*
	rm -f vsim.wlf

