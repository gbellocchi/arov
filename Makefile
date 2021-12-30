# =====================================================================
# Title:        Makefile
#
# $Date:        28.12.2021
#
# =====================================================================
#
# Copyright (C) 2021 University of Modena and Reggio Emilia.
#
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

ROOT 					:= $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

VLOG_ARGS += -suppress vlog-2583 -suppress vlog-13314 -suppress vlog-13233

BENDER 					:= ${ROOT}/bender

# =====================================================================
# Description:  Choose a target overlay configuration to be generated.
# =====================================================================

TARGET_OV               := ov_a

# Recipes

vsim/compile.tcl: bender
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > $@
	cd ov_cfg/${TARGET_OV} && ${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> ${ROOT}/$@
bender: Makefile
	curl --proto '=https' --tlsv1.2 -sSf https://fabianschuiki.github.io/bender/init | sh -s 0.21.0
	touch bender
clean:
	rm -rf Bender.local
