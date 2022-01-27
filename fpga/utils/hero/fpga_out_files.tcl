# Design name.
set design_name [lindex $argv 0]
puts "System-level integration of $design_name accelerator IP using standard Xilinx methodology"

# Vivado project location.
set vivado_dir [lindex $argv 1]
set prj_dir "$vivado_dir/$design_name"
puts "Vivado project is going to be located in $prj_dir"

# Open project
open_project ${prj_dir}/hero_exilzcu102.xpr

# Export Hardware Definition file.
file mkdir ${prj_dir}/hero_exilzcu102.sdk
write_hwdef -force  -file ${prj_dir}/hero_exilzcu102.sdk/hero_exilzcu102_wrapper.hdf

# Export bitstream file.
file copy -force ${prj_dir}/hero_exilzcu102.runs/impl_1/hero_exilzcu102_wrapper.bit ${prj_dir}/hero_exilzcu102.sdk/hero_exilzcu102_wrapper.bit

# Export Xilinx Support Archive (XSA) file.
write_hw_platform -fixed -force  -include_bit -file ${prj_dir}/hero_exilzcu102_wrapper.xsa