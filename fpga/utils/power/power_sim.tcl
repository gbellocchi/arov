# =====================================================================
# Project:      FPGA build
# Title:        power_sim.tcl
# Description:  Set of procedures to:
#               - synthesize out-of-context design.
#               - launch post-synthesis functional simulation.
#               - Generate power report.
#               This script is thought to work with a pre-existing Vivado
#               project dealing with PULP systems (e.g. AROV, HERO, etc.).
#
# $Date:        25.07.2022
# =====================================================================
#
# Copyright (C) 2022 University of Modena and Reggio Emilia.
#
# Author: Gianluca Bellocchi, University of Modena and Reggio Emilia.
#
# =====================================================================

# ========= #
# Variables #
# ========= #

# Following variables are set global for other sub-scripts to access 
# them as source command does allow for additional arguments to be passed

# Vivado project location.
set prj_dir [lindex $argv 0]
puts "Vivado project is going to be located in ${prj_dir}\."

# Vivado IPs location.
set vivado_ips [lindex $argv 1]

# =============================== #
# Create power simulation project #
# =============================== #

# Vivado project location.
puts "Opening Vivado project located in ${prj_dir}\."

# Create new project
create_project hero_exilzcu102 ${prj_dir} -part xczu9eg-ffvb1156-2-e
set_property board_part xilinx.com:zcu102:part0:3.3 [current_project]
set_property ip_repo_paths ${vivado_ips} [current_project]
update_ip_catalog

# ============ #
# Block design #
# ============ #

# Create block design
create_bd_design "hero_exilzcu102"
update_compile_order -fileset sources_1

# Zynq UltraScale+ Processor System
create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.3 i_zynq_ps
apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset "1" } \
  [get_bd_cells i_zynq_ps]
set_property -dict [list \
  CONFIG.PSU__USE__M_AXI_GP1 {0} \
  CONFIG.PSU__USE__S_AXI_GP2 {0} \
  CONFIG.PSU__USE__S_AXI_GP3 {1} \
  CONFIG.PSU__USE__IRQ1 {1} \
  CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {10} \
] [get_bd_cells i_zynq_ps]
connect_bd_net [get_bd_pins i_zynq_ps/pl_clk0] \
  [get_bd_pins i_zynq_ps/saxihp1_fpd_aclk]
connect_bd_net [get_bd_pins i_zynq_ps/pl_clk0] \
  [get_bd_pins i_zynq_ps/maxihpm0_fpd_aclk]

# System Reset
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 i_sys_reset
connect_bd_net [get_bd_pins i_zynq_ps/pl_resetn0] \
  [get_bd_pins i_sys_reset/ext_reset_in]
connect_bd_net [get_bd_pins i_zynq_ps/pl_clk0] \
  [get_bd_pins i_sys_reset/slowest_sync_clk]
# Interconnect from Zynq PS
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 i_iconn_ps
set_property -dict [list CONFIG.NUM_MI {4}] [get_bd_cells i_iconn_ps]
connect_bd_net [get_bd_pins i_iconn_ps/ACLK] \
  [get_bd_pins i_zynq_ps/pl_clk0]
connect_bd_net [get_bd_pins i_iconn_ps/ARESETN] \
  [get_bd_pins i_sys_reset/peripheral_aresetn]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins i_iconn_ps/S00_AXI] \
  [get_bd_intf_pins i_zynq_ps/M_AXI_HPM0_FPD]
connect_bd_net [get_bd_pins i_iconn_ps/S00_ACLK] [get_bd_pins i_zynq_ps/pl_clk0]
connect_bd_net [get_bd_pins i_iconn_ps/S00_ARESETN] \
  [get_bd_pins i_sys_reset/peripheral_aresetn]
for {set i 0} {$i < 4} {incr i} {
  set clk [format "M%02d_ACLK" $i]
  set rst [format "M%02d_ARESETN" $i]
  connect_bd_net [get_bd_pins i_iconn_ps/$clk] [get_bd_pins i_zynq_ps/pl_clk0]
  connect_bd_net [get_bd_pins i_iconn_ps/$rst] [get_bd_pins i_sys_reset/peripheral_aresetn]
}

# Protocol Converter for RAB Config Port
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 i_prot_conv_rab_conf
set_property -dict [list CONFIG.SI_PROTOCOL.VALUE_SRC USER CONFIG.MI_PROTOCOL.VALUE_SRC USER] \
  [get_bd_cells i_prot_conv_rab_conf]
