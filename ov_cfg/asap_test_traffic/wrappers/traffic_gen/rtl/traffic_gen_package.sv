

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
 * Module: traffic_gen_package.sv
 *
 */

import hwpe_stream_package::*;

package traffic_gen_package;

  parameter int unsigned TRAFFIC_GEN_CNT_LEN = 1024; // maximum length of the vectors for a scalar product

  /* Registers */

  // TCDM

  // Input ports
  parameter int unsigned TRAFFIC_GEN_REG_R_REQS_ADDR                = 0;

  // Output ports
  parameter int unsigned TRAFFIC_GEN_REG_W_REQS_ADDR                = 1;

  // Standard registers

  parameter int unsigned TRAFFIC_GEN_REG_NB_ITER              = 2;

  parameter int unsigned TRAFFIC_GEN_REG_SHIFT_LINESTRIDE     = 3;

  parameter int unsigned TRAFFIC_GEN_REG_SHIFT_TILESTRIDE     = 4;

  parameter int unsigned TRAFFIC_GEN_REG_CNT_LIMIT_W_REQS     = 5;

  // Custom registers

  parameter int unsigned TRAFFIC_GEN_REG_N_REQS             = 6;

  parameter int unsigned TRAFFIC_GEN_REG_PWM_PERIOD             = 7;

  parameter int unsigned TRAFFIC_GEN_REG_PWM_DUTY_CYCLE             = 8;

    // Input stream - r_reqs (programmable)
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_TRANS_SIZE       = 9;
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_LINE_STRIDE      = 10;
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_LINE_LENGTH      = 11;
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_FEAT_STRIDE      = 12;
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_FEAT_LENGTH      = 13;
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_FEAT_ROLL        = 14;
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_LOOP_OUTER       = 15;
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_REALIGN_TYPE     = 16;
    parameter int unsigned TRAFFIC_GEN_REG_R_REQS_STEP             = 17;

    // Output stream - w_reqs (programmable)
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_TRANS_SIZE       = 18;
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_LINE_STRIDE      = 19;
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_LINE_LENGTH      = 20;
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_FEAT_STRIDE      = 21;
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_FEAT_LENGTH      = 22;
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_FEAT_ROLL        = 23;
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_LOOP_OUTER       = 24;
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_REALIGN_TYPE     = 25;
    parameter int unsigned TRAFFIC_GEN_REG_W_REQS_STEP             = 26;

  /* Microcode processor */

  // offset indeces -- this should be aligned to the microcode compiler of course!
  parameter int unsigned TRAFFIC_GEN_UCODE_R_REQS_OFFS               = 0;

  parameter int unsigned TRAFFIC_GEN_UCODE_W_REQS_OFFS              = 1;

  // mnemonics -- this should be aligned to the microcode compiler of course!

  parameter int unsigned TRAFFIC_GEN_UCODE_MNEM_NBITER      = 0;

  parameter int unsigned TRAFFIC_GEN_UCODE_MNEM_ITERSTRIDE  = 1;

  parameter int unsigned TRAFFIC_GEN_UCODE_MNEM_ONESTRIDE   = 2;

  parameter int unsigned TRAFFIC_GEN_UCODE_MNEM_TILESTRIDE  = 3;

  /* Typedefs */

  typedef struct packed {
    logic clear;
    logic enable;
    logic start;

    logic unsigned [$clog2(TRAFFIC_GEN_CNT_LEN):0] cnt_limit_w_reqs;

    // Custom registers
    logic unsigned [32-1:0] n_reqs;
    logic unsigned [32-1:0] pwm_period;
    logic unsigned [32-1:0] pwm_duty_cycle;
  } ctrl_engine_traffic_gen_t;

  typedef struct packed {

    logic unsigned [$clog2(TRAFFIC_GEN_CNT_LEN):0] cnt_w_reqs;

    logic done;
    logic ready;
  } flags_engine_traffic_gen_t;

  typedef struct packed {
    logic start;
  } ctrl_kernel_adapter_traffic_gen_t;

  typedef struct packed {
    logic done;
    logic idle;
    logic ready;
  } flags_kernel_adapter_traffic_gen_t;

  typedef struct packed {

    hwpe_stream_package::ctrl_sourcesink_t r_reqs_source_ctrl;

    hwpe_stream_package::ctrl_sourcesink_t w_reqs_sink_ctrl;

  } ctrl_streamer_traffic_gen_t;

  typedef struct packed {

    hwpe_stream_package::flags_sourcesink_t r_reqs_source_flags;

    hwpe_stream_package::flags_sourcesink_t w_reqs_sink_flags;

  } flags_streamer_traffic_gen_t;

  typedef struct packed {

    // Input stream - r_reqs (programmable)
    logic unsigned [31:0] r_reqs_trans_size;
    logic unsigned [15:0] r_reqs_line_stride;
    logic unsigned [15:0] r_reqs_line_length;
    logic unsigned [15:0] r_reqs_feat_stride;
    logic unsigned [15:0] r_reqs_feat_length;
    logic unsigned [15:0] r_reqs_feat_roll;
    logic unsigned [15:0] r_reqs_step;
    logic unsigned r_reqs_loop_outer;
    logic unsigned r_reqs_realign_type;

    // Output stream - w_reqs (programmable)
    logic unsigned [31:0] w_reqs_trans_size;
    logic unsigned [15:0] w_reqs_line_stride;
    logic unsigned [15:0] w_reqs_line_length;
    logic unsigned [15:0] w_reqs_feat_stride;
    logic unsigned [15:0] w_reqs_feat_length;
    logic unsigned [15:0] w_reqs_feat_roll;
    logic unsigned [15:0] w_reqs_step;
    logic unsigned w_reqs_loop_outer;
    logic unsigned w_reqs_realign_type;

    // Computation
    logic unsigned [$clog2(TRAFFIC_GEN_CNT_LEN):0] cnt_limit_w_reqs;

    // Custom registers
    logic unsigned [32-1:0] n_reqs;
    logic unsigned [32-1:0] pwm_period;
    logic unsigned [32-1:0] pwm_duty_cycle;

  } ctrl_fsm_traffic_gen_t;

endpackage