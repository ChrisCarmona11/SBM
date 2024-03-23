

####Pblock pblock_inst_wbs####
create_pblock pblock_inst_wbs
add_cells_to_pblock [get_pblocks pblock_inst_wbs] [get_cells {inst_wbs}]
resize_pblock [get_pblocks pblock_inst_wbs] -add {SLICE_X26Y52:SLICE_X49Y74}
resize_pblock [get_pblocks pblock_inst_wbs] -add {DSP48_X2Y22:DSP48_X2Y29}
resize_pblock [get_pblocks pblock_inst_wbs] -add {RAMB18_X2Y22:RAMB18_X2Y29}
resize_pblock [get_pblocks pblock_inst_wbs] -add {RAMB36_X2Y11:RAMB36_X2Y14}
set_property SNAPPING_MODE ROUTING [get_pblocks pblock_inst_wbs]
set_property CONTAIN_ROUTING 1 [get_pblocks pblock_inst_wbs]
set_property EXCLUDE_PLACEMENT 1 [get_pblocks pblock_inst_wbs]
set_property RESET_AFTER_RECONFIG 1 [get_pblocks pblock_inst_wbs]
