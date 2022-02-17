/* =====================================================================
 * Project:      Verification dataset generator.
 * Title:        ref_app.c
 * Description:  Reference application to generate golden results. Its
 *               functionality is the same as the integrated hardware
 *               accelerator.
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

void ref_app(uint32_t* in, uint32_t* out, uint32_t width, uint32_t height, uint32_t stripe_height)
{
  for(int i=0; i < width*stripe_height; i++){
    out[i] = in[i];
  }
}