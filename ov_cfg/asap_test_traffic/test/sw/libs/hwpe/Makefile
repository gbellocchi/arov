ifndef PULP_SDK_HOME
$(error PULP_SDK_HOME is not set)
endif

dirs = $(wildcard hwpe_cl*/)

PHONY: common clean all
all: common ref_sw
	@$(foreach dir,$(dirs), cd $(PWD)/$(dir) && make header build install;)

clean: clean_libs
	@$(foreach dir,$(dirs), cd $(PWD)/$(dir) && make clean;)

clean_libs:
	rm -rf ${PULP_SDK_HOME}/install/include/hwpe*
	rm -rf ${PULP_SDK_HOME}/install/include/libhwpe*

common:
	mkdir -p $(PULP_SDK_HOME)/install/include/libhwpe-struct
	cp hwpe_common/hwpe-struct.h $(PULP_SDK_HOME)/install/include

ref_sw:
	@$(foreach dir,$(dirs), cd $(PWD)/$(dir) && make ref_sw;)