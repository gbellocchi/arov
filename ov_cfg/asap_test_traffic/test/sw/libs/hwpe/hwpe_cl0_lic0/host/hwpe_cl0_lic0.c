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

#include <stdbool.h>
#include <hwpe_cl0_lic0.h>

// - Libs
#include "../inc/archi_hwpe.h"
#include "../inc/hal_hwpe.h"

#include "../../event_unit/archi_eu_v3.h"
#include "../../event_unit/hal_eu_v3.h"

// - Input
#include "../inc/stim/stream_in_V.h"

// - Output
#include "../inc/stim/stream_out_V_dut.h"
#include "../inc/stim/stream_out_V_ref.h"

////////////////////////////////////////////////////////////////////////

/* Initialize address generator parameters */
void hwpe_cl0_lic0_init_addr_gen(hwpe_stream_struct *stream) {
    return;
};

//////////////////////////////////////////////////////////////////////

/* Allocate and initialize data buffers. */
void hwpe_cl0_lic0_alloc_tcdm_buffers(hwpe_stream_struct *stream) {                                   
    return;
};

////////////////////////////////////////////////////////////////////////

/* HWPE programming */
void hwpe_cl0_lic0_wrapper_ctrl_program(hwpe_stream_struct *stream_1,
                                        hwpe_stream_struct *stream_2,
                                        hwpe_cl0_lic0_ctrl_struct *hwpe_ctrl) {
    return;
};

////////////////////////////////////////////////////////////////////////

/* HWPE buffers set */
void hwpe_cl0_lic0_wrapper_set_buffers(hwpe_stream_struct *stream_1,
                                       hwpe_stream_struct *stream_2) {
    return;
};                                                

////////////////////////////////////////////////////////////////////////

/* HWPE execution */
void hwpe_cl0_lic0_wrapper_compute() {
    return;
};  

////////////////////////////////////////////////////////////////////////

/* HWPE wait */
void hwpe_cl0_lic0_wrapper_wait() {
    return;
};  

////////////////////////////////////////////////////////////////////////

/* HWPE disable */
void hwpe_cl0_lic0_wrapper_disable() {
    return;
}; 

////////////////////////////////////////////////////////////////////////
