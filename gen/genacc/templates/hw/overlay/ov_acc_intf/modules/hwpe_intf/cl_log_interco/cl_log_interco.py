########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Accelerator interface - Cluster logarithmic interconnect
class cl_log_interco:
    def __init__(self, hwpe_specs):
        self.common = ''

    def gen(self):
        self.get_template()
        return self.common

    def get_template(self):
        with open('templates/hw/overlay/ov_acc_intf/modules/hwpe_intf/cl_log_interco/cl_log_interco.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()




