

/* =====================================================================
 * Project:      Peripheral accelerator interface
 * Title:        pulp_cluster_0_lic_acc_intf.template_sv
 * Description:  The peripheral accelerator interface routes the slave
 *               peripheral signals toward the slave port of HWPE-based
 *               accelerator wrappers.
 *
 * $Date:        19.1.2022
 * ===================================================================== */
/*
 * Copyright (C) 2021 University of Modena and Reggio Emilia.
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

module periph_acc_intf
#(
  parameter NB_HWPE        = 0,
  parameter NB_SPERIPHS    = 8
)
(
  input  logic                                        clk,
  input  logic                                        rst_n,
  input  logic                                        test_mode,

  XBAR_PERIPH_BUS.Slave                               speriph_slave[NB_SPERIPHS-1:0],
  XBAR_PERIPH_BUS.Master                              hwpe_cfg_master[NB_HWPE-1:0]
);

  // Wrapper #0
  assign speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].gnt     = hwpe_cfg_master[0].gnt;
  assign speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].r_rdata = hwpe_cfg_master[0].r_rdata;
  assign speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].r_opc   = hwpe_cfg_master[0].r_opc;
  assign speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].r_id    = hwpe_cfg_master[0].r_id;
  assign speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].r_valid = hwpe_cfg_master[0].r_valid;

  assign hwpe_cfg_master[0].req   = speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].req;
  assign hwpe_cfg_master[0].add   = speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].add;
  assign hwpe_cfg_master[0].wen   = speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].wen;
  assign hwpe_cfg_master[0].wdata = speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].wdata;
  assign hwpe_cfg_master[0].be    = speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].be;
  assign hwpe_cfg_master[0].id    = speriph_slave[pulp_cluster_0_cfg_pkg::SPER_HWPE_0_ID].id;

endmodule