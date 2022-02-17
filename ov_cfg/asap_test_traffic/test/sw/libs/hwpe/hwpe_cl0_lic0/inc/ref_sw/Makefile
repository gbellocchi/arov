# Author: Gianluca Bellocchi

ROOT := $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

.PHONY: build clean

all: clean_build env build run exp

exp:
	@cp build/*.h ./../stim

run:
	@cd build && ./ref_app

build: 
	@cd build && make -s clean all

env:
	@cd build && cmake ./.. -DCMAKE_APP_ROOT:PATH=$(ROOT) -DCMAKE_APP_UTILS:PATH=./..

clean:
	@rm -rf build/*.h

clean_build:
	@rm -rf build/*