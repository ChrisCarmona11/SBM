# Primer paso para la reconfiguración parcial dinamica:

source run_pr.tcl -notrace

set part xc7z020-clg484-1

set board zedboard

create_project -in_memory -part $part

add_files .SynthStatictop_synth.dcp

add_files .Sourcesxdctop_io_$board.xdc

set_property USED_IN {implementation} [get_files .Sourcesxdctop_io_$board.xdc]

add_files .Synthwbs_addwbs_synth.dcp

set_property SCOPED_TO_CELLS {inst_wbs} [get_files .Synthwbs_addwbs_synth.dcp]

link_design -mode default -reconfig_partitions {inst_wbs} -part $part -top top

write_checkpoint -force .Checkpointtop_link_wbs_add.dcp

write_xdc .Sourcesxdctop_all.xdc

source .Tcl_HDhd_utils.tcl

export_pblocks -file .Sourcesxdcpblocks.xdc

opt_design

place_design

route_design

write_checkpoint -force ImplementConfig_wbs_add_implementtop_route_design.dcp

report_utilization -file ImplementConfig_wbs_add_implementtop_utilization.rpt

report_timing_summary -file ImplementConfig_wbs_add_implementtop_timing_summary.rpt

update_design -cell inst_wbs -black_box

lock_design -level routing

write_checkpoint -force Checkpointstatic_route_design.dcp

close_project