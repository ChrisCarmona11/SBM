# Tercer paso: Añadir la reconfiguración del esclavo de PWM

create_project -in_memory -part $part

add_files .Checkpointstatic_route_design.dcp

add_files .Synthwbs_multwbs_synth.dcp

set_property SCOPED_TO_CELLS {inst_wbs} [get_files .Synthwbs_pwmwbs_synth.dcp]

link_design -mode default -reconfig_partitions {inst_wbs} -part $part -top top

opt_design

place_design

route_design

write_checkpoint -force ImplementConfig_wbs_pwm_importtop_route_design.dcp

report_utilization -file ImplementConfig_wbs_pwm_importtop_utilization.rpt

report_timing_summary -file ImplementConfig_wbs_pwm_importtop_timing_summary.rpt

pr_verify ImplementConfig_wbs_add_implementtop_route_design.dcp ImplementConfig_wbs_pwm_importtop_route_design.dcp

close_project