
########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/bin/bash

echo -e ">> Cloning git submodules that will come in useful...\n"

# Cloning git submodules
git submodule update --init --recursive

echo -e "\n                                                            ...done!"
echo -e "\n"