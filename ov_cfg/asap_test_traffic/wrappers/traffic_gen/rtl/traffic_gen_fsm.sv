

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
 * Module: traffic_gen_fsm.sv
 *
 */

import traffic_gen_package::*;
import hwpe_ctrl_package::*;

module traffic_gen_fsm (
  // Global signals
  input  logic                                  clk_i,
  input  logic                                  rst_ni,
  input  logic                                  test_mode_i,
  output logic                                  clear_i,
  // ctrl & flags
  output ctrl_streamer_traffic_gen_t                        ctrl_streamer_o,
  input  flags_streamer_traffic_gen_t                       flags_streamer_i,
  output ctrl_engine_traffic_gen_t                          ctrl_engine_o,
  input  flags_engine_traffic_gen_t                         flags_engine_i,
  output ctrl_uloop_t                           ctrl_ucode_o,
  input  flags_uloop_t                          flags_ucode_i,
  output ctrl_slave_t                           ctrl_slave_o,
  input  flags_slave_t                          flags_slave_i,
  input  ctrl_regfile_t                         reg_file_i,
  input  ctrl_fsm_traffic_gen_t                             ctrl_i
);

  // State signals
  typedef enum {
    FSM_IDLE,
    FSM_START,
    FSM_COMPUTE,
    FSM_WAIT,
    FSM_UPDATEIDX,
    FSM_TERMINATE
  } state_fsm_traffic_gen_t;

  state_fsm_traffic_gen_t curr_state, next_state;

  // State computation
  always_ff @(posedge clk_i or negedge rst_ni)
  begin : main_fsm_seq
    if(~rst_ni) begin
      curr_state <= FSM_IDLE;
    end
    else if(clear_i) begin
      curr_state <= FSM_IDLE;
    end
    else begin
      curr_state <= next_state;
    end
  end

  // State declaration
  always_comb
  begin : main_fsm_comb

    /* Initialize */

    // Address generator

    // Input stream - r_reqs (programmable)
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.trans_size      = ctrl_i.r_reqs_trans_size;
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.line_stride     = ctrl_i.r_reqs_line_stride;
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.line_length     = ctrl_i.r_reqs_line_length;
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.feat_stride     = ctrl_i.r_reqs_feat_stride;
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.feat_length     = ctrl_i.r_reqs_feat_length;
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.base_addr       = reg_file_i.hwpe_params[TRAFFIC_GEN_REG_R_REQS_ADDR] + (flags_ucode_i.offs[TRAFFIC_GEN_UCODE_R_REQS_OFFS]);
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.feat_roll       = ctrl_i.r_reqs_feat_roll;
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.loop_outer      = ctrl_i.r_reqs_loop_outer;
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.realign_type    = ctrl_i.r_reqs_realign_type;
    ctrl_streamer_o.r_reqs_source_ctrl.addressgen_ctrl.step            = ctrl_i.r_reqs_step;

    // Output stream - w_reqs (programmable)
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.trans_size      = ctrl_i.w_reqs_trans_size;
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.line_stride     = ctrl_i.w_reqs_line_stride;
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.line_length     = ctrl_i.w_reqs_line_length;
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.feat_stride     = ctrl_i.w_reqs_feat_stride;
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.feat_length     = ctrl_i.w_reqs_feat_length;
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.base_addr       = reg_file_i.hwpe_params[TRAFFIC_GEN_REG_W_REQS_ADDR] + (flags_ucode_i.offs[TRAFFIC_GEN_UCODE_W_REQS_OFFS]);
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.feat_roll       = ctrl_i.w_reqs_feat_roll;
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.loop_outer      = ctrl_i.w_reqs_loop_outer;
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.realign_type    = ctrl_i.w_reqs_realign_type;
    ctrl_streamer_o.w_reqs_sink_ctrl.addressgen_ctrl.step            = ctrl_i.w_reqs_step;

    // Streamer
        ctrl_streamer_o.r_reqs_source_ctrl.req_start    = '0;

    ctrl_streamer_o.w_reqs_sink_ctrl.req_start    = '0;

    // Engine
    ctrl_engine_o.clear      = '1; // Clear counters
    ctrl_engine_o.enable     = '1; // Enable execution
    ctrl_engine_o.start      = '0; // Trigger execution
    ctrl_engine_o.cnt_limit_w_reqs  = ctrl_i.cnt_limit_w_reqs;

    // Slave
    ctrl_slave_o.done = '0;
    ctrl_slave_o.evt  = '0;

    // Custom registers
    ctrl_engine_o.n_reqs    = ctrl_i.n_reqs;
    ctrl_engine_o.pwm_period    = ctrl_i.pwm_period;
    ctrl_engine_o.pwm_duty_cycle    = ctrl_i.pwm_duty_cycle;

    // Real finite-state machine
    next_state   = curr_state;

    ctrl_ucode_o.enable                        = '0;
    ctrl_ucode_o.clear                         = '0;

    /* States */

    case(curr_state)

      FSM_IDLE: begin
        // Wait for a start signal
        ctrl_ucode_o.clear = '1;
        if(flags_slave_i.start) begin
          next_state = FSM_START;
        end
      end

      FSM_START: begin
        // Update the indeces, then load the first feature
        if(

          flags_streamer_i.r_reqs_source_flags.ready_start &

          flags_streamer_i.w_reqs_sink_flags.ready_start

        ) begin

          next_state  = FSM_COMPUTE;
          ctrl_engine_o.start  = 1'b1;
          ctrl_engine_o.clear  = 1'b0;
          ctrl_engine_o.enable = 1'b1;

          // Request data streaming from/to TCDM

          ctrl_streamer_o.r_reqs_source_ctrl.req_start    = '1;

          ctrl_streamer_o.w_reqs_sink_ctrl.req_start    = '1;

        end
        else begin
          next_state = FSM_WAIT;
        end
      end

      FSM_COMPUTE: begin
        ctrl_engine_o.clear  = 1'b0;
        if(

          flags_engine_i.cnt_w_reqs == ctrl_i.cnt_limit_w_reqs

        ) begin
          next_state = FSM_TERMINATE;
        end
        if(flags_engine_i.ready) begin
          ctrl_engine_o.start  = 1'b1;
          ctrl_engine_o.clear  = 1'b0;
          ctrl_engine_o.enable = 1'b1;
        end
      end

      FSM_UPDATEIDX: begin
        // update the indeces, then go back to load or idle
        if(flags_ucode_i.valid == 1'b0) begin
          ctrl_ucode_o.enable = 1'b1;
        end
        else if(flags_ucode_i.done) begin
          next_state = FSM_TERMINATE;
        end
        else if(

          flags_streamer_i.r_reqs_source_flags.ready_start &

          flags_streamer_i.w_reqs_sink_flags.ready_start

        ) begin
          next_state = FSM_COMPUTE;

          ctrl_engine_o.start  = 1'b1;
          ctrl_engine_o.clear  = 1'b0;
          ctrl_engine_o.enable = 1'b1;

          // Request data streaming from/to TCDM

          ctrl_streamer_o.r_reqs_source_ctrl.req_start    = '1;

          ctrl_streamer_o.w_reqs_sink_ctrl.req_start    = '1;

        end
        else begin
          next_state = FSM_WAIT;
        end
      end

      FSM_WAIT: begin
        // wait for the flags to be ok then go back to load
        ctrl_engine_o.clear  = 1'b0;
        ctrl_engine_o.enable = 1'b0;
        ctrl_ucode_o.enable  = 1'b0;
        if(

          flags_streamer_i.r_reqs_source_flags.ready_start &

          flags_streamer_i.w_reqs_sink_flags.ready_start

        ) begin

          next_state = FSM_COMPUTE;
          ctrl_engine_o.start = 1'b1;
          ctrl_engine_o.enable = 1'b1;

          // Request data streaming from/to TCDM

          ctrl_streamer_o.r_reqs_source_ctrl.req_start    = '1;

          ctrl_streamer_o.w_reqs_sink_ctrl.req_start    = '1;

        end
      end

      FSM_TERMINATE: begin
        // wait for the flags to be ok then go back to idle
        ctrl_engine_o.clear  = 1'b0;
        ctrl_engine_o.enable = 1'b0;
        if(

          flags_streamer_i.r_reqs_source_flags.ready_start &

          flags_streamer_i.w_reqs_sink_flags.ready_start

        ) begin

          next_state = FSM_IDLE;
          ctrl_slave_o.done = 1'b1;
        end
      end
    endcase // curr_state
  end

endmodule