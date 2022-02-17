

/* =====================================================================
 * Project:      HWPE kernel adapter
 * Title:        hwpe_kernel_adapter.sv
 * Description:  Interface between hardware wrapper and accelerated kernel.
 *
 * $Date:        15.09.2021
 * ===================================================================== */
/*
 * Copyright (C) 2021 University of Modena and Reggio Emilia..
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

import traffic_gen_package::*;

module traffic_gen_kernel_adapter (
  // Global signals
  input  logic          clk_i,
  input  logic          rst_ni,
  input  logic          test_mode_i,

  // Sink ports
  hwpe_stream_intf_stream.sink r_reqs_i,

  // Source ports
  hwpe_stream_intf_stream.source w_reqs_o,

  // Kernel parameters
  input logic [31:0] n_reqs,
  input logic [31:0] pwm_period,
  input logic [31:0] pwm_duty_cycle,

  // Control signals
  input  ctrl_kernel_adapter_traffic_gen_t           ctrl_i,

  // Flag signals
  output  flags_kernel_adapter_traffic_gen_t           flags_o

);

  /* traffic_gen kernel interface. */

  traffic_gen i_traffic_gen (
    // Global signals.
    .ap_clk       ( clk_i            ),
    .ap_rst_n     ( rst_ni           ),

    // Sink ports
    .r_reqs_TDATA  ( r_reqs_i.data  ),
    .r_reqs_TVALID ( r_reqs_i.valid ),
    .r_reqs_TREADY ( r_reqs_i.ready ),

    // Source ports
    .w_reqs_TDATA  ( w_reqs_o.data  ),
    .w_reqs_TVALID ( w_reqs_o.valid ),
    .w_reqs_TREADY ( w_reqs_o.ready ),

    // Kernel parameters
    .n_reqs        ( n_reqs ),
    .pwm_period        ( pwm_period ),
    .pwm_duty_cycle        ( pwm_duty_cycle ),

    // Control signals.
    .ap_start      ( ctrl_i.start             ),
    .ap_done       ( flags_o.done             ),
    .ap_idle       ( flags_o.idle             ),
    .ap_ready      ( flags_o.ready            )
  );

endmodule