connect_bd_net [get_bd_pins i_prot_conv_rab_conf/aresetn] \
  [get_bd_pins i_sys_reset/peripheral_aresetn]
connect_bd_net [get_bd_pins i_prot_conv_rab_conf/aclk] [get_bd_pins i_zynq_ps/pl_clk0]
connect_bd_intf_net [get_bd_intf_pins i_prot_conv_rab_conf/S_AXI] -boundary_type upper \
  [get_bd_intf_pins i_iconn_ps/M01_AXI]

# GPIO to Control PULP
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 i_gpio
set_property -dict [list CONFIG.C_GPIO_WIDTH {1} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells i_gpio]
connect_bd_net [get_bd_pins i_gpio/s_axi_aclk] [get_bd_pins i_zynq_ps/pl_clk0]
connect_bd_net [get_bd_pins i_gpio/s_axi_aresetn] [get_bd_pins i_sys_reset/peripheral_aresetn]
connect_bd_intf_net [get_bd_intf_pins i_gpio/S_AXI] -boundary_type upper \
  [get_bd_intf_pins i_iconn_ps/M02_AXI]

# Concats for the PULP->Host IRQs
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 i_irq_concat_0
set_property -dict [list CONFIG.NUM_PORTS {7}] [get_bd_cells i_irq_concat_0]
connect_bd_net [get_bd_pins i_irq_concat_0/dout] [get_bd_pins i_zynq_ps/pl_ps_irq0]
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 i_irq_concat_1
set_property -dict [list CONFIG.NUM_PORTS {2}] [get_bd_cells i_irq_concat_1]
connect_bd_net [get_bd_pins i_irq_concat_1/dout] [get_bd_pins i_zynq_ps/pl_ps_irq1]

# PULP
create_bd_cell -type ip -vlnv ethz.ch:user:pulp_txilzu9eg:1.0 i_pulp
connect_bd_net [get_bd_pins i_pulp/clk_i] [get_bd_pins i_zynq_ps/pl_clk0]
connect_bd_net [get_bd_pins i_pulp/rst_ni] [get_bd_pins i_sys_reset/peripheral_aresetn]
connect_bd_intf_net [get_bd_intf_pins i_pulp/mst] [get_bd_intf_pins i_zynq_ps/S_AXI_HP1_FPD]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins i_iconn_ps/M00_AXI] \
  [get_bd_intf_pins i_pulp/slv]
connect_bd_intf_net [get_bd_intf_pins i_prot_conv_rab_conf/M_AXI] \
  [get_bd_intf_pins i_pulp/rab_conf]
connect_bd_net [get_bd_pins i_gpio/gpio_io_o] [get_bd_pins i_pulp/cl_fetch_en_i]
connect_bd_net [get_bd_pins i_pulp/mbox_irq_o] [get_bd_pins i_irq_concat_0/In0]
connect_bd_net [get_bd_pins i_pulp/rab_from_host_miss_irq_o] [get_bd_pins i_irq_concat_0/In1]
connect_bd_net [get_bd_pins i_pulp/rab_from_host_multi_irq_o] [get_bd_pins i_irq_concat_0/In2]
connect_bd_net [get_bd_pins i_pulp/rab_from_host_prot_irq_o] [get_bd_pins i_irq_concat_0/In3]
connect_bd_net [get_bd_pins i_pulp/rab_from_pulp_miss_irq_o] [get_bd_pins i_irq_concat_0/In4]
connect_bd_net [get_bd_pins i_pulp/rab_from_pulp_multi_irq_o] [get_bd_pins i_irq_concat_0/In5]
connect_bd_net [get_bd_pins i_pulp/rab_from_pulp_prot_irq_o] [get_bd_pins i_irq_concat_0/In6]
connect_bd_net [get_bd_pins i_pulp/cl_eoc_o] [get_bd_pins i_irq_concat_1/In0]
connect_bd_net [get_bd_pins i_pulp/rab_miss_fifo_full_irq_o] [get_bd_pins i_irq_concat_1/In1]

