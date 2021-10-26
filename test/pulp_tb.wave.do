
onerror {resume}
quietly virtual signal -install {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/decoder_i} { /pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/decoder_i/instr_rdata_i[24:20]} rs2
quietly virtual signal -install {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/decoder_i} { /pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/decoder_i/instr_rdata_i[19:15]} rs1
quietly virtual signal -install {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[6:0]} opcode
quietly virtual signal -install {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[11:7]} rd
quietly virtual signal -install {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[14:12]} funct3
quietly virtual signal -install {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[19:15]} rs1
quietly virtual signal -install {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i} { /pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i[24:20]} rs2
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/clk}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/rst_n}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/test_mode}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/req}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/add}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/wen}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/wdata}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/be}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/gnt}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/r_opc}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/r_rdata}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[0]/r_valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/req}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/add}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/wen}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/wdata}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/be}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/gnt}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/r_opc}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/r_rdata}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[1]/r_valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/req}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/add}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/wen}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/wdata}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/be}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/gnt}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/r_opc}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/r_rdata}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwpe_xbar_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_xbar_master[2]/r_valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/req}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/add}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/wen}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/wdata}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/be}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/gnt}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/id}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/r_valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/r_opc}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/r_id}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} -group {hwacc_cfg_slave} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/hwacc_cfg_slave/r_rdata}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/evt_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {ov_acc_intf} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/busy_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/clk_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/rst_ni}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/test_mode_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {tcdm} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/tcdm_add}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {tcdm} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/tcdm_be}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {tcdm} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/tcdm_data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {tcdm} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/tcdm_gnt}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {tcdm} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/tcdm_wen}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {tcdm} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/tcdm_req}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {tcdm} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/tcdm_r_data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {tcdm} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/tcdm_r_valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_add}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_be}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_gnt}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_wen}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_req}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_id}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_r_data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_r_valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} -group {periph} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/periph_r_id}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_top} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/evt_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {global} -label {clk_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/clk_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {global} -label {rst_ni} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/rst_ni}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {global} -label {test_mode_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/test_mode_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Input data} -group {in1} -label {Valid} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/in1_i/valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Input data} -group {in1} -label {Data} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/in1_i/data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Input data} -group {in1} -label {Ready} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/in1_i/ready}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Input data} -group {in2} -label {Valid} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/in2_i/valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Input data} -group {in2} -label {Data} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/in2_i/data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Input data} -group {in2} -label {Ready} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/in2_i/ready}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Output data} -group {out_r} -label {Valid} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/out_r_o/valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Output data} -group {out_r} -label {Data} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/out_r_o/data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Output data} -group {out_r} -label {Ready} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/out_r_o/ready}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {FSM - control} -label {ctrl_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/ctrl_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {FSM - flags} -label {flags_o} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/flags_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_engine} -group {Local} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Global} -label {clk_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/clk_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Global} -label {rst_ni} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/rst_ni}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Global} -label {test_mode_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/test_mode_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Input data} -group {in1} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/in1_i/valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Input data} -group {in1} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/in1_i/data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Input data} -group {in1} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/in1_i/ready}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Input data} -group {in2} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/in2_i/valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Input data} -group {in2} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/in2_i/data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Input data} -group {in2} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/in2_i/ready}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Output data} -group {out_r} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/out_r_o/valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Output data} -group {out_r} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/out_r_o/data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Output data} -group {out_r} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/out_r_o/ready}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Control} -label {Start} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/start}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Control} -label {Clear} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/clear}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Flags} -label {Done} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/done}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Flags} -label {Idle} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/idle}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Flags} -label {Ready} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/ready}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Input counters} -label {kernel_cnt_in1} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_cnt_in1}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Input counters} -label {kernel_cnt_in2} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_cnt_in2}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Output counters} -label {kernel_cnt_out_r} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_cnt_out_r}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Control} -label {Start} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_start}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Flags} -label {kernel_ready_in1} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_ready_in1}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Flags} -label {kernel_done_in1} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_done_in1}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Flags} -label {kernel_ready_in2} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_ready_in2}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Flags} -label {kernel_done_in2} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_done_in2}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Flags} -label {kernel_done_out_r} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_done_out_r}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_mmult_opt_mdc_kernel_adapter} -group {mdc_dataflow} -group {Kernel signals} -group {Flags} -label {kernel_idle} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_engine/i_mmult_opt_mdc_adapter/kernel_idle}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {global} -label {clk_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/clk_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {global} -label {rst_ni} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/rst_ni}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {global} -label {test_mode_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/test_mode_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {global} -label {enable_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/enable_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {global} -label {clear_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/clear_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {top} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {in1_source} -group {source} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/i_in1_source/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {in2_source} -group {source} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/i_in2_source/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {out_r_sink} -group {sink} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/i_out_r_sink/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {in1_source} -group {addressgen} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/i_in1_source/i_addressgen/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {in2_source} -group {addressgen} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/i_in2_source/i_addressgen/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_streamer} -group {out_r_sink} -group {addressgen} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_streamer/i_out_r_sink/i_addressgen/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {top} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/*}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {slave_periph_port} -label {add} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/cfg/add}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {slave_periph_port} -label {wen} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/cfg/wen}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {slave_periph_port} -label {be} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/cfg/be}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {slave_periph_port} -label {data} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/cfg/data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {slave_periph_port} -label {id} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/cfg/id}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {slave_periph_port} -label {r_data} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/cfg/r_data}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {slave_periph_port} -label {r_valid} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/cfg/r_valid}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {slave_periph_port} -label {r_id} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/cfg/r_id}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {clear_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/clear_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {in} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/regfile_in_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {out} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/regfile_out_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {flags} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/flags_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {reg_file} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/reg_file}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {regfile_mem} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/regfile_mem}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {regfile_mem_mandatory} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/regfile_mem_mandatory}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {regfile_mem_generic} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/regfile_mem_generic}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {regfile_mem_dout} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/regfile_mem_dout}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {regfile} -label {clear_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_slave/i_regfile/regfile_latch_mem}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {global} -label {clk_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/clk_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {global} -label {rst_ni} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/rst_ni}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {global} -label {test_mode_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/test_mode_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {global} -label {clear_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/clear_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -label {current_state} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/curr_state}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -label {next_state} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/next_state}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -label {ctrl_fsm_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/ctrl_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {in_flags} -label {flags_streamer_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/flags_streamer_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {in_flags} -label {flags_engine_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/flags_engine_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {in_flags} -label {flags_ucode_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/flags_ucode_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {in_flags} -label {flags_slave_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/flags_slave_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {out_ctrl} -label {ctrl_streamer_o} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/ctrl_streamer_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {out_ctrl} -label {ctrl_engine_o} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/ctrl_engine_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {out_ctrl} -label {ctrl_ucode_o} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/ctrl_ucode_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {FSM} -group {out_ctrl} -label {ctrl_slave_o} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_fsm/ctrl_slave_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {uloop} -group {global} -label {clk_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_uloop/clk_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {uloop} -group {global} -label {rst_ni} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_uloop/rst_ni}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {uloop} -group {global} -label {test_mode_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_uloop/test_mode_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {uloop} -group {global} -label {clear_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_uloop/clear_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {uloop} -group {i/o} -label {ctrl_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_uloop/ctrl_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {uloop} -group {i/o} -label {flags_o} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_uloop/flags_o}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {uloop} -group {i/o} -label {uloop_code_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_uloop/uloop_code_i}
add wave -noupdate -group {HWPE mmult_opt_mdc} -group {hwpe_ctrl} -group {uloop} -group {i/o} -label {registers_read_i} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/hwpe_gen/hwpe_wrap_i/i_hwpe_top_wrap/i_mmult_opt_mdc_top/i_ctrl/i_uloop/registers_read_i}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {inputs} -label {s_core_tcdm_bus_add} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/s_core_tcdm_bus_add}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {inputs} -label {iconn_inp_wdata} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/iconn_inp_wdata}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {outputs (to AMO)} -label {s_tcdm_bus_amo_shim_req} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/s_tcdm_bus_amo_shim_req}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {outputs (to AMO)} -label {s_tcdm_bus_amo_shim_gnt} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/s_tcdm_bus_amo_shim_gnt}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {outputs (to AMO)} -label {s_tcdm_bus_amo_shim_add} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/s_tcdm_bus_amo_shim_add}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {outputs (to AMO)} -label {s_tcdm_bus_amo_shim_wen} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/s_tcdm_bus_amo_shim_wen}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {outputs (to AMO)} -label {iconn_oup_wdata        } {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/iconn_oup_wdata        }
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {outputs (to AMO)} -label {s_tcdm_bus_amo_shim_be } {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/s_tcdm_bus_amo_shim_be }
add wave -noupdate -group {cluster_interconnect} -group {tcdm_interco} -group {outputs (to AMO)} -label {iconn_oup_rdata        } {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/iconn_oup_rdata        }
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[0]/wdata}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[0]/add}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[0]/req}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[0]/wen}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[0]/be}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[0]/rdata}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[1]/add}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[1]/wdata}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[1]/req}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[1]/wen}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[1]/be}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[1]/rdata}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[2]/add}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[2]/wdata}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[2]/req}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[2]/wen}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[2]/be}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[2]/rdata}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[3]/add}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[3]/wdata}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[3]/req}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[3]/wen}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[3]/be}
add wave -noupdate -group {cluster_interconnect} -group {tcdm_sram_master} -group {tcdm_sram_master[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/tcdm_sram_master[3]/rdata}
add wave -noupdate -group {sram} -group {intf_sram[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[0]/i_tc_sram/req_i}
add wave -noupdate -group {sram} -group {intf_sram[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[0]/i_tc_sram/addr_i}
add wave -noupdate -group {sram} -group {intf_sram[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[0]/i_tc_sram/we_i}
add wave -noupdate -group {sram} -group {intf_sram[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[0]/i_tc_sram/wdata_i}
add wave -noupdate -group {sram} -group {intf_sram[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[0]/i_tc_sram/be_i}
add wave -noupdate -group {sram} -group {intf_sram[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[0]/i_tc_sram/rdata_o}
add wave -noupdate -group {sram} -group {intf_sram[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[1]/i_tc_sram/req_i}
add wave -noupdate -group {sram} -group {intf_sram[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[1]/i_tc_sram/addr_i}
add wave -noupdate -group {sram} -group {intf_sram[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[1]/i_tc_sram/we_i}
add wave -noupdate -group {sram} -group {intf_sram[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[1]/i_tc_sram/wdata_i}
add wave -noupdate -group {sram} -group {intf_sram[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[1]/i_tc_sram/be_i}
add wave -noupdate -group {sram} -group {intf_sram[1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[1]/i_tc_sram/rdata_o}
add wave -noupdate -group {sram} -group {intf_sram[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[2]/i_tc_sram/req_i}
add wave -noupdate -group {sram} -group {intf_sram[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[2]/i_tc_sram/addr_i}
add wave -noupdate -group {sram} -group {intf_sram[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[2]/i_tc_sram/we_i}
add wave -noupdate -group {sram} -group {intf_sram[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[2]/i_tc_sram/wdata_i}
add wave -noupdate -group {sram} -group {intf_sram[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[2]/i_tc_sram/be_i}
add wave -noupdate -group {sram} -group {intf_sram[2]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[2]/i_tc_sram/rdata_o}
add wave -noupdate -group {sram} -group {intf_sram[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[3]/i_tc_sram/req_i}
add wave -noupdate -group {sram} -group {intf_sram[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[3]/i_tc_sram/addr_i}
add wave -noupdate -group {sram} -group {intf_sram[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[3]/i_tc_sram/we_i}
add wave -noupdate -group {sram} -group {intf_sram[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[3]/i_tc_sram/wdata_i}
add wave -noupdate -group {sram} -group {intf_sram[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[3]/i_tc_sram/be_i}
add wave -noupdate -group {sram} -group {intf_sram[3]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/gen_tcdm_banks[3]/i_tc_sram/rdata_o}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_id}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_addr}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_len}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_size}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_burst}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_lock}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_cache}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_prot}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_qos}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_region}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_atop}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_user}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_valid}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/aw_ready}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/w_data}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/w_strb}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/w_last}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/w_user}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/w_valid}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/w_ready}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/b_id}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/b_resp}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/b_user}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/b_valid}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/b_ready}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_id}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_addr}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_len}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_size}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_burst}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_lock}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_cache}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_prot}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_qos}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_region}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_user}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_valid}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/ar_ready}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/r_id}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/r_data}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/r_resp}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/r_last}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/r_user}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/r_valid}
add wave -noupdate -group {cl_inp[0]} {/pulp_tb/dut/cl_inp[0]/r_ready}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_id}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_addr}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_len}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_size}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_burst}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_lock}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_cache}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_prot}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_qos}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_region}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_atop}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_user}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_valid}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/aw_ready}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/w_data}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/w_strb}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/w_last}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/w_user}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/w_valid}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/w_ready}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/b_id}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/b_resp}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/b_user}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/b_valid}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/b_ready}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_id}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_addr}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_len}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_size}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_burst}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_lock}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_cache}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_prot}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_qos}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_region}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_user}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_valid}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/ar_ready}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/r_id}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/r_data}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/r_resp}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/r_last}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/r_user}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/r_valid}
add wave -noupdate -group {cl_oup_predwc[0]} {/pulp_tb/dut/cl_oup_predwc[0]/r_ready}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_id}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_addr}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_len}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_size}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_burst}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_lock}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_cache}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_prot}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_qos}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_region}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_atop}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_user}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_valid}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/aw_ready}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/w_data}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/w_strb}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/w_last}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/w_user}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/w_valid}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/w_ready}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/b_id}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/b_resp}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/b_user}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/b_valid}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/b_ready}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_id}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_addr}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_len}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_size}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_burst}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_lock}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_cache}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_prot}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_qos}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_region}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_user}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_valid}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/ar_ready}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/r_id}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/r_data}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/r_resp}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/r_last}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/r_user}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/r_valid}
add wave -noupdate -group {cl_oup_prepacker[0]} {/pulp_tb/dut/cl_oup_prepacker[0]/r_ready}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_id}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_addr}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_len}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_size}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_burst}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_lock}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_cache}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_prot}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_qos}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_region}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_atop}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_user}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_valid}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/aw_ready}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/w_data}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/w_strb}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/w_last}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/w_user}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/w_valid}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/w_ready}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/b_id}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/b_resp}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/b_user}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/b_valid}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/b_ready}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_id}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_addr}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_len}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_size}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_burst}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_lock}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_cache}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_prot}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_qos}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_region}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_user}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_valid}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/ar_ready}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/r_id}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/r_data}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/r_resp}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/r_last}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/r_user}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/r_valid}
add wave -noupdate -group {cl_oup[0]} {/pulp_tb/dut/cl_oup[0]/r_ready}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/clk}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/rst_n}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/test_en_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_req_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_addr_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_gnt_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_rvalid_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_rdata_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arid_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_araddr_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arlen_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arsize_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arburst_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arlock_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arcache_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arprot_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arregion_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_aruser_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arqos_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arvalid_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arready_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rid_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rdata_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rresp_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rlast_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_ruser_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rvalid_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rready_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awid_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awaddr_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awlen_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awsize_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awburst_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awlock_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awcache_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awprot_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awregion_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awuser_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awqos_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awvalid_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_awready_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_wdata_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_wstrb_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_wlast_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_wuser_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_wvalid_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_wready_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_bid_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_bresp_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_buser_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_bvalid_i}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_bready_o}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/DATA_read_req_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/DATA_read_addr_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/TAG_read_req_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/TAG_read_addr_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/TAG_read_rdata_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_TAG_write_req_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_TAG_write_addr_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_TAG_write_dest_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_TAG_write_wdata_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_TAG_write_way_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_DATA_write_req_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_DATA_write_addr_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_DATA_write_dest_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_DATA_write_wdata_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_DATA_write_way_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/TAG_ReadEnable}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/DATA_ReadEnable}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/TAG_ReadData}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/notify_refill_done}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_way_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_req_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_addr_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_gnt_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_rvalid_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/fetch_rdata_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_TAG_write_dest_OH_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/SCM_DATA_write_dest_OH_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/cache_is_bypassed}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/retry_fetch}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/bypass_icache}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/empty_fifo}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/flush_icache}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/flush_ack}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/sel_flush_req}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/sel_flush_addr}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/sel_flush_ack}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arid_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_araddr_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arlen_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arsize_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arburst_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arlock_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arcache_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arprot_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arregion_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_aruser_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arqos_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arvalid_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_arready_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rid_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rdata_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rresp_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rlast_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_ruser_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rvalid_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/axi_master_rready_int}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_req_to_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_addr_to_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_gnt_from_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_rvalid_from_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_req_to_master_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_addr_to_master_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_way_to_master_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_gnt_from_master_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/pf_rvalid_from_master_cc}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/total_hit_count}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/total_trans_count}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/total_miss_count}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/bank_hit_count}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/bank_trans_count}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/bank_miss_count}
add wave -noupdate -group {icache[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/icache_top_i/index}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/clk_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/rst_ni}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/init_ni}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/base_addr_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/cluster_id_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/irq_req_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/irq_ack_o}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/irq_id_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/irq_ack_id_o}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/clock_en_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/fetch_en_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/fregfile_disable_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/boot_addr_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/test_mode_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_busy_o}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_req_o}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_gnt_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_addr_o}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_r_rdata_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_r_valid_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/debug_req_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_data_master_atop}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/perf_counters}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/clk_int}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/FILE}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_gnt_L2}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_gnt_ROM}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_r_rdata_ROM}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_r_valid_ROM}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_r_rdata_L2}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/instr_r_valid_L2}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/destination}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/reg_cache_refill}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/clk_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/rst_ni}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/init_ni}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/base_addr_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/cluster_id_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/irq_req_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/irq_ack_o}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/irq_id_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/irq_ack_id_o}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/clock_en_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/fetch_en_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/fregfile_disable_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/boot_addr_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/test_mode_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/core_busy_o}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_req_o}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_gnt_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_addr_o}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_r_rdata_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_r_valid_i}
add wave -noupdate -group {core_region[0][0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/debug_req_i}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/periph_data_master_atop}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/perf_counters}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/clk_int}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/FILE}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_gnt_L2}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_gnt_ROM}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_r_rdata_ROM}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_r_valid_ROM}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_r_rdata_L2}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/instr_r_valid_L2}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/destination}
add wave -noupdate -group {core_region[0][1]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[1]/core_region_i/reg_cache_refill}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_id}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_addr}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_len}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_size}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_burst}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_lock}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_cache}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_prot}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_qos}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_region}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_atop}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_user}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_writetoken}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/aw_readpointer}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/w_data}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/w_strb}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/w_last}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/w_user}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/w_writetoken}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/w_readpointer}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/b_id}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/b_resp}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/b_user}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/b_writetoken}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/b_readpointer}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_id}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_addr}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_len}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_size}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_burst}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_lock}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_cache}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_prot}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_qos}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_region}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_user}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_writetoken}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/ar_readpointer}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/r_id}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/r_data}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/r_resp}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/r_last}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/r_user}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/r_writetoken}
add wave -noupdate -group {cl_oup_async[0]} {/pulp_tb/dut/cl_oup_async[0]/r_readpointer}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_req_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_gnt_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_addr_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_we_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_be_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_wdata_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_rvalid_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_rdata_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_err_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_we_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_type_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_wdata_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_reg_offset_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_sign_ext_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_req_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_rdata_ex_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/operand_a_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/operand_b_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/addr_useincr_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_misaligned_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_misaligned_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_atop_ex_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/data_atop_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/lsu_ready_ex_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/lsu_ready_wb_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/ex_valid_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/busy_o}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/shamt}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/shamt_q}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/type_q}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/sign_ext_q}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/we_q}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/rdata_d}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/rdata_q}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/stack_access_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/stack_base_i}
add wave -noupdate -group {core[0][0]/lsu} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/load_store_unit_i/stack_limit_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/clk}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/rst_ni}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/test_en_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/base_addr_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_req_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_gnt_o}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_add_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wen_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_atop_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wdata_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_be_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_gnt_i}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_valid_o}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_rdata_o}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_opc_o}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_req_o_SH}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_add_o_SH}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wen_o_SH}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wdata_o_SH}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_be_o_SH}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_gnt_i_SH}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_valid_i_SH}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_rdata_i_SH}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_req_o_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_add_o_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wen_o_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wdata_o_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_be_o_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_gnt_i_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_valid_i_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_rdata_i_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_opc_i_EXT}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_req_o_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_add_o_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wen_o_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_atop_o_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wdata_o_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_be_o_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_gnt_i_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_valid_i_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_opc_i_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_rdata_i_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/perf_l2_ld_o}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/perf_l2_st_o}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/perf_l2_ld_cyc_o}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/perf_l2_st_cyc_o}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/CLUSTER_ID}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/CLUSTER_ALIAS_BASE_11}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/CLUSTER_ALIAS_BASE_12}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/s_data_req_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/s_data_gnt_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/s_data_r_data_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/s_data_r_valid_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/s_data_r_opc_PE}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/s_data_r_data_PE_0}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/s_data_r_valid_PE_0}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/s_data_r_opc_PE_0}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/CS}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/NS}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_req_to_L2}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_add_to_L2}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wen_to_L2}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wdata_to_L2}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_be_to_L2}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_gnt_from_L2}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/request_destination}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/destination}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_add_int}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_busy_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_req_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_add_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wen_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_atop_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_wdata_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_be_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_gnt_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_valid_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_opc_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/data_r_rdata_PE_fifo}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/TCDM_RW}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/TCDM_TS}
add wave -noupdate -group {core_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/core_demux_i/DEM_PER}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/req}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/add}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/wen}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/wdata}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/be}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/gnt}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/id}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/r_valid}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/r_opc}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/r_id}
add wave -noupdate -group {eu_ctrl_master[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/eu_ctrl_master/r_rdata}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/clk}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/rst_ni}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_req_i}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_add_i}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_wen_i}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_wdata_i}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_be_i}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_gnt_o}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_valid_o}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_rdata_o}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_opc_o}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_req_o_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_add_o_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_wen_o_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_wdata_o_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_be_o_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_gnt_i_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_valid_i_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_rdata_i_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_opc_i_MH}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_req_o_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_add_o_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_wen_o_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_wdata_o_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_be_o_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_gnt_i_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_valid_i_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_rdata_i_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/data_r_opc_i_EU}
add wave -noupdate -group {periph_demux[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/periph_demux_i/request_destination}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/clk}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/rst_n}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/test_en_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/fregfile_disable_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/fetch_enable_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/ctrl_busy_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/core_ctrl_firstfetch_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/is_decoding_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwlp_dec_cnt_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/is_hwlp_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_valid_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_rdata_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr_req_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/branch_in_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/branch_decision_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/jump_target_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/clear_instr_valid_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/pc_set_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/pc_mux_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/exc_pc_mux_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/trap_addr_mux_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/illegal_c_insn_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/is_compressed_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/pc_if_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/pc_id_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/halt_if_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/id_ready_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/ex_ready_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/wb_ready_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/id_valid_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/ex_valid_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/pc_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_operand_a_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_operand_b_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_operand_c_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/bmask_a_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/bmask_b_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_vec_ext_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_vec_mode_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_waddr_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_we_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_alu_waddr_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_alu_we_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_en_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_operator_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_operator_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_operand_a_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_operand_b_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_operand_c_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_en_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_sel_subword_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_signed_mode_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_imm_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_dot_op_a_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_dot_op_b_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_dot_op_c_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_dot_signed_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_is_clpx_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_clpx_shift_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_clpx_img_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_en_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_type_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_op_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_lat_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_flags_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_waddr_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_read_regs_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_read_regs_valid_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_read_dep_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_write_regs_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_write_regs_valid_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_write_dep_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_perf_dep_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_busy_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/frm_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_access_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_op_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/current_priv_lvl_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_irq_sec_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_cause_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_save_if_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_save_id_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_restore_mret_id_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_restore_uret_id_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_save_cause_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwlp_start_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwlp_end_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwlp_cnt_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_hwlp_regid_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_hwlp_we_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_hwlp_data_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_req_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_we_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_type_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_sign_ext_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_reg_offset_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_load_event_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_misaligned_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/prepost_useincr_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_misaligned_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/atop_ex_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/irq_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/irq_sec_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/irq_id_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/m_irq_enable_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/u_irq_enable_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/irq_ack_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/irq_id_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/exc_cause_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/debug_mode_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/debug_cause_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/debug_csr_save_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/debug_req_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/debug_single_step_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/debug_ebreakm_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/debug_ebreaku_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_waddr_wb_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_we_wb_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_wdata_wb_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_alu_waddr_fw_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_alu_we_fw_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_alu_wdata_fw_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_multicycle_i}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/perf_jump_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/perf_jr_stall_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/perf_ld_stall_o}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/instr}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/deassert_we}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/illegal_insn_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/ebrk_insn}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mret_insn_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/uret_insn_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/ecall_insn_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/pipe_flush_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/rega_used_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regb_used_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regc_used_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/branch_taken_ex}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/jump_in_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/jump_in_dec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/misaligned_stall}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/jr_stall}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/load_stall}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_apu_stall}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/halt_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_i_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_iz_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_s_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_sb_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_u_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_uj_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_z_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_s2_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_bi_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_s3_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_vs_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_vu_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_shuffleb_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_shuffleh_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_shuffle_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_clip_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_a}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_b}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/jump_target}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/irq_req_ctrl}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/irq_sec_ctrl}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/irq_id_ctrl}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/exc_ack}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/exc_kill}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_addr_ra_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_addr_rb_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_addr_rc_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_fp_a}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_fp_b}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_fp_c}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_fp_d}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_waddr_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_alu_waddr_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_alu_we_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_data_ra_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_data_rb_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_data_rc_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_en}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_operator}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_op_a_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_op_b_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_op_c_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regc_mux}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_a_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_b_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/jump_target_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_operator}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_en}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_int_en}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_sel_subword}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_signed_mode}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_dot_en}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_dot_signed}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/fpu_src_fmt}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/fpu_dst_fmt}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/fpu_int_fmt}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_en}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_type}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_op}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_lat}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_flags}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_waddr}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_read_regs}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_read_regs_valid}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_write_regs}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_write_regs_valid}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_flags_src}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/apu_stall}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/fp_rnd_mode}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_we_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/regfile_alu_waddr_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_we_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_type_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_sign_ext_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_reg_offset_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_req_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/data_load_event_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/atop_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_regid}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_regid_int}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_we}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_we_int}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_target_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_start_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_cnt_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_target}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_start}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_start_int}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_end}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_cnt}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_cnt_int}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/hwloop_valid}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_access}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_op}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/csr_status}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/prepost_useincr}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/operand_a_fw_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/operand_b_fw_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/operand_c_fw_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/operand_a_fw_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/operand_b_fw_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/operand_c_fw_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/operand_b}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/operand_b_vec}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_operand_a}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_operand_b}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_operand_c}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/bmask_a_mux}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/bmask_b_mux}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_bmask_a_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_bmask_b_mux_sel}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_imm_mux}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/bmask_a_id_imm}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/bmask_b_id_imm}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/bmask_a_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/bmask_b_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/imm_vec_ext_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/mult_imm_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/alu_vec_mode}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/scalar_replication}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_ex_is_reg_a_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_ex_is_reg_b_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_ex_is_reg_c_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_wb_is_reg_a_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_wb_is_reg_b_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_wb_is_reg_c_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_alu_is_reg_a_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_alu_is_reg_b_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/reg_d_alu_is_reg_c_id}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/opcode}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/funct3}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} -radix unsigned {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/rd}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} -radix unsigned {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/rs1}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} -radix unsigned {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/rs2}
add wave -noupdate -group -group {core[0][0]} -group {id_stage} -group {tobeclassified} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/stack_access_o}
add wave -noupdate -group {core[0][0]} -group {id_stage} -group {controller} -label {ctrl_fsm_cs} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/controller_i/ctrl_fsm_cs}
add wave -noupdate -group {core[0][0]} -group {id_stage} -group {controller} -label {ctrl_fsm_ns} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/CORE[0]/core_region_i/RISCV_CORE/id_stage_i/controller_i/ctrl_fsm_ns}
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_id
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_addr
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_len
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_size
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_burst
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_lock
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_cache
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_prot
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_qos
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_region
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_atop
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_user
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_valid
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/aw_ready
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/w_data
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/w_strb
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/w_last
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/w_user
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/w_valid
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/w_ready
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/b_id
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/b_resp
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/b_user
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/b_valid
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/b_ready
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_id
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_addr
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_len
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_size
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_burst
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_lock
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_cache
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_prot
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_qos
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_region
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_user
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_valid
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/ar_ready
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/r_id
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/r_data
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/r_resp
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/r_last
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/r_user
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/r_valid
add wave -noupdate -group periph_mst /pulp_tb/dut/periph_mst/r_ready
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_id
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_addr
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_len
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_size
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_burst
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_lock
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_cache
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_prot
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_qos
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_region
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_atop
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_user
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_valid
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/aw_ready
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/w_data
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/w_strb
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/w_last
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/w_user
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/w_valid
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/w_ready
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/b_id
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/b_resp
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/b_user
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/b_valid
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/b_ready
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_id
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_addr
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_len
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_size
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_burst
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_lock
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_cache
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_prot
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_qos
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_region
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_user
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_valid
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/ar_ready
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/r_id
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/r_data
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/r_resp
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/r_last
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/r_user
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/r_valid
add wave -noupdate -group soc_periphs/axi /pulp_tb/dut/i_periphs/axi/r_ready
add wave -noupdate -group soc_periphs/apb /pulp_tb/dut/i_periphs/apb/paddr
add wave -noupdate -group soc_periphs/apb /pulp_tb/dut/i_periphs/apb/pwdata
add wave -noupdate -group soc_periphs/apb /pulp_tb/dut/i_periphs/apb/pwrite
add wave -noupdate -group soc_periphs/apb /pulp_tb/dut/i_periphs/apb/psel
add wave -noupdate -group soc_periphs/apb /pulp_tb/dut/i_periphs/apb/penable
add wave -noupdate -group soc_periphs/apb /pulp_tb/dut/i_periphs/apb/prdata
add wave -noupdate -group soc_periphs/apb /pulp_tb/dut/i_periphs/apb/pready
add wave -noupdate -group soc_periphs/apb /pulp_tb/dut/i_periphs/apb/pslverr
add wave -noupdate -group soc_ctrl_regs/apb /pulp_tb/dut/i_periphs/i_soc_ctrl_regs/apb/paddr
add wave -noupdate -group soc_ctrl_regs/apb /pulp_tb/dut/i_periphs/i_soc_ctrl_regs/apb/pwdata
add wave -noupdate -group soc_ctrl_regs/apb /pulp_tb/dut/i_periphs/i_soc_ctrl_regs/apb/pwrite
add wave -noupdate -group soc_ctrl_regs/apb /pulp_tb/dut/i_periphs/i_soc_ctrl_regs/apb/psel
add wave -noupdate -group soc_ctrl_regs/apb /pulp_tb/dut/i_periphs/i_soc_ctrl_regs/apb/penable
add wave -noupdate -group soc_ctrl_regs/apb /pulp_tb/dut/i_periphs/i_soc_ctrl_regs/apb/prdata
add wave -noupdate -group soc_ctrl_regs/apb /pulp_tb/dut/i_periphs/i_soc_ctrl_regs/apb/pready
add wave -noupdate -group soc_ctrl_regs/apb /pulp_tb/dut/i_periphs/i_soc_ctrl_regs/apb/pslverr
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_id}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_addr}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_len}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_size}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_burst}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_lock}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_cache}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_prot}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_qos}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_region}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_atop}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_user}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_valid}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/aw_ready}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/w_data}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/w_strb}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/w_last}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/w_user}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/w_valid}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/w_ready}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/b_id}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/b_resp}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/b_user}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/b_valid}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/b_ready}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_id}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_addr}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_len}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_size}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_burst}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_lock}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_cache}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_prot}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_qos}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_region}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_user}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_valid}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/ar_ready}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/r_id}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/r_data}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/r_resp}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/r_last}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/r_user}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/r_valid}
add wave -noupdate -group {l2_mst[0]} {/pulp_tb/dut/l2_mst[0]/r_ready}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_id}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_addr}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_len}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_size}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_burst}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_lock}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_cache}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_prot}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_qos}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_region}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_atop}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_user}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_valid}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/aw_ready}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/w_data}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/w_strb}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/w_last}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/w_user}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/w_valid}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/w_ready}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/b_id}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/b_resp}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/b_user}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/b_valid}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/b_ready}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_id}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_addr}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_len}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_size}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_burst}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_lock}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_cache}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_prot}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_qos}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_region}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_user}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_valid}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/ar_ready}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/r_id}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/r_data}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/r_resp}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/r_last}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/r_user}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/r_valid}
add wave -noupdate -group {dma[0]/ext_master} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/dmac_wrap_i/ext_master/r_ready}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/req}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/add}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/wen}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/wdata}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/be}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/gnt}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/id}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/r_valid}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/r_opc}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/r_id}
add wave -noupdate -group {speriph_master[EOC]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[0]/r_rdata}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/req}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/add}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/wen}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/wdata}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/be}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/gnt}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/id}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/r_valid}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/r_opc}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/r_id}
add wave -noupdate -group {speriph_master[TIMER]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[1]/r_rdata}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/req}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/add}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/wen}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/wdata}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/be}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/gnt}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/id}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/r_valid}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/r_opc}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/r_id}
add wave -noupdate -group {speriph_master[EVENTU]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[2]/r_rdata}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/req}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/add}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/wen}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/wdata}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/be}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/gnt}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/id}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/r_valid}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/r_opc}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/r_id}
add wave -noupdate -group {speriph_master[UNUSED]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[3]/r_rdata}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/req}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/add}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/wen}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/wdata}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/be}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/gnt}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/id}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/r_valid}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/r_opc}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/r_id}
add wave -noupdate -group {speriph_master[hwpe]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/speriph_master[4]/r_rdata}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/req}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/gnt}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/add}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/wen}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/wdata}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/be}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/id}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/r_valid}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/r_opc}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/r_id}
add wave -noupdate -group {core_periph_slave[0]} {/pulp_tb/dut/gen_clusters[0]/gen_cluster_sync/i_cluster/i_ooc/i_bound/cluster_interconnect_wrap_i/core_periph_slave[0]/r_rdata}
add wave -noupdate -group {TB I/O} /pulp_tb/dut/clk_i
add wave -noupdate -group {TB I/O} /pulp_tb/dut/rst_ni
add wave -noupdate -group {TB I/O} /pulp_tb/dut/cl_fetch_en_i
add wave -noupdate -group {TB I/O} /pulp_tb/dut/cl_busy_o
add wave -noupdate -group {TB I/O} /pulp_tb/dut/cl_eoc_o
add wave -noupdate -group {TB I/O} /pulp_tb/from_pulp_req
add wave -noupdate -group {TB I/O} /pulp_tb/from_pulp_resp
add wave -noupdate -group {TB I/O} /pulp_tb/to_pulp_req
add wave -noupdate -group {TB I/O} /pulp_tb/to_pulp_resp
add wave -noupdate -group {TB I/O} /pulp_tb/rab_conf_req
add wave -noupdate -group {TB I/O} /pulp_tb/rab_conf_resp
WaveRestoreCursors {{Cursor 11} {35680473 ps} 1} {W {35686614 ps} 1} {{Cursor 13} {35800671 ps} 1} {{Cursor 14} {16000 ps} 0}
quietly wave cursor active 4
configure wave -namecolwidth 271
configure wave -valuecolwidth 483
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {530958 ps}