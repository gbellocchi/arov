
########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/bin/bash

readonly GEN_VENV=$1

# Create virtual python environment
echo -e ">> Creating virtual environment to generate a specialized accelerator wrapper...\n"
python3 -m venv $GEN_VENV
echo -e "                                                                             ...done!"

# Activate environment
source $GEN_VENV/bin/activate

echo -e ">> Installing some Python packages that will come in useful...\n"

# Install most updated pip version
python -m pip install --upgrade pip

# Install required python packages
# python setup.py install
python -m pip install -r requirements.txt

echo -e "\n                                                            ...done!"
echo -e "\n"

# Deactivate environment
deactivate