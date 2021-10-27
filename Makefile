########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

.PHONY: genacc

genacc:
	@cd gen && make -s init_genacc

bender: Makefile
	@curl --proto '=https' --tlsv1.2 -sSf https://fabianschuiki.github.io/bender/init | sh -s 0.21.0
	@touch bender
