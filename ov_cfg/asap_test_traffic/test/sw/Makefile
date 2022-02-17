ROOT := $(patsubst %/,%, $(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

only = pulp
CSRCS = $(wildcard *.c)

-include $(HERO_OV_OPENMP_TESTS)/common/default.mk

CFLAGS_PULP += -I$(HERO_HOST_INC_DIR)
LDFLAGS_PULP += -lhwpe_cl0_lic0

# stimuli generation
.PHONY:ref_sw
# hwpe_dirs = hwpe_cl0_lic0
# ref_sw:
# 	@$(foreach dir,$(hwpe_dirs), cd $(ROOT)/libs/hwpe/$(dir)/inc/ref_sw && make -s;)