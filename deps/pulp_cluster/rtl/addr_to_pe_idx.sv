/* =====================================================================
 * Project:      Address-to-peripheral-index
 * Title:        addr_to_pe_idx_v1.sv
 * Description:  Mapping of peripheral interconnect addresses to the 
 *               corresponding peripheral unit in the PULP cluster.
 *               This version has been conceived for accelerator-rich clusters.
 *
 * $Date:        5.7.2022
 * ===================================================================== */
/*
 * Copyright (C) 2022 University of Modena and Reggio Emilia.
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

module addr_to_pe_idx 
#(
    parameter DATA_WIDTH                        = 32,
    parameter ADDR_WIDTH                        = 32,
    parameter int unsigned PE_ROUTING_LSB       = 16,
    parameter int unsigned PE_ROUTING_MSB       = 19,
    parameter int unsigned PE_XBAR_N_OUPS       = 8,
    parameter bit ADDREXT                       = 1'b0,
    parameter CLUSTER_ALIAS                     = 1'b0,
    parameter CLUSTER_ALIAS_BASE                = 12'h000
    
)
(
    input logic [ADDR_WIDTH-1:0]                addr,
    input logic [ADDR_WIDTH-1:0]                addrext,
    output logic [$clog2(PE_XBAR_N_OUPS)-1:0]   out_pe_idx 
);
    localparam [$clog2(PE_XBAR_N_OUPS)-1:0] PE_IDX_EXT = pulp_cluster_package::SPER_EXT_ID;

    // The HWPE slave ports (programming) are attached to the peripheral interconnect.
    //
    // All HWPE IDs (except the one mapped to SPER_HWPE_ID = 4) have an address range of 0x200. 
    // For this purpose, the addr_to_pe_idx module has been extended to support this feature.
    //
    // The first HWPE-ID is 4, while the other port IDs are kept subsequently to SPER_EXT_ID = 7, 
    // hence 9, 10, etc.

    localparam PE_HWPE_REF_0_PORT = pulp_cluster_package::SPER_HWPE_ID;     // First HWPE
    localparam PE_HWPE_REF_1_PORT = pulp_cluster_package::SPER_EXT_ID + 1;  // All other HWPEs

    // Signals to calculate peripheral index
    logic [$clog2(PE_XBAR_N_OUPS)-1:0] r_addr;
    logic [$clog2(PE_XBAR_N_OUPS)-1:0] r_addr_shrink;
    logic r_addr_hwpe_ext;

    always_comb 
    begin
        
        if (ADDREXT && addrext != '0) begin
            out_pe_idx = PE_IDX_EXT;
        end 

        else if (
            /* if the access is to this cluster .. */
            (addr[31:24] == 8'h10 || (CLUSTER_ALIAS && addr[31:24] == CLUSTER_ALIAS_BASE[11:4]))
            /* .. and the peripherals */
            && (addr[23:20] >= 4'h2 && addr[23:20] <= 4'h3)
            ) begin

                /* decode peripheral to access */

                // -> Addresses comprising HWPE_REF_0 (addr_range=0x400)
                if (addr[PE_ROUTING_MSB:PE_ROUTING_LSB] == PE_HWPE_REF_0_PORT) begin
                    r_addr = addr[PE_ROUTING_MSB:PE_ROUTING_LSB];
                    r_addr_shrink = '0;
                    r_addr_hwpe_ext = '0;
                    out_pe_idx = r_addr;
                end

                // -> Addresses comprising both HWPE_REF_1 and all other HWPEs after it (addr_range=0x200)
                if (addr[PE_ROUTING_MSB:PE_ROUTING_LSB] >= PE_HWPE_REF_1_PORT) begin
                    r_addr = {addr[PE_ROUTING_MSB], 3'b0};
                    r_addr_shrink = 2 * addr[PE_ROUTING_MSB-1:PE_ROUTING_LSB];
                    r_addr_hwpe_ext = addr[PE_ROUTING_LSB-1];
                    out_pe_idx = r_addr + r_addr_shrink + r_addr_hwpe_ext;
                     
                end

                // -> Generic periph ports (addr_range=0x400)
                else begin
                    r_addr = addr[PE_ROUTING_MSB:PE_ROUTING_LSB];
                    r_addr_shrink = '0;
                    r_addr_hwpe_ext = '0;
                    out_pe_idx = r_addr;
                end

        end else begin
            /* decode to 'external' peripheral */
            out_pe_idx = PE_IDX_EXT;
        end

    end

endmodule