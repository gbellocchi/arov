# Overlay Generator (GenOv)
Contains all the open-source hardware involved in the overlay, together with the automated flow to generate wrapper interfaces for application-specific hardware accelerators. The hardware is managed by [bender](https://github.com/fabianschuiki/bender) for which a recent version can be installed by running `make` in this directory.

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