# Verification

## Standalone Wrapper Testbench

### RTL sim
*This is a draft*
- Follow instruction in README.md
- the software compilation should be independent of the overlay to have a local-to-GenAcc test: install pulp-sdk
- all the IPs are OS so no problem with hardware compilation. however the wrapper should be propagated to the testebench

### Verilator
Ref: https://www.veripool.org/verilator/
### coco-tb
Ref: https://github.com/cocotb/cocotb.git
### DPI-C
Ref: https://www.doulos.com/knowhow/systemverilog/systemverilog-tutorials/systemverilog-dpi-tutorial/


## Standalone Overlay Testbench 

### RTL sim
GenAcc supports the generation of a simple test routine for the instantiation of HWPE in a standalone PULP-based overlay system. The routine is a software test that is run in bare-metal and generated through templating (as is the RTL).
Together with the latter are generated also: 

-  `archi.h` - This C header file comprises the definition of the base address of the HWPE slave port, as well as its register offsets.
-  `hal.h` - This C header file comprises the hardware abstraction layer of HWPE, that is to say the first software layer on top of the RTL. This comprises the APIs definition to access the HWPE registers. 

To simplify the life of the verification engineer, the tool also generates a list of QuestaSim waves that are invoked before the beginning of the simulation. This obviously only works when employing the QuestaSim GUI. The list of waves include all the basic hardware components for a complete verification at system-level. The simulation components are integrated at system-level together with the aforementioned Makefile recipe (`make overlay_integration`).

 If QuestaSim is installed, the simulation infrastructure can be initialized as follows:

```
cd HERO_OV_HW_EXPORT
make
cd vsim
make compile
```
To compile the software applications to run the standalone overlay tests is necessary to set up the simulation environment. At first, it is necessary to set the following environment variable:

```
export HERO_OV_OPENMP_TESTS=<your_path> (typically something like $HERO_HOME_DIR/openmp-examples)
```

To build applications for the simulation, the dynamic environment can be loaded with `source $HERO_OV_HOME_DIR/env/esim.sh`. Then, the software can be find in the `sw` sub-directory of the exported wrapper. To compile it:
```
make clean all
```

Afterwards, the binary can be loaded in the simulator with:

```
cd $HERO_OV_HW_EXPORT/vsim
make gen_slm_hwpe HWPE_REPO=hwpe-<target_acc_name>-wrapper/sw
make sim
```
where `<target_acc_name>` is the name of the repository of the generated accelerator wrapper (e.g. *mmult_parallel*).

# GitLab CI/CD
From WR:
*I have in mind to add up to the repository some continuous development methodologies to help with the insertion of new templating functionalities. I think this is important as our view is to expand the repository and to give other people the opportunity to modify the back-end. Discussing this point with Alessandro and Andrea, we think that It would be nice to have a regression control. To this end, something like the continuous integration (CI) runner that HERO already supports might be a nice-to-have feature to guarantee robustness. At first, a cool idea could be to take advantage of the testbench generation to “silently” run RTL tests on the accelerator library examples. This is to cover the first portion of the bugs that might manifest in the case of back-end updates.
The latter idea also overlaps with the requirement of having some verification of new user wrappers. We currently miss a way of giving feedback on the correct functionality of new wrappers at the RTL level apart from the employment of traditional RTL verification in QuestaSim. My idea is to head up to a sort of “silent” and automatic RTL simulation with minimal user intervention. I think this would be a nice addition to keep abstraction on the proposed methodology.*