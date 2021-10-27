########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages
from templates.hw_management.bender.bender import bender
from templates.hw_management.vsim_wave.top.vsim_wave import vsim_wave

# HWPE IPs management
class hw_management:
    def __init__(self, hwpe_specs):
        self.author = hwpe_specs.author
        self.email = hwpe_specs.email

    def bender(self, hwpe_specs):
        b = bender(hwpe_specs)
        return b.gen()

    def vsim_wave(self, hwpe_specs):
        v = vsim_wave(hwpe_specs)
        return v.gen()



