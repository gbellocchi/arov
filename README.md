
# Accelerator-Rich Overlay (ArOv)
The repository comprises all the open-source hardware and scripts to support the hardware implementation of our **FPGA Overlays**.

As proposed in [1], ArOv overlays are based on the RISC-V instruction set architecture (ISA), as an extension of HERO, an open-source research platform for heterogeneous multi-/many-core architectures based on the Parallel Ultra Low Power (PULP) Platform [2,3].

## Getting Started

### Environment
Source [setup.sh](https://github.com/gbellocchi/xil_open_hw_23/blob/dev/setup.sh) to invoke the environment needed to interact with the components of this repository.
  
### External Sources

To pull the required Git submodules, run:
```branch
git submodule update --init --recursive
```

### Structure of the Repository
The repository is the following:

-  `ov_cfg/` - Collection of generated source files to customize accelerator-rich system.
-  `deps/` - SystemVerilog dependencies. Basically, the overlay IPs (RISC-V core, DMA, memory, etc.).
-  `test/` - SystemVerilog testbench to simulate the behavior of the target accelerator-rich system.
-  `vsim/` - Scripts to set up and run simulations.
-  `fpga/` - FPGA build flow and associated scripts.

### Version Control
Version control is currently managed in a hybrid way:
- The RTL dependencies are flattened in the *ArOv* Git repository, meaning that once a RTL component is added, this does not behave as a submodules, but is added to the file tree with a `git add`. This has the advantage to make modifications possible with no need to modify the remote repository. The latter operation can be realized once the modifications are finally stable.
- The information about the RTL tree dependencies is propagated to tools, such as *vivado* and *QuestaSim*, with the employment of [Bender](https://github.com/fabianschuiki/bender#configuration-format-benderyml-benderlocal). The latter is used to generate configuration scripts that feed the target tool with the proper source file listings and compilation scripts.

## FPGA build
Run the command `make fpga TARGET_OV=<your_overlay>`.

To launch the FPGA build, an overlay instance responding to the name of <your_overlay> is expected under `ov_cfg`.

## Standalone Overlay Simulation

### Software Test - OpenMP examples (HERO repository)
This solution is for users who have a HERO repository installed. A test application could be run in simulation as follows.

1) Set the following environment variable to the top directory of your HERO ecosystem: `export HERO_HOME_DIR=<your_path> (typically something like $HOME/workspace_user/hero)`.
2) Be sure to source the proper environment to compile the software tests: `source $HERO_HOME_DIR/env/esim.sh`.
3) Move to the directory of your test application (for example `$HERO_HOME_DIR/openmp-examples/helloworld`). It does not have to be necessarily an heterogeneous application, as tests will only run on the accelerator-rich system (no host included).
4) Build the application in standalone mode with `make only=pulp clean all`.
5) Go back to the AROV root.
6) Launch the simulation.

### Launch simulation
To run verification tests on QuestaSim, you can run the command `make vsim`.
Additionally, add the following arguments:

-  **APP_PATH**: This is to specify the path to the test application that has been just built. For example, you can run the command: `make vsim APP_PATH=${HERO_OV_HOME_DIR}/helloworld`.
-  **GUI**: The script runs by default a QuestaSim GUI. To run the simulation in console-only mode set the variable `GUI` to 0 when launching the simulation command. For example: `make vsim GUI=0`

Note that *Bender* creates a TCL file named `compile.tcl` to inform QuestaSim about the structure of the RTL dependency tree associated with the target system under-test.

After this, the application binary is retrieved and partitioned according to the L2 and L1 bank structure. At this point, the simulation starts: the testbench will load memories with the partitioned binary and cores will be activated to execute the test application.

## References
1) **"A RISC-V-based FPGA Overlay to Simplify Embedded Accelerator Deployment" - G. Bellocchi et al. (2021)**
2) "HERO: An open-source research platform for HW/SW exploration of heterogeneous manycore systems" - A. Kurth et al. (2018)
3) "PULP: A parallel ultra low power platform for next generation IoT applications" - D. Rossi et al. (2015)

## Contacts
**Gianluca Bellocchi**
* E-mail: <gianluca.bellocchi@unimore.it>
