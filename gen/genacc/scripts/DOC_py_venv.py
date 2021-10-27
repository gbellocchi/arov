#!/bin/bash

# reference:
# https://www.devdungeon.com/content/python-virtual-environments-tutorial

###########################
# Outside the environment #
###########################

# Create a virtual environment named `my_venv` in your current directory
python3 -m venv tool_env

# activate venv (fish)
source tool_env/bin/activate.fish

# activate venv (bash)
source tool_env/bin/activate

##########################
# Inside the environment #
##########################

# deactivate venv
deactivate

# upgrade pip locally to venv 
python pip install --upgrade pip

# installed required packages
make init