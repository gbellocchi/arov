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
class artistim_gen:
    def __init__(self):
        pass
    
    def gen_stim(self, stim_list, dest_dir):
        n = 'arti_stim.h'
        with open(n, "w") as f:
            f.write(stim_list)
            try:
                source = n
                destination = dest_dir
                shutil.move(source, destination)
            except:
                pass

# Parameters - passed from Makefile
width  =  int(sys.argv[1])
height =  int(sys.argv[2])
depth =  int(sys.argv[3])
dest   =  sys.argv[4]

# Stimuli generation
a = []
cnt = 0
for i in range(0,height):
    for j in range(0,width):
        if not(((i*width+j)/depth)%2):
            a.append(1)
        else:
            a.append(1)

# Paste stimuli to string
s = ""
cnt = 0
for m in a:
    cnt+=1
    if not (cnt == width*height):
        s += "%d,\n" % m
    else:
        s += "%d\n" % m
with open(os.path.join(dest,'arti_stim.txt'), "w") as f:
    f.write(s)

# Paste string to header file template
t = ""
with open(dest+'/arti_stim.template_c', 'r') as f:
    t = f.read()
    f.close()
pulp_template = Template(t)
string = pulp_template.render(
    stim               = s, 
    data_type          = 'uint8_t',
    data_dim           = '8',
)
t = re.sub(r'\s+$', '', string, flags=re.M)

# Generate header file
gen = artistim_gen()
gen.gen_stim(t, dest)