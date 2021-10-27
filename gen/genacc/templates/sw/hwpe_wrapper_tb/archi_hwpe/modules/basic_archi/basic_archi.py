########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Basic archi to control HWPE operations
class basic_archi:
    def __init__(self, hwpe_specs):
        self.common = ''

    def gen(self):
        self.module()
        return self.common

    def module(self):
        with open('templates/sw/hwpe_wrapper_tb/archi_hwpe/modules/basic_archi/basic_archi.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()