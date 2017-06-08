
vlib work

#Map the required libraries here#
vmap unisims_ver /opt/simlib/unisims_ver
vmap unisim      /opt/simlib/unisim
vmap secureip    /opt/simlib/secureip

#Compile all modules#
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_arb_select.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_common.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_bank_state.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_col_mach.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_mc.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_rank_common.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_std.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/phy/mig_7series_v4_0_poc_top.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ui/mig_7series_v4_0_ui_top.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/sume_ddr_mig.v
vlog ../ip_catalog/sume_ddr_mig/sume_ddr_mig/user_design/rtl/sume_ddr_mig_mig_sim.v


# IP Netlist for Simulation
vlog axi_10g_ethernet_0_sim_netlist.v
vlog axi_10g_ethernet_nonshared_sim_netlist.v
vlog axis_data_fifo_0_sim_netlist.v
vlog axis_interconnect_0_sim_netlist.v
vlog ../ip_catalog/asfifo_160_64/asfifo_160_64_sim_netlist.v
vlog ../ip_catalog/asfifo_32_64/asfifo_32_64_sim_netlist.v
vlog ../ip_catalog/asfifo_608_64/asfifo_608_64_sim_netlist.v

# DB's RTL
vlog +define+SIMULATION_DEBUG +define+DRAM_SUPPORT ../../../cores/db/rtl/db_top.v
vlog +define+SIMULATION_DEBUG +define+DRAM_SUPPORT ../../../cores/db/rtl/db_cont.v
vlog ../../../cores/db/rtl/crc32.v

#Compile files in sim folder (excluding model parameter file)#
vlog +define+SIMULATION_DEBUG +define+DRAM_SUPPORT ../rtl/top.v 
vlog +define+SIMULATION_DEBUG ../rtl/eth_top.v
vlog +define+DEBUG ../rtl/eth_encap.v
vlog ../rtl/eth_mac_conf.v
vlog ../rtl/pcs_pma_conf.v
vlog ../rtl/prbs.v
vlog /opt/Xilinx/Vivado/2016.4/data/verilog/src/glbl.v
vlog wiredly.v
vlog tb_sim.v

#Pass the parameters for memory model parameter file#
vlog -sv +define+x4Gb +define+sg107E +define+x8 ddr3_model.sv

#Load the design. Use required libraries.#
vsim -t ps -novopt +notimingchecks  -L unisims_ver -L secureip work.tb_sim glbl

onerror {resume}
#Log all the objects in design. These will appear in .wlf file#
#This helps in viewing all signals of the design instead of 
#re-running the simulation for viewing the signals.
#Uncomment below line to log all objects in the design. 
#log -r /*

#View sim_tb_top signals in waveform#
add wave sim:/tb_sim/*
add wave sim:/tb_sim/u_top/u_db_top/u_db_cont/*
#add wave sim:/tb_sim/u_top/u_eth_top/*
add wave sim:/tb_sim/u_top/u_eth_top/u_eth_encap/*
#Change radix to Hexadecimal#
radix hex
#Supress Numeric Std package and Arith package warnings.#
#For VHDL designs we get some warnings due to unknown values on some signals at startup#
# ** Warning: NUMERIC_STD.TO_INTEGER: metavalue detected, returning 0#
#We may also get some Arithmetic packeage warnings because of unknown values on#
#some of the signals that are used in an Arithmetic operation.#
#In order to suppress these warnings, we use following two commands#
set NumericStdNoWarnings 1
set StdArithNoWarnings 1

# Choose simulation run time by inserting a breakpoint and then run for specified #
# period. For more details, refer to user guide (UG586).#
# Status reporting logic exists both in simulation test bench (sim_tb_top)
# and sim.do file for ModelSim. Any update in simulation run time or time out
# in this file need to be updated in sim_tb_top file as well.
when {/tb_sim/init_calib_complete = 1} {
	if {[when -label a_100] == ""} {
		when -label a_100 { $now = 50 us } {
			nowhen a_100
			report simulator control
			report simulator state
			if {[examine /tb_sim/tg_compare_error] == 0} {
				echo "TEST PASSED"
				stop
			}
			if {[examine /tb_sim/tg_compare_error] != 0} {
				echo "TEST FAILED: DATA ERROR"
				stop
			}
		}
	}
}

#In case calibration fails to complete, choose the run time and then stop#
when {$now = @1000 us and /tb_sim/init_calib_complete != 1} {
	echo "TEST FAILED: CALIBRATION DID NOT COMPLETE"
	stop
}

run -all
stop
