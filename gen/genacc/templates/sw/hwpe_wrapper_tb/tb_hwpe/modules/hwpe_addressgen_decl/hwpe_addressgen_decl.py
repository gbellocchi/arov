########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Declaration of address generator parameters
class hwpe_addressgen_decl:
    def __init__(self, hwpe_specs):
        self.c = ''

    def gen(self):
        self.module()
        return self.c

    def module(self):
        with open('templates/sw/hwpe_wrapper_tb/tb_hwpe/modules/hwpe_addressgen_decl/hwpe_addressgen_decl.template_c', 'r') as f:
            self.c += f.read()
            self.c += '\n'
            f.close()