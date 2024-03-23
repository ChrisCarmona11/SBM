

####Pblock pblock_inst_wbs####
create_pblock pblock_inst_wbs
add_cells_to_pblock [get_pblocks pblock_inst_wbs] [get_cells {inst_wbs}]
resize_pblock [get_pblocks pblock_inst_wbs] -add {SLICE_X28Y75:SLICE_X43Y98}
resize_pblock [get_pblocks pblock_inst_wbs] -add {DSP48_X2Y30:DSP48_X2Y37}
resize_pblock [get_pblocks pblock_inst_wbs] -add {RAMB18_X2Y30:RAMB18_X2Y37}
resize_pblock [get_pblocks pblock_inst_wbs] -add {RAMB36_X2Y15:RAMB36_X2Y18}
set_property SNAPPING_MODE ON [get_pblocks pblock_inst_wbs]
set_property CONTAIN_ROUTING 1 [get_pblocks pblock_inst_wbs]
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_inst_wbs]
set_property RESET_AFTER_RECONFIG 1 [get_pblocks pblock_inst_wbs]
