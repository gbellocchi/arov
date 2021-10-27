########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# HWPE overlay
class template_c:
    def __init__(self, hwpe_specs):
        self.author = hwpe_specs.author
        self.email = hwpe_specs.email
        self.common = ''

    def gen(self):
        self.data_types()
        self.std_var()
        return self.common

    def data_types(self):
        with open('templates/sw/common/common_c/data_types.template_c', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()

    def std_var(self):
        with open('templates/sw/common/common_c/std_var.template_c', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()






