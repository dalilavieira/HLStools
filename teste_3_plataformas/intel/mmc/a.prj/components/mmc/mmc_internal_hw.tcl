package require -exact qsys 15.0
set_module_property NAME mmc_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME mmc_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property SUPPORTED_DEVICE_FAMILIES {"Arria 10"}
set_module_assignment hls.cosim.name {_Z3mmcii}
set_module_assignment hls.compressed.name {mmc}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL mmc_internal
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
add_fileset_file "acl_ffwdsrc.v" SYSTEM_VERILOG PATH "ip/acl_ffwdsrc.v"
add_fileset_file "acl_ffwddst.sv" SYSTEM_VERILOG PATH "ip/acl_ffwddst.sv"
add_fileset_file "acl_full_detector.v" SYSTEM_VERILOG PATH "ip/acl_full_detector.v"
add_fileset_file "acl_tessellated_incr_decr_decr.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_decr.sv"
add_fileset_file "acl_loop_limiter.v" SYSTEM_VERILOG PATH "ip/acl_loop_limiter.v"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "mmc_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/mmc_function_wrapper.sv"
add_fileset_file "mmc_function.sv" SYSTEM_VERILOG PATH "ip/mmc_function.sv"
add_fileset_file "mmc_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B0_runOnce.sv"
add_fileset_file "mmc_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B0_runOnce_stall_region.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "mmc_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "mmc_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_B0_runOnce_merge_reg.sv"
add_fileset_file "mmc_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/mmc_B0_runOnce_branch.sv"
add_fileset_file "mmc_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/mmc_B0_runOnce_merge.sv"
add_fileset_file "mmc_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B1_start.sv"
add_fileset_file "mmc_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B1_start_stall_region.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_source_i1_unnamed_5_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_source_i1_unnamed_5_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_source_i32_unnamed_3_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_source_i32_unnamed_3_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_source_i32_unnamed_4_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_source_i32_unnamed_4_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv"
add_fileset_file "mmc_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_B1_start_merge_reg.sv"
add_fileset_file "mmc_i_iord_bl_call_unnamed_mmc2_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_iord_bl_call_unnamed_mmc2_mmc0.sv"
add_fileset_file "mmc_i_sfc_s_c0_in_wt_entry_s_c0_enter1_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_sfc_s_c0_in_wt_entry_s_c0_enter1_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_mmc0.sv"
add_fileset_file "mmc_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going15_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going15_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i1_notexitcond16_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i1_notexitcond16_0.sv"
add_fileset_file "mmc_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/mmc_B1_start_branch.sv"
add_fileset_file "mmc_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/mmc_B1_start_merge.sv"
add_fileset_file "mmc_bb_B2.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B2.sv"
add_fileset_file "mmc_bb_B2_stall_region.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B2_stall_region.sv"
add_fileset_file "mmc_i_sfc_s_c0_in_while_body_s_c0_enter182_mmc1.sv" SYSTEM_VERILOG PATH "ip/mmc_i_sfc_s_c0_in_while_body_s_c0_enter182_mmc1.sv"
add_fileset_file "mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_body_s_c0_exit20_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_body_s_c0_exit20_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_A000000Z0_mmc1_full_detector.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_A000000Z0_mmc1_full_detector.sv"
add_fileset_file "mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_A000000Zxit20_mmc1_data_fifo.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_A000000Zxit20_mmc1_data_fifo.sv"
add_fileset_file "mmc_i_sfc_logic_s_c0_in_while_body_s_c0_enter182_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_sfc_logic_s_c0_in_while_body_s_c0_enter182_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i1_cmp913_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i1_cmp913_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_a128_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_a128_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_a129_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_a129_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_b1310_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_b1310_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_b1311_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_b1311_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_source_i32_unnamed_6_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_source_i32_unnamed_6_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_i32_f1_010_pop7_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_i32_f1_010_pop7_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_i32_f2_011_pop6_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_i32_f2_011_pop6_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_i4_cleanups_pop9_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_i4_cleanups_pop9_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_i4_initerations_pop8_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_i4_initerations_pop8_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i1_lastiniteration_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i1_lastiniteration_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i32_f1_010_push7_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i32_f1_010_push7_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i32_f2_011_push6_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i32_f2_011_push6_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i4_cleanups_push9_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i4_cleanups_push9_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i4_initerations_push8_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i4_initerations_push8_0.sv"
add_fileset_file "mmc_B2_merge_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_B2_merge_reg.sv"
add_fileset_file "mmc_B2_branch.sv" SYSTEM_VERILOG PATH "ip/mmc_B2_branch.sv"
add_fileset_file "mmc_B2_merge.sv" SYSTEM_VERILOG PATH "ip/mmc_B2_merge.sv"
add_fileset_file "mmc_bb_B3.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B3.sv"
add_fileset_file "mmc_bb_B3_stall_region.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B3_stall_region.sv"
add_fileset_file "mmc_i_iowr_bl_return_unnamed_mmc8_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_iowr_bl_return_unnamed_mmc8_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i1_cmp912_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i1_cmp912_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_a127_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_a127_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_unnamed_7_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_unnamed_7_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_token_i1_throttle_push_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_token_i1_throttle_push_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_token_i1_throttle_push_5_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_token_i1_throttle_push_5_reg.sv"
add_fileset_file "mmc_B3_branch.sv" SYSTEM_VERILOG PATH "ip/mmc_B3_branch.sv"
add_fileset_file "mmc_B3_merge.sv" SYSTEM_VERILOG PATH "ip/mmc_B3_merge.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going15_1_sr.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going15_1_sr.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going15_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going15_1_valid_fifo.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going_6_sr.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going_6_sr.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv"
add_fileset_file "mmc_loop_limiter_0.sv" SYSTEM_VERILOG PATH "ip/mmc_loop_limiter_0.sv"
add_fileset_file "mmc_bb_B2_sr_1.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B2_sr_1.sv"
add_fileset_file "mmc_bb_B3_sr_0.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B3_sr_0.sv"
add_fileset_file "mmc_internal.v" SYSTEM_VERILOG PATH "mmc_internal.v"

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL mmc_internal
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
add_fileset_file "acl_ffwdsrc.v" SYSTEM_VERILOG PATH "ip/acl_ffwdsrc.v"
add_fileset_file "acl_ffwddst.sv" SYSTEM_VERILOG PATH "ip/acl_ffwddst.sv"
add_fileset_file "acl_full_detector.v" SYSTEM_VERILOG PATH "ip/acl_full_detector.v"
add_fileset_file "acl_tessellated_incr_decr_decr.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_decr.sv"
add_fileset_file "acl_loop_limiter.v" SYSTEM_VERILOG PATH "ip/acl_loop_limiter.v"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "mmc_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/mmc_function_wrapper.sv"
add_fileset_file "mmc_function.sv" SYSTEM_VERILOG PATH "ip/mmc_function.sv"
add_fileset_file "mmc_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B0_runOnce.sv"
add_fileset_file "mmc_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B0_runOnce_stall_region.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "mmc_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "mmc_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_B0_runOnce_merge_reg.sv"
add_fileset_file "mmc_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/mmc_B0_runOnce_branch.sv"
add_fileset_file "mmc_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/mmc_B0_runOnce_merge.sv"
add_fileset_file "mmc_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B1_start.sv"
add_fileset_file "mmc_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B1_start_stall_region.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_source_i1_unnamed_5_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_source_i1_unnamed_5_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_source_i32_unnamed_3_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_source_i32_unnamed_3_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_source_i32_unnamed_4_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_source_i32_unnamed_4_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_1_reg.sv"
add_fileset_file "mmc_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_B1_start_merge_reg.sv"
add_fileset_file "mmc_i_iord_bl_call_unnamed_mmc2_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_iord_bl_call_unnamed_mmc2_mmc0.sv"
add_fileset_file "mmc_i_sfc_s_c0_in_wt_entry_s_c0_enter1_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_sfc_s_c0_in_wt_entry_s_c0_enter1_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_mmc0.sv"
add_fileset_file "mmc_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going15_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going15_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i1_notexitcond16_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i1_notexitcond16_0.sv"
add_fileset_file "mmc_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/mmc_B1_start_branch.sv"
add_fileset_file "mmc_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/mmc_B1_start_merge.sv"
add_fileset_file "mmc_bb_B2.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B2.sv"
add_fileset_file "mmc_bb_B2_stall_region.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B2_stall_region.sv"
add_fileset_file "mmc_i_sfc_s_c0_in_while_body_s_c0_enter182_mmc1.sv" SYSTEM_VERILOG PATH "ip/mmc_i_sfc_s_c0_in_while_body_s_c0_enter182_mmc1.sv"
add_fileset_file "mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_body_s_c0_exit20_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_body_s_c0_exit20_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_A000000Z0_mmc1_full_detector.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_A000000Z0_mmc1_full_detector.sv"
add_fileset_file "mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_A000000Zxit20_mmc1_data_fifo.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_sfc_exit_s_c0_out_while_A000000Zxit20_mmc1_data_fifo.sv"
add_fileset_file "mmc_i_sfc_logic_s_c0_in_while_body_s_c0_enter182_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_sfc_logic_s_c0_in_while_body_s_c0_enter182_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i1_cmp913_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i1_cmp913_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_a128_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_a128_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_a129_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_a129_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_b1310_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_b1310_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_b1311_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_b1311_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_source_i32_unnamed_6_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_source_i32_unnamed_6_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_i32_f1_010_pop7_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_i32_f1_010_pop7_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_i32_f2_011_pop6_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_i32_f2_011_pop6_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_i4_cleanups_pop9_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_i4_cleanups_pop9_0.sv"
add_fileset_file "mmc_i_llvm_fpga_pop_i4_initerations_pop8_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pop_i4_initerations_pop8_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i1_lastiniteration_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i1_lastiniteration_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i32_f1_010_push7_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i32_f1_010_push7_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i32_f2_011_push6_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i32_f2_011_push6_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i4_cleanups_push9_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i4_cleanups_push9_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_i4_initerations_push8_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_i4_initerations_push8_0.sv"
add_fileset_file "mmc_B2_merge_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_B2_merge_reg.sv"
add_fileset_file "mmc_B2_branch.sv" SYSTEM_VERILOG PATH "ip/mmc_B2_branch.sv"
add_fileset_file "mmc_B2_merge.sv" SYSTEM_VERILOG PATH "ip/mmc_B2_merge.sv"
add_fileset_file "mmc_bb_B3.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B3.sv"
add_fileset_file "mmc_bb_B3_stall_region.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B3_stall_region.sv"
add_fileset_file "mmc_i_iowr_bl_return_unnamed_mmc8_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_iowr_bl_return_unnamed_mmc8_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i1_cmp912_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i1_cmp912_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_a127_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_a127_0.sv"
add_fileset_file "mmc_i_llvm_fpga_ffwd_dest_i32_unnamed_7_mmc0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_ffwd_dest_i32_unnamed_7_mmc0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_token_i1_throttle_push_0.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_token_i1_throttle_push_0.sv"
add_fileset_file "mmc_i_llvm_fpga_push_token_i1_throttle_push_5_reg.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_push_token_i1_throttle_push_5_reg.sv"
add_fileset_file "mmc_B3_branch.sv" SYSTEM_VERILOG PATH "ip/mmc_B3_branch.sv"
add_fileset_file "mmc_B3_merge.sv" SYSTEM_VERILOG PATH "ip/mmc_B3_merge.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going15_1_sr.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going15_1_sr.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going15_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going15_1_valid_fifo.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going_6_sr.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going_6_sr.sv"
add_fileset_file "mmc_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/mmc_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv"
add_fileset_file "mmc_loop_limiter_0.sv" SYSTEM_VERILOG PATH "ip/mmc_loop_limiter_0.sv"
add_fileset_file "mmc_bb_B2_sr_1.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B2_sr_1.sv"
add_fileset_file "mmc_bb_B3_sr_0.sv" SYSTEM_VERILOG PATH "ip/mmc_bb_B3_sr_0.sv"
add_fileset_file "mmc_internal.v" SYSTEM_VERILOG PATH "mmc_internal.v"

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

#### Parameter a interface
add_interface a conduit sink
set_interface_property a associatedClock clock
set_interface_property a associatedReset reset
set_interface_assignment a hls.cosim.name {a}
add_interface_port a a data input 32

#### Parameter b interface
add_interface b conduit sink
set_interface_property b associatedClock clock
set_interface_property b associatedReset reset
set_interface_assignment b hls.cosim.name {b}
add_interface_port b b data input 32

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }
