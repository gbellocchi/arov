

/* =====================================================================
 * Project:      LIC accelerator region
 * Title:        pulp_cluster_0_lic_acc_region.template_sv
 * Description:  The accelerator region is connected to the overlay
 *               infrastructure by means of a logarithmic interconnect.
 *               This module also instantiates the accelerator interfaces
 *               to the accelerator wrappers.
 *
 * $Date:        29.12.2021
 * ===================================================================== */
/*
 * Copyright (C) 2021 University of Modena and Reggio Emilia.
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

  module lic_acc_region
  #(
    // Cluster
    parameter NB_CORES = 2,
    parameter ID_WIDTH = 8,

    // HWPE wrappers
    parameter NB_HWPE = 0,
    parameter NB_HWPE_LIC_PORTS_TOTAL = 0,
    parameter NB_HWPE_LIC_PORTS_WRAPPER_0 = pulp_cluster_0_cfg_pkg::N_HWPE_LIC_PORTS_WRAPPER_0,

    // Other params
    parameter N_DMA = 4,
    parameter N_EXT = 4,
    parameter N_MEM = 16,
    parameter N_MASTER_PORT = 4,
    parameter DEFAULT_DW = 32,
    parameter DEFAULT_AW = 32,
    parameter DEFAULT_BW = 8,
    parameter DEFAULT_WW = 10,
    parameter AWH = DEFAULT_AW
  )
  (
    input  logic                                        clk,
    input  logic                                        rst_n,
    input  logic                                        test_mode,

    XBAR_TCDM_BUS.Master                                hwpe_xbar_master[NB_HWPE_LIC_PORTS_TOTAL-1:0],
    XBAR_PERIPH_BUS.Slave                               hwpe_cfg_slave[NB_HWPE-1:0],

    output logic [NB_CORES-1:0][1:0]                    evt_o,
    output logic                                        busy_o
  );

  logic [NB_HWPE-1:0] hwpe_evt;
  logic [NB_HWPE-1:0] hwpe_busy;

  /* ---------------------------------------------------------- */

  /* Interface to accelerator #0. */

  localparam mst_idx_0_H = NB_HWPE_LIC_PORTS_WRAPPER_0 - 1;
  localparam mst_idx_0_L = 0;

  traffic_gen_cluster_intf #(
    .N_CORES          ( NB_CORES  ),
    .N_HWPE_PORTS     ( NB_HWPE_LIC_PORTS_WRAPPER_0   ),
    .ID_WIDTH         ( ID_WIDTH )
  ) i_cl_0_lic_intf_0 (
    .clk              ( clk                                         ),
    .rst_n            ( rst_n                                       ),
    .test_mode        ( test_mode                                   ),
    .hwpe_mst         ( hwpe_xbar_master[mst_idx_0_H:mst_idx_0_L]  ),
    .hwpe_slv         ( hwpe_cfg_slave[0]                          ),
    .evt_o            ( hwpe_evt[0]                                  ),
    .busy_o           ( hwpe_busy[0]                                 )
  );

  assign hwpe_busy[0] = 1'b1;

  /* ---------------------------------------------------------- */

  assign evt_o = hwpe_evt[0];
  assign busy_o = hwpe_busy[0];

endmodule

