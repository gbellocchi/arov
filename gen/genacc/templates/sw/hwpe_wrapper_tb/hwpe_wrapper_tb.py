########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages
from templates.sw.hwpe_wrapper_tb.archi_hwpe.top.archi_hwpe import archi_hwpe
from templates.sw.hwpe_wrapper_tb.hal_hwpe.hal_hwpe import hal_hwpe
from templates.sw.hwpe_wrapper_tb.tb_hwpe.top.tb_hwpe import tb_hwpe

# HWPE wrapper- Software testbench components
class hwpe_wrapper_tb:
    def __init__(self, hwpe_specs):
        self.author = hwpe_specs.author
        self.email = hwpe_specs.email

    def archi(self, hwpe_specs):
        archi = archi_hwpe(hwpe_specs)
        return archi.gen()

    def hal(self, hwpe_specs):
        hal = hal_hwpe(hwpe_specs)
        return hal.gen()

    def tb(self, hwpe_specs):
        tb = tb_hwpe(hwpe_specs)
        return tb.gen()
