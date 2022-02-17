

/* =====================================================================
 * Project:      Cluster interconnect interface for HWPE wrappers
 * Title:        traffic_gen_cluster_intf.template_sv
 * Description:  The interface is positioned in between an accelerator
 *               region and the top module of an accelerator wrapper.
 *               The goal of the IP is to decompose the crossbar TCDM
 *               master interface (from the overlay cluster) into the
 *               single signals of the TCDM communication protocol.
 *
 * $Date:        29.12.2021
 * ===================================================================== */
/*
 * Copyright (C) 2021 University of Modena and Reggio Emilia.
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

module traffic_gen_cluster_intf
#(
  parameter N_CORES = 2,
  parameter N_HWPE_PORTS = 2,
  parameter ID_WIDTH = 8
)
(
  input  logic                                        clk,
  input  logic                                        rst_n,
  input  logic                                        test_mode,

  XBAR_TCDM_BUS.Master                                hwpe_mst[N_HWPE_PORTS-1:0],
  XBAR_PERIPH_BUS.Slave                               hwpe_slv,

  output logic [N_CORES-1:0][1:0]                     evt_o,
  output logic                                        busy_o
);

  /* Local shared-memory interface. */

  logic [N_HWPE_PORTS-1:0]           tcdm_req;
  logic [N_HWPE_PORTS-1:0]           tcdm_gnt;
  logic [N_HWPE_PORTS-1:0] [32-1:0]  tcdm_add;
  logic [N_HWPE_PORTS-1:0]           tcdm_type;
  logic [N_HWPE_PORTS-1:0] [4 -1:0]  tcdm_be;
  logic [N_HWPE_PORTS-1:0] [32-1:0]  tcdm_wdata;
  logic [N_HWPE_PORTS-1:0] [32-1:0]  tcdm_r_rdata;
  logic [N_HWPE_PORTS-1:0]           tcdm_r_valid;

  /* Target accelerator wrapper. */
  traffic_gen_top_wrap #(
    .N_CORES          ( N_CORES ),
    .MP               ( N_HWPE_PORTS ),
    .ID               ( ID_WIDTH )
  ) i_top_wrap (
    .clk_i          ( clk                           ),
    .rst_ni         ( rst_n                         ),
    .test_mode_i    ( test_mode                     ),
    .tcdm_add       ( tcdm_add                      ),
    .tcdm_be        ( tcdm_be                       ),
    .tcdm_data      ( tcdm_wdata                    ),
    .tcdm_gnt       ( tcdm_gnt                      ),
    .tcdm_wen       ( tcdm_type                     ),
    .tcdm_req       ( tcdm_req                      ),
    .tcdm_r_data    ( tcdm_r_rdata                  ),
    .tcdm_r_valid   ( tcdm_r_valid                  ),
    .periph_add     ( hwpe_slv.add                  ),
    .periph_be      ( hwpe_slv.be                   ),
    .periph_data    ( hwpe_slv.wdata                ),
    .periph_gnt     ( hwpe_slv.gnt                  ),
    .periph_wen     ( hwpe_slv.wen                  ),
    .periph_req     ( hwpe_slv.req                  ),
    .periph_id      ( hwpe_slv.id                   ),
    .periph_r_data  ( hwpe_slv.r_rdata              ),
    .periph_r_valid ( hwpe_slv.r_valid              ),
    .periph_r_id    ( hwpe_slv.r_id                 ),
    .evt_o          ( evt_o[0]                      )
  );

  /* Local control. */

  assign busy_o = 1'b1;
  genvar i;
  generate
    for (i=0;i<N_HWPE_PORTS;i++) begin : hwacc_binding
      assign hwpe_mst[i].req   = tcdm_req   [i];
      assign hwpe_mst[i].add   = tcdm_add   [i];
      assign hwpe_mst[i].wen   = tcdm_type  [i];
      assign hwpe_mst[i].wdata = tcdm_wdata [i];
      assign hwpe_mst[i].be    = tcdm_be    [i];
      // response channel
      assign tcdm_gnt     [i] = hwpe_mst[i].gnt;
      assign tcdm_r_rdata [i] = hwpe_mst[i].r_rdata;
      assign tcdm_r_valid [i] = hwpe_mst[i].r_valid;
    end
  endgenerate
endmodule

