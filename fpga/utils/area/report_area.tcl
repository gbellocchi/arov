# =====================================================================
# Project:      FPGA build
# Title:        reports.tcl
# Description:  TCL script to generate Vivado reports.
#
# $Date:        15.09.2021
# =====================================================================
#
# Copyright (C) 2022 University of Modena and Reggio Emilia.
#
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

# ========= #
# Variables #
# ========= #

# Following variables are set global for other sub-scripts to access 
# them as source command does allow for additional arguments to be passed

# Design name
set ::design_name [lindex $argv 0]

# Board name
set ::board_name [lindex $argv 1]

# Build directory
set ::build_dir [lindex $argv 2]

# Area utils directory
set ::area_utils [lindex $argv 3]

# Project directory
set ::prj_dir "$build_dir/$design_name/vivado_prj"

# Reports directory
set ::reports_dir "$build_dir/$design_name/reports"

file mkdir $reports_dir

# =================== #
# Open target project #
# =================== #

# open project
open_project ${prj_dir}/hero_exil$board_name\.xpr
update_compile_order -fileset sources_1

# ================================================= #
# Create utilization reports for synthesized design #
# ================================================= #

# Design run type
set ::design_run_type "synth"
set ::design_run_name "synth_1"

# Design run state
set ::design_run_status [get_property STATUS [get_runs $design_run_name]]
set ::design_run_progress [get_property PROGRESS [get_runs $design_run_name]]

# Open runlist 
set runlist [get_runs $design_run_type*]

# Check if run exist
if {[regexp -- $design_run_name $runlist]} {

    # Check if run has completed
    if { [regexp -- Complete $design_run_status] && [regexp -- 100% $design_run_progress]} {

        # Open design run
        open_run $design_run_name

        # Export report into CSV
        source $area_utils/get_util_csv.tcl

    }
}

# ================================================= #
# Create utilization reports for implemented design #
# ================================================= #

# Design run type
set ::design_run_type "impl"
set ::design_run_name "impl_1"

# Design run state
set ::design_run_status [get_property STATUS [get_runs $design_run_name]]
set ::design_run_progress [get_property PROGRESS [get_runs $design_run_name]]

# Open runlist 
set runlist [get_runs $design_run_type*]

# Check if run exist
if {[regexp -- $design_run_name $runlist]} {

    # Check if run has completed
    if { [regexp -- Complete $design_run_status] && [regexp -- 100% $design_run_progress]} {

        # Open design run
        open_run $design_run_name

        # Export report into CSV
        source $area_utils/get_util_csv.tcl

    }
}