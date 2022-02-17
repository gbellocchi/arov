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

  unsigned width          = WIDTH;
  unsigned height         = HEIGHT;
  unsigned stripe_height  = STRIPE_HEIGHT;

  /* Allocate I/O arrays. */

  uint32_t* r_reqs_dut = (uint32_t*)malloc(width*height*sizeof(uint32_t));
  uint32_t* w_reqs_dut = (uint32_t*)malloc(width*height*sizeof(uint32_t)); 
  uint32_t* w_reqs_ref = (uint32_t*)malloc(width*height*sizeof(uint32_t)); 

  /* Additional parameters. */

  const unsigned stripe_len = width*stripe_height;

  /* Generate synthetic stimuli. */

  gen_stim(r_reqs_dut, width, height, stripe_height);
  memset(w_reqs_dut, 0, width*stripe_height);

  /* Generate golden results. */

  ref_app(r_reqs_dut, w_reqs_ref, width, height, stripe_height);

  /* Create output header files. */

  gen_Hfile("r_reqs_dut", r_reqs_dut, width, height);
  gen_Hfile("w_reqs_dut", w_reqs_dut, width, height);
  gen_Hfile("w_reqs_ref", w_reqs_ref, width, height);

  /* Cleanup. */  

  free(r_reqs_dut);
  free(w_reqs_dut);
  free(w_reqs_ref);

  return 0;
}
