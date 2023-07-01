
# FPGA Overlay
The repository comprises all the open-source hardware and scripts to support the hardware implementation of our **FPGA Overlays**.

***If you want to use _ArOv_, you can cite our paper [1].***

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

-  `ov_cfg/` - Collection of generated source files to customize the overlay system.
-  `deps/` - SystemVerilog dependencies. Basically, the overlay IPs (RISC-V core, DMA, memory, etc.).
-  `test/` - SystemVerilog testbench to simulate the behavior of the target overlay system.
-  `vsim/` - Scripts to set up and run simulations.
-  `fpga/` - FPGA build flow and associated scripts.

## FPGA build
Run the command `make fpga TARGET_OV=<your_overlay>`.

To launch the FPGA build, an overlay instance responding to the name of <your_overlay> is expected under `ov_cfg`.

## References
1) **"A RISC-V-based FPGA Overlay to Simplify Embedded Accelerator Deployment" - G. Bellocchi et al. (2021)**
2) "HERO: An open-source research platform for HW/SW exploration of heterogeneous manycore systems" - A. Kurth et al. (2018)
3) "PULP: A parallel ultra low power platform for next generation IoT applications" - D. Rossi et al. (2015)

## Contacts
**Gianluca Bellocchi**
* E-mail: <gianluca.bellocchi@unimore.it>