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

////////////////////////////////////////////////////////////////////////

/* Initialize address generator parameters */
void hwpe_cl0_lic0_init_addr_gen(hwpe_stream_struct *stream) {
    // Address generator (input) - Parameters
    stream->addr_gen.trans_size            = stream->params.width * stream->params.stripe_height;
    stream->addr_gen.line_stride           = 0;
    stream->addr_gen.line_length           = stream->params.width;
    stream->addr_gen.feat_stride           = 0;
    stream->addr_gen.feat_length           = stream->params.stripe_height;
    stream->addr_gen.feat_roll             = 0;
    stream->addr_gen.loop_outer            = 0;
    stream->addr_gen.realign_type          = 0;
    stream->addr_gen.step                  = 4;
};

//////////////////////////////////////////////////////////////////////

/* Allocate and initialize data buffers. */
void hwpe_cl0_lic0_alloc_tcdm_buffers(hwpe_stream_struct *stream) {                                   
    // Allocate data buffers
    stream->tcdm.ptr                = hero_l1malloc(sizeof(int32_t)*stream->params.stripe_length);
};

////////////////////////////////////////////////////////////////////////

/* HWPE programming */
void hwpe_cl0_lic0_wrapper_ctrl_program(hwpe_stream_struct *stream_1,
                                        hwpe_stream_struct *stream_2,
                                        hwpe_cl0_lic0_ctrl_struct *hwpe_ctrl) {
    int offload_id_tmp, offload_id;

    hwpe_cg_enable();
    while((offload_id_tmp = hwpe_acquire_job()) < 0);

    // Micro-code processor

#ifdef HWPE_UCODE_PROGRAMMING

    // This benchmark does not make use of the ucode processor

    // Set up bytecode
    hwpe_bytecode_set(TRAFFIC_GEN_REG_LOOPS1_OFFS,           0x00000000);
    hwpe_bytecode_set(TRAFFIC_GEN_REG_BYTECODE5_LOOPS0_OFFS, 0x00000000);
    hwpe_bytecode_set(TRAFFIC_GEN_REG_BYTECODE4_OFFS,        0x00000000);
    hwpe_bytecode_set(TRAFFIC_GEN_REG_BYTECODE3_OFFS,        0x00000000);
    hwpe_bytecode_set(TRAFFIC_GEN_REG_BYTECODE2_OFFS,        0x00000000);
    hwpe_bytecode_set(TRAFFIC_GEN_REG_BYTECODE1_OFFS,        0x00000808);
    hwpe_bytecode_set(TRAFFIC_GEN_REG_BYTECODE0_OFFS,        0x09e22c24);

    // Ucode parameters
    hwpe_nb_iter_set(stripe_height);
    hwpe_linestride_set(width * sizeof(uint32_t));
    hwpe_tilestride_set(stripe_height * sizeof(uint32_t));
    
#endif

    // FSM
    hwpe_len_iter_set_w_reqs(hwpe_ctrl->fsm.n_engine_runs - 1); 

    // Address generator
    hwpe_addr_gen_r_reqs(
        stream_1->addr_gen.trans_size, 
        stream_1->addr_gen.line_stride, 
        stream_1->addr_gen.line_length, 
        stream_1->addr_gen.feat_stride, 
        stream_1->addr_gen.feat_length, 
        stream_1->addr_gen.feat_roll, 
        stream_1->addr_gen.loop_outer, 
        stream_1->addr_gen.realign_type, 
        stream_1->addr_gen.step
    );

    hwpe_addr_gen_w_reqs(
        stream_2->addr_gen.trans_size,
        stream_2->addr_gen.line_stride,
        stream_2->addr_gen.line_length,
        stream_2->addr_gen.feat_stride,
        stream_2->addr_gen.feat_length,
        stream_2->addr_gen.feat_roll,
        stream_2->addr_gen.loop_outer,
        stream_2->addr_gen.realign_type,
        stream_2->addr_gen.step
    );

    // Custom registers
    hwpe_n_reqs_set(hwpe_ctrl->custom_regs.n_reqs);
    hwpe_pwm_period_set(hwpe_ctrl->custom_regs.pwm_period);
    hwpe_pwm_duty_cycle_set(hwpe_ctrl->custom_regs.pwm_duty_cycle);
};

////////////////////////////////////////////////////////////////////////

/* HWPE buffers set */
void hwpe_cl0_lic0_wrapper_set_buffers(hwpe_stream_struct *stream_1,
                                       hwpe_stream_struct *stream_2) {
    // Set buffers
    hwpe_r_reqs_addr_set( (int32_t)stream_1->tcdm.ptr + stream_1->tcdm.offset );
    hwpe_w_reqs_addr_set( (int32_t)stream_2->tcdm.ptr + stream_2->tcdm.offset );
};                                                

////////////////////////////////////////////////////////////////////////

/* HWPE execution */
void hwpe_cl0_lic0_wrapper_compute() {
    // Trigger accelerator execution
    hwpe_trigger_job();
};  

////////////////////////////////////////////////////////////////////////

/* HWPE wait */
void hwpe_cl0_lic0_wrapper_wait() {
    // Set bit of event mask corresponding to the HWPE event and wait
    eu_evt_maskWaitAndClr(1 << ARCHI_HWPE_EU_OFFSET); // todo: modify in archi!!!!
};  

////////////////////////////////////////////////////////////////////////

/* HWPE disable */
void hwpe_cl0_lic0_wrapper_disable() {
    // Clear and disable
    hwpe_soft_clear();
    hwpe_cg_disable();
}; 

////////////////////////////////////////////////////////////////////////
