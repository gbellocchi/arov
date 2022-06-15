# =====================================================================
# Title:        vsim.mk
#
# $Date:        18.1.2022
# =====================================================================
#
# Copyright (C) 2021 University of Modena and Reggio Emilia.
#
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

ROOT 					:= $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

TEST_PATH 				:= $(realpath ${ROOT}/../test )
SLM_FILES 				:= $(TEST_PATH)/slm_files

# =====================================================================
# Description:  Application test.
# =====================================================================

TEST_APP_CURRENT := $(realpath ${SRC_PATH}/${TARGET_OV}/test/sw )

# ----------------------------------------------------------------------------------------------------- #
# ETHZ

# TCDM model ~ Performance model
PAPER_TCDM_HOM := $(realpath ${ESWEEK_DIR}/sw/experiments/tcdm_model/performance_model/hom_exec/ )
PAPER_TCDM_HET := $(realpath ${ESWEEK_DIR}/sw/experiments/tcdm_model/performance_model/het_exec/ )
PAPER_TCDM_WORST := $(realpath ${ESWEEK_DIR}/sw/experiments/tcdm_model/performance_model/worst_case/ )

# TCDM model ~ Performance scaling
PAPER_TCDM_SCALING := $(realpath ${ESWEEK_DIR}/sw/experiments/tcdm_model/performance_scaling/ )

# System model ~ Performance model
PAPER_SYSTEM_MULTI_CL := $(realpath ${ESWEEK_DIR}/sw/experiments/system_model/multi_cl_scaling/hello-multi-cl/ )

# System model ~ Performance scaling
PAPER_SYSTEM_DMA_SHARE := $(realpath ${ESWEEK_DIR}/sw/experiments/system_model/dma_sharing/ )
# ----------------------------------------------------------------------------------------------------- #
# UNISS

# AES-128
C4D_AES := $(realpath ${ESWEEK_DIR}/sw/experiments/tcdm_model/performance_model/hom_exec/ )
# ----------------------------------------------------------------------------------------------------- #
TEST_APP_ASAP_NCL2 := $(realpath ${SRC_PATH}/asap_test_traffic/test/sw )
TEST_APP_MDC_6WR := $(realpath ${SRC_PATH}/ov_mdc_lic6wr/test/sw )
TEST_HERO := $(realpath ${HERO_OV_OPENMP_TESTS}/helloworld)

TEST_APP := ${TEST_HERO}

# =====================================================================
# Description:  QuestaSim GUI.
# =====================================================================

GUI := 1

all: compile gen_slm_files start_sim

start_sim: 
	@echo -e '>> Start simulation.'
	@./$@.sh ${TARGET_OV} ${GUI}
	
gen_slm_files:
	@echo -e '>> Searching for software test in $(TEST_APP).'
	@$(TEST_PATH)/$@.sh $(TEST_APP) $(SLM_FILES)

compile:
	@echo -e '>> Compiling RTL.'
	@./$@.sh

clean:
	@rm -rf work
	@rm -f $(SLM_FILES)/*
	@rm -f compile.tcl vsim.wlf modelsim.ini transcript vivado* *.log *.bak
	@rm -rf work modelsim_libs

