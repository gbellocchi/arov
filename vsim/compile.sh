# =====================================================================
# Title:        compile.sh
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

if [ -z "$VSIM" ]; then
    VSIM="vsim-10.7b"
fi
readonly VSIM

# make -C .. vsim/compile.tcl

${VSIM} -c -do 'source compile.tcl; quit'
