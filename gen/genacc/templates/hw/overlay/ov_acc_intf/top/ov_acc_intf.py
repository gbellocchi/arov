########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages
from mako.template import Template
import math
import re
import sys

from templates.hw.common.hwpe_common import hwpe_common

from templates.hw.overlay.ov_acc_intf.modules.hwpe_intf.hwpe_intf import hwpe_intf

# Overlay accelerator interface
class ov_acc_intf:
    def __init__(self, specs):
        
        # Engineer(-s)
        self.author             = specs.author
        self.email              = specs.email

        # Environment
        self.destdir            = specs.dest_dir
        self.module             = "overlay/ov_acc_intf/top/ov_acc_intf"

        # Generic
        self.hwpe_target        = specs.hwpe_target

        self.specs              = specs

        # Template
        self.template           = self.get_template()

    def gen(self):
        s = self.common(self.specs) + self.modules(self.specs) + self.template
        pulp_template = Template(s)
        string = pulp_template.render(
            author              = self.author,
            email               = self.email,
            target              = self.hwpe_target,
        )
        s = re.sub(r'\s+$', '', string, flags=re.M)
        return s
    
    def get_template(self):
        with open('templates/hw/'+self.module+'.template_sv', 'r') as f:
            s = f.read()
            f.close()
            return s

    def common(self, specs):
        self.c                      = hwpe_common(specs).gen()
        return self.c

    def modules(self, specs):
        self.m                      = ''
        self.m                      += hwpe_intf(specs).gen()
        return self.m

