#!/usr/bin/env bash

set -e

error_exit()
{
  echo -e "\n$1\n" 1>&2
  exit 1
}

echo -e "Partition of compiled test application and generation of SLM files\n"

# test folder
readonly test_path="$( cd "$(dirname "$0")" ; pwd -P )"

# read arguments from makefile
readonly app_path="$1"

# useful variables
readonly dir_slm_files="$test_path/slm_files"
readonly app_name=$(basename $app_path)

# get slm_conv bin
if [ -f "$test_path/slm_conv" ]; then
    slm_conv="$test_path/slm_conv"
elif [ -f "$test_path/slm_conv-0.3" ]; then
    slm_conv='slm_conv-0.3'
elif ! which $slm_conv &>/dev/null; then
    slm_conv=~/bin/slm_conv-0.3
else
    error_exit "No SLM file converter has been found in the test directory. Aborting."
fi

# clear slm-files of previous simulations
if [ -d "$dir_slm_files" ]; then
    rm -f $dir_slm_files/*
else
    error_exit "No SLM file directory has been found. Aborting."
fi

# access directory containing slm-files
cd $dir_slm_files

# partition L1 binaries for RTL simulation
if [ -f "$app_path/${app_name}_l1.slm" ]; then
    $slm_conv --swap-endianness -f "$app_path/${app_name}_l1.slm" \
    -w 32 -P 64 -S 1 -n 1024 -s 0x10000000 -F l1_%01S_%01P.slm
else
    error_exit "Missing L1 binaries at $app_path/. Aborting."
fi

# partition L2 binaries for RTL simulation
if [ -f "$app_path/${app_name}_l2.slm" ]; then
    $slm_conv --swap-endianness -f "$app_path/${app_name}_l2.slm" \
    -w 32 -P 4 -S 8 -n 1024 -s 0x1c000000 -F l2_%01S_%01P.slm
else
    error_exit "Missing L2 binaries at $app_path/. Aborting."
fi

# local copy of disassembly file
cp "$app_path/$app_name.dis" "${app_name}.dis"