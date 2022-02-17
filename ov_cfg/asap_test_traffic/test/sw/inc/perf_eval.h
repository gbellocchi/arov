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

#ifndef __PERF_EVAL_H__
#define __PERF_EVAL_H__

#include <stdint.h>
#include <stdbool.h>
#include <time.h>

// Structs - Performance evaluation

typedef struct host_timer_struct        host_timer_struct;
typedef struct pulp_clk_struct          pulp_clk_struct;

struct host_timer_struct {
    struct timespec t0;
    struct timespec t1;
    float t_meas;   
};

struct pulp_clk_struct {
    uint32_t cnt_0;
    uint32_t cnt_1;   
};

// Structs - PULP

typedef struct pulp_fetch_struct        pulp_fetch_struct;
typedef struct pulp_store_struct        pulp_store_struct;
// TODO: why 2?
struct pulp_fetch_struct {
    hero_dma_job_t dma_job_stream_in;
    pulp_clk_struct clk;
};

struct pulp_store_struct {
    hero_dma_job_t dma_job_stream_out;
    pulp_clk_struct clk;
};

#endif