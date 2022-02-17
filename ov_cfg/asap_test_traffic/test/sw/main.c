/* =====================================================================
 * Project:      System test
 * Title:        main.c
 * Description:  Software application invoking one-by-one all HWPE wrappers 
 *               in the overlay instance.
 *
 * $Date:        1.12.2022
 * ===================================================================== */
/*
 * Copyright (C) 2022 University of Modena and Reggio Emilia.
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

// Standard libs
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

// System
#include <hero-target.h>

// HWPE
#include <hwpe_cl0_lic0.h>

#include "inc/perf_eval.h"

int main() {

  omp_set_num_threads(1);

  // Init test

  volatile int errors = 0;
  int i, j;
  int offload_id_tmp, offload_id;

  ////////////////////////////////////////////////////////////////////

  // HWPE [cluster 0, lic 0] - FIR_128_MDC

  // Stimuli
  #include "libs/hwpe/hwpe_cl0_lic0/inc/stim/r_reqs_dut.h"
  #include "libs/hwpe/hwpe_cl0_lic0/inc/stim/w_reqs_dut.h"
  #include "libs/hwpe/hwpe_cl0_lic0/inc/stim/w_reqs_ref.h"

  printf("\n\n TRAFFIC GENERATOR - begin\n\n");

  // - stream 1
  hwpe_stream_struct r_reqs;

  r_reqs.params.width            = 64;
  r_reqs.params.height           = 8;
  r_reqs.params.stripe_height    = 8;
  r_reqs.params.stim_dim         = 64*8;
  r_reqs.params.stripe_length    = 64*8;

  // - stream 2
  hwpe_stream_struct w_reqs;

  w_reqs.params.width           = 64;
  w_reqs.params.height          = 8;
  w_reqs.params.stripe_height   = 8;
  w_reqs.params.stim_dim        = 64*8;
  w_reqs.params.stripe_length   = 64*8;

  // - control
  hwpe_cl0_lic0_ctrl_struct hwpe_cl0_lic0_ctrl;

  hwpe_cl0_lic0_ctrl.fsm.n_engine_runs                = 1;

  hwpe_cl0_lic0_ctrl.custom_regs.n_reqs               = 64*8;
  hwpe_cl0_lic0_ctrl.custom_regs.pwm_period           = 64;
  hwpe_cl0_lic0_ctrl.custom_regs.pwm_duty_cycle       = 25;

  // init address generator
  hwpe_cl0_lic0_init_addr_gen(&r_reqs);
  hwpe_cl0_lic0_init_addr_gen(&w_reqs);

  // allocate tcdm buffers
  hwpe_cl0_lic0_alloc_tcdm_buffers(&r_reqs);
  hwpe_cl0_lic0_alloc_tcdm_buffers(&w_reqs);

  // Initialize data buffers
  for (unsigned i = 0; i < r_reqs.params.stripe_height; i++){
    for (unsigned j = 0; j < r_reqs.params.width; j++){
      r_reqs.tcdm.ptr[i*r_reqs.params.width+j] = r_reqs_dut[i*r_reqs.params.width+j];
    }
  }

  // program controller
  printf("\n\n TRAFFIC GENERATOR - program controller\n\n");
  hwpe_cl0_lic0_wrapper_ctrl_program(&r_reqs, &w_reqs, &hwpe_cl0_lic0_ctrl);

  // set tcdm buffers
  printf("\n\n TRAFFIC GENERATOR - set tcdm buffers\n\n");
  hwpe_cl0_lic0_wrapper_set_buffers(&r_reqs, &w_reqs);

  // run
  printf("\n\n TRAFFIC GENERATOR - run\n\n");
  hwpe_cl0_lic0_wrapper_compute();
  hwpe_cl0_lic0_wrapper_wait();
  hwpe_cl0_lic0_wrapper_disable();

  ////////////////////////////////////////////////////////////////////

  // // for (unsigned i = 0; i < stream.params.stripe_height; i++){
  // //       for (unsigned j = 0; j < stream.params.width; j++){
  // //           stream.tcdm.ptr_ref[i*stream.params.width+j] = ref_stimuli[i*stream.params.width+j];
  // //       }
  // //   }

  // // // Error check
  // // printf("Results check");

  // // for (i = 0; i < stripe_height; i++){
  // //   for (j = 0; j < stripe_height; j++){
  // //     if(y_l1[i*stripe_height+j] != y_golden[i*stripe_height+j]){
  // //       printf("[%d]    L1 - y_test:    %d \n",  i*stripe_height+j, y_l1[i*stripe_height+j]);
  // //       printf("[%d]    L1 - y_golden:  %d\n\n", i*stripe_height+j, y_golden[i*stripe_height+j]);
  // //       errors++;
  // //     }
  // //   }
  // // }

  // // /* Return errors */
  // // printf("errors: %d\n", errors);
  // // printf("end\n");

  return errors;
}