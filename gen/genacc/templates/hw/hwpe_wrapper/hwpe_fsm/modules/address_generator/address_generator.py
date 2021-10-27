########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Address generator
class address_generator:
    def __init__(self, hwpe_specs):
        self.common = ''

    def gen(self):
        self.module()
        return self.common

    def module(self):
        with open('templates/hw/hwpe_wrapper/hwpe_fsm/modules/address_generator/address_generator.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()