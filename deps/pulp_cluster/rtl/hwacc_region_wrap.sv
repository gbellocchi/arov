
/*
 *
 * Copyright (C) 2018 ETH Zurich, University of Bologna
 * Copyright and related rights are licensed under the Solderpad Hardware
 * License, Version 0.51 (the "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of the License at
 * http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
 * or agreed to in writing, software, hardware and materials distributed under
 * this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 * Author:  Gianluca Bellocchi <gianluca.bellocchi@unimore.it>
 *
 * Module: hwacc_region_wrap.sv
 *
 * This module is automatically compiled using the hwpe-wrapper-tool.
 *
 */

module hwacc_region_wrap import hwacc_package::*;
#(
  // Cluster
  parameter NB_CORES = 2,
  parameter ID_WIDTH = 8,

  // Accelerators
  localparam int NB_HWACC = N_HWACC,

  // Master ports
  localparam int NB_HWACC_PORTS_0      = N_HWACC_PORTS_0,
  localparam int NB_HWACC_PORTS_1      = N_HWACC_PORTS_1,
  localparam int NB_HWACC_PORTS_2      = N_HWACC_PORTS_2,
  localparam int NB_HWACC_PORTS_TOTAL  = N_HWACC_PORTS_TOTAL
)
(
  input  logic                                    clk,
  input  logic                                    rst_n,
  input  logic                                    test_mode,
  XBAR_TCDM_BUS.Master                            hwacc_xbar_master[NB_HWACC_PORTS_TOTAL-1:0],
  XBAR_PERIPH_BUS.Slave                           hwacc_cfg_slave[NB_HWACC-1:0],
  output logic [NB_HWACC-1:0][NB_CORES-1:0][1:0]  evt_o,
  output logic                                    busy_o
);

  logic [NB_HWACC-1:0] busy_acc;

  /* ---------------------------------------------------------- */

  /* Acceleration region #0. */

  parameter mst_idx_0_H = NB_HWACC_PORTS_0 - 1;
  parameter mst_idx_0_L = 0;

  hwacc_region #(
    .N_CORES          ( NB_CORES ),
    .N_HWACC_PORTS    ( NB_HWACC_PORTS_0 ),
    .ID_WIDTH         ( ID_WIDTH )
  ) hwacc_region_0 (
    .clk              ( clk                                         ),
    .rst_n            ( rst_n                                       ),
    .test_mode        ( test_mode                                   ),
    .hwacc_mst        ( hwacc_xbar_master[mst_idx_0_H:mst_idx_0_L]  ), 
    .hwacc_slv        ( hwacc_cfg_slave[0]                          ), 
    .evt_o            ( evt_o[0]                                    ),
    .busy_o           ( busy_acc[0]                                 ) 
  );

  assign busy_acc[0] = 1'b1;

  /* ---------------------------------------------------------- */

  /* Acceleration region #1. */

  parameter mst_idx_1_H = NB_HWACC_PORTS_0 + NB_HWACC_PORTS_1 - 1;
  parameter mst_idx_1_L = NB_HWACC_PORTS_0;

  hwacc_region #(
    .N_CORES          ( NB_CORES ),
    .N_HWACC_PORTS    ( NB_HWACC_PORTS_1 ),
    .ID_WIDTH         ( ID_WIDTH )
  ) hwacc_region_1 (
    .clk              ( clk                                         ),
    .rst_n            ( rst_n                                       ),
    .test_mode        ( test_mode                                   ),
    .hwacc_mst        ( hwacc_xbar_master[mst_idx_1_H:mst_idx_1_L]  ),
    .hwacc_slv        ( hwacc_cfg_slave[1]                          ), 
    .evt_o            ( evt_o[1]                                    ),
    .busy_o           ( busy_acc[1]                                 ) 
  );

  assign busy_acc[1] = 1'b1;

  /* ---------------------------------------------------------- */

  /* Acceleration region #2. */

  parameter mst_idx_2_H = NB_HWACC_PORTS_0 + NB_HWACC_PORTS_1 + NB_HWACC_PORTS_2 - 1;
  parameter mst_idx_2_L = NB_HWACC_PORTS_0 + NB_HWACC_PORTS_1;

  hwacc_region #(
    .N_CORES          ( NB_CORES ),
    .N_HWACC_PORTS    ( NB_HWACC_PORTS_2 ),
    .ID_WIDTH         ( ID_WIDTH )
  ) hwacc_region_2 (
    .clk              ( clk                                         ),
    .rst_n            ( rst_n                                       ),
    .test_mode        ( test_mode                                   ),
    .hwacc_mst        ( hwacc_xbar_master[mst_idx_2_H:mst_idx_2_L]  ),
    .hwacc_slv        ( hwacc_cfg_slave[2]                          ), 
    .evt_o            ( evt_o[2]                                    ),
    .busy_o           ( busy_acc[2]                                 ) 
  );

  assign busy_acc[2] = 1'b1;

  /* ---------------------------------------------------------- */

  assign busy_o = busy_acc[0] |busy_acc[1] | busy_acc[2];

endmodule