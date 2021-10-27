########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages
from mako.template import Template
import math
import re
import sys

class bender:
    def __init__(self, specs):
        self.curr_dir           = './templates/hw_management/bender/'
        self.module             = 'bender'
        self.engine_devs        = self.get_engine()
        self.stream_devs        = self.get_stream()
        self.ctrl_devs          = self.get_ctrl()
        self.num_engine_devs    = len(self.engine_devs)
        self.num_stream_devs    = len(self.stream_devs)
        self.num_ctrl_devs      = len(self.ctrl_devs)
        self.target             = specs.hwpe_target

    def gen(self):
        template = Template(filename = self.curr_dir+self.module+'.template_yml')
        string = template.render(
            target              = self.target,
            engine_devs         = self.engine_devs,
            stream_devs         = self.stream_devs,
            ctrl_devs           = self.ctrl_devs,
            num_engine_devs     = self.num_engine_devs,
            num_stream_devs     = self.num_stream_devs,
            num_ctrl_devs       = self.num_ctrl_devs,
        )
        s = re.sub(r'\s+$', '', string, flags=re.M)
        return s
    
    def get_engine(self):
        filename = 'templates/hw_management/rtl_list/engine_list.log'
        with open(filename, 'r') as f:
            s = f.readlines()
            f.close()
            return s

    def get_stream(self):
        filename = 'templates/hw_management/rtl_list/stream_list.log'
        with open(filename, 'r') as f:
            s = f.readlines()
            f.close()
            return s

    def get_ctrl(self):
        filename = 'templates/hw_management/rtl_list/ctrl_list.log'
        with open(filename, 'r') as f:
            s = f.readlines()
            f.close()
            return s

    # def get_engine(self):
    #     filename = 'templates/hw_management/rtl_list/engine_list.log'
    #     with open(filename, 'r') as f:
    #         s = f.readlines()
    #         f.close()
    #         return s