

/*
 *
 * Copyright (C) 2018-2019 ETH Zurich, University of Bologna
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
 * Module: tb_hwpe.c
 *
 */

// Standard libs
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

// HWPE
#include "inc/hwpe_lib/archi_hwpe.h"
#include "inc/hwpe_lib/hal_hwpe.h"

  // Synthetic stimuli
  #include "inc/stim/r_reqs.h"

  // Golden results
  #include "inc/stim/w_reqs.h"

/* - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / - / */

/*
 *
 *     HWPE SW test.
 *
 */

int main() {

  /* Application-specific parameters. */

  // These parameters have to be set by the user before to compile the application.

  // 1. Workload

  unsigned width                  = ;
  unsigned height                 = ;
  unsigned stripe_height          = ;

  // 2. Accelerator execution

  // Number of engine runs needed to terminate the accelerator job.
  // This is equivalent to the number of 'done' signals that are
  // produced by the engine itself.

  unsigned engine_runs_w_reqs = ;

  // 3. Custom registers
  unsigned n_reqs_val = ;
  unsigned pwm_period_val = ;
  unsigned pwm_duty_cycle_val = ;

  /* General parameters. */

  volatile unsigned errors = 0;
  unsigned i, j;
  int offload_id_tmp, offload_id;

  /* Stream-specific parameters. */

  unsigned r_reqs_width              = width;
  unsigned r_reqs_height             = height;
  unsigned r_reqs_stripe_height      = stripe_height;

  unsigned w_reqs_width             = width;
  unsigned w_reqs_height            = height;
  unsigned w_reqs_stripe_height     = stripe_height;

  /* Dataset parameters. */
  unsigned r_reqs_stim_dim               = r_reqs_width * r_reqs_height;
  unsigned r_reqs_stripe_in_len          = r_reqs_width * r_reqs_stripe_height;

  unsigned w_reqs_stim_dim              = w_reqs_width * w_reqs_height;
  unsigned w_reqs_stripe_out_len        = w_reqs_width * w_reqs_stripe_height;

  /* Address generator (input) - Parameters */

  const unsigned r_reqs_trans_size             = r_reqs_width * r_reqs_stripe_height;
  const unsigned r_reqs_line_stride            = 0;
  const unsigned r_reqs_line_length            = r_reqs_width * r_reqs_stripe_height;
  const unsigned r_reqs_feat_stride            = 0;
  const unsigned r_reqs_feat_length            = 1;
  const unsigned r_reqs_feat_roll              = 0;
  const unsigned r_reqs_loop_outer             = 0;
  const unsigned r_reqs_realign_type           = 0;
  const unsigned r_reqs_step                   = 4;

  /* Address generator (output) - Parameters */

  const unsigned w_reqs_trans_size             = w_reqs_stripe_height * w_reqs_stripe_height + 1;
  const unsigned w_reqs_line_stride            = sizeof(uint32_t);
  const unsigned w_reqs_line_length            = 1;
  const unsigned w_reqs_feat_stride            = w_reqs_width * sizeof(uint32_t);
  const unsigned w_reqs_feat_length            = w_reqs_stripe_height;
  const unsigned w_reqs_feat_roll              = w_reqs_stripe_height;
  const unsigned w_reqs_loop_outer             = 0;
  const unsigned w_reqs_realign_type           = 0;
  const unsigned w_reqs_step                   = 4;

  /* Allocation of I/O arrays. */

  // Stimuli

  int32_t *r_reqs_l1 = r_reqs;

  // Results

  int32_t *w_reqs_l1 = w_reqs;

  // Golden results

  int32_t *w_reqs_golden_l1 = w_reqs;

  /* Initialization of I/O arrays. */

  // Stimuli

  for (i = 0; i < r_reqs_stripe_height; i++){
    for (j = 0; j < r_reqs_width; j++){
      r_reqs_l1[i*r_reqs_width+j] = r_reqs[i*r_reqs_width+j];
    }
  }

  // Golden results

  for (i = 0; i < w_reqs_stripe_height; i++){
    for (j = 0; j < w_reqs_width; j++){
      w_reqs_golden_l1[i*w_reqs_width+j] = w_reqs[i*w_reqs_width+j];
    }
  }

  /* HWPE initialization */

  hwpe_cg_enable();
  while((offload_id_tmp = hwpe_acquire_job()) < 0)

  /* FSM programming */

  hwpe_len_iter_set_w_reqs(engine_runs_w_reqs-1);

  /* Address generator programming */

  // Input r_reqs
  hwpe_addr_gen_r_reqs(
    r_reqs_trans_size,
    r_reqs_line_stride,
    r_reqs_line_length,
    r_reqs_feat_stride,
    r_reqs_feat_length,
    r_reqs_feat_roll,
    r_reqs_loop_outer,
    r_reqs_realign_type,
    r_reqs_step
  );

  // Output w_reqs
  hwpe_addr_gen_w_reqs(
    w_reqs_trans_size,
    w_reqs_line_stride,
    w_reqs_line_length,
    w_reqs_feat_stride,
    w_reqs_feat_length,
    w_reqs_feat_roll,
    w_reqs_loop_outer,
    w_reqs_realign_type,
    w_reqs_step
  );

  /* Set TCDM address reg values */

  // input r_reqs
  hwpe_r_reqs_addr_set( (int32_t)r_reqs_l1 );

  // output w_reqs
  hwpe_w_reqs_addr_set( (int32_t)w_reqs_l1 );

  /* Set user custom registers */
  hwpe_n_reqs_set( n_reqs_val );
  hwpe_pwm_period_set( pwm_period_val );
  hwpe_pwm_duty_cycle_set( pwm_duty_cycle_val );

  // Trigger execution
  hwpe_trigger_job();

  // wait for end of computation
  asm volatile ("wfi" ::: "memory");

  /* Clean and disable HWPE */

  hwpe_soft_clear();
  hwpe_cg_disable();

  // error check on w_reqs
  for(i=0; i<w_reqs_height; i++){
    for(j=0; j<w_reqs_width; j++){
      int32_t dut_val = w_reqs_l1[i*w_reqs_width+j];
      int32_t ref_val = w_reqs_golden_l1[i*w_reqs_width+j];
      if(dut_val != ref_val) errors++;
    }
  }

  // return errors
  *(int *) 0x80000000 = errors;
  return errors;

}