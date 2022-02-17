

/* =====================================================================
 * Project:      SoC package
 * Title:        soc_package.sv
 * Description:  Configuration package for SoC
 *
 * $Date:        13.1.2022
 *
 * Design generated with GenOv
 *
 * Generator:    generate_soc
 * ===================================================================== */
/*
 * Copyright (C) 2021 University of Modena and Reggio Emilia.
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

package automatic soc_cfg_pkg;

  // -- Decoupling of cluster clock domain
  localparam bit          ASYNC = 1'b0;
  localparam int unsigned DC_BUF_W = 8;

  // -- AXI
  localparam int unsigned AXI_AW = 64; // [bit]
  localparam int unsigned AXI_DW = 64; // [bit]
  localparam int unsigned AXI_IW_MST = 6; // [bit]; do not change, seems to break instruction cache
  localparam int unsigned AXI_IW_SLV = 4; // [bit]
  localparam int unsigned AXI_UW = 4; // [bit]

  // -- Cluster
  localparam int unsigned N_CLUSTERS = 1;

  // -- L2 Memory
  localparam int unsigned L2_SIZE = 128*1024; // [B], must be a power of 2
  localparam bit L2_AMO_PRESENT = 1'b0;

  // Maximum number of beats in a DMA burst on the SoC bus
  localparam int unsigned DMA_MAX_BURST_LEN = (pulp_cluster_0_cfg_pkg::DMA_MAX_BURST_SIZE) / (AXI_DW/8); // to be possibly specified for each cluster on the basis of BW needs

  typedef logic      [AXI_AW-1:0] addr_t;
  typedef logic             [5:0] cluster_id_t;
  typedef logic      [AXI_DW-1:0] data_t;
  typedef logic    [DC_BUF_W-1:0] dc_buf_t;
  typedef logic  [AXI_IW_MST-1:0] id_mst_t;
  typedef logic  [AXI_IW_SLV-1:0] id_slv_t;
  typedef logic    [AXI_DW/8-1:0] strb_t;
  typedef logic      [AXI_UW-1:0] user_t;

endpackage