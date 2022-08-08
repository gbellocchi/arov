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

vsim11: vsim11_clean vsim11_script
	cd vsim11 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim11_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim11/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim11/compile.tcl

vsim11_clean:
	cd vsim11 && make -s clean

########################################################################################

vsim10: vsim10_clean vsim10_script
	cd vsim10 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim10_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim10/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim10/compile.tcl

vsim10_clean:
	cd vsim10 && make -s clean

########################################################################################
vsim9: vsim9_clean vsim9_script
	cd vsim9 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim9_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim9/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim9/compile.tcl

vsim9_clean:
	cd vsim9 && make -s clean

########################################################################################

vsim8: vsim8_clean vsim8_script
	cd vsim8 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim8_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim8/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim8/compile.tcl

vsim8_clean:
	cd vsim8 && make -s clean

########################################################################################
vsim7: vsim7_clean vsim7_script
	cd vsim7 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim7_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim7/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim7/compile.tcl

vsim7_clean:
	cd vsim7 && make -s clean

########################################################################################

vsim6: vsim6_clean vsim6_script
	cd vsim6 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim6_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim6/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim6/compile.tcl

vsim6_clean:
	cd vsim6 && make -s clean

########################################################################################

vsim5: vsim5_clean vsim5_script
	cd vsim5 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim5_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim5/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim5/compile.tcl

vsim5_clean:
	cd vsim5 && make -s clean

########################################################################################

vsim4: vsim4_clean vsim4_script
	cd vsim4 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim4_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim4/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim4/compile.tcl

vsim4_clean:
	cd vsim4 && make -s clean

########################################################################################

vsim3: vsim3_clean vsim3_script
	cd vsim3 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim3_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim3/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim3/compile.tcl
vsim3_clean:
	cd vsim3 && make -s clean

########################################################################################

vsim2: vsim2_clean vsim2_script
	cd vsim2 && make -s all SRC_PATH=${SRC_PATH} TARGET_OV=${TARGET_OV}

vsim2_script: bender ${BENDER_PKG} ${BENDER_LOCK}
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > vsim2/compile.tcl
	${BENDER} script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> vsim2/compile.tcl

vsim2_clean:
	cd vsim2 && make -s clean

########################################################################################

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
