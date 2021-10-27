########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages
from templates.hw_management.vsim_wave.modules.hwpe_kernel_adapter.mdc_dataflow.mdc_dataflow import mdc_dataflow
from templates.hw_management.vsim_wave.modules.hwpe_kernel_adapter.xil_ap_ctrl_hs.xil_ap_ctrl_hs import xil_ap_ctrl_hs

# HWPE kernel adapter
class hwpe_kernel_adapter:
    def __init__(self):
        self.m = ''
    
    def gen(self):
        self.get_template()
        return self.m

    def get_template(self):
        self.m = ''
        self.m += xil_ap_ctrl_hs().gen()
        self.m += mdc_dataflow().gen()
