# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xczu3eg-sbva484-1-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.cache/wt [current_project]
set_property parent.project_path D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part_repo_paths {D:/work/vivado_avnet/bdf} [current_project]
set_property board_part em.avnet.com:ultra96v2:part0:1.0 [current_project]
set_property ip_repo_paths d:/work/vivado_avnet/hdl/IP [current_project]
update_ip_catalog
set_property ip_output_repo d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/hdl/ultra96v2_oob_wrapper.vhd
add_files D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ultra96v2_oob.bd
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_zynq_ultra_ps_e_0_0/ultra96v2_oob_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_zynq_ultra_ps_e_0_0/ultra96v2_oob_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_uart16550_0_0/ultra96v2_oob_axi_uart16550_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_uart16550_0_0/ultra96v2_oob_axi_uart16550_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_uart16550_0_0/ultra96v2_oob_axi_uart16550_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_xbar_0/ultra96v2_oob_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_rst_ps8_0_100M_0/ultra96v2_oob_rst_ps8_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_rst_ps8_0_100M_0/ultra96v2_oob_rst_ps8_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_rst_ps8_0_100M_0/ultra96v2_oob_rst_ps8_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_uart16550_1_0/ultra96v2_oob_axi_uart16550_1_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_uart16550_1_0/ultra96v2_oob_axi_uart16550_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_uart16550_1_0/ultra96v2_oob_axi_uart16550_1_0.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_0_0/ultra96v2_oob_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_0_0/ultra96v2_oob_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_0_0/ultra96v2_oob_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_1_0/ultra96v2_oob_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_1_0/ultra96v2_oob_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_1_0/ultra96v2_oob_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_2_0/ultra96v2_oob_axi_gpio_2_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_2_0/ultra96v2_oob_axi_gpio_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_axi_gpio_2_0/ultra96v2_oob_axi_gpio_2_0.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_system_management_wiz_0_0/ultra96v2_oob_system_management_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_system_management_wiz_0_0/ultra96v2_oob_system_management_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_system_management_wiz_0_0/ultra96v2_oob_system_management_wiz_0_0.xdc]
set_property used_in_synthesis false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_auto_ds_0/ultra96v2_oob_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_auto_ds_0/ultra96v2_oob_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_auto_ds_0/ultra96v2_oob_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ip/ultra96v2_oob_auto_pc_0/ultra96v2_oob_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/sources_1/bd/ultra96v2_oob/ultra96v2_oob_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/constrs_1/imports/ultra96v2_oob/ultra96v2_oob.xdc
set_property used_in_implementation false [get_files D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ULTRA96V2_2018_3/ultra96v2_oob.srcs/constrs_1/imports/ultra96v2_oob/ultra96v2_oob.xdc]

read_xdc D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ultra96v2_oob.xdc
set_property used_in_implementation false [get_files D:/work/vivado_avnet/hdl/Projects/ultra96v2_oob/ultra96v2_oob.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top ultra96v2_oob_wrapper -part xczu3eg-sbva484-1-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef ultra96v2_oob_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file ultra96v2_oob_wrapper_utilization_synth.rpt -pb ultra96v2_oob_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
