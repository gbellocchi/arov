# =====================================================================
# Title:        Makefile
#
# $Date:        28.12.2021
# =====================================================================
#
# Copyright (C) 2021 University of Modena and Reggio Emilia.
#
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

ROOT 					:= $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

FPGA_PATH 				:= $(realpath ${ROOT}/fpga )
SRC_PATH 				:= $(realpath ${ROOT}/ov_cfg )
TEST_PATH 				:= $(realpath ${ROOT}/test )
VSIM_PATH 				:= $(realpath ${ROOT}/vsim )

# =====================================================================
# Description:  Choose a target overlay configuration to be generated.
# =====================================================================

TARGET_OV               = ov_empty

BENDER 					= ${ROOT}/bender
BENDER_PKG				= ${SRC_PATH}/${TARGET_OV}/Bender.yml
BENDER_LOCK				= ${SRC_PATH}/${TARGET_OV}/Bender.lock

.PHONY: $(BENDER_PKG) $(BENDER_LOCK) vsim fpga

# =====================================================================
# Description:  FPGA build.
# =====================================================================

fpga: bender ${BENDER_PKG} ${BENDER_LOCK}
	cd ${FPGA_PATH} && make -s all BUILD_TARGET=${TARGET_OV}
	
# =====================================================================
# Description:  Validation test using QuestaSim.
# =====================================================================

VLOG_ARGS += -suppress vlog-2583 -suppress vlog-13314 -suppress vlog-13233

vsim: vsim_clean vsim_script
	cd ${VSIM_PATH} && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > ${VSIM_PATH}/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> ${VSIM_PATH}/compile.tcl

vsim_clean:
	cd ${VSIM_PATH} && make -s clean

# =====================================================================
# Description:  Setup source management tool.
# =====================================================================

$(BENDER_PKG):
	cp $@ ${ROOT}

$(BENDER_LOCK): 
	cp $@ ${ROOT}
bender: Makefile
	curl --proto '=https' --tlsv1.2 -sSf https://fabianschuiki.github.io/bender/init | sh -s 0.21.0
	touch $@
clean:
	@rm -rf .bender
	@rm -rf Bender.yml
	@rm -rf Bender.lock
	@rm -rf vsim/compile.tcl
