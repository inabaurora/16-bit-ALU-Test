set projDir "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/vivado"
set projName "1d_alu_checkoff"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/au_top_0.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/multi_seven_seg_1.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/multi_dec_ctr_2.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/counter_3.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/button_conditioner_4.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/edge_detector_5.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/reset_conditioner_6.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/result_ROM_7.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/fsm_test_cases_8.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/answer_key_9.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/counter_10.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/seven_seg_11.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/decoder_12.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/decimal_counter_13.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/pipeline_14.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/alu_15.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/show_component_16.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/counter_17.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/adder_18.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/compare_19.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/boolean_20.v" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/verilog/shifter_21.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/constraint/alchitry.xdc" "C:/Users/royde/AlchitryProjects/1d_alu_checkoff/work/constraint/io.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 12
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 12
wait_on_run impl_1
