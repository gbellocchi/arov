########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Kernel interface - MDC dataflow
class mdc_dataflow:
    def __init__(self):
        self.m = ''
        
    def gen(self):
        self.get_template()
        return self.m

    def get_template(self):
        with open('templates/hw_management/vsim_wave/modules/hwpe_kernel_adapter/mdc_dataflow/mdc_dataflow.template_wave_do', 'r') as f:
            self.m += f.read()
            self.m += '\n'
            f.close()