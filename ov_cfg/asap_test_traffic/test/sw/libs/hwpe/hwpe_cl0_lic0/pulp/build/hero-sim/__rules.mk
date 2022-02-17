
#
# HEADER RULES
#

define declareInstallFile

$(PULP_SDK_INSTALL)/$(1): $(1)
	install -D $(1) $$@

INSTALL_HEADERS += $(PULP_SDK_INSTALL)/$(1)

endef


define declareWsInstallFile

$(PULP_SDK_WS_INSTALL)/$(1): $(1)
	install -D $(1) $$@

WS_INSTALL_HEADERS += $(PULP_SDK_WS_INSTALL)/$(1)

endef


$(foreach file, $(INSTALL_FILES), $(eval $(call declareInstallFile,$(file))))

$(foreach file, $(WS_INSTALL_FILES), $(eval $(call declareWsInstallFile,$(file))))


#
# CC RULES for domain: cluster
#

PULP_LIB_NAME_hwpe_cl0_lic0 ?= hwpe_cl0_lic0

PULP_CL_EXTRA_SRCS_hwpe_cl0_lic0 = 
PULP_CL_EXTRA_ASM_SRCS_hwpe_cl0_lic0 = 
PULP_CL_EXTRA_OMP_SRCS_hwpe_cl0_lic0 = 

hwpe_cl0_lic0_CL_OBJS =     $(patsubst %.cpp,$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/cl/%.o, $(patsubst %.c,$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/cl/%.o, $(PULP_LIB_CL_SRCS_hwpe_cl0_lic0) $(PULP_CL_SRCS_hwpe_cl0_lic0) $(PULP_LIB_CL_SRCS) $(PULP_APP_SRCS) $(PULP_CL_EXTRA_SRCS_hwpe_cl0_lic0)))
hwpe_cl0_lic0_CL_ASM_OBJS = $(patsubst %.S,$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/cl/%.o, $(PULP_LIB_CL_ASM_SRCS_hwpe_cl0_lic0) $(PULP_CL_ASM_SRCS_hwpe_cl0_lic0) $(PULP_LIB_CL_ASM_SRCS) $(PULP_APP_ASM_SRCS) $(PULP_CL_EXTRA_ASM_SRCS_hwpe_cl0_lic0))
hwpe_cl0_lic0_CL_OMP_OBJS = $(patsubst %.c,$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/cl/omp/%.o, $(PULP_LIB_CL_OMP_SRCS_hwpe_cl0_lic0) $(PULP_CL_OMP_SRCS_hwpe_cl0_lic0) $(PULP_LIB_CL_OMP_SRCS) $(PULP_APP_OMP_SRCS) $(PULP_CL_EXTRA_OMP_SRCS_hwpe_cl0_lic0))

ifneq '$(hwpe_cl0_lic0_CL_OMP_OBJS)' ''
PULP_LDFLAGS_hwpe_cl0_lic0 += $(PULP_OMP_LDFLAGS_hwpe_cl0_lic0)
endif

-include $(hwpe_cl0_lic0_CL_OBJS:.o=.d)
-include $(hwpe_cl0_lic0_CL_ASM_OBJS:.o=.d)
-include $(hwpe_cl0_lic0_CL_OMP_OBJS:.o=.d)

hwpe_cl0_lic0_cl_cflags = $(PULP_CL_ARCH_CFLAGS) $(PULP_CFLAGS) $(PULP_CL_CFLAGS) $(PULP_CFLAGS_hwpe_cl0_lic0) $(PULP_CL_CFLAGS_hwpe_cl0_lic0) $(PULP_LIB_CFLAGS_hwpe_cl0_lic0)
hwpe_cl0_lic0_cl_omp_cflags = $(hwpe_cl0_lic0_cl_cflags) $(PULP_OMP_CFLAGS) $(PULP_CL_OMP_CFLAGS) $(PULP_OMP_CFLAGS_hwpe_cl0_lic0) $(PULP_CL_OMP_CFLAGS_hwpe_cl0_lic0)

