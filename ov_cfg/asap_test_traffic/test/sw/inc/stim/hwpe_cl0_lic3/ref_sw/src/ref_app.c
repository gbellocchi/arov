/* =====================================================================
 * Project:      Verification dataset generator.
 * Title:        ref_app.c
 * Description:  Reference application to generate golden results. Its
 *               functionality is the same as the integrated hardware
 *               accelerator.
 * 
 * Algorithm:    Matrix Multiplication.
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

void ref_app(uint32_t* in1, uint32_t* in2, uint32_t* out, uint32_t width, uint32_t height, uint32_t stripe_height)
{
  // uint32_t local_in1[stripe_height][width];
  // uint32_t local_in2[width][stripe_height];
  // uint32_t local_out[stripe_height][stripe_height]; 

  // for (int i = 0 ; i < stripe_height ; i++){
  //   for(int j = 0 ; j < stripe_height ; j++){
  //     int res = 0;
  //     for(int k = 0; k < width; k++){
  //       res += in1[i*width+k]*in2[k+j*width];
  //     }
  //     out[j + i*stripe_height] = res;
  //   }
  // }

  for (int i = 0; i < stripe_height; i++){
    for (int j = 0; j < stripe_height; j++){
      for (int k = 0; k < width; k++){
        out[i * stripe_height + j] += in1[i * width + k] * in2[j * width + k];
      }
    }
  }
}

      

