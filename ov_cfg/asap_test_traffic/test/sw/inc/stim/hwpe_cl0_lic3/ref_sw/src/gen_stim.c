/* =====================================================================
 * Project:      Verification dataset generator.
 * Title:        gen_stim.c
 * Description:  Generate synthetic stimuli.
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

void gen_stim(uint32_t* in1, uint32_t* in2, uint32_t width, uint32_t height, uint32_t stripe_height)
{
  printf(">> Generating synthetic input stimuli.\n");

  /* Generate synthetic stimuli. */

  for(int i=0; i < width*stripe_height; i++){
      in1[i] = rand() % 255;
      in2[i] = rand() % 255;
  }

}