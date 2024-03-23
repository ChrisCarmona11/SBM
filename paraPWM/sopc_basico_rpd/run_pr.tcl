###############################################################
###  Minimum settings required to run PR flow:
###  1. Specify flow steps
###  2. Define target board
###  3. Identify source directories
###  4. Define static module
###  5. Define RPs, and their RM variants
###############################################################
####flow control (1 = run step , 0 = skip step)
set run.topSynth       1 ;#synthesize static
set run.rmSynth        1 ;#synthesize RM variants
set run.prImpl         1 ;#implement each static + RM configuration
set run.prVerify       1 ;#verify RMs are compatible with static
set run.writeBitstream 1 ;#generate full and partial bitstreams

###############################################################
### Define target demo board (select one)
### Valid values: kc705 (default), vc707, vc709, ac701
###############################################################
set xboard        "zedboard"

###############################################################
###  Run Settings
###############################################################
####Input Directories
set srcDir     "./Sources"
set rtlDir     "$srcDir/hdl"
set prjDir     "$srcDir/prj"
set xdcDir     "$srcDir/xdc"
set coreDir    "$srcDir/cores"
set netlistDir "$srcDir/netlist"

####Output Directories
set synthDir  "./Synth"
set implDir   "./Implement"
set dcpDir    "./Checkpoint"
set bitDir    "./Bitstreams"

###############################################################
### Static Module Definition
###############################################################
set top "top"

###############################################################
### RP & RM Definitions (Repeat for each RP)
### 1. Define Reconfigurable Partition (RP) name
### 2. Associate Reconfigurable Modules (RMs) to the RP
###############################################################
set rp1 "wbs"
set rm_variants($rp1) "wbs_add wbs_mult wbs_pwm"


########################################################################
### RM Configurations (Valid combinations of RM variants)
### 1. Define initial configuration: rm_config(initial)
### 2. Define additional configurations: rm_config(xyz)
########################################################################
set module1_variant1 "wbs_add"
set rm_config(initial)   "$rp1 $module1_variant1"
set module1_variant2 "wbs_mult"
set rm_config(reconfig1) "$rp1 $module1_variant2"
set module1_variant3 "wbs_pwm"
set rm_config(reconfig2) "$rp1 $module1_variant3"
########################################################################
### Task / flow portion
########################################################################
# Build the designs
source ./advanced_settings.tcl
source $tclDir/run.tcl

#exit ;#uncomment if running in batch mode
