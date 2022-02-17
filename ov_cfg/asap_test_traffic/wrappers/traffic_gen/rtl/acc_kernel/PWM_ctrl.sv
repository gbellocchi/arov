/* =====================================================================
 * Project:      Traffic generator
 * Title:        PWM_ctrl.sv
 * Description:  PWM controller for traffic generator. Some notes:
 *                  - pwm_period    ~ PWM signal period (T). Expressed in terms of clock cycles (Tck).
 *                  - pwm_pulse     ~ PWM pulse duration (T*D)). Expressed in terms of clock cycles (Tck).
 *                  - pwm_size      ~ PWM pulse value.
 *                  - pwm_enable    ~ Enable to enable/disable PWM pulse creation.
 *                  - pwm_out       ~ Modulated signal. It drives streaming protocol signals (valid/ready).
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

module PWM_ctrl #(
    parameter int unsigned WORD_WIDTH = 32
) (
    input logic clk_i,
    input logic rstn_i,
    input logic [WORD_WIDTH-1:0] pwm_period, 
    input logic [WORD_WIDTH-1:0] pwm_pulse,
    input logic pwm_size, 
    input logic pwm_enable,
    output logic pwm_out
);

    // PWM ctrl states
    enum   {IDLE, HIGH, LOW} state, next_state;
    
    // Signals
    logic restart;
    logic [WORD_WIDTH-1:0] count;

    logic [WORD_WIDTH-1:0] T;
    logic [WORD_WIDTH-1:0] D;
    logic A;
    logic enable;
    assign T=pwm_period;
    assign D=pwm_pulse;
    assign A=pwm_size;
    assign enable=pwm_enable;

    logic pwm;

    // Timer
    PWM_timer #(
        .WORD_WIDTH (32)
    ) i_PWM_timer (   
        .clk        ( clk_i     ),
        .rstn       ( rstn_i    ),
        .restart    ( restart   ),
        .count      ( count     )
    );

    // FSM

    // additional signals (useful in sim)
    logic [WORD_WIDTH-1:0] comp;
    logic high2low;
    logic low2high;
    assign comp=count+1;
    assign high2low = (comp == D);
    assign low2high = (comp == T);

    always_ff @(posedge clk_i, negedge rstn_i) begin
        if(rstn_i == 1'b0)
            state = IDLE;
        else
            state = next_state;
    end

    always_comb
    begin
    restart = 1'b0;
    case(state)

        // IDLE state --> no PWM signal
        IDLE: begin
            if(enable == 1'b1) begin
                next_state = HIGH;
                pwm = 1'b0;
                restart = 1'b1;
            end
            else begin
                next_state = IDLE;
                pwm = 1'b0;
                restart = 1'b0;
            end
        end

        // Pulse HIGH
        HIGH: begin
            pwm = A;
            if(enable == 1'b0)
                next_state = IDLE;
            else
                if (high2low)
                    next_state = LOW;
        end
        
        // Pulse LOW
        LOW: begin
            pwm = 1'b0;
            if(enable == 1'b0)
                next_state = IDLE;
            else
                if (low2high) begin
                    next_state = HIGH;
                    restart = 1'b1;
                end
        end

        default: begin
            pwm = 1'b0;
            next_state = IDLE;
        end
    endcase
    end

    assign pwm_out = pwm;
    
endmodule