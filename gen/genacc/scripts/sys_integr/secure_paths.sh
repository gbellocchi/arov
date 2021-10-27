########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/bin/bash

error_exit()
{
  echo -e "\n$1\n" 1>&2
  exit 1
}

echo -e "\n>> Checking overlay hardware subsystem...\n"

readonly OVERLAY_SRC=$1
readonly OVERLAY_DEPS=$2
readonly OVERLAY_TEST=$3

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ------------------------------ #
#  Check if OVERLAY_SRC exists.  #
# ------------------------------ #

echo -e "|------------------------|"
echo -e "| OVERLAY - RTL SOURCES. |"
echo -e "|------------------------|\n"

if [ -d "$OVERLAY_SRC" ]; then
	# Take action if it exists. #
	echo -e ">> A src/ directory has been found -> $OVERLAY_SRC"
	echo -e ">> This location should comprise SystemVerilog source files to parametrize the PULP-based overlay system."
	echo -e "\n>> Is it a correct path?"

	select yn in "yes" "no" "help"; do
		case $yn in
			yes ) 	echo -e "\n"
					break;;
			no ) 	error_exit ">> Erroneous path for system-level integration! Aborting.";;
			help ) 	echo -e "\n>> Content of $OVERLAY_SRC:\n" 
					ls -1 $OVERLAY_SRC
					echo -e "\n"
					echo -e "\n>> Is it a correct path?";;
		esac
	done
else
	# Take action if it does not exist. #
	error_exit ">> No src/ directory has been found. Be sure to properly setup your $HERO_OV_HW_EXPORT environment."
fi

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ------------------------------- #
#  Check if OVERLAY_DEPS exists.  #
# ------------------------------- #

echo -e "|-----------------------------|"
echo -e "| OVERLAY - RTL DEPENDENCIES. |"
echo -e "|-----------------------------|\n"

if [ -d "$OVERLAY_DEPS" ]; then
	# Take action if it exists. #
	echo -e ">> A deps/ directory has been found -> $OVERLAY_DEPS"
	echo -e ">> This location should comprise SystemVerilog dependencies. Basically, the overlay IPs (RISC-V core, DMA, HWPE accelerators, etc.)."
	echo -e "\n>> Is it a correct path?"

	select yn in "yes" "no" "help"; do
		case $yn in
			yes ) 	echo -e "\n"
					break;;
			no ) 	error_exit ">> Erroneous path for system-level integration! Aborting.";;
			help ) 	echo -e "\n>> Content of $OVERLAY_DEPS:\n" 
					ls -1 $OVERLAY_DEPS
					echo -e "\n"
					echo -e "\n>> Is it a correct path?";;
		esac
	done
else
	# Take action if it does not exist. #
	error_exit ">> No deps/ directory has been found. Be sure to properly setup your $HERO_OV_HW_EXPORT environment."
fi

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# ------------------------------- #
#  Check if OVERLAY_TEST exists.  #
# ------------------------------- #

echo -e "|---------------------------|"
echo -e "| OVERLAY - RTL TEST SUITE. |"
echo -e "|---------------------------|\n"

if [ -d "$OVERLAY_TEST" ]; then
	# Take action if it exists. #
	echo -e ">> A test/ directory has been found -> $OVERLAY_TEST"
	echo -e ">> This location comprises a SystemVerilog testbench to simulate the hardware behavior."
	echo -e "\n>> Is it a correct path?"

	select yn in "yes" "no" "help"; do
		case $yn in
			yes ) 	echo -e "\n"
					break;;
			no ) 	error_exit ">> Erroneous path for system-level integration! Aborting.";;
			help ) 	echo -e "\n>> Content of $OVERLAY_TEST:\n" 
					ls -1 $OVERLAY_TEST
					echo -e "\n"
					echo -e "\n>> Is it a correct path?";;
		esac
	done
else
	# Take action if it does not exist. #
	error_exit ">> No test/ directory has been found. Be sure to properly setup your $HERO_OV_HW_EXPORT environment."
fi

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

echo -e ">> Completed checking the overlay hardware environment."
echo -e "\n"

# ------------------------------ #
#  Completed environment check.  #
# ------------------------------ #