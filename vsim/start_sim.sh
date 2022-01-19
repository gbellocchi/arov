# =====================================================================
# Title:        start_sim.sh
#
# $Date:        18.1.2022
# =====================================================================
#
# Copyright (C) 2021 University of Modena and Reggio Emilia.
#
# Authors: 
#   - Andreas Kurth, ETH Zurich
#   - Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

#!/usr/bin/env bash

set -e

error_exit()
{
  echo -e "\n$1\n" 1>&2
  exit 1
}

readonly vsim_gui="$1"
readonly target_ov="$2"

# UNIMORE setup
if [ $UNIMORE -eq 1 ]; then
    if [ $vsim_gui -eq 1 ]; then
        # Run in GUI mode and silence console output.
        echo "UNIMORE setup - GUI mode"
        sleep 1s
        vsim -do 'source run.tcl' &>/dev/null
    else
        # Run in console-only mode.
        echo "UNIMORE setup - Console-only mode"
        sleep 1s
        vsim -c -do 'source run.tcl; quit -code $quitCode'
    fi
elif [ $IIS -eq 1 ]; then
    if [ $vsim_gui -eq 1 ]; then
        # Run in GUI mode and silence console output.
        echo "IIS setup - GUI mode"
        sleep 1s
        vsim-10.7b -do 'source run.tcl' &>/dev/null
    else
        # Run in console-only mode.
        echo "IIS setup - Console-only mode"
        sleep 1s
        vsim-10.7b -c -do 'source run.tcl; quit -code $quitCode'
    fi
else
    # Run in GUI mode and silence console output.
    echo "Standard setup - GUI mode"
    vsim -do 'source run.tcl' &>/dev/null
fi