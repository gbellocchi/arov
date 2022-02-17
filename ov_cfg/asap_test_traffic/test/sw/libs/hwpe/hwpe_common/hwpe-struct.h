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

#ifndef __HWPE_STRUCT_H__
#define __HWPE_STRUCT_H__

#include <stdint.h>
#include <stdbool.h>
#include <time.h>

#include <hero-target.h>

////////////////////////////////////////////////////////////////////////

// Structs - HWPE

typedef struct hwpe_l1_ptr_struct           hwpe_l1_ptr_struct;
typedef struct hwpe_addr_gen_struct         hwpe_addr_gen_struct;
typedef struct hwpe_dataset_params_struct   hwpe_dataset_params_struct;
typedef struct hwpe_stream_struct           hwpe_stream_struct;
typedef struct hwpe_fsm_struct              hwpe_fsm_struct;

struct hwpe_l1_ptr_struct {
    DEVICE_PTR ptr;
    uint32_t offset;
};

struct hwpe_addr_gen_struct {
    unsigned port_offset; 
    unsigned trans_size; 
    unsigned line_stride; 
    unsigned line_length; 
    unsigned feat_stride; 
    unsigned feat_length; 
    unsigned feat_roll; 
    unsigned loop_outer; 
    unsigned realign_type; 
    unsigned step;
};

struct hwpe_dataset_params_struct {
    uint32_t width;
    uint32_t height;
    uint32_t stim_dim;
    uint32_t stripe_height;
    uint32_t stripe_length;
};

struct hwpe_stream_struct {
    hwpe_l1_ptr_struct tcdm;
    hwpe_addr_gen_struct addr_gen;
    hwpe_dataset_params_struct params;
};

struct hwpe_fsm_struct {
    uint32_t n_engine_runs;
};

#endif