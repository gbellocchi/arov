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

ROOT := $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

TCL_DIR := tcl
REPORTS_DIR := /usr/scratch2/badile14/gbellocchi/design_fpga/reports

BENDER := ../bender script vivado
BENDER_FILES := ../bender ../Bender.yml ../Bender.lock
DEFINE_TCLS := \
    vivado_ips/define_defines_includes.tcl \
    vivado_ips/define_defines_includes_no_simset.tcl \
    vivado_ips/define_sources.tcl

VIVADO := vitis-2019.2 vivado
VIVADO_OPT :=-mode batch

DESIGN_NAME := hero_exilzcu102

ifeq ($(UNIMORE),0)
	DESIGN_LOCATION := ${ROOT}
endif
ifeq ($(IIS),1)
	DESIGN_LOCATION := ${ROOT}
# ${GBELLOCCHI_SCRATCH2}/design_fpga
endif

.PHONY: all
all: build_fpga

# =====================================================================
# Recipes:		FPGA design reports
# =====================================================================

fpga_reports_util:
	@${VIVADO} ${VIVADO_OPT} -source ${TCL_DIR}/acc_utilization.tcl -tclargs ${DESIGN_NAME} ${DESIGN_LOCATION} ${REPORTS_DIR}

fpga_reports_timing:
	@${VIVADO} ${VIVADO_OPT} -source ${TCL_DIR}/acc_timing.tcl -tclargs ${DESIGN_NAME} ${DESIGN_LOCATION} ${REPORTS_DIR}

# =====================================================================
# Recipes:		FPGA system design build
# =====================================================================

open_design:
	@${VIVADO} ${DESIGN_LOCATION}/${DESIGN_NAME}/${DESIGN_NAME}.xpr

fpga_output:
	@${VIVADO} ${VIVADO_OPT} -source ${TCL_DIR}/fpga_out_files.tcl -tclargs ${DESIGN_NAME} ${DESIGN_LOCATION}

fpga_build: vivado_ips/pulp_txilzu9eg ${DEFINE_TCLS}
	@${VIVADO} ${VIVADO_OPT} -source ${TCL_DIR}/${DESIGN_NAME}.tcl -tclargs ${DESIGN_NAME} ${DESIGN_LOCATION}

vivado_ips/pulp_txilzu9eg: ${DEFINE_TCLS}
	@cd vivado_ips && ${VIVADO} ${VIVADO_OPT} -source pulp_txilzu9eg.tcl

vivado_ips/pulp_txilzu9eg.v: src/pulp.py src/pulp.template_v
	@cd src && ./pulp.py > ../$@

design_location:
	@echo "Target location -> ${DESIGN_LOCATION}"

# =====================================================================
# Recipes:		RTL source management (Bender)
# =====================================================================

vivado_ips/define_defines_includes.tcl: $(BENDER_FILES)
	@${BENDER} --only-defines --only-includes > $@

vivado_ips/define_defines_includes_no_simset.tcl: $(BENDER_FILES)
	@${BENDER} --only-defines --only-includes --no-simset > $@

vivado_ips/define_sources.tcl: $(BENDER_FILES)
	@${BENDER} --only-sources > $@

../bender: ../Makefile
	@make -C .. bender

# =====================================================================
# Recipes:		Utils
# =====================================================================

.PHONY: clean
clean: clean_pulp_fpga clean_hero_fpga

clean_hero_fpga:
	@rm -rf ${DESIGN_LOCATION}/${DESIGN_NAME}

clean_pulp_fpga:
	@rm -f vivado_ips/{component.xml,define_*.tcl}
	@rm -rf vivado_ips/{pulp_txilzu9eg,xgui}
	@rm -f {,vivado_ips/}vivado*.{jou,log,str}
