########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Kernel interface - Xilinx ap_ctrl_hs (refer to UG902)
class xil_ap_ctrl_hs:
    def __init__(self, hwpe_specs):
        self.common = ''

    def gen(self):
        self.get_template()
        return self.common

    def get_template(self):
        with open('templates/hw/hwpe_wrapper/hwpe_kernel_adapter/modules/kernel_interface/xil_ap_ctrl_hs/xil_ap_ctrl_hs.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()