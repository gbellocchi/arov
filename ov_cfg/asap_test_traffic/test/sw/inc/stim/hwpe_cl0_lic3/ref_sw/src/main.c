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

  unsigned width = W;
  unsigned height = H;
  unsigned stripe_height = S;

  /* Allocate I/O arrays. */

  uint32_t* in1 = (uint32_t*)malloc(width*stripe_height*sizeof(uint32_t));
  uint32_t* in2 = (uint32_t*)malloc(width*stripe_height*sizeof(uint32_t));

  uint32_t* out_ref = (uint32_t*)malloc(stripe_height*stripe_height*sizeof(uint32_t)); 
  uint32_t* out_dut = (uint32_t*)malloc(stripe_height*stripe_height*sizeof(uint32_t));

  /* Generate synthetic stimuli. */

  gen_stim(in1, in2, width, height, stripe_height);

  memset(out_dut, 0, stripe_height*stripe_height);

  /* Generate golden results. */

  ref_app(in1, in2, out_ref, width, height, stripe_height);

  /* Create output header files. */

  gen_Hfile("stim_in1", in1, width, stripe_height);
  gen_Hfile("stim_in2", in2, width, stripe_height);
  gen_Hfile("stim_out_r", out_dut, stripe_height, stripe_height);
  gen_Hfile("ref_out_r", out_ref, stripe_height, stripe_height);

  /* Cleanup. */  

  // free(in1);
  // free(in2);
  // free(out_ref);
  // free(out_dut);

  return 0;
}
