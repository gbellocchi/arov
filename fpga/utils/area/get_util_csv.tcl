# =====================================================================
# Project:      FPGA build
# Title:        get_util_csv.tcl
# Description:  TCL script to create CSV report without interaction with GUI.
#
# $Date:        15.09.2021
# =====================================================================
#
# Copyright (C) 2022 University of Modena and Reggio Emilia.
#
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

# Get utilization report from Vivado as string
set reportLines [split [report_utilization -hierarchical -return_string -hierarchical_depth 20] "\n"]

# Create output CSV
set csv_file "$reports_dir/$design_name\_$design_run_type\_utilization.csv"
set fh [open $csv_file w]

# Process report for use with ArchEx
set writelines false
foreach line $reportLines {
	if {[regexp {\\+[\+-]\+} $line]} {
		set writelines true
	}
	if {[regexp {^\|} $line]} {
		puts $fh [regsub -all {\|} [regsub -all {.\|.} $line ","] ""]
	}
}
close $fh