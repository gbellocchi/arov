########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages
from templates.hw.overlay.ov_acc_intf.modules.hwpe_intf.cl_log_interco.cl_log_interco import cl_log_interco
# from templates.hw.ov_acc_intf.modules.hwpe_intf.cl_hci_interco.cl_log_interco import cl_hci_interco

# HWPE accelerator interfaces
class hwpe_intf:
    def __init__(self, specs):
        self.m = ''
        self.s = specs

    def gen(self):
        self.get_template()
        return self.m

    def get_template(self):
        self.m = ''
        self.m += cl_log_interco(self.s).gen()
        # self.m += cl_hci_interco(self.s).gen()