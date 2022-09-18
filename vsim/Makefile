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

APP_PATH ?=

# =====================================================================
# Description:  QuestaSim GUI.
# =====================================================================

GUI := 1

all: compile gen_slm_files start_sim

start_sim: 
	@echo -e '>> Start simulation.'
	@./$@.sh ${TARGET_OV} ${GUI}
	
gen_slm_files:
	@echo -e '>> Searching for software test in $(APP_PATH).'
	@$(TEST_PATH)/$@.sh $(APP_PATH) $(SLM_FILES)

compile:
	@echo -e '>> Compiling RTL.'
	@./$@.sh

clean:
	@rm -rf work
	@rm -f $(SLM_FILES)/*
	@rm -f compile.tcl vsim.wlf modelsim.ini transcript vivado* *.log *.bak
	@rm -rf work modelsim_libs

