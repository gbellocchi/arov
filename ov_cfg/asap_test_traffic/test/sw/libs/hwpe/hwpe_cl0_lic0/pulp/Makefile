PULP_PROPERTIES += pulp_chip
include $(PULP_SDK_HOME)/install/rules/pulp_properties.mk

PULP_LIBS                  = hwpe_cl0_lic0
PULP_LIB_CL_SRCS_hwpe_cl0_lic0 += hwpe_cl0_lic0.c
PULP_CL_CFLAGS_hwpe_cl0_lic0    = -Wall -O3 -g3 -I./ -I../../hwpe_common

# -I../inc

-include $(PULP_SDK_HOME)/install/rules/pulp.mk

header::
	mkdir -p $(PULP_SDK_HOME)/install/include/libhwpe_cl0_lic0
	cp ../inc/hwpe_cl0_lic0.h $(PULP_SDK_HOME)/install/include

ref_sw::
	cd inc/ref_sw && make -s
