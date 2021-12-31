# =====================================================================
# Project:      HWPE kernel adapter
# Title:        hwpe_kernel_adapter.sv
# Description:  Interface between hardware wrapper and accelerated kernel.
#
# $Date:        15.09.2021
#
# Target Processor: PULP cores
# =====================================================================
#
# Copyright (C) 2021 University of Modena and Reggio Emilia..
#
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

# Design name.
set design_name [lindex $argv 0]
puts "Design name: $design_name"

# Vivado project location.
set vivado_dir [lindex $argv 1]
set prj_dir "$vivado_dir/$design_name"
puts "Location of Vivado project: $prj_dir"

# Design reports location.
set reports_dir [lindex $argv 2]
puts "Location of design reports: $reports_dir"

# open project
open_project ${prj_dir}/${design_name}.xpr
update_compile_order -fileset sources_1

# open implemented design
open_run impl_1

# report - timing check 
check_timing \
    -file ${prj_dir}/acc_0_timing_check.rpt 

# report - summary
report_timing_summary \
    -delay_type min_max \
    -report_unconstrained \
    -check_timing_verbose \
    -max_paths 10 \
    -input_pins \
    -routable_nets \
    -file ${reports_dir}/acc_0_timing_summary.rpt 

# report - worst timing path
report_timing \
    -nworst 1 \
    -delay_type max \
    -sort_by group \                 
    -file ${reports_dir}/acc_0_timing_worst.rpt

# report - 100 worst paths
report_timing \
    -max_paths 100 \
    -nworst 100 \
    -delay_type max \
    -sort_by slack \
    -file ${reports_dir}/acc_0_timing_worst_100.rpt