$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/cl/%.o: %.c
	@mkdir -p `dirname $@`
	$(PULP_CL_CC) $(hwpe_cl0_lic0_cl_cflags) -MMD -MP -c $< -o $@

$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/cl/%.o: %.cpp
	@mkdir -p `dirname $@`
	$(PULP_CL_CC) $(hwpe_cl0_lic0_cl_cflags) -MMD -MP -c $< -o $@

$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/cl/%.o: %.S
	@mkdir -p `dirname $@`
	$(PULP_CL_CC) $(hwpe_cl0_lic0_cl_cflags) -DLANGUAGE_ASSEMBLY -MMD -MP -c $< -o $@

$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/cl/omp/%.o: %.c
	@mkdir -p `dirname $@`
	touch libgomp.spec
	$(PULP_CL_CC) $(hwpe_cl0_lic0_cl_omp_cflags) -MMD -MP -c $< -o $@

hwpe_cl0_lic0_OBJS += $(hwpe_cl0_lic0_CL_OBJS) $(hwpe_cl0_lic0_CL_ASM_OBJS) $(hwpe_cl0_lic0_CL_OMP_OBJS)



#
# CC RULES for domain: fabric_controller
#

PULP_LIB_NAME_hwpe_cl0_lic0 ?= hwpe_cl0_lic0

PULP_FC_EXTRA_SRCS_hwpe_cl0_lic0 = /scratch2/gbellocchi/ethz/arov/ov_cfg/asap_test_traffic/test/sw/libs/hwpe/hwpe_cl0_lic0/pulp/build/hero-sim/rt_conf.c
PULP_FC_EXTRA_ASM_SRCS_hwpe_cl0_lic0 = 
PULP_FC_EXTRA_OMP_SRCS_hwpe_cl0_lic0 = 

hwpe_cl0_lic0_FC_OBJS =     $(patsubst %.cpp,$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/fc/%.o, $(patsubst %.c,$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/fc/%.o, $(PULP_LIB_FC_SRCS_hwpe_cl0_lic0) $(PULP_FC_SRCS_hwpe_cl0_lic0) $(PULP_LIB_FC_SRCS)  $(PULP_FC_EXTRA_SRCS_hwpe_cl0_lic0)))
hwpe_cl0_lic0_FC_ASM_OBJS = $(patsubst %.S,$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/fc/%.o, $(PULP_LIB_FC_ASM_SRCS_hwpe_cl0_lic0) $(PULP_FC_ASM_SRCS_hwpe_cl0_lic0) $(PULP_LIB_FC_ASM_SRCS)  $(PULP_FC_EXTRA_ASM_SRCS_hwpe_cl0_lic0))
hwpe_cl0_lic0_FC_OMP_OBJS = $(patsubst %.c,$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/fc/omp/%.o, $(PULP_LIB_FC_OMP_SRCS_hwpe_cl0_lic0) $(PULP_FC_OMP_SRCS_hwpe_cl0_lic0) $(PULP_LIB_FC_OMP_SRCS)  $(PULP_FC_EXTRA_OMP_SRCS_hwpe_cl0_lic0))

ifneq '$(hwpe_cl0_lic0_FC_OMP_OBJS)' ''
PULP_LDFLAGS_hwpe_cl0_lic0 += $(PULP_OMP_LDFLAGS_hwpe_cl0_lic0)
endif

-include $(hwpe_cl0_lic0_FC_OBJS:.o=.d)
-include $(hwpe_cl0_lic0_FC_ASM_OBJS:.o=.d)
-include $(hwpe_cl0_lic0_FC_OMP_OBJS:.o=.d)

hwpe_cl0_lic0_fc_cflags = $(PULP_FC_ARCH_CFLAGS) $(PULP_CFLAGS) $(PULP_FC_CFLAGS) $(PULP_CFLAGS_hwpe_cl0_lic0) $(PULP_FC_CFLAGS_hwpe_cl0_lic0) $(PULP_LIB_CFLAGS_hwpe_cl0_lic0)
hwpe_cl0_lic0_fc_omp_cflags = $(hwpe_cl0_lic0_fc_cflags) $(PULP_OMP_CFLAGS) $(PULP_FC_OMP_CFLAGS) $(PULP_OMP_CFLAGS_hwpe_cl0_lic0) $(PULP_FC_OMP_CFLAGS_hwpe_cl0_lic0)

