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
create_project -part ${device} -in_memory

set_property target_language Verilog [current_project]
set_property default_lib "xil_defaultlib" [current_project]
#set_property verilog_define { {DRAM_SUPPORT=1} } [current_fileset]

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
	} elseif {[string match *.dcp $file]} {
		puts "INFO: Import DCP $file"
		read_checkpoint $file
	} else {
		puts "INFO: Unsupported File $file" 
	}
}

generate_target {synthesis simulation} [get_ips]

#set_property strategy Flow_PerfOptimized_High [get_runs synth_1]
#set_property steps.phys_opt_design.is_enabled true [get_runs impl_1]
#set_property strategy Performance_Explore [get_runs impl_1]

synth_design -name dnskv -part ${device} -top top -verilog_define DRAM_SUPPORT

report_utilization -file ${outdir}/post_syn_util.txt
report_timing -sort_by group -max_paths 5 -path_type summary -file ${outdir}/post_synth_timing.txt
write_checkpoint -force ${outdir}/post_syn
