# Overlay Generator (GenOv)
The repository comprises all the open-source hardware involved in the overlay, together with the automated flow to generate wrapper interfaces for application-specific hardware accelerators and system components.

## Introduction

## Getting Started

### Clone the Repository
The overlay generator should be cloned at first:
```
git clone git@iis-git.ee.ethz.ch:gianluca.bellocchi/genov.git
```

### Structure of the Repository
The repository comprises two main sections:

-  `gen/` - This location comprises the necessary items to generate system components and accelerator wrappers.
-  `ov/` - This location comprises the RTL components of the hardware overlay, together with all the necessary items to target system verification and invoke the FPGA build flow. 

### External Sources
Version control is managed through [bender](https://github.com/fabianschuiki/bender#configuration-format-benderyml-benderlocal) on both of them. To locally install the tool, run:
```sh
 make bender
```

Then, to initialize the generation subsystem, run:
```sh
make init_gen
```

### Set Up GenAcc
***follow readme.md***

## Overlay generation
*draft*
- why overlay_clsuter repo?

## Accelerator wrapper generation
*draft*

Export to /deps
- explain how it is managed - either acc-spec repo or hwpe-generated-ex

System-level integration of accelerator support components:
- ov_acc_intf.sv
-- overlay_clsuter
- ov_acc_pkg.sv
-- Bender.yml contains it by default, but this has to be generated
- pulp_tb.wave.do

## Simulation
*to-be-aligned*

To initialize RTL simulation, the hardware should be compiled by running `vsim/compile.sh`. Hereafter a heterogeneous application could be run in simulation as follows:
* Move to a subdirectory of `openmp-examples` with a heterogeneous application (for example `openmp-examples/polybench-acc/2mm`).
* (Re)build the application in standalone mode with `make only=pulp clean all`.
* Goto `hardware/test` and generate teh appropriate files with `./gen_slm_files.sh` with the path to the heterogeneous application after `openmp-examples` (for example `./gen_slm_files.sh polybench-acc/2mm`).
* Start the simulation of the application by going to the `vsim` directory and running `./start_sim.sh`.