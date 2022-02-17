/* =====================================================================
 * Project:      HWPE routine
 * Title:        main.c
 * Description:  Software routine for HWPE wrappers.
 *
 * $Date:        1.12.2022
 * ===================================================================== */
/*
 * Copyright (C) 2022 University of Modena and Reggio Emilia.
 *
 * Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
 *
 */

#ifndef __HWPE_CL0_LIC0_API_H__
#define __HWPE_CL0_LIC0_API_H__

#include <stdint.h>
#include <stdbool.h>
#include <time.h>

#include <hero-target.h>
#include <hwpe-struct.h>

////////////////////////////////////////////////////////////////////////

typedef struct hwpe_cl0_lic0_custom_regs_struct     hwpe_cl0_lic0_custom_regs_struct;
typedef struct hwpe_cl0_lic0_ctrl_struct            hwpe_cl0_lic0_ctrl_struct;

struct hwpe_cl0_lic0_custom_regs_struct {
    unsigned n_reqs;
    unsigned pwm_period;
    unsigned pwm_duty_cycle;
};

struct hwpe_cl0_lic0_ctrl_struct {
    hwpe_fsm_struct fsm;
    hwpe_cl0_lic0_custom_regs_struct custom_regs;
};

////////////////////////////////////////////////////////////////////////

void hwpe_cl0_lic0_init_addr_gen(hwpe_stream_struct *stream);

////////////////////////////////////////////////////////////////////////

void hwpe_cl0_lic0_alloc_tcdm_buffers(hwpe_stream_struct *stream);

////////////////////////////////////////////////////////////////////////

void hwpe_cl0_lic0_wrapper_ctrl_program(hwpe_stream_struct *stream_1,
                                        hwpe_stream_struct *stream_2,
                                        hwpe_cl0_lic0_ctrl_struct *hwpe_ctrl);

////////////////////////////////////////////////////////////////////////

void hwpe_cl0_lic0_wrapper_set_buffers(hwpe_stream_struct *stream_1,
                                       hwpe_stream_struct *stream_2);

////////////////////////////////////////////////////////////////////////

void hwpe_cl0_lic0_wrapper_compute();

//////////////////////////////////////////////////////////////////////

void hwpe_cl0_lic0_wrapper_wait();

////////////////////////////////////////////////////////////////////////

void hwpe_cl0_lic0_wrapper_disable();

#endif