

/*
 * HWPE: Francesco Conti <fconti@iis.ee.ethz.ch>
 *
 * Copyright (C) 2018 ETH Zurich, University of Bologna
 * Copyright and related rights are licensed under the Solderpad Hardware
 * License, Version 0.51 (the "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of the License at
 * http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
 * or agreed to in writing, software, hardware and materials distributed under
 * this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 * HWPE author: Francesco Conti <fconti@iis.ee.ethz.ch>
 * HWPE specialization tool: Gianluca Bellocchi <gianluca.bellocchi@unimore.it>
 *
 * Module: traffic_gen_engine.sv
 *
 */

import traffic_gen_package::*;

module traffic_gen_engine (
  // Global signals
  input  logic          clk_i,
  input  logic          rst_ni,
  input  logic          test_mode_i,

  // Sink ports
  hwpe_stream_intf_stream.sink r_reqs_i,

  // Source ports
  hwpe_stream_intf_stream.source w_reqs_o,

  // Control channel
  input  ctrl_engine_traffic_gen_t            ctrl_i,
  output flags_engine_traffic_gen_t           flags_o
);

  /* Control signals */

  ctrl_kernel_adapter_traffic_gen_t ctrl_k_ad;

  assign ctrl_k_ad.start = ctrl_i.start;

  /* Flag signals */

  flags_kernel_adapter_traffic_gen_t flags_k_ad;

  assign flags_o.done = flags_k_ad.done;

  always_ff @(posedge clk_i or negedge rst_ni)
  begin: fsm_ready
    if(~rst_ni)
      flags_o.ready = 1'b0;
    else if(~(flags_k_ad.ready | flags_k_ad.idle))
      flags_o.ready = 1'b0;
    else
      flags_o.ready = 1'b1;
  end

  /* Count outputs */

  // Declaration of trackers

  logic track_w_reqs_q, track_w_reqs_d;

  // Declaration of counters

  logic unsigned [($clog2(TRAFFIC_GEN_CNT_LEN)+1):0] cnt_w_reqs;

  // AND-ed trackers implementation (FF)

  always_comb
  begin: w_reqs_track_q
    if(~rst_ni | ctrl_i.clear) begin
      track_w_reqs_d = '0;
    end
    else if(w_reqs_o.valid & w_reqs_o.ready) begin
      track_w_reqs_d = '1;
    end
    else begin
      track_w_reqs_d = '0;
    end
  end

  always_ff @(posedge clk_i or negedge rst_ni)
  begin: w_reqs_track_d
    if(~rst_ni) begin
      track_w_reqs_q <= '0;
    end
    else if(ctrl_i.clear) begin
      track_w_reqs_q <= '0;
    end
    else begin
      track_w_reqs_q <= track_w_reqs_d;
    end
  end

  // Counter implementation (FF)

  always_ff @(posedge clk_i or negedge rst_ni)
  begin: w_reqs_cnt
    if((~rst_ni) | ctrl_i.clear)
      cnt_w_reqs = 32'b0;
    else if( track_w_reqs_q & flags_o.done )
      cnt_w_reqs = cnt_w_reqs + 1;
    else
      cnt_w_reqs = cnt_w_reqs;
  end

  // Assign to fsm flags
  assign flags_o.cnt_w_reqs = cnt_w_reqs;

  /* Kernel adapter */

  traffic_gen_kernel_adapter i_traffic_gen_adapter (

    // Global signals
    .clk_i           ( clk_i            ),
    .rst_ni          ( rst_ni           ),
    .test_mode_i     ( test_mode_i      ),

    // Data streams
    .r_reqs_i ( r_reqs_i  ),
    .w_reqs_o ( w_reqs_o  ),

    // Kernel parameters
    .n_reqs        ( ctrl_i.n_reqs      ),
    .pwm_period        ( ctrl_i.pwm_period      ),
    .pwm_duty_cycle        ( ctrl_i.pwm_duty_cycle      ),

    // Control signals
    .ctrl_i      ( ctrl_k_ad            ),

    // Flag signals
    .flags_o       ( flags_k_ad             )

  );

  // At the moment output strobe is always '1
  // All bytes of output streams are written
  // to TCDM
  always_comb
  begin
    w_reqs_o.strb = '1;
  end

endmodule