# Address Map
## PULP Slave
assign_bd_address [get_bd_addr_segs {i_pulp/slv/Reg }]
set_property range 128M [get_bd_addr_segs {i_zynq_ps/Data/SEG_i_pulp_Reg}]
set_property offset 0x00A0000000 [get_bd_addr_segs {i_zynq_ps/Data/SEG_i_pulp_Reg}]
## PULP RAB Conf
assign_bd_address [get_bd_addr_segs {i_pulp/rab_conf/Reg }]
set_property range 1M [get_bd_addr_segs {i_zynq_ps/Data/SEG_i_pulp_Reg1}]
set_property offset 0x00A8000000 [get_bd_addr_segs {i_zynq_ps/Data/SEG_i_pulp_Reg1}]
## GPIO Register
assign_bd_address [get_bd_addr_segs {i_gpio/S_AXI/Reg }]
set_property range 4K [get_bd_addr_segs {i_zynq_ps/Data/SEG_i_gpio_Reg}]
set_property offset 0x00A9000000 [get_bd_addr_segs {i_zynq_ps/Data/SEG_i_gpio_Reg}]
## DDR Low
assign_bd_address [get_bd_addr_segs {i_zynq_ps/SAXIGP3/HP1_DDR_LOW }]
set_property range 2G [get_bd_addr_segs {i_pulp/Data/SEG_i_zynq_ps_HP1_DDR_LOW}]
set_property offset 0x0000000000 [get_bd_addr_segs {i_pulp/Data/SEG_i_zynq_ps_HP1_DDR_LOW}]
## DDR High
assign_bd_address [get_bd_addr_segs {i_zynq_ps/SAXIGP3/HP1_DDR_HIGH }]
set_property range 32G [get_bd_addr_segs {i_pulp/Data/SEG_i_zynq_ps_HP1_DDR_HIGH}]
set_property offset 0x0800000000 [get_bd_addr_segs {i_pulp/Data/SEG_i_zynq_ps_HP1_DDR_HIGH}]

# Validate and save Top-Level Block Design
save_bd_design
validate_bd_design
make_wrapper -files [get_files \
  ${prj_dir}/hero_exilzcu102.srcs/sources_1/bd/hero_exilzcu102/hero_exilzcu102.bd \
] -top
add_files -norecurse \
  ${prj_dir}/hero_exilzcu102.srcs/sources_1/bd/hero_exilzcu102/hdl/hero_exilzcu102_wrapper.v

# Set the entire BD for out-of-context synthesis
set_property synth_checkpoint_mode Singular \
  [get_files ${prj_dir}/hero_exilzcu102.srcs/sources_1/bd/hero_exilzcu102/hero_exilzcu102.bd]

# Create targets and runs for IPs.
generate_target all \
  [get_files ${prj_dir}/hero_exilzcu102.srcs/sources_1/bd/hero_exilzcu102/hero_exilzcu102.bd]

# ======================== #
# Out-of-context synthesis #
# ======================== #

# Synthesize
foreach run [list synth_1] {
  # set_property strategy Flow_PerfOptimized_high [get_runs $run]
  set_property strategy Flow_AlternateRoutability [get_runs $run]
  set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs $run]
}
launch_runs synth_1 -jobs 12
wait_on_run synth_1

# ===================== #
# Functional simulation #
# ===================== #

# Set up simulation to memorize the switching activity
foreach fileset [list sim_1] {
  set_property -name {xsim.simulate.runtime} -value {2000 ns} -objects [get_filesets $fileset]
  set_property -name {xsim.simulate.saif_scope} -value {hero_exilzcu102_wrapper} -objects [get_filesets $fileset]
  set_property -name {xsim.simulate.saif} -value {arov_power_sim} -objects [get_filesets $fileset]
  set_property -name {xsim.simulate.saif_all_signals} -value {true} -objects [get_filesets $fileset]
}

# Run Post-synthesis Functional Simulation		
# (E' più veloce della Timing perché non considera i ritardi. Non cambiano i risultati di potenza perché il modello considera solo le commutazioni). 	
launch_simulation -mode post-synthesis -type functional


# # 		Il file con la switching activity viene salvato in:
# # 		<prj_name>/<prj_name>.sim/sim_1/synth/funct/xsim/<file_name>.saif
		


# # Report di potenza
# # 	Generare il report di potenza
# # 		Open Synthesized Design -> Report Power -> Select the Switching Tab
# # 		Simulation Activity file: <file_name>.saif
		
# # 		Select the Output Tab
# # 		✔ Interactive report file(Ci sono tutte le info per analizzarlo in seguito)
# # 		✔ Export to file  (Non ci sono tutte le info dettagliate ma di solito è sufficiente)
		