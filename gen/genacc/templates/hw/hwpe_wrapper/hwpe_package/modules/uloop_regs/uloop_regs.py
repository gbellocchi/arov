########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Microcode processor registers
class uloop_regs:
    def __init__(self, hwpe_specs):
        self.common = ''

    def gen(self):
        self.module()
        return self.common

    def module(self):
        with open('templates/hw/hwpe_wrapper/hwpe_package/modules/uloop_regs/uloop_regs.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()