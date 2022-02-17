/* =====================================================================
 * Project:      Verification dataset generator.
 * Title:        main.c
 * Description:  Main function recalling components to generate 
 *               stimuli and golden results for RTL simulation.
 *
 * $Date:        14.11.2021
 * ===================================================================== */
/*
 * Copyright (C) 2021 University of Modena and Reggio Emilia..
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

#include "ref_app.h"

int main(int argc, char *argv[])
{
  /* Stimuli dimension. */

  unsigned n_stim = N_STIM;
  unsigned n_coeffs = N_COEFFS;

  /* Allocate I/O arrays. */

  uint32_t* x = (uint32_t*)malloc(n_stim*sizeof(uint32_t));

  uint32_t* coeffs = (uint32_t*)malloc(n_coeffs*sizeof(uint32_t));

  uint32_t* y_dut = (uint32_t*)malloc(n_stim*sizeof(uint32_t)); 
  uint32_t* y_ref = (uint32_t*)malloc(n_stim*sizeof(uint32_t)); 

  /* Generate synthetic stimuli. */

  gen_stim(x, n_stim);

  memset(y_dut, 0, n_stim);

  /* Generate taps. */

  for(int i=0; i<N_COEFFS; i++){
    coeffs[i] = rand() % 10;
  }

  /* Generate golden results. */

  ref_app(x, coeffs, y_ref, n_stim);

  /* Create output header files. */

  gen_Hfile("x_V", x, n_stim, 1);
  gen_Hfile("taps", coeffs, n_coeffs, 1);
  gen_Hfile("y_V_ref", y_ref, n_stim, 1);
  gen_Hfile("y_V_dut", y_dut, n_stim, 1);

  /* Cleanup. */  

  free(x);
  free(y_dut);
  free(y_ref);

  return 0;
}
