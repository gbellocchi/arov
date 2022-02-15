# =====================================================================
# Project:      FPGA design build
# Title:        Makefile
# Description:  List of recipes to build and get resource/timing
#				characterization of the design.
#
# $Date:        22.09.2021
#
# =====================================================================
#
# Copyright (C) 2021 University of Modena and Reggio Emilia..
#
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

# =====================================================================
# Variables
# =====================================================================

ROOT := $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

BUILD_TARGET 	:= ov_mdc_saturation
BUILD_DIR 		:= ${ROOT}/build

UTILS_HERO 		:= ${ROOT}/utils/hero
UTILS_VIVADO 	:= ${ROOT}/utils/vivado_ips
UTILS_REPORTS 	:= ${ROOT}/utils/reports

BENDER 			:= ${ROOT}/../bender script vivado
BENDER_FILES 	:= ${ROOT}/../bender ${ROOT}/../Bender.yml ${ROOT}/../Bender.lock

VIVADO 			:= vitis-2019.2 vivado
VIVADO_OPT 		:=-mode batch

# =====================================================================

.PHONY: all
all: build_target fpga_output reports

# =====================================================================
# Recipes:		Design reports
# =====================================================================

reports_fpga:
	@${VIVADO} ${VIVADO_OPT} -source ${UTILS_REPORTS}/reports.tcl -tclargs ${BUILD_TARGET} ${BUILD_DIR} ${UTILS_REPORTS}

# =====================================================================
# Recipes:		FPGA project
# =====================================================================

open_design:
	@${VIVADO} ${BUILD_DIR}/${BUILD_TARGET}/vivado_prj/hero_exilzcu102.xpr

build_fpga: build_target fpga_output

fpga_output:
	@${VIVADO} ${VIVADO_OPT} -source ${UTILS_HERO}/fpga_out_files.tcl -tclargs ${BUILD_TARGET} ${BUILD_DIR}

build_target: clean_target build_pulp
	@${VIVADO} ${VIVADO_OPT} \
		-source ${UTILS_HERO}/hero_exilzcu102.tcl \
		-tclargs $(BUILD_DIR)/$(BUILD_TARGET)/vivado_prj $(BUILD_DIR)/$(BUILD_TARGET)/vivado_ips

build_pulp: clean_pulp_fpga build_env
	@cd $(BUILD_DIR)/$(BUILD_TARGET)/vivado_ips && ${VIVADO} ${VIVADO_OPT} -source pulp_txilzu9eg.tcl

# =====================================================================
# Recipes:		Build environment
# =====================================================================

build_env: ${BUILD_DIR}/${BUILD_TARGET} fpga_scripts

fpga_scripts: $(BENDER_FILES) $(BUILD_ENV)
	@${BENDER} --only-defines --only-includes > $(BUILD_DIR)/$(BUILD_TARGET)/vivado_ips/define_defines_includes.tcl
	@${BENDER} --only-defines --only-includes --no-simset > $(BUILD_DIR)/$(BUILD_TARGET)/vivado_ips/define_defines_includes_no_simset.tcl
	@${BENDER} --only-sources > $(BUILD_DIR)/$(BUILD_TARGET)/vivado_ips/define_sources.tcl

${BUILD_DIR}/${BUILD_TARGET}:
	@echo "FPGA build directory -> $@"
	@mkdir -p $@/vivado_ips
	@cp ${UTILS_VIVADO}/* $@/vivado_ips
	@cp ../ov_cfg/${BUILD_TARGET}/ip/* $@/vivado_ips

../bender: ../Makefile
	@make -C .. bender

# =====================================================================
# Recipes:		Utils
# ===================================================================== 

clean_target:
	@rm -rf $(BUILD_DIR)/$(BUILD_TARGET)

clean_pulp_fpga:
	@rm -rf ${BUILD_DIR}/${BUILD_TARGET}/vivado_ips/{component.xml,define_*.tcl}
	@rm -rf ${BUILD_DIR}/${BUILD_TARGET}/vivado_ips/{pulp_txilzu9eg,xgui}
	@rm -f ${BUILD_DIR}/${BUILD_TARGET}/{,vivado_ips/}vivado*.{jou,log,str}
