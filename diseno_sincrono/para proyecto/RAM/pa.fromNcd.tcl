
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name RAM -dir "C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM/planAhead_run_3" -part xc3s500efg320-5
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM/circ_arit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM} }
set_property target_constrs_file "circ_arit.ucf" [current_fileset -constrset]
add_files [list {circ_arit.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM/circ_arit.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM/circ_arit.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM/circ_arit.twx\": $eInfo"
}
