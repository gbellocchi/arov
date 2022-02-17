/* =====================================================================
 * Project:      Verification dataset generator.
 * Title:        ref_app.c
 * Description:  Reference application libraries and defintions.
 *
 * $Date:        14.11.2021
 * ===================================================================== */
/*
 * Copyright (C) 2021 University of Modena and Reggio Emilia..
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

/* Libraries. */

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <errno.h>

/* Parameters. */

// Entire image dimension
#define WIDTH 32
#define HEIGHT 8
#define STRIPE_HEIGHT 8

/* Functions declaration. */

void ref_app(uint32_t* in, uint32_t* out, uint32_t width, uint32_t height, uint32_t stripe_height);
void gen_stim(uint32_t* stim, uint32_t width, uint32_t height, uint32_t stripe_height);
void gen_Hfile(char* val_name, uint32_t* synth_data, uint32_t width, uint32_t height);