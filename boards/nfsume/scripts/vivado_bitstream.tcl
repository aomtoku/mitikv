set outdir build

open_checkpoint $outdir/post_route.dcp
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
write_bitstream -force $outdir/dnskv.bit
write_debug_probes -file $outdir/dnskv.ltx -force
