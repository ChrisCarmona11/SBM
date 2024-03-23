# Cuarto paso generar los bitstream general y parciales.

open_checkpoint ImplementConfig_wbs_add_implementtop_route_design.dcp

write_bitstream -force -file BitstreamsConfig_wbs_add.bit
close_project

open_checkpoint ImplementConfig_wbs_mult_importtop_route_design.dcp

write_bitstream -force -file BitstreamsConfig_wbs_mult.bit
close_project

open_checkpoint ImplementConfig_wbs_pwm_importtop_route_design.dcp

write_bitstream -force -file BitstreamsConfig_wbs_pwm.bit
close_project

open_checkpoint Checkpointstatic_route_design.dcp
update_design -cell inst_wbs -buffer_ports
place_design
route_design
write_checkpoint -force CheckpointConfig_greybox.dcp
write_bitstream -force -file Bitstreamsconfig_greybox.bit
close_project