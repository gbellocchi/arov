########################################################
## Gianluca Bellocchi <gianluca.bellocchi@unimore.it> ##
########################################################

#!/bin/bash

error_exit()
{
  echo -e "\n$1\n" 1>&2
  exit 1
}

echo -e "\n>> Checking python virtual environment...\n"

readonly GEN_VENV=$1

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

# --------------------------- #
#  Check if GEN_VENV exists.  #
# --------------------------- #

echo -e "|-----------------------------------------|"
echo -e "| GENERATOR - PYTHON VIRTUAL ENVIRONMENT. |"
echo -e "|-----------------------------------------|\n"

if [ -d "$GEN_VENV" ]; then
  # Take action if it exists. #
  echo -e ">> A py-venv path has been found -> $GEN_VENV"
  echo -e ">> This location should correespond to the local python virtual environment for the generator."
  echo -e "\n>> Is it a correct path?"

  select yn in "yes" "no" "help"; do
    case $yn in
        yes )   echo -e "\n"
					      break;;
        no )    error_exit ">> Erroneous path for python virtual environment! Aborting.";;
        help )  echo -e "\n>> Content of $GEN_VENV:\n" 
                ls -1 $GEN_VENV
                echo -e "\n"
                echo -e "\n>> Is it a correct path?";;
    esac
  done
else
  # Take action if it does not exist. 
  error_exit ">> No py-venv path has been found. Be sure to initialize it with 'make init_venv'."
fi

# ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ #

echo -e ">> Completed checking the python virtual environment."
echo -e "\n"

# ------------------------------ #
#  Completed environment check.  #
# ------------------------------ #