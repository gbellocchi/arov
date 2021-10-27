########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# HWPE overlay
class hwpe_common:
    def __init__(self, hwpe_specs):
        self.author = hwpe_specs.author
        self.email = hwpe_specs.email
        self.common = ''

    def gen(self):
        self.data_types()
        self.variables()
        self.signals()
        self.interfaces()
        return self.common

    def data_types(self):
        with open('templates/hw/common/data_types.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()

    def variables(self):
        with open('templates/hw/common/std_var.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()

    def signals(self):
        with open('templates/hw/common/signals.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()

    def interfaces(self):
        with open('templates/hw/common/interfaces.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()




