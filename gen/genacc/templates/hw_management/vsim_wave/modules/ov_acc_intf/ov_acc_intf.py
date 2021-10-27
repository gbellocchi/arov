########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Overlay-to-Accelerator Interface
class ov_acc_intf:
    def __init__(self):
        self.m = ''

    def gen(self):
        self.get_template()
        return self.m

    def get_template(self):
        with open('templates/hw_management/vsim_wave/modules/ov_acc_intf/ov_acc_intf.template_wave_do', 'r') as f:
            self.m += f.read()
            self.m += '\n'
            f.close()




