########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Runtime calls for HWPE programming
class hwpe_progr:
    def __init__(self, hwpe_specs):
        self.c = ''

    def gen(self):
        self.module()
        return self.c

    def module(self):
        with open('templates/sw/hwpe_wrapper_tb/tb_hwpe/modules/hwpe_progr/hwpe_progr.template_c', 'r') as f:
            self.c += f.read()
            self.c += '\n'
            f.close()