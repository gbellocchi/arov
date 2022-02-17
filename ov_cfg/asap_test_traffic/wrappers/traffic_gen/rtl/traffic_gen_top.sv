

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
 * Module: traffic_gen_top.sv
 *
 */

import traffic_gen_package::*;
import hwpe_ctrl_package::*;

module traffic_gen_top
#(
  parameter int unsigned N_CORES = 2,
  parameter int unsigned MP  = 2,
  parameter int unsigned ID  = 10
)
(
  // Global signals
  input  logic          clk_i,
  input  logic          rst_ni,
  input  logic          test_mode_i,

  // Events
  output logic [N_CORES-1:0][REGFILE_N_EVT-1:0] evt_o,

  // TCDM master ports
  hwpe_stream_intf_tcdm.master                  tcdm[MP-1:0],

  // Peripheral slave port
  hwpe_ctrl_intf_periph.slave                   periph
);

  // Signals
  logic enable, clear;
  logic [N_CORES-1:0][REGFILE_N_EVT-1:0] evt;
  ctrl_streamer_traffic_gen_t  streamer_ctrl;
  flags_streamer_traffic_gen_t streamer_flags;
  ctrl_engine_traffic_gen_t    engine_ctrl;
  flags_engine_traffic_gen_t   engine_flags;

  // Streamer interfaces
  hwpe_stream_intf_stream #( .DATA_WIDTH(32) ) r_reqs ( .clk (clk_i) );

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) ) w_reqs ( .clk (clk_i) );

  // HWPE engine wrapper
  traffic_gen_engine i_engine (
    .clk_i            ( clk_i          ),
    .rst_ni           ( rst_ni         ),
    .test_mode_i      ( test_mode_i    ),

    .r_reqs_i              ( r_reqs.sink       ),

    .w_reqs_o              ( w_reqs.source       ),

    .ctrl_i           ( engine_ctrl    ),
    .flags_o          ( engine_flags   )
  );

  // HWPE streamer wrapper
  traffic_gen_streamer #(
    .MP ( MP )
  ) i_streamer (
    .clk_i            ( clk_i          ),
    .rst_ni           ( rst_ni         ),
    .test_mode_i      ( test_mode_i    ),
    .enable_i         ( enable         ),
    .clear_i          ( clear          ),

    .r_reqs              ( r_reqs.source       ),

    .w_reqs              ( w_reqs.sink       ),

    .tcdm             ( tcdm           ),
    .ctrl_i           ( streamer_ctrl  ),
    .flags_o          ( streamer_flags )
  );

  // HWPE ctrl wrapper
  traffic_gen_ctrl #(
    .N_CORES   ( N_CORES  ),
    .N_CONTEXT ( 1  ),

    .N_IO_REGS ( 27 ),

    .ID ( ID )
  ) i_ctrl (
    .clk_i            ( clk_i          ),
    .rst_ni           ( rst_ni         ),
    .test_mode_i      ( test_mode_i    ),
    .clear_o          ( clear          ),
    .evt_o            ( evt_o          ),
    .ctrl_streamer_o  ( streamer_ctrl  ),
    .flags_streamer_i ( streamer_flags ),
    .ctrl_engine_o    ( engine_ctrl    ),
    .flags_engine_i   ( engine_flags   ),
    .periph           ( periph         )
  );

  assign enable = 1'b1;

endmodule
