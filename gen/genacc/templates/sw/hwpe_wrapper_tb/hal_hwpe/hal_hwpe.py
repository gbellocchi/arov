########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/usr/bin/env python3

# Packages
from mako.template import Template
import math
import re
import sys

from templates.sw.common.common_c.template_c import template_c

# HWPE engine
class hal_hwpe:
    def __init__(self, specs):
        
        # Engineer(-s)
        self.author             = specs.author
        self.email              = specs.email

        # Environment
        self.destdir            = specs.dest_dir
        self.module             = "hwpe_wrapper_tb/hal_hwpe/hal_hwpe"

        # Generic
        self.hwpe_target        = specs.hwpe_target

        # HWPE streaming interfaces
        self.list_sink_stream                   = [item[0] for item in specs.list_sink_stream]
        self.list_source_stream                 = [item[0] for item in specs.list_source_stream]
        self.list_sink_dtype                    = [item[1] for item in specs.list_sink_stream]
        self.list_source_dtype                  = [item[1] for item in specs.list_source_stream]
        self.sink_is_parallel                   = [item[3] for item in specs.list_sink_stream]
        self.source_is_parallel                 = [item[3] for item in specs.list_source_stream]
        self.sink_parallelism_factor            = [item[4] for item in specs.list_sink_stream]
        self.source_parallelism_factor          = [item[4] for item in specs.list_source_stream]
        self.n_sink                             = specs.n_sink
        self.n_source                           = specs.n_source

        # HWPE standard regfiles
        self.std_reg_num        = specs.std_reg_num 

        # HWPE custom regfiles
        self.custom_reg_name    = [item[0] for item in specs.custom_reg]
        self.custom_reg_dtype   = [item[1] for item in specs.custom_reg]
        self.custom_reg_dim     = [item[2] for item in specs.custom_reg]
        self.custom_reg_isport  = [item[3] for item in specs.custom_reg]
        self.custom_reg_num     = specs.custom_reg_num

        # Address generation
        self.addr_gen_in_isprogr                = [item[0] for item in specs.addr_gen_in]
        self.addr_gen_out_isprogr               = [item[0] for item in specs.addr_gen_out]

        # Common template elements
        self.common_c           = template_c(specs).gen()

        # Template
        self.template   = self.get_template()

    def gen(self):
        s = self.common_c + self.template
        pulp_template = Template(s)
        string = pulp_template.render(
            author                  = self.author,
            email                   = self.email,
            target                  = self.hwpe_target, 
            n_sink                  = self.n_sink, 
            n_source                = self.n_source,
            stream_in               = self.list_sink_stream,
            stream_out              = self.list_source_stream,
            stream_in_dtype         = self.list_sink_dtype,  
            stream_out_dtype        = self.list_source_dtype,
            is_parallel_in          = self.sink_is_parallel,
            is_parallel_out         = self.source_is_parallel,
            in_parallelism_factor   = self.sink_parallelism_factor,
            out_parallelism_factor  = self.source_parallelism_factor,
            std_reg_num             = self.std_reg_num,
            custom_reg_name         = self.custom_reg_name, 
            custom_reg_dtype        = self.custom_reg_dtype,
            custom_reg_dim          = self.custom_reg_dim, 
            custom_reg_isport       = self.custom_reg_isport,
            custom_reg_num          = self.custom_reg_num,
            addr_gen_in_isprogr     = self.addr_gen_in_isprogr,
            addr_gen_out_isprogr    = self.addr_gen_out_isprogr,
        )
        s = re.sub(r'\s+$', '', string, flags=re.M)
        return s
    
    def get_template(self):
        with open('templates/sw/'+self.module+'.template_c', 'r') as f:
            s = f.read()
            f.close()
            return s

