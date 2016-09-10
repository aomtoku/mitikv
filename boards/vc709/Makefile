proj = "ddos"

sim_top = app_tb
outdir = build

# Xilinx sources and top module
RTL_SRC := rtl/clock_control/clock_control.v                                 \
           rtl/clock_control/clock_control_program.v                         \
           rtl/clock_control/kcpsm6.v                                        \
           rtl/eth/pcs_pma_conf.v                                            \
           rtl/eth/eth_mac_conf.v                                            \
           rtl/eth/eth_top.sv                                                \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_ctrl_addr_decode.v     \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_ctrl_read.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_ctrl_reg.v             \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_ctrl_reg_bank.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_ctrl_top.v             \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_ctrl_write.v           \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc.v                   \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_ar_channel.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_aw_channel.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_b_channel.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_cmd_arbiter.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_cmd_fsm.v           \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_cmd_translator.v    \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_fifo.v              \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_incr_cmd.v          \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_r_channel.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_simple_fifo.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_w_channel.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_wr_cmd_fsm.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_axi_mc_wrap_cmd.v          \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_a_upsizer.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_axi_register_slice.v   \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_axi_upsizer.v          \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_axic_register_slice.v  \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_carry_and.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_carry_latch_and.v      \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_carry_latch_or.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_carry_or.v             \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_command_fifo.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_comparator.v           \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_comparator_sel.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_comparator_sel_static.v\
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_r_upsizer.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/axi/mig_7series_v2_4_ddr_w_upsizer.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_clk_ibuf.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_infrastructure.v      \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_iodelay_ctrl.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_tempmon.v             \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_mux.v           \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_row_col.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_select.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_cntrl.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_common.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_compare.v      \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_mach.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_queue.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_state.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_col_mach.v          \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_mc.v                \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_cntrl.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_common.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_mach.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_round_robin_arb.v   \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_buf.v                  \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_dec_fix.v              \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_gen.v                  \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_merge_enc.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_fi_xor.v                   \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ip_top/mig_7series_v2_4_mem_intfc.v             \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ip_top/mig_7series_v2_4_memc_ui_top_axi.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_byte_group_io.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_byte_lane.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_calib_top.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_if_post_fifo.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_mc_phy.v               \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_mc_phy_wrapper.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_of_pre_fifo.v          \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_4lanes.v           \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_dqs_found_cal.v    \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_dqs_found_cal_hr.v \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_init.v             \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_cntlr.v        \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_data.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_edge.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_lim.v          \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_mux.v          \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_po_cntlr.v     \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_samp.v         \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_oclkdelay_cal.v    \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_prbs_rdlvl.v       \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_rdlvl.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_tempmon.v          \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_top.v              \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrcal.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrlvl.v            \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrlvl_off_delay.v  \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_prbs_gen.v             \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_cc.v                   \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_edge_store.v           \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_meta.v                 \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_pd.v                   \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_tap_base.v             \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_top.v                  \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_cmd.v                    \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_rd_data.v                \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_top.v                    \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_wr_data.v                \
ip_catalog/mig_7series_0/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ck_addr_cmd_delay.v\
           rtl/top.sv

## libraries
INC_SRC := $(wildcard ../../cores/pkg/*.sv)
#INC_SRC := $(wildcard ../../cores/pkg/*.sv) \
#           $(wildcard ../../cores/xgmiisync/rtl/*.sv) \
#           $(wildcard ../../cores/crc32/rtl/*.v) \
#           $(wildcard ../../cores/eth_fcs/rtl/*.sv) \
#           $(wildcard ../../cores/txfifo/rtl/*.sv)

#IM_SRC := $(wildcard test/*.sv)

#VERILATOR_SRC := test/app_tb.cpp

#IP_SRC := ip_catalog/pcie3_7x_0/pcie3_7x_0.xci
IP_SRC := ip_catalog/axi_10g_ethernet_0/axi_10g_ethernet_0.xci \
          ip_catalog/axi_vfifo_ctrl_0/axi_vfifo_ctrl_0.xci \
          ip_catalog/axis_data_fifo_0/axis_data_fifo_0.xci \
          ip_catalog/ila_0/ila_0.xci \
          ip_catalog/mig_7series_0/mig_7series_0.xci

XDC_SRC := constraints/vc709.xdc\
           ip_catalog/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc

TCL_SRC := scripts/vivado_createprj.tcl  \
           scripts/vivado_synth.tcl      \
           scripts/vivado_place.tcl      \
           scripts/vivado_route.tcl      \
           scripts/vivado_bitstream.tcl


all: bitstream

prj: ddos.xpr
ddos.xpr: $(TCL_SRC) $(INC_SRC) $(RTL_SRC) $(IP_SRC) $(XDC_SRC)
	test -e $(outdir) || mkdir $(outdir)
	vivado -mode batch -source scripts/vivado_createprj.tcl -log $(outdir)/createprj_log.txt -nojournal -tclargs "$(INC_SRC) $(RTL_SRC)" "$(IP_SRC)" "$(XDC_SRC)"

synth: $(outdir)/post_syn.dcp
$(outdir)/post_syn.dcp: $(TCL_SRC) $(INC_SRC) $(RTL_SRC) $(IP_SRC) $(XDC_SRC)
	test -e $(outdir) || mkdir $(outdir)
	vivado -mode batch -source scripts/vivado_synth.tcl -log $(outdir)/syn_log.txt -nojournal -tclargs "$(INC_SRC) $(RTL_SRC)" "$(IP_SRC)" "$(XDC_SRC)"

place: $(outdir)/post_place.dcp
$(outdir)/post_place.dcp: $(outdir)/post_syn.dcp
	vivado -mode batch -source scripts/vivado_place.tcl -log $(outdir)/place_log.txt -nojournal

route: $(outdir)/post_route.dcp
$(outdir)/post_route.dcp: $(outdir)/post_place.dcp
	vivado -mode batch -source scripts/vivado_route.tcl -log $(outdir)/route_log.txt -nojournal

bitstream: $(outdir)/$(proj).bit
$(outdir)/$(proj).bit: $(outdir)/post_route.dcp
	vivado -mode batch -source scripts/vivado_bitstream.tcl -log $(outdir)/bitstream_log.txt -nojournal

program: $(outdir)/$(proj).bit
	vivado -mode batch -source scripts/vivado_program.tcl -log $(outdir)/program_log.txt -nojournal


#sim: sim-verilator
#
#lint: $(INC_SRC) $(RTL_SRC)
#	verilator -Wall --lint-only --cc --top-module $(sim_top) -sv $(INC_SRC) $(RTL_SRC)

#sim-verilator:
#	verilator -Wall -DSIMULATION --cc --trace --top-module $(sim_top) -sv $(INC_SRC) $(SIM_SRC) --exe $(VERILATOR_SRC)
#	make -j -C obj_dir/ -f V$(sim_top).mk V$(sim_top)
#	obj_dir/V$(sim_top)

synth-clean:
	rm -f fsm_encoding.os usage_stat*
	rm -rf build .Xil
	rm -rf *.jou *.log *.mif *.hw  *.ip_user_files *.cache  *.sim *.runs *.srcs

sim-clean:
	rm -f wave.vcd
	rm -rf obj_dir

.PHONY: clean
clean: sim-clean synth-clean

.PHONY: distclean
distclean:
	git clean -Xdf
