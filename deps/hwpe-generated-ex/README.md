# Generated HWPE
This repository is intentionally left with no file inside! This directory acts as an empty shell for HWPE accelerators that gets generated via the GenAcc tool.

## How to use?
The best practice is to initialize this repository on a Git remote and then create a branch tailored to the application-specific hardware accelerator only.
```sh
git checkout -b hwpe-0
```
 From this point on, the exported accelerator wrappers can be exported on this local branch that can be used for RTL verification, to build FPGA bitstreams, and so on.

To change application, the user just has to checkout to a new branch `git checkout -b hwpe-1` and continue its testing and development operations.