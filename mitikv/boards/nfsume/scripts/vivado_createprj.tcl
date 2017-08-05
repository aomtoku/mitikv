set RTL_SRC [lindex $argv 0]
puts "INFO: RTL_SRC"
puts ${RTL_SRC}
set IP_SRC [lindex $argv 1]
puts "INFO: IP_SRC"
puts ${IP_SRC}
set XDC_SRC [lindex $argv 2]
puts "INFO: XDC_SRC"
puts ${XDC_SRC}

set design top
set device xc7vx690t-3-ffg1761
set outdir build

# Project Settings
#create_project -part ${device} -in_memory
create_project -name dnskv -force -part ${device}

set_property top top [get_filesets sources_1]
set_property target_language Verilog [current_project]
set_property default_lib work [current_project]
set_property verilog_define { {DRAM_SUPPORT=1} } [current_fileset]

update_ip_catalog -rebuild

puts "INFO: Import XDC Sources ..."
read_xdc ${XDC_SRC}

puts "INFO: Import RTL Sources ..."
foreach file $RTL_SRC {
	# verilog
	if {[string match *.v $file]} {
		puts "INFO: Import $file (Verilog)"
		read_verilog $file
	} elseif {[string match *.sv $file]} {
		puts "INFO: Import $file (SystemVerilog)"
		read_verilog -sv $file
	} elseif {[string match *.vhd $file] || [string match *.vhdl $file]} {
		puts "INFO: Import $file (VHDL)"
		read_vhdl $file
	} else {
		puts "INFO: Unsupported File $file"    
	}
}

set root_dir [pwd]
set mig_module {sume_ddr_mig}
set ip_dir .srcs/

puts ${root_dir}/ip_catalog/${mig_module}/mig_b.prj
create_ip -name mig_7series -vendor xilinx.com -library ip -version 4.0 -module_name ${mig_module}
set_property -dict [list \
	CONFIG.XML_INPUT_FILE {/home/aom/work/mitigator/mitikv/boards/nfsume/ip_prj/mig_mod.prj} \
	CONFIG.RESET_BOARD_INTERFACE {Custom} \
	CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
	CONFIG.BOARD_MIG_PARAM {Custom}] [get_ips ${mig_module}]
generate_target {instantiation_template} [get_files ${mig_module}.xci]
update_compile_order -fileset sources_1
read_ip /home/aom/work/mitigator/mitikv/boards/nfsume/dnskv.srcs/sources_1/ip/sume_ddr_mig/sume_ddr_mig.xci 
synth_ip -force [get_files /home/aom/work/mitigator/mitikv/boards/nfsume/dnskv.srcs/sources_1/ip/sume_ddr_mig/sume_ddr_mig.xci]

puts "INFO: Import IP Sources ..."
foreach file $IP_SRC {
	if {[string match *.xci $file]} {
		puts "INFO: Import IP $file"
		read_ip $file
		set_property GENERATE_SYNTH_CHECKPOINT FALSE [get_files $file]
		#synth_ip -force [get_files $file]
	} elseif {[string match *.xcix $file]} {
		puts "INFO: Import IP $file"
		read_ip $file
		#set_property GENERATE_SYNTH_CHECKPOINT FALSE [get_files $file]
	} elseif {[string match *.dcp $file]} {
		puts "INFO: Import DCP $file"
		read_checkpoint $file
	} else {
		puts "INFO: Unsupported File $file" 
	}
}
#puts "INFO: Import IP Sources ..."
#foreach file $IP_SRC {
#	read_ip $file
#	synth_ip -force [get_files $file]
##	synth_ip [get_files $file]
#}

generate_target {synthesis simulation} [get_ips]

