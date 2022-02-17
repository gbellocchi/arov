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

void gen_stim(uint32_t* x, uint32_t n_stim)
{
  printf(">> Generating synthetic input stimuli.\n");

  /* Generate synthetic stimuli. */

  for(int i=0; i < n_stim; i++){
    x[i] = rand() % 255;
  }

}