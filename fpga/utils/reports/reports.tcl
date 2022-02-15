# =====================================================================
# Project:      Implementation reports
# Title:        reports.tcl
# Description:  TCL script to generate Vivado reports.
#
# $Date:        15.09.2021
# =====================================================================
#
# Copyright (C) 2022 University of Modena and Reggio Emilia..
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

# Build directory
set ::build_dir [lindex $argv 1]

# Report utils directory
set ::reports_util [lindex $argv 2]

# Project directory
set ::prj_dir "$build_dir/$design_name/vivado_prj"

# Reports directory
set ::reports_dir "$build_dir/$design_name/reports"

# ================== #
# Open target design #
# ================== #

file mkdir $reports_dir

# open project
open_project ${prj_dir}/hero_exilzcu102.xpr
update_compile_order -fileset sources_1

# open implemented design
open_run impl_1

# ================== #
# Utilization report #
# ================== #

source $reports_util/get_util_csv.tcl

# # =============== #
# # Timing reports  #
# # =============== #

# # report - timing check 
# check_timing \
#     -file ${prj_dir}/$design_name\_report_timing_check.rpt 

# # report - summary
# report_timing_summary \
#     -delay_type min_max \
#     -report_unconstrained \
#     -check_timing_verbose \
#     -max_paths 10 \
#     -input_pins \
#     -routable_nets \
#     -file ${reports_dir}/$design_name\_report_timing_summary.rpt 

# # # report - worst timing path
# # report_timing \
# #     -nworst 1 \
# #     -delay_type max \
# #     -sort_by group \                 
# #     -file ${reports_dir}/$design_name\_report_timing_worst.rpt

# # # report - 100 worst paths
# # report_timing \
# #     -max_paths 100 \
# #     -nworst 100 \
# #     -delay_type max \
# #     -sort_by slack \
# #     -file ${reports_dir}/$design_name\_report_timing_worst_100.rpt