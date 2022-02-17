/* =====================================================================
 * Project:      Verification dataset generator.
 * Title:        ref_app.c
 * Description:  Reference application to generate golden results. Its
 *               functionality is the same as the integrated hardware
 *               accelerator.
 * 
 * Algorithm:    FIR filter.
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

// Filtering unit cell class
template <typename T0, typename T1, typename T2>
class systolic
{
private:
  T0 x,  x1;
  T2 y0, y1;

public:
  // Based on systolic fir description in Xilinx UG073
  void exec(T0 &x_in, T1 &h, T2 &y_in, T0 &x_out, T2 &y)
  {
    x_out = x1;
    x1    = x;
    x     = x_in;
    y     = y1;
    y1    = y0 + y_in;
    y0    = x_out * h;
  }
};

void ref_app(uint32_t* x, uint32_t* coeffs, uint32_t* y, uint32_t n_stim)
{
    // Systolic FIR implementation
    static systolic<uint32_t, uint32_t, uint32_t> s[N_COEFFS];

    // Local I/O intermediate values
    uint32_t x_int[N_STIM];
    uint32_t y_int[N_STIM];
    uint32_t tmp = 0;

    // Filter coefficients
    const int n_coeffs = N_COEFFS;
    
    for (int i = 0; i < n_stim; i++) {
        for (int j = 0; j < n_coeffs; j++) {

            if (j == 0)
                s[0].exec(x[i], coeffs[j], tmp, x_int[j], y_int[j]);
            else
                s[j].exec(x_int[j - 1], coeffs[j], y_int[j - 1], x_int[j], y_int[j]);

            y[i] = y_int[n_coeffs - 1];
        }
    }
}