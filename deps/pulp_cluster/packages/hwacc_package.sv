
/*
 *
 * pulp_cluster_hwpe_pkg.sv
 *
 * Author: Gianluca Bellocchi <gianluca.bellocchi@unimore.it>
 *
 * Configuration package for HWPE module
 * This package has to be included in the 'pulp_cluster_cfg_pkg' configuration package
 * for PULP cluster OOC stub. Here are collected the HWPE design features that need to be
 * shared with the higher-level (with respect to the HWPE module) hardware modules
 * of the PULP system.
 *
 * Author:  Gianluca Bellocchi <gianluca.bellocchi@unimore.it>
 *
 * Module: hwacc_package.sv
 *
 * This package is automatically compiled using the hwpe-wrapper-tool.
 *
 */

package automatic hwacc_package;

  // IP block
  localparam bit HWACC_PRESENT               = 1'b1;
  localparam int N_HWACC                     = 3;
  
  // Interface
  localparam int N_HWACC_PORTS_0             = 3;
  localparam int N_HWACC_PORTS_1             = 3;
  localparam int N_HWACC_PORTS_2             = 3;

  localparam int N_HWACC_PORTS_TOTAL         = N_HWACC_PORTS_0 + N_HWACC_PORTS_1 + N_HWACC_PORTS_2;

endpackage