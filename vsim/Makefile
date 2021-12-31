# Author: Gianluca Bellocchi

ROOT := $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

# test
TEST_FOLDER 	:= $(realpath $(ROOT)/../test )
SLM_FILES 		:= $(TEST_FOLDER)/slm_files

# test app
APP_DIR_SINGLE_ACC := $(realpath ../deps/hwpe-gen-app/sw )
APP_NAME := sw
APP_PATH := ${APP_DIR_SINGLE_ACC}

# modelsim
VSIM_GUI := 1

all: clean compile gen_slm sim

sim: 
	@echo -e '>> Start simulation.'
	@./start_sim.sh ${VSIM_GUI}

gen_slm:
	@echo -e '>> Searching for software test in $(APP_PATH).'
	@$(TEST_FOLDER)/gen_slm_files.sh $(APP_PATH)

compile:
	@echo -e '>> Compiling RTL.'
	@./compile.sh

clean_lib: clean
	@rm -rf work

.PHONY: clean
clean:
	@rm -f $(SLM_FILES)/*
	@rm -f compile.tcl vsim.wlf modelsim.ini transcript vivado* *.log *.bak
	@rm -rf work modelsim_libs

