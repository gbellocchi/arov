########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# System-level integration of HWPE
class hwpe:
    def __init__(self, hwpe_specs):
        self.common = ''

    def gen(self):
        self.module()
        return self.common

    def module(self):
        with open('templates/hw/overlay/ov_acc_pkg/modules/hwpe/hwpe.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()