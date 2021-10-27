########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Streamer communication
class streamer_communication:
    def __init__(self, hwpe_specs):
        self.common = ''

    def gen(self):
        self.module()
        return self.common

    def module(self):
        with open('templates/hw/hwpe_wrapper/hwpe_fsm/modules/streamer_communication/streamer_communication.template_sv', 'r') as f:
            self.common += f.read()
            self.common += '\n'
            f.close()