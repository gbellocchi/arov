########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Address generator archi
class addressgen_archi:
    def __init__(self, hwpe_specs):
        self.common = ''

    def gen(self):
        self.module()
        return self.common

    def module(self):
        with open('templates/sw/hwpe_wrapper_tb/archi_hwpe/modules/addressgen_archi/addressgen_archi.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()