
########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/bin/bash

error_exit()
{
  echo -e "\n$1\n" 1>&2
  exit 1
}

readonly GEN_VENV=$1
readonly OUT_DIR=$1

# Activate environment
source $GEN_VENV/bin/activate

if [ -d "$OUT_DIR/hw" ] || [ -d "$OUT_DIR/sw" ]; then
    # Take action if output files do already exist.
    error_exit ">> Output files do already exist. Be sure to initialize your output directory with 'make clean_gen'."
else
    # Get source components (see Maekfile recipe deps)
    echo -e ">> Retrieving target engine from accelerator library...\n"
    echo -e "                                                    ...done!\n"
    # Run generator
    echo -e ">> Accelerator wrapper specialization...\n"
    python genacc.py
    echo -e "                                     ...done!"
    echo -e "\n"
fi

# Deactivate environment
deactivate