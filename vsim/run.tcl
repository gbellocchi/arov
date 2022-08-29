# =====================================================================
# Title:        run.tcl
#
# $Date:        18.1.2022
# =====================================================================
#
# Authors: 
#   - Andreas Kurth, ETH Zurich
#   - Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

# source files
set src_path $env(SRC_PATH)

# overlay configuration
set target_ov $env(TARGET_OV)

echo ""
echo "\[tcl\] >> Starting simulation of overlay configuration <$target_ov>"
echo ""

vsim -suppress 16154 -suppress 14408 -suppress 3839 -voptargs="+acc" -t 1ps -warning 3009 overlay_tb
set StdArithNoWarnings 1
set NumericStdNoWarnings 1
set BreakOnAssertion 2;# break also on assertion errors

# read wave files
if { ! [batch_mode] } {
    set directory "$src_path/$target_ov/test/waves"
    set files [glob [file join $directory *.wave.do]]
    foreach f $files {
        source $f
        echo "\t- $f"
    }
}

onfinish stop
run -a

# Set `quitCode` variable (to be used for the exit code) to `1` if the simulation terminated in an
# unknown state (e.g., due to a `$fatal`) and to `0` otherwise.
quietly set quitCode [expr [string match "*unknown" [runStatus -full]] ? 1 : 0]

# If the simulation terminated regularly, ..
if {! $quitCode } {
    quietly set resRegPath { /overlay_tb/i_peripherals/i_soc_ctrl_regs/i_core_res/reg_q }
    # and the master core EOC'ed properly ..
    if { [examine -radix unsigned $resRegPath[0][31]] } {
        # .. return the value of the `main` function
        quietly set quitCode [examine -radix decimal $resRegPath[0][30:0]]
        printf "PULP execution returned %d." $quitCode
    } else {
        echo "Simulation finished without EOC from master core!"
        quietly set quitCode 1
    }
}
