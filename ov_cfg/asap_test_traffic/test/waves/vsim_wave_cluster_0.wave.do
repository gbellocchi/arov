

onerror {resume}
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/decoder_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/decoder_i/instr_rdata_i[24:20]} rs2
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/decoder_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/decoder_i/instr_rdata_i[19:15]} rs1
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[6:0]} opcode
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[11:7]} rd
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[14:12]} funct3
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[19:15]} rs1
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[24:20]} rs2
quietly WaveActivateNextPane {} 0

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {top} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/*}

onerror {resume}
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/decoder_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/decoder_i/instr_rdata_i[24:20]} rs2
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/decoder_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/decoder_i/instr_rdata_i[19:15]} rs1
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[6:0]} opcode
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[11:7]} rd
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[14:12]} funct3
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[19:15]} rs1
quietly virtual signal -install {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i} { /overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[24:20]} rs2
quietly WaveActivateNextPane {} 0

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {top} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {core_demux} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/*}
add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {core_demux} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/core_demux_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {periph_demux} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/*}
add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {periph_demux} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/periph_demux_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {riscv} -group {IF_stage} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/if_stage_i/*}
add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {riscv} -group {IF_stage} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/if_stage_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {riscv} -group {ID_stage} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/*}
add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {riscv} -group {ID_stage} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/id_stage_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {riscv} -group {EX_stage} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/ex_stage_i/*}
add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {riscv} -group {EX_stage} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/ex_stage_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {riscv} -group {LSU} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/*}
add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {riscv} -group {LSU} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/RISCV_CORE/load_store_unit_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {eu_ctrl_master} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/*}
add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {eu_ctrl_master} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/eu_ctrl_master/*}

add wave -noupdate -group {pulp_cluster[0]} -group {dma} -group {ext_master} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/*}

add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {event_unit} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_peripherals_i/event_unit_flex_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {speriph_master} -group {[0]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {speriph_master} -group {[1]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {speriph_master} -group {[2]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {speriph_master} -group {[3]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {speriph_master} -group {[4]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {speriph_master} -group {[5]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[5]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {speriph_master} -group {[6]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[6]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_peripherals} -group {speriph_master} -group {[7]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[7]/*}

add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_interco} -group {inputs} -label {s_core_tcdm_bus_add} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/s_core_tcdm_bus_add}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_interco} -group {inputs} -label {iconn_inp_wdata} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/iconn_inp_wdata}

add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[0]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[0]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[1]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[1]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[2]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[2]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[3]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[3]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[4]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[4]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[5]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[5]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[6]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[6]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[7]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[7]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[8]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[8]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[9]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[9]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[10]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[10]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[11]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[11]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[12]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[12]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[13]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[13]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[14]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[14]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[15]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[15]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[16]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[16]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[17]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[17]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[18]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[18]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[19]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[19]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[20]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[20]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[21]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[21]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[22]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[22]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[23]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[23]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[24]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[24]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[25]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[25]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[26]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[26]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[27]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[27]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[28]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[28]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[29]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[29]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[30]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[30]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[31]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[31]/*}

add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[0]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[0]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[1]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[1]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[2]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[2]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[3]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[3]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[4]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[4]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[5]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[5]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[6]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[6]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[7]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[7]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[8]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[8]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[9]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[9]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[10]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[10]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[11]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[11]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[12]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[12]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[13]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[13]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[14]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[14]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[15]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[15]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[16]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[16]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[17]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[17]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[18]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[18]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[19]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[19]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[20]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[20]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[21]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[21]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[22]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[22]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[23]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[23]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[24]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[24]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[25]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[25]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[26]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[26]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[27]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[27]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[28]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[28]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[29]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[29]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[30]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[30]/i_tc_sram/*}
add wave -noupdate -group {pulp_cluster[0]} -group {sram} -group {intf_sram[31]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[31]/i_tc_sram/*}

add wave -noupdate -group {pulp_cluster[0]} -group {icache[0]} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/*}

add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[0]} -group {core_periph_slave} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/*}
add wave -noupdate -group {pulp_cluster[0]} -group {riscv} -group {core_region[1]} -group {core_periph_slave} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[1]/*}

add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -label {clk} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/clk}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -label {rst_n} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/rst_n}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -label {test_mode} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/test_mode}

add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {req} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/req}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {add} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/add}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {wen} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/wen}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {wdata} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/wdata}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {be} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/be}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {gnt} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/gnt}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {r_opc} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/r_opc}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {r_rdata} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/r_rdata}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[0]} -label {r_valid} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[0]/r_valid}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {req} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/req}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {add} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/add}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {wen} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/wen}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {wdata} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/wdata}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {be} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/be}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {gnt} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/gnt}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {r_opc} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/r_opc}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {r_rdata} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/r_rdata}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_xbar_master[1]} -label {r_valid} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_xbar_master[1]/r_valid}

add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {req} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/req}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {add} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/add}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {wen} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/wen}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {wdata} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/wdata}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {be} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/be}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {gnt} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/gnt}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {id} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/id}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {r_valid} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/r_valid}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {r_opc} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/r_opc}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {r_id} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/r_id}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} -group {wrapper[0]} -group {hwpe_cfg_slave[0]} -label {r_rdata} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/hwpe_cfg_slave[0]/r_rdata}

add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/evt_o}
add wave -noupdate -group {pulp_cluster[0]} -group {LIC_acc_region} {/overlay_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/lic_acc_region_gen/lic_acc_region_i/busy_o}

