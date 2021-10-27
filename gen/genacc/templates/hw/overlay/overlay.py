########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages - Overlay
from templates.hw.overlay.ov_acc_pkg.top.ov_acc_pkg import ov_acc_pkg
from templates.hw.overlay.ov_acc_intf.top.ov_acc_intf import ov_acc_intf

# Overlay
class overlay:
    def __init__(self, hwpe_specs):
        self.author = hwpe_specs.author
        self.email = hwpe_specs.email

    def acc_pkg(self, hwpe_specs):
        acc_pkg = ov_acc_pkg(hwpe_specs)
        return acc_pkg.gen()

    def acc_intf(self, hwpe_specs):
        acc_intf = ov_acc_intf(hwpe_specs)
        return acc_intf.gen()