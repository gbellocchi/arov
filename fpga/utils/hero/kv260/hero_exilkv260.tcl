# Vivado project location.
set prj_dir [lindex $argv 0]
puts "Vivado project is going to be located in ${prj_dir}\."

# Vivado IPs location.
set vivado_ips [lindex $argv 1]

create_project hero_exilkv260 ${prj_dir} -part xck26-sfvc784-2LV-c
set proj_board [get_board_parts "*:kv260_som:*" -latest_file_version]
set_property board_part $proj_board [current_project]
#set_property board_connections {som240_1_connector xilinx.com:som240:som240_1_connector:1.0} [current_project]
set board vision_som
set device k26
set rev Rev_B01
set xdc_list {./utils/hero/kv260/pin.xdc}
   

set_property ip_repo_paths ${vivado_ips} [current_project]
update_ip_catalog

create_bd_design "hero_exilkv260"
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
  CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {50} \
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
create_bd_cell -type ip -vlnv ethz.ch:user:pulp_txilk26:1.0 i_pulp
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
set_property range 1M [get_bd_addr_segs {i_zynq_ps/Data/SEG_i_pulp_Reg_1}]
set_property offset 0x00A8000000 [get_bd_addr_segs {i_zynq_ps/Data/SEG_i_pulp_Reg_1}]
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
  ${prj_dir}/hero_exilkv260.srcs/sources_1/bd/hero_exilkv260/hero_exilkv260.bd \
] -top
add_files -norecurse \
  ${prj_dir}/hero_exilkv260.srcs/sources_1/bd/hero_exilkv260/hdl/hero_exilkv260_wrapper.v

# Create targets and runs for IPs.
generate_target all \
  [get_files ${prj_dir}/hero_exilkv260.srcs/sources_1/bd/hero_exilkv260/hero_exilkv260.bd]
export_ip_user_files -of_objects \
  [get_files ${prj_dir}/hero_exilkv260.srcs/sources_1/bd/hero_exilkv260/hero_exilkv260.bd] \
  -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] \
  ${prj_dir}/hero_exilkv260.srcs/sources_1/bd/hero_exilkv260/hero_exilkv260.bd \
]
export_ip_user_files -of_objects [get_ips hero_exilkv260_i_pulp_0] \
  -no_script -sync -force -quiet

# Define include and defines again for PULP.
eval [exec sed {s/current_fileset/get_filesets hero_exilkv260_i_pulp_0/} \
  ${vivado_ips}/define_defines_includes_no_simset.tcl]

# Include debug settings.
# add_files -fileset constrs_1 ./utils/hero_exilkv260_debug.xdc
# set_property target_constrs_file ./utils/hero_exilkv260_debug.xdc [current_fileset -constrset]

# Synthesize
foreach run [list synth_1 hero_exilkv260_i_pulp_0_synth_1] {
  # set_property strategy Flow_PerfOptimized_high [get_runs $run]
  set_property strategy Flow_AreaOptimized_high [get_runs $run]
  set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY rebuilt [get_runs $run]
  set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs $run]  
}
launch_runs synth_1 -jobs 12
wait_on_run synth_1


set_property platform.default_output_type "xclbin" [current_project]
set_property platform.design_intent.datacenter false [current_project]
set_property platform.design_intent.embedded true [current_project]
set_property platform.design_intent.external_host false [current_project]
set_property platform.design_intent.server_managed false [current_project]
set_property platform.extensible true [current_project]

# Implement
set_property strategy Congestion_SpreadLogic_low [get_runs impl_1]
launch_runs impl_1 -jobs 12
wait_on_run impl_1

# Check timing constraints.
open_run impl_1
set timingrep [report_timing_summary -no_header -no_detailed_paths -return_string]
if {! [string match -nocase {*timing constraints are met*} $timingrep]} {
  send_msg_id {USER 1-1} ERROR {Timing constraints were not met.}
  return -code error
}

# Generate Bitstream
launch_runs impl_1 -to_step write_bitstream -jobs 12
wait_on_run impl_1

# Export Hardware Definition file.
file mkdir ${prj_dir}/hero_exilkv260.sdk
write_hwdef -force  -file ${prj_dir}/hero_exilkv260.sdk/hero_exilkv260_wrapper.hdf

# Export bitstream file.
file copy -force ${prj_dir}/hero_exilkv260.runs/impl_1/hero_exilkv260_wrapper.bit ${prj_dir}/hero_exilkv260.sdk/hero_exilkv260_wrapper.bit

# Export Xilinx Support Archive (XSA) file.
write_hw_platform -fixed -force  -include_bit -file ${prj_dir}/hero_exilkv260_wrapper.xsa
