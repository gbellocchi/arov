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
    output [$clog2(PE_XBAR_N_OUPS)-1:0] out_idx
);
    localparam [$clog2(PE_XBAR_N_OUPS)-1:0] PE_IDX_EXT = pulp_cluster_package::SPER_EXT_ID;

    logic [$clog2(PE_XBAR_N_OUPS)-1:0] local_idx;

    always_comb begin
        if (ADDREXT && addrext != '0) begin
            local_idx = PE_IDX_EXT;
        end 
        else begin if (
            // if the access is to this cluster ..
            (addr[31:24] == 8'h10 || (CLUSTER_ALIAS && addr[31:24] == CLUSTER_ALIAS_BASE[11:4]))
            // .. and the peripherals
            && (addr[23:20] >= 4'h2 && addr[23:20] <= 4'h3)
            ) begin
                // decode peripheral to access
                local_idx = addr[PE_ROUTING_MSB:PE_ROUTING_LSB];
            end else begin
                // otherwise decode to 'external' peripheral
                local_idx = PE_IDX_EXT;
            end
        end
    end

    assign out_idx = local_idx;

endmodule