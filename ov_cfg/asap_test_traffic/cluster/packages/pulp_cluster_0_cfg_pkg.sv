

/*
 * Copyright (C) 2021 University of Modena and Reggio Emilia.
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

package automatic pulp_cluster_0_cfg_pkg;

    // -- RISC-V cores
    localparam int unsigned CORE_NAME = "RISCY";
    // Notes:
    // - instead of using the core name, information has to be propagated in the RTL as a numeric value (core type = 0, 1, etc.)

    localparam int unsigned N_CORES = 8;
    // Notes:
    // - must be a power of 2 and <= 8
    // - all clusters have same number of cores

    // -- HWPE wrapper - LIC interconnect

    localparam bit HWPE_LIC_PRESENT                   = 1'b1;

    localparam int N_HWPE_LIC                     = 1;

    localparam int N_HWPE_LIC_PORTS_WRAPPER_0             = 2;

    localparam int unsigned N_HWPE_LIC_PORTS_TOTAL    = 2;

    // -- HWPE wrapper - HCI interconnect

    localparam bit HWPE_HCI_PRESENT                   = 1'b0;

    localparam int N_HWPE_HCI                     = 0;

    localparam int unsigned N_HWPE_HCI_PORTS_TOTAL    = 0;

    // -- DMA
    localparam int unsigned DMA_STREAMS = 1;
    localparam int unsigned DMA_MAX_BURST_SIZE = 2048; // [B], must be a power of 2

    // Maximum number of transactions the DMA can have in flight
    localparam int unsigned DMA_MAX_N_TXNS = N_CORES;
    localparam int unsigned N_DMAS = 4; // larger values seem to break the cluster

    // -- Instruction Cache
    localparam int unsigned ICACHE_SIZE = 4096; // [B], must be a power of 2

    // -- TCDM
    localparam int unsigned N_TCDM_BANKS = 32; // must be a power of 2
    localparam int unsigned TCDM_SIZE = 128*1024; // [B], must be a power of 2

    // TCDM interconnect
    localparam bit L1_AMO_PRESENT = 1'b0;

    // position of HWPE peripherals on slave port of periph interconnect
    localparam int unsigned N_SPERIPHS = (N_HWPE_LIC + N_HWPE_HCI>1) ? (8 + N_HWPE_LIC + N_HWPE_HCI - 1) : 8;

    localparam SPER_HWPE_0_ID      = 4; // original offset on peripheral interconnect

endpackage