## Author: Gianluca Bellocchi
## Email: gianluca.bellocchi@unimore.it

ROOT 				:= $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

HW_DIR				:= ${TEMPLATES}/hw
HW_SPECS			:= ${HW_DIR}/hwpe_specs

.PHONY: all clean
all:
	@cp -rf ${TARGET}/* ${ENG_DEV}/

clean:
	@rm -rf ${ENG_DEV}/*
	
