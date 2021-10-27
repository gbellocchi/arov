# Author: Gianluca Bellocchi
ROOT 		:= $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
DEST 		:= $(ROOT)
PRJ_INC_DIR := $(ROOT)/../stim

PY 		= python

WIDTH 	= 512
HEIGHT 	= 8
DEPTH 	= 5

artificial_results:
	@echo 'Generating artificial stimuli!'
	@$(PY) arti_stim.py $(WIDTH) $(HEIGHT) $(DEPTH) $(DEST)
	@rm arti_stim.txt
	@mv arti_stim.h $(PRJ_INC_DIR)/results.h
artificial_stimuli:
	@echo 'Generating artificial stimuli!'
	@$(PY) arti_stim.py $(WIDTH) $(HEIGHT) $(DEPTH) $(DEST)
	@rm arti_stim.txt
	@mv arti_stim.h $(PRJ_INC_DIR)/stim_input.h

.PHONY: clean
clean:
	@rm -f $(DEST)/../arti_stim.h
	@rm -f $(DEST)/arti_stim.txt