package require -exact qsys 15.0
set_module_property NAME test_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME test_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property SUPPORTED_DEVICE_FAMILIES {"Arria 10"}
set_module_assignment hls.cosim.name {_Z4testv}
set_module_assignment hls.compressed.name {test}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL test_internal
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "linux64/lib/dspba/Libraries/sv/base/dspba_library_ver.sv"
add_fileset_file "acl_data_fifo.v" SYSTEM_VERILOG PATH "ip/acl_data_fifo.v"
add_fileset_file "acl_fifo.v" SYSTEM_VERILOG PATH "ip/acl_fifo.v"
add_fileset_file "acl_altera_syncram_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_altera_syncram_wrapped.sv"
add_fileset_file "acl_scfifo_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_scfifo_wrapped.sv"
add_fileset_file "acl_ecc_decoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_decoder.sv"
add_fileset_file "acl_ecc_encoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_encoder.sv"
add_fileset_file "acl_ecc.svh" SYSTEM_VERILOG PATH "ip/acl_ecc.svh"
add_fileset_file "acl_ll_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_fifo.v"
add_fileset_file "acl_ll_ram_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_ram_fifo.v"
add_fileset_file "acl_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_valid_fifo_counter.v"
add_fileset_file "acl_dspba_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_dspba_valid_fifo_counter.v"
add_fileset_file "acl_staging_reg.v" SYSTEM_VERILOG PATH "ip/acl_staging_reg.v"
add_fileset_file "hld_fifo.sv" SYSTEM_VERILOG PATH "ip/hld_fifo.sv"
add_fileset_file "acl_mid_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mid_speed_fifo.sv"
add_fileset_file "acl_latency_one_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_one_ram_fifo.sv"
add_fileset_file "acl_latency_zero_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_zero_ram_fifo.sv"
add_fileset_file "hld_fifo_zero_width.sv" SYSTEM_VERILOG PATH "ip/hld_fifo_zero_width.sv"
add_fileset_file "acl_high_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_high_speed_fifo.sv"
add_fileset_file "acl_low_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_low_latency_fifo.sv"
add_fileset_file "acl_zero_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_zero_latency_fifo.sv"
add_fileset_file "acl_fanout_pipeline.sv" SYSTEM_VERILOG PATH "ip/acl_fanout_pipeline.sv"
add_fileset_file "acl_std_synchronizer_nocut.v" SYSTEM_VERILOG PATH "ip/acl_std_synchronizer_nocut.v"
add_fileset_file "acl_tessellated_incr_decr_threshold.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_threshold.sv"
add_fileset_file "acl_tessellated_incr_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_lookahead.sv"
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "ip/acl_reset_handler.sv"
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "ip/acl_lfsr.sv"
add_fileset_file "acl_pop.v" SYSTEM_VERILOG PATH "ip/acl_pop.v"
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "ip/acl_push.v"
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_token_fifo_counter.v"
add_fileset_file "acl_pipeline.v" SYSTEM_VERILOG PATH "ip/acl_pipeline.v"
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "ip/acl_dspba_buffer.v"
add_fileset_file "acl_enable_sink.v" SYSTEM_VERILOG PATH "ip/acl_enable_sink.v"
add_fileset_file "st_top.v" SYSTEM_VERILOG PATH "ip/st_top.v"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "test_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/test_function_wrapper.sv"
add_fileset_file "test_function.sv" SYSTEM_VERILOG PATH "ip/test_function.sv"
add_fileset_file "test_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/test_bb_B0_runOnce.sv"
add_fileset_file "test_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/test_bb_B0_runOnce_stall_region.sv"
add_fileset_file "test_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "test_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "test_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "test_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "test_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/test_B0_runOnce_merge_reg.sv"
add_fileset_file "test_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/test_B0_runOnce_branch.sv"
add_fileset_file "test_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/test_B0_runOnce_merge.sv"
add_fileset_file "test_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/test_bb_B1_start.sv"
add_fileset_file "test_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/test_bb_B1_start_stall_region.sv"
add_fileset_file "test_i_iord_bl_call_unnamed_test2_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_iord_bl_call_unnamed_test2_test0.sv"
add_fileset_file "test_i_iowr_bl_return_unnamed_test3_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_iowr_bl_return_unnamed_test3_test0.sv"
add_fileset_file "test_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/test_B1_start_merge_reg.sv"
add_fileset_file "test_i_sfc_s_c0_in_wt_entry_s_c0_enter1_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_sfc_s_c0_in_wt_entry_s_c0_enter1_test0.sv"
add_fileset_file "test_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_test0.sv"
add_fileset_file "test_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_test0.sv"
add_fileset_file "test_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "test_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "test_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/test_B1_start_branch.sv"
add_fileset_file "test_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/test_B1_start_merge.sv"
add_fileset_file "test_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "test_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"
add_fileset_file "test_internal.v" SYSTEM_VERILOG PATH "test_internal.v"

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL test_internal
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "linux64/lib/dspba/Libraries/sv/base/dspba_library_ver.sv"
add_fileset_file "acl_data_fifo.v" SYSTEM_VERILOG PATH "ip/acl_data_fifo.v"
add_fileset_file "acl_fifo.v" SYSTEM_VERILOG PATH "ip/acl_fifo.v"
add_fileset_file "acl_altera_syncram_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_altera_syncram_wrapped.sv"
add_fileset_file "acl_scfifo_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_scfifo_wrapped.sv"
add_fileset_file "acl_ecc_decoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_decoder.sv"
add_fileset_file "acl_ecc_encoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_encoder.sv"
add_fileset_file "acl_ecc.svh" SYSTEM_VERILOG PATH "ip/acl_ecc.svh"
add_fileset_file "acl_ll_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_fifo.v"
add_fileset_file "acl_ll_ram_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_ram_fifo.v"
add_fileset_file "acl_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_valid_fifo_counter.v"
add_fileset_file "acl_dspba_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_dspba_valid_fifo_counter.v"
add_fileset_file "acl_staging_reg.v" SYSTEM_VERILOG PATH "ip/acl_staging_reg.v"
add_fileset_file "hld_fifo.sv" SYSTEM_VERILOG PATH "ip/hld_fifo.sv"
add_fileset_file "acl_mid_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mid_speed_fifo.sv"
add_fileset_file "acl_latency_one_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_one_ram_fifo.sv"
add_fileset_file "acl_latency_zero_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_zero_ram_fifo.sv"
add_fileset_file "hld_fifo_zero_width.sv" SYSTEM_VERILOG PATH "ip/hld_fifo_zero_width.sv"
add_fileset_file "acl_high_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_high_speed_fifo.sv"
add_fileset_file "acl_low_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_low_latency_fifo.sv"
add_fileset_file "acl_zero_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_zero_latency_fifo.sv"
add_fileset_file "acl_fanout_pipeline.sv" SYSTEM_VERILOG PATH "ip/acl_fanout_pipeline.sv"
add_fileset_file "acl_std_synchronizer_nocut.v" SYSTEM_VERILOG PATH "ip/acl_std_synchronizer_nocut.v"
add_fileset_file "acl_tessellated_incr_decr_threshold.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_threshold.sv"
add_fileset_file "acl_tessellated_incr_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_lookahead.sv"
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "ip/acl_reset_handler.sv"
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "ip/acl_lfsr.sv"
add_fileset_file "acl_pop.v" SYSTEM_VERILOG PATH "ip/acl_pop.v"
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "ip/acl_push.v"
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_token_fifo_counter.v"
add_fileset_file "acl_pipeline.v" SYSTEM_VERILOG PATH "ip/acl_pipeline.v"
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "ip/acl_dspba_buffer.v"
add_fileset_file "acl_enable_sink.v" SYSTEM_VERILOG PATH "ip/acl_enable_sink.v"
add_fileset_file "st_top.v" SYSTEM_VERILOG PATH "ip/st_top.v"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "test_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/test_function_wrapper.sv"
add_fileset_file "test_function.sv" SYSTEM_VERILOG PATH "ip/test_function.sv"
add_fileset_file "test_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/test_bb_B0_runOnce.sv"
add_fileset_file "test_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/test_bb_B0_runOnce_stall_region.sv"
add_fileset_file "test_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "test_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "test_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "test_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "test_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/test_B0_runOnce_merge_reg.sv"
add_fileset_file "test_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/test_B0_runOnce_branch.sv"
add_fileset_file "test_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/test_B0_runOnce_merge.sv"
add_fileset_file "test_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/test_bb_B1_start.sv"
add_fileset_file "test_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/test_bb_B1_start_stall_region.sv"
add_fileset_file "test_i_iord_bl_call_unnamed_test2_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_iord_bl_call_unnamed_test2_test0.sv"
add_fileset_file "test_i_iowr_bl_return_unnamed_test3_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_iowr_bl_return_unnamed_test3_test0.sv"
add_fileset_file "test_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/test_B1_start_merge_reg.sv"
add_fileset_file "test_i_sfc_s_c0_in_wt_entry_s_c0_enter1_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_sfc_s_c0_in_wt_entry_s_c0_enter1_test0.sv"
add_fileset_file "test_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_test0.sv"
add_fileset_file "test_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_test0.sv" SYSTEM_VERILOG PATH "ip/test_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_test0.sv"
add_fileset_file "test_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "test_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "test_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/test_B1_start_branch.sv"
add_fileset_file "test_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/test_B1_start_merge.sv"
add_fileset_file "test_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "test_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/test_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"
add_fileset_file "test_internal.v" SYSTEM_VERILOG PATH "test_internal.v"

#### Primary clock for the component
add_interface clock clock end
set_interface_property clock ENABLED true
set_interface_assignment clock hls.cosim.name {$clock}
add_interface_port clock clock clk input 1

#### Primary reset for the component
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_assignment reset hls.cosim.name {$reset}
add_interface_port reset resetn reset_n input 1

#### The component invocation protocol interface (call)
add_interface call conduit sink
set_interface_property call associatedClock clock
set_interface_property call associatedReset reset
set_interface_assignment call hls.cosim.name {$call}
add_interface_port call start valid input 1
add_interface_port call busy stall output 1

#### The component return protocol interface (return)
add_interface return conduit source
set_interface_property return associatedClock clock
set_interface_property return associatedReset reset
set_interface_assignment return hls.cosim.name {$return}
add_interface_port return done valid output 1
add_interface_port return stall stall input 1

#### The component return data interface (returndata)
add_interface returndata conduit source
set_interface_property returndata associatedClock clock
set_interface_property returndata associatedReset reset
set_interface_assignment returndata hls.cosim.name {$returndata}
add_interface_port returndata returndata data output 32

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }
