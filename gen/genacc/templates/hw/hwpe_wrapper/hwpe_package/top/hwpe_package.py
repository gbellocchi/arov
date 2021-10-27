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

from templates.hw.hwpe_wrapper.hwpe_package.modules.standard_regs.standard_regs import standard_regs
from templates.hw.hwpe_wrapper.hwpe_package.modules.custom_regs.custom_regs import custom_regs
from templates.hw.hwpe_wrapper.hwpe_package.modules.address_generator_regs.address_generator_regs import address_generator_regs
from templates.hw.hwpe_wrapper.hwpe_package.modules.tcdm_regs.tcdm_regs import tcdm_regs
from templates.hw.hwpe_wrapper.hwpe_package.modules.uloop_regs.uloop_regs import uloop_regs

# HWPE package
class hwpe_package:
    def __init__(self, specs):
        
        # Engineer(-s)
        self.author     = specs.author
        self.email      = specs.email

        # Environment
        self.destdir    = specs.dest_dir
        self.module     = "hwpe_wrapper/hwpe_package/top/hwpe_package"

        # Generic
        self.hwpe_target = specs.hwpe_target

        # HWPE streaming interfaces
        self.list_sink_stream                   = [item[0] for item in specs.list_sink_stream]
        self.list_source_stream                 = [item[0] for item in specs.list_source_stream]
        self.sink_is_parallel                   = [item[3] for item in specs.list_sink_stream]
        self.source_is_parallel                 = [item[3] for item in specs.list_source_stream]
        self.sink_parallelism_factor            = [item[4] for item in specs.list_sink_stream]
        self.source_parallelism_factor          = [item[4] for item in specs.list_source_stream]
        self.n_sink                             = specs.n_sink
        self.n_source                           = specs.n_source

        # HWPE standard regfiles
        self.std_reg_num        = specs.std_reg_num  

        # HWPE custom regfiles
        self.custom_reg_name   = [item[0] for item in specs.custom_reg]
        self.custom_reg_dtype  = [item[1] for item in specs.custom_reg]
        self.custom_reg_dim    = [item[2] for item in specs.custom_reg]
        self.custom_reg_isport = [item[3] for item in specs.custom_reg]
        self.custom_reg_num    = specs.custom_reg_num

        # Address generation
        self.addr_gen_in_isprogr                = [item[0] for item in specs.addr_gen_in]
        self.addr_gen_out_isprogr               = [item[0] for item in specs.addr_gen_out]

        self.specs                  = specs

        # Template
        self.template   = self.get_template()

    def gen(self):
        s = self.common() + self.modules() + self.template
        pulp_template = Template(s)
        string = pulp_template.render(
            author                  = self.author,
            email                   = self.email,
            target                  = self.hwpe_target,
            n_sink                  = self.n_sink, 
            n_source                = self.n_source,
            stream_in               = self.list_sink_stream,
            stream_out              = self.list_source_stream,
            is_parallel_in          = self.sink_is_parallel,
            is_parallel_out         = self.source_is_parallel,
            in_parallelism_factor   = self.sink_parallelism_factor,
            out_parallelism_factor  = self.source_parallelism_factor,
            std_reg_num             = self.std_reg_num,
            custom_reg_name         = self.custom_reg_name, 
            custom_reg_dim          = self.custom_reg_dim, 
            custom_reg_num          = self.custom_reg_num,
            addr_gen_in_isprogr     = self.addr_gen_in_isprogr,
            addr_gen_out_isprogr    = self.addr_gen_out_isprogr,
        )
        s = re.sub(r'\s+$', '', string, flags=re.M)
        return s

    def get_template(self):
        with open('templates/hw/'+self.module+'.template_sv', 'r') as f:
            s = f.read()
            f.close()
            return s

    def common(self):
        self.c                      = hwpe_common(self.specs).gen()
        return self.c

    def modules(self):
        self.m                      = ''
        self.m                      += standard_regs(self.specs).gen()
        self.m                      += custom_regs(self.specs).gen()
        self.m                      += address_generator_regs(self.specs).gen()
        self.m                      += tcdm_regs(self.specs).gen()
        self.m                      += uloop_regs(self.specs).gen()
        return self.m