BENDER := ../bender script vivado
BENDER_FILES := ../bender ../Bender.yml ../Bender.lock
DEFINE_TCLS := \
    vivado_ips/define_defines_includes.tcl \
    vivado_ips/define_defines_includes_no_simset.tcl \
    vivado_ips/define_sources.tcl

VIVADO := vitis-2019.2 vivado
VIVADO_OPT :=-mode batch

DESIGN_NAME := hero_exilzcu102

ifeq ($(UNIMORE),)
	DESIGN_LOCATION := .
endif
ifeq ($(IIS),)
	DESIGN_LOCATION := ${GBELLOCCHI_SCRATCH2}/design_fpga
endif

.PHONY: all
all: hero_exilzcu102

design_fpga: vivado_ips/pulp_txilzu9eg ${DEFINE_TCLS}
	${VIVADO} ${VIVADO_OPT} -source hero_exilzcu102.tcl ${DESIGN_NAME} ${DESIGN_LOCATION}

vivado_ips/pulp_txilzu9eg: ${DEFINE_TCLS}
	cd vivado_ips && ${VIVADO} ${VIVADO_OPT} -source pulp_txilzu9eg.tcl

vivado_ips/pulp_txilzu9eg.v: src/pulp.py src/pulp.template_v
	cd src && ./pulp.py > ../$@

vivado_ips/define_defines_includes.tcl: $(BENDER_FILES)
	${BENDER} --only-defines --only-includes > $@

vivado_ips/define_defines_includes_no_simset.tcl: $(BENDER_FILES)
	${BENDER} --only-defines --only-includes --no-simset > $@

vivado_ips/define_sources.tcl: $(BENDER_FILES)
	${BENDER} --only-sources > $@

../bender: ../Makefile
	make -C .. bender

.PHONY: clean
clean:
	rm -rf hero_exilzcu102
	rm -f vivado_ips/{component.xml,define_*.tcl}
	rm -rf vivado_ips/{pulp_txilzu9eg,xgui}
	rm -f {,vivado_ips/}vivado*.{jou,log,str}
