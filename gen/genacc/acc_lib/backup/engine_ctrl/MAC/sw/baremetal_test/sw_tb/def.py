# Author: Gianluca Bellocchi 
from mako.template import Template
import re
import array as arr
import numpy as np
import sys
import shutil
import getpass
import os
import struct
import math 

# Generator class
class def_gen:
    def __init__(self):
        pass
    
    def gen_def(self, def_list, dest_dir):
        n = 'def.h'
        with open(n, "w") as f:
            f.write(def_list)
            try:
                source = n
                destination = dest_dir
                shutil.move(source, destination)
            except:
                val = getpass.getpass("There already exist old sw defines. Would you like to clean your environment? (y/n) ")
                while((val != "y") and (val != "n")):
                    val = input("There already exist old sw defines. Would you like to clean your environment? (y/n) ")
                if (val=="y"):
                    os.system('make clean >/dev/null 2>&1')
                    source = n
                    destination = dest_dir
                    shutil.move(source, destination)

# Parameters - passed from Makefile
width       =  int(sys.argv[1])
height      =  int(sys.argv[2])
depth       =  int(sys.argv[3])
coeffs_dim  =  int(sys.argv[4])
dest        =  sys.argv[5]

# Fill template
t = ""
with open(dest+'/def.template_c', 'r') as f:
    t = f.read()
    f.close()
pulp_template = Template(t)
string = pulp_template.render(
    width       = width,
    height      = height,
    coeffs_dim  = coeffs_dim,
)
t = re.sub(r'\s+$', '', string, flags=re.M)

# Generate header file
gen = def_gen()
gen.gen_def(t, dest)