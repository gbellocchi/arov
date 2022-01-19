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

TEST_APP := $(realpath ${SRC_PATH}/${TARGET_OV}/test/sw )

# =====================================================================
# Description:  QuestaSim GUI.
# =====================================================================

VSIM_GUI := 1

all: compile start_sim

start_sim: 
	@echo -e '>> Start simulation.'
	@./$@.sh ${VSIM_GUI} ${TARGET_OV}
	
gen_slm_files:
	@echo -e '>> Searching for software test in $(TEST_APP).'
	@$(TEST_PATH)/$@.sh $(TEST_APP)

compile:
	@echo -e '>> Compiling RTL.'
	@./$@.sh

clean:
	@rm -rf work
	@rm -f $(SLM_FILES)/*
	@rm -f compile.tcl vsim.wlf modelsim.ini transcript vivado* *.log *.bak
	@rm -rf work modelsim_libs

