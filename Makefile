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

ARCHEX_PATH 			:= $(realpath ${ROOT}/archex )
FPGA_PATH 				:= $(realpath ${ROOT}/fpga )
SRC_PATH 				:= $(realpath ${ROOT}/ov_cfg )
TEST_PATH 				:= $(realpath ${ROOT}/test )
VSIM_PATH 				:= $(realpath ${ROOT}/vsim )

# =====================================================================
# Description:  Choose a target overlay configuration to be generated.
# =====================================================================

TARGET_OV               := date22_16cl_1tg
TARGET_BOARD            := zcu102

GENOV 					= ${ROOT}/../genov

BENDER 					= ${ROOT}/bender
BENDER_PKG				= ${SRC_PATH}/${TARGET_OV}/Bender.yml
BENDER_LOCK				= ${SRC_PATH}/${TARGET_OV}/Bender.lock

.PHONY: $(BENDER_PKG) $(BENDER_LOCK) vsim vsim2 vsim3 vsim4 fpga

# =====================================================================
# Description:  Export reports for DSE.
# =====================================================================

reports_export:
	cd ${ARCHEX_PATH} && make -s get_reports REPORT_PATH=${FPGA_PATH}/build/${TARGET_OV}/reports REPORT_TARGET=${TARGET_OV}

# =====================================================================
# Description:  FPGA build.
# =====================================================================
fpga: build_fpga reports_fpga

fpga-date-22: build_fpga_date_22 reports_fpga

reports_fpga:
	cd ${FPGA_PATH} && make -s $@ BUILD_TARGET=${TARGET_OV} BOARD_TARGET=${TARGET_BOARD}

reports_ls:
	ls ${FPGA_PATH}/build/${TARGET_OV}/reports

build_fpga_date_22: bender ${BENDER_PKG} ${BENDER_LOCK}
	cd ${FPGA_PATH} && make -s $@ BUILD_TARGET=${TARGET_OV} BOARD_TARGET=${TARGET_BOARD}

build_fpga: bender ${BENDER_PKG} ${BENDER_LOCK}
	cd ${FPGA_PATH} && make -s $@ BUILD_TARGET=${TARGET_OV} BOARD_TARGET=${TARGET_BOARD}
	
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

# morty: Makefile
# 	wget https://github.com/zarubaf/morty/releases/download/v0.6.0/morty-centos.7-x86_64.tar.gz
# 	tar -xf morty-centos.7-x86_64.tar.gz $@
# 	rm -rf morty-centos.7-x86_64.tar.gz

bender: Makefile
	curl --proto '=https' --tlsv1.2 -sSf https://fabianschuiki.github.io/bender/init | sh -s 0.21.0
	touch $@

clean:
	@rm -rf .bender
	@rm -rf Bender.yml
	@rm -rf Bender.lock
	@rm -rf vsim/compile.tcl