$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/fc/%.o: %.c
	@mkdir -p `dirname $@`
	$(PULP_FC_CC) $(hwpe_cl0_lic0_fc_cflags) -MMD -MP -c $< -o $@

$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/fc/%.o: %.cpp
	@mkdir -p `dirname $@`
	$(PULP_FC_CC) $(hwpe_cl0_lic0_fc_cflags) -MMD -MP -c $< -o $@

$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/fc/%.o: %.S
	@mkdir -p `dirname $@`
	$(PULP_FC_CC) $(hwpe_cl0_lic0_fc_cflags) -DLANGUAGE_ASSEMBLY -MMD -MP -c $< -o $@

$(CONFIG_BUILD_DIR)/$(PULP_LIB_NAME_hwpe_cl0_lic0)/fc/omp/%.o: %.c
	@mkdir -p `dirname $@`
	touch libgomp.spec
	$(PULP_FC_CC) $(hwpe_cl0_lic0_fc_omp_cflags) -MMD -MP -c $< -o $@

hwpe_cl0_lic0_OBJS += $(hwpe_cl0_lic0_FC_OBJS) $(hwpe_cl0_lic0_FC_ASM_OBJS) $(hwpe_cl0_lic0_FC_OMP_OBJS)



#
# AR RULES for library: hwpe_cl0_lic0
#

PULP_LIB_NAME_hwpe_cl0_lic0 ?= hwpe_cl0_lic0

$(CONFIG_BUILD_DIR)/lib$(PULP_LIB_NAME_hwpe_cl0_lic0).a: $(hwpe_cl0_lic0_OBJS)
	@mkdir -p `dirname $@`
	@rm -f $@
	$(PULP_AR) -r $@ $^

$(PULP_SDK_INSTALL)/lib/hero-urania/lib$(PULP_LIB_NAME_hwpe_cl0_lic0).a: $(CONFIG_BUILD_DIR)/lib$(PULP_LIB_NAME_hwpe_cl0_lic0).a
	@mkdir -p `dirname $@`
	cp $^ $@ 


TARGETS += $(CONFIG_BUILD_DIR)/lib$(PULP_LIB_NAME_hwpe_cl0_lic0).a
CLEAN_TARGETS += $(CONFIG_BUILD_DIR)/lib$(PULP_LIB_NAME_hwpe_cl0_lic0).a $($(PULP_LIB_NAME_hwpe_cl0_lic0)_OBJS)
INSTALL_TARGETS += $(PULP_SDK_INSTALL)/lib/hero-urania/lib$(PULP_LIB_NAME_hwpe_cl0_lic0).a


header:: $(INSTALL_HEADERS) $(WS_INSTALL_HEADERS)

fullclean::
	rm -rf $(CONFIG_BUILD_DIR)

clean:: $(GEN_TARGETS) $(CONFIG_BUILD_DIR)/config.mk
	rm -rf $(CLEAN_TARGETS)

prepare:: $(GEN_TARGETS) $(CONFIG_BUILD_DIR)/config.mk
	pulp-run $(pulpRunOpt) prepare

runner:: $(GEN_TARGETS) $(CONFIG_BUILD_DIR)/config.mk
	pulp-run $(pulpRunOpt) $(RUNNER_CMD)

power:: $(GEN_TARGETS) $(CONFIG_BUILD_DIR)/config.mk
	pulp-run $(pulpRunOpt) power

gen: $(GEN_TARGETS_FORCE)

build:: $(GEN_TARGETS) $(CONFIG_BUILD_DIR)/config.mk $(TARGETS)

all:: build prepare

install:: $(INSTALL_TARGETS)

run::
	pulp-run $(pulpRunOpt)

.PHONY: clean header prepare all install run
