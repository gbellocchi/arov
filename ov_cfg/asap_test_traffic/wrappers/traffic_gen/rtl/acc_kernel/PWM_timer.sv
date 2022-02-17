/* =====================================================================
 * Project:      Traffic generator
 * Title:        PWM_timer.sv
 * Description:  Timer design.
 *
 * $Date:        16.2.2022
 *
 * ===================================================================== */
/*
 * Copyright (C) 2022 University of Modena and Reggio Emilia.
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

module PWM_timer #(
    parameter int unsigned WORD_WIDTH = 32
) (   
    input logic clk,
    input logic rstn,
    input logic restart,
    output [WORD_WIDTH-1:0] count
);
    
    logic [WORD_WIDTH-1:0] c;

    always_ff @(posedge clk, negedge rstn)
    begin
        if (rstn == 1'b0)
            c <= 0;
        else if ( restart == 1'b1 )
            c <= 0;
            else
                c <= c + 1;
    end

    assign count = c;

endmodule