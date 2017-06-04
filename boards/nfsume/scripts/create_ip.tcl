set device xc7vx690t-3-ffg1761
# Project Settings
create_project -part ${device} -in_memory

set root_dir [pwd]
set mig_module {sume_ddr_mig}
set eth0_module {axi_10g_ethernet_0}
set eth1_module {axi_10g_ethernet_nonshared}
set ip_dir .srcs/

#
# MIG : DDR3 SDRAM
#
create_ip -name mig_7series -vendor xilinx.com -library ip -version 4.0 -module_name ${mig_module}
set_property -dict [list \
	CONFIG.XML_INPUT_FILE {../../../../ip_catalog/sume_ddr_mig/mig_mod.prj} \
	CONFIG.RESET_BOARD_INTERFACE {Custom} \
	CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
	CONFIG.BOARD_MIG_PARAM {Custom}] [get_ips ${mig_module}]
generate_target {instantiation_template} [get_files ${mig_module}.xci]
update_compile_order -fileset sources_1
read_ip ${root_dir}/.srcs/sources_1/ip/sume_ddr_mig/sume_ddr_mig.xci 
synth_ip -force [get_files ${root_dir}/.srcs/sources_1/ip/sume_ddr_mig/sume_ddr_mig.xci]

# dcp copy
file copy -force ${root_dir}/.srcs/sources_1/ip/${mig_module}/${mig_module}.dcp ${root_dir}/ip_catalog/${mig_module}/
file copy -force ${root_dir}/.srcs/sources_1/ip/${mig_module}/${mig_module}.xci ${root_dir}/ip_catalog/${mig_module}/

#
# Ethernet MAC : eth0
#
create_ip -name axi_10g_ethernet -vendor xilinx.com -library ip -version 3.1 -module_name ${eth0_module}
set_property -dict [list \
	CONFIG.BASE_KR {BASE-R} \
	CONFIG.MAC_and_BASER_32 {64bit} \
	CONFIG.speed10_25 {10Gig} \
	CONFIG.DRP {false} \
	CONFIG.Locations {X0Y0} \
	CONFIG.Enable_Priority_Flow_Control {false} \
	CONFIG.Management_Frequency {200.00} \
	CONFIG.IEEE_1588 {None} \
	CONFIG.TIMER_CLK_PERIOD {5000} \
	CONFIG.SupportLevel {0} \
	CONFIG.Management_Interface {false} \
	CONFIG.no_ebuff {false} \
	CONFIG.RefClkRate {156.25} \
	CONFIG.Timer_Format {Time_of_day} \
	CONFIG.RefClk {clk0} \
	CONFIG.Statistics_Gathering {0} \
	CONFIG.vu_gt_type {GTH} \
	CONFIG.TransceiverControl {0} \
	CONFIG.autonegotiation {0}\
	CONFIG.fec {0}] [get_ips ${eth0_module}]
generate_target {instantiation_template} [get_files ${eth0_module}.xci]
#update_compile_order -fileset sources_1
#read_ip ${root_dir}/.srcs/sources_1/ip/${eth0_module}/${eth0_module}.xci 
#synth_ip -force [get_files ${root_dir}/.srcs/sources_1/ip/${eth0_module}/${eth0_module}.xci]

# dcp copy
#file copy -force ${root_dir}/.srcs/sources_1/ip/${eth0_module}/${eth0_module}.dcp ${root_dir}/ip_catalog/${eth0_module}/
file copy -force ${root_dir}/.srcs/sources_1/ip/${eth0_module}/${eth0_module}.xci ${root_dir}/ip_catalog/${eth0_module}/


#
# Ethernet MAC : eth1
#
create_ip -name axi_10g_ethernet -vendor xilinx.com -library ip -version 3.1 -module_name ${eth1_module}
set_property -dict [list \
	CONFIG.BASE_KR {BASE-R} \
	CONFIG.MAC_and_BASER_32 {64bit} \
	CONFIG.speed10_25 {10Gig} \
	CONFIG.DRP {false} \
	CONFIG.Locations {X0Y0} \
	CONFIG.Enable_Priority_Flow_Control {false} \
	CONFIG.Management_Frequency {200.00} \
	CONFIG.IEEE_1588 {None} \
	CONFIG.TIMER_CLK_PERIOD {5000} \
	CONFIG.SupportLevel {1} \
	CONFIG.Management_Interface {false} \
	CONFIG.no_ebuff {false} \
	CONFIG.RefClkRate {156.25} \
	CONFIG.Timer_Format {Time_of_day} \
	CONFIG.RefClk {clk0} \
	CONFIG.Statistics_Gathering {false} \
	CONFIG.vu_gt_type {GTH} \
	CONFIG.TransceiverControl {false} \
	CONFIG.autonegotiation {false}\
	CONFIG.fec {false}] [get_ips ${eth1_module}]
generate_target {instantiation_template} [get_files ${eth1_module}.xci]
#update_compile_order -fileset sources_1
#read_ip ${root_dir}/.srcs/sources_1/ip/${eth1_module}/${eth1_module}.xci 
#synth_ip -force [get_files ${root_dir}/.srcs/sources_1/ip/${eth1_module}/${eth1_module}.xci]

# dcp copy
#file copy -force ${root_dir}/.srcs/sources_1/ip/${eth1_module}/${eth1_module}.dcp ${root_dir}/ip_catalog/${eth0_module}/
file copy -force ${root_dir}/.srcs/sources_1/ip/${eth1_module}/${eth1_module}.xci ${root_dir}/ip_catalog/${eth1_module}/


