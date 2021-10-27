########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages
from templates.hw.hwpe_wrapper.hwpe_kernel_adapter.modules.kernel_interface.xil_ap_ctrl_hs.xil_ap_ctrl_hs import xil_ap_ctrl_hs
from templates.hw.hwpe_wrapper.hwpe_kernel_adapter.modules.kernel_interface.mdc_dataflow.mdc_dataflow import mdc_dataflow

# Kernel interface
class kernel_interface:
    def __init__(self, specs):
        self.m = ''
        self.s = specs

    def gen(self):
        self.get_template()
        return self.m

    def get_template(self):
        self.m = ''
        self.m += xil_ap_ctrl_hs(self.s).gen()
        self.m += mdc_dataflow(self.s).gen()