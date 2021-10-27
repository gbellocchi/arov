# Overlay Generator (GenOv)
The repository comprises all the open-source hardware involved in the overlay, together with the automated flow to generate wrapper interfaces for application-specific hardware accelerators and system components.

## Introduction
- what is GenOv
- what is GenAcc

## Getting Started

### Clone the Repository
The overlay generator should be cloned at first:
```
git clone git@iis-git.ee.ethz.ch:gianluca.bellocchi/genov.git
```

### Structure of the Repository
The repository is the following:

-  `src/` - SystemVerilog source files to parametrize the PULP-based overlay system.
-  `deps/` - SystemVerilog dependencies. Basically, the overlay IPs (RISC-V core, DMA, memory, etc.).
-  `genacc/` - This location comprises the necessary items to generate accelerator wrappers and associated system components.
-  `test/` - SystemVerilog testbench to simulate the behavior of the standalone overlay.
-  `vsim/` - This location comprises the scripts to set up and run a standalone overlay test on QuestaSim.

### Version Control
Version control is currently managed in a hybrid way:
- The RTL dependencies are flattened in the *genov* Git repository, meaning that once a RTL component is added, this does not behave as a submodules, but is added to the file tree with a `git add`. This has the advantage to make modifications possible with no need to modify the remote repository. The latter operation can be realized once the modifications are finally stable.
- The information about the RTL tree dependencies is propagated to tools, such as *vivado* and *QuestaSim*, with the employment of [Bender](https://github.com/fabianschuiki/bender#configuration-format-benderyml-benderlocal). The latter is used to generate configuration scripts that feed the target tool with the proper source file listings and compilation scripts.
- Additional tools, such as `GenAcc` figure as Git submodules from the perspective of GenOv.

### External Sources
To pull the required Git submodules, run `make init_gen`.

### Set Up GenAcc in GenOv
`GenAcc` functionality is about the interaction with a hosting repository, as `GenOv`. Most of *GenAcc* flow is handled locally to the tool. Then, when it comes to integrating the generated accelerators at the system-level, the associated process is fully automated and no-error-prone as far as the tool knows how to securely interface to the overlay.

Thus, to set up *GenAcc*, it is required to set the following environment variable to the top directory.
```
export HERO_OV_HW_EXPORT=<genov_path>
```
If the current directory is already the one of *GenOv* :
```
export HERO_OV_HW_EXPORT=$PWD
```

- spiega come settare le variabili di ambiente per l'exporting verso l'overlay

To export and integrate the generated hardware/software components to the overlay system. This process is fully automated and no-error-prone as far as the tool knows how to securely interface to the overlay.

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

## Standalone Overlay Simulation

### RTL Compilation
To set up and run standalone tests on QuestaSim, move to the `vsim/` sub-directory. 
To initialize RTL simulation, the hardware should be compiled by running `make compile`. Note that *Bender* creates a `compile.tcl` to inform QuestaSim about the structure of the RTL dependency tree.

### Software Test - OpenMP examples (HERO repository)
This solution is for users who have a HERO repository installed. A test application could be run in simulation as follows.

1) Set the following environment variable to the top directory of your HERO ecosystem: `export HERO_OV_HOME_DIR=<your_path> (typically something like $HOME/workspace_user/hero)`.

2) Be sure to source the proper environment to compile the software test: `source $HERO_OV_HOME_DIR/env/exilzcu102.sh`.

3) Move to a subdirectory of `$HERO_OV_HOME_DIR/openmp-examples` with a heterogeneous application (for example `openmp-examples/polybench-acc/2mm`).

4) (Re)build the application in standalone mode with `make only=pulp clean all`.

5) Go back to `$HERO_OV_HW_EXPORT/vsim`.

6) Open the `Makefile` and modify `APP_PATH` with the path to the app that has been just built (for example `${HERO_OV_HOME_DIR}/openmp-examples/polybench-acc/2mm`)

7) Generate the appropriate files with `make gen_slm`.

### Simulation
Start the simulation of the application by running `make sim`. 

The script runs by default a QuestaSim GUI. It is also possible to run the simulation in console-only mode by opening the `Makefile` and modifying the value `VSIM_GUI` to 0.

## References
1) "A RISC-V-based FPGA Overlay to Simplify Embedded Accelerator Deployment" - G. Bellocchi et al. (2021)

## Contacts
**Gianluca Bellocchi**
* Position: Researcher at University of Modena and Reggio Emilia
* E-mail: <gianluca.bellocchi@unimore.it>