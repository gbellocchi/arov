module addr_to_pe_idx #(
  parameter ADDREXT             = 1'b0,
  parameter CLUSTER_ALIAS       = 1'b0,
  parameter CLUSTER_ALIAS_BASE  = 12'h000,
  parameter PE_ROUTING_LSB      = 16,
  parameter PE_ROUTING_MSB      = 19,
  parameter PE_XBAR_N_OUPS      = 8
)
(
    input logic [31:0] addr, 
    input logic [31:0] addrext,
    output [$clog2(PE_XBAR_N_OUPS)-1:0] out_pe_idx
);
    localparam [$clog2(PE_XBAR_N_OUPS)-1:0] PE_IDX_EXT = pulp_cluster_package::SPER_EXT_ID;

    // The HWPE slave ports (programming) are attached to the peripheral interconnect.
    // The first HWPE-ID is 4 (address range 0x400), while the other port IDs are kept
    // subsequently to the external peripherals (SPER_EXT_ID = 7), thus 8, 9, etc.
    // The latters have a reduced address space (0x200). 
    //
    // To properly route the signals to the HWPE peripherals, the addr_to_pe_idx module
    // has been extended to differently calulate local_pe_idx for HWPEs with reduced address
    // space. The first HWPE that has a reduced address space is PE_HWPE_REF_PORT, tipically
    // at position SPER_EXT_ID + 1, as written above.
    //
    // The list of IDs can be found in PULP cluster configuration package (usually
    // similar to pulp_cluster_*_cfg_pkg.sv).

    localparam PE_HWPE_REF_PORT = pulp_cluster_package::SPER_EXT_ID + 1;

    // Signals to calculate peripheral index
    logic [$clog2(PE_XBAR_N_OUPS)-1:0] r_addr;
    logic [3:0] r_addr_shift;
    logic r_addr_hwpe_ext;

    // Local peripheral index
    logic [$clog2(PE_XBAR_N_OUPS)-1:0] local_pe_idx;

    // Calculate output peripheral index

    always_comb begin
        if (ADDREXT && addrext != '0) begin
            local_pe_idx = PE_IDX_EXT;
        end 
        else begin if (
            // if the access is to this cluster ..
            (addr[31:24] == 8'h10 || (CLUSTER_ALIAS && addr[31:24] == CLUSTER_ALIAS_BASE[11:4]))
            // .. and the peripherals
            && (addr[23:20] >= 4'h2 && addr[23:20] <= 4'h3)
            ) begin
                // decode peripheral to access

                // - HWPE ports (addr_range=0x200)
                if (addr[PE_ROUTING_MSB:PE_ROUTING_LSB] >= PE_HWPE_REF_PORT) begin
                    r_addr = {addr[PE_ROUTING_MSB], 3'b0};
                    r_addr_shift = addr[PE_ROUTING_MSB-1:PE_ROUTING_LSB]<<1;
                    r_addr_hwpe_ext = addr[PE_ROUTING_LSB-1];
                    local_pe_idx = r_addr + r_addr_shift + r_addr_hwpe_ext;

                // - Generic periph ports (addr_range=0x400)
                end else begin
                    r_addr = addr[PE_ROUTING_MSB:PE_ROUTING_LSB];
                    r_addr_shift = '0;
                    r_addr_hwpe_ext = '0;
                    local_pe_idx = r_addr;
                end
            end else begin
                // otherwise decode to 'external' peripheral
                local_pe_idx = PE_IDX_EXT;
            end
        end
    end

    assign out_pe_idx = local_pe_idx;

endmodule