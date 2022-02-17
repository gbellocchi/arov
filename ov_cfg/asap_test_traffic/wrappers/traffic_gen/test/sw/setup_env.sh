########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/bin/bash

export VSIM_PATH=/home/gbellocchi/workspace_pulp/genacc/genacc/verif/hwpe-tb/hw/sim

# sdk-env
cd pulp-sdk-release
source env/env-sdk-2020.01.01.sh

# target
source pkg/sdk/2020.01.01/configs/pulpissimo.sh

# platform
source pkg/sdk/2020.01.01/configs/platform-rtl.sh

cd ../