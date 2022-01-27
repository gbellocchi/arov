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
puts "System-level integration of $design_name accelerator IP using standard Xilinx methodology"

# Vivado project location.
set vivado_dir [lindex $argv 1]
set prj_dir "$vivado_dir/$design_name"
puts "Vivado project is going to be located in $prj_dir"

# Design reports location.
set reports_dir [lindex $argv 2]
puts "Location of design reports: $reports_dir"

# open project
open_project ${prj_dir}/${design_name}.xpr
update_compile_order -fileset sources_1

# open implemented design
open_run impl_1

# utilization report
report_utilization \
    -file ${reports_dir}/acc_0_utilization.rpt \
    -hierarchical \
    -hierarchical_depth 4 \
    -cells [ \
        get_cells hero_exilzcu102_i/i_pulp/inst/i_bound/i_bound/gen_clusters[0].gen_cluster_sync.i_cluster/i_ooc/i_bound/hwpe_gen.hwpe_wrap_i/i_hwpe_top_wrap]