set projDir "D:/FPGA/Max7219Counter/work/planAhead"
set projName "Max7219Counter"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/FPGA/Max7219Counter/work/verilog/mojo_top_0.v" "D:/FPGA/Max7219Counter/work/verilog/reset_conditioner_1.v" "D:/FPGA/Max7219Counter/work/verilog/edge_detector_2.v" "D:/FPGA/Max7219Counter/work/verilog/max7219_3.v" "D:/FPGA/Max7219Counter/work/verilog/counter_4.v" "D:/FPGA/Max7219Counter/work/verilog/multi_seven_seg_5.v" "D:/FPGA/Max7219Counter/work/verilog/multi_base_ctr_6.v" "D:/FPGA/Max7219Counter/work/verilog/spi_master_7.v" "D:/FPGA/Max7219Counter/work/verilog/counter_8.v" "D:/FPGA/Max7219Counter/work/verilog/counter_9.v" "D:/FPGA/Max7219Counter/work/verilog/seven_seg_10.v" "D:/FPGA/Max7219Counter/work/verilog/base_ctr_11.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "D:/FPGA/Max7219Counter/constraint/max7219.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
