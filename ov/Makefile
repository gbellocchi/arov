########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ------- #
#  SETUP  #
# ------- #

ROOT 					:= $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
REPO 					:= genov

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ------------- #
#  APPLICATION  #
# ------------- #

# Choose target on those available in the application library (e.g. mmul_parallel)

HWPE_TARGET				:= mmult_opt_mdc

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ------------------ #
#  TOOL ENVIRONMENT  #
# ------------------ #

# Templates

TEMPLATES 				:= ${ROOT}/templates
HW_DIR					:= ${TEMPLATES}/hw
SW_DIR					:= ${TEMPLATES}/sw

# Static modules

STATIC 					:= ${ROOT}/static
STATIC_RTL_DIR 			:= ${STATIC}/static_rtl
STATIC_STREAM			:= ${STATIC_RTL_DIR}/hwpe-stream
STATIC_CTRL 			:= ${STATIC_RTL_DIR}/hwpe-ctrl

# Verification

VERIF 					:= ${ROOT}/vsim

# Output content

OUT_DIR 				:= ${ROOT}/output
OUT_HW_DIR 				:= ${OUT_DIR}/hw
OUT_SW_DIR 				:= ${OUT_DIR}/sw

# Scripts

SCRIPTS_DIR				:= ${ROOT}/scripts
SCRIPTS_GEN				:= ${SCRIPTS_DIR}/gen
SCRIPTS_PY_ENV			:= ${SCRIPTS_DIR}/py_env

# Python virtual environment
PY_VENV 				:= ${REPO}_py_env
PY_ENV_DIR				:= ${ROOT}/${PY_VENV}

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# --------------------- #
#  OVERLAY ENVIRONMENT  #
# --------------------- #

# System-level integration

OVERLAY_HW_REPO			:= ${HERO_OV_HW_EXPORT}
OVERLAY_SRC				:= ${HERO_OV_HW_EXPORT}/src
OVERLAY_DEPS			:= ${HERO_OV_HW_EXPORT}/deps
OVERLAY_TEST			:= ${HERO_OV_HW_EXPORT}/test
OVERLAY_CLUSTER			:= ${OVERLAY_DEPS}/overlay_cluster/rtl

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

VLOG_ARGS += -suppress vlog-2583 -suppress vlog-13314 -suppress vlog-13233

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

.PHONY: all

all:

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ----------------------------- #
#  HARDWARE WRAPPER GENERATION  #
# ----------------------------- #

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ----------------------- #
#  GENERATOR ENVIRONMENT  #
# ----------------------- #

init_gen:
	@bash ${SCRIPTS_GEN}/init_gen.sh

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# -------------------- #
#  PYTHON ENVIRONMENT  #
# -------------------- #

clean_py_env: test_py_env
	@rm -rf ${PY_VENV}

init_py_env:
	@bash ${SCRIPTS_PY_ENV}/init_py_env.sh ${PY_VENV}

update_reqs_py_env:
	@bash ${SCRIPTS_PY_ENV}/update_reqs.sh ${PY_ENV_DIR}

test_py_env:
	@bash ${SCRIPTS_PY_ENV}/secure_paths.sh ${PY_ENV_DIR}

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ----------------------- #
#  RTL SOURCE MANAGEMENT  #
# ----------------------- #

.PHONY: vsim/compile.tcl
vsim/compile.tcl: bender
	echo 'set ROOT [file normalize [file dirname [info script]]/..]' > $@
	./bender script vsim \
		--vlog-arg="$(VLOG_ARGS)" \
		-t rtl -t test \
		| grep -v "set ROOT" >> $@

init_genacc: clean_bender bender
	./bender clone genacc \
		-p ./

bender: Makefile
	curl --proto '=https' --tlsv1.2 -sSf https://fabianschuiki.github.io/bender/init | sh -s 0.21.0
	touch bender

clean_bender:
	rm -rf Bender.local
