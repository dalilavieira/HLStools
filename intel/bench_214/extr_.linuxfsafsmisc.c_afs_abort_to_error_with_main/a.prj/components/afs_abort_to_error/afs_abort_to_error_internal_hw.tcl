package require -exact qsys 15.0
set_module_property NAME afs_abort_to_error_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME afs_abort_to_error_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property SUPPORTED_DEVICE_FAMILIES {"Arria 10"}
set_module_assignment hls.cosim.name {_Z18afs_abort_to_errori}
set_module_assignment hls.compressed.name {afs_abort_to_error}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL afs_abort_to_error_internal
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
add_fileset_file "lsu_top.v" SYSTEM_VERILOG PATH "ip/lsu_top.v"
add_fileset_file "lsu_permute_address.v" SYSTEM_VERILOG PATH "ip/lsu_permute_address.v"
add_fileset_file "lsu_pipelined.v" SYSTEM_VERILOG PATH "ip/lsu_pipelined.v"
add_fileset_file "lsu_enabled.v" SYSTEM_VERILOG PATH "ip/lsu_enabled.v"
add_fileset_file "lsu_basic_coalescer.v" SYSTEM_VERILOG PATH "ip/lsu_basic_coalescer.v"
add_fileset_file "lsu_simple.v" SYSTEM_VERILOG PATH "ip/lsu_simple.v"
add_fileset_file "lsu_streaming.v" SYSTEM_VERILOG PATH "ip/lsu_streaming.v"
add_fileset_file "lsu_burst_master.v" SYSTEM_VERILOG PATH "ip/lsu_burst_master.v"
add_fileset_file "lsu_bursting_load_stores.v" SYSTEM_VERILOG PATH "ip/lsu_bursting_load_stores.v"
add_fileset_file "lsu_non_aligned_write.v" SYSTEM_VERILOG PATH "ip/lsu_non_aligned_write.v"
add_fileset_file "lsu_read_cache.v" SYSTEM_VERILOG PATH "ip/lsu_read_cache.v"
add_fileset_file "lsu_atomic.v" SYSTEM_VERILOG PATH "ip/lsu_atomic.v"
add_fileset_file "lsu_prefetch_block.v" SYSTEM_VERILOG PATH "ip/lsu_prefetch_block.v"
add_fileset_file "lsu_wide_wrapper.v" SYSTEM_VERILOG PATH "ip/lsu_wide_wrapper.v"
add_fileset_file "lsu_streaming_prefetch.v" SYSTEM_VERILOG PATH "ip/lsu_streaming_prefetch.v"
add_fileset_file "acl_aligned_burst_coalesced_lsu.v" SYSTEM_VERILOG PATH "ip/acl_aligned_burst_coalesced_lsu.v"
add_fileset_file "acl_toggle_detect.v" SYSTEM_VERILOG PATH "ip/acl_toggle_detect.v"
add_fileset_file "acl_debug_mem.v" SYSTEM_VERILOG PATH "ip/acl_debug_mem.v"
add_fileset_file "lsu_burst_coalesced_pipelined_write.sv" SYSTEM_VERILOG PATH "ip/lsu_burst_coalesced_pipelined_write.sv"
add_fileset_file "lsu_burst_coalesced_pipelined_read.sv" SYSTEM_VERILOG PATH "ip/lsu_burst_coalesced_pipelined_read.sv"
add_fileset_file "acl_fifo_stall_valid_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_fifo_stall_valid_lookahead.sv"
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "ip/acl_parameter_assert.svh"
add_fileset_file "hld_global_load_store.sv" SYSTEM_VERILOG PATH "ip/hld_global_load_store.sv"
add_fileset_file "hld_lsu.sv" SYSTEM_VERILOG PATH "ip/hld_lsu.sv"
add_fileset_file "hld_lsu_burst_coalescer.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_burst_coalescer.sv"
add_fileset_file "hld_lsu_coalescer_dynamic_timeout.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_coalescer_dynamic_timeout.sv"
add_fileset_file "hld_lsu_data_aligner.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_data_aligner.sv"
add_fileset_file "hld_lsu_read_cache.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_read_cache.sv"
add_fileset_file "hld_lsu_read_data_alignment.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_read_data_alignment.sv"
add_fileset_file "hld_lsu_unaligned_controller.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_unaligned_controller.sv"
add_fileset_file "hld_lsu_word_coalescer.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_word_coalescer.sv"
add_fileset_file "hld_lsu_write_data_alignment.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_write_data_alignment.sv"
add_fileset_file "hld_lsu_write_kernel_downstream.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_write_kernel_downstream.sv"
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset.sv"
add_fileset_file "acl_full_detector.v" SYSTEM_VERILOG PATH "ip/acl_full_detector.v"
add_fileset_file "acl_tessellated_incr_decr_decr.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_decr.sv"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "afs_abort_to_error_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_function_wrapper.sv"
add_fileset_file "afs_abort_to_error_function.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_function.sv"
add_fileset_file "afs_abort_to_error_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_bb_B0_runOnce.sv"
add_fileset_file "afs_abort_to_error_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B0_runOnce_branch.sv"
add_fileset_file "afs_abort_to_error_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B0_runOnce_merge.sv"
add_fileset_file "afs_abort_to_error_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_bb_B0_runOnce_stall_region.sv"
add_fileset_file "afs_abort_to_error_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B0_runOnce_merge_reg.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "afs_abort_to_error_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_bb_B1_start.sv"
add_fileset_file "afs_abort_to_error_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B1_start_branch.sv"
add_fileset_file "afs_abort_to_error_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B1_start_merge.sv"
add_fileset_file "afs_abort_to_error_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_bb_B1_start_stall_region.sv"
add_fileset_file "afs_abort_to_error_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B1_start_merge_reg.sv"
add_fileset_file "afs_abort_to_error_i_iowr_bl_return_unnaA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_iowr_bl_return_unnaA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_iord_bl_call_unnameA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_iord_bl_call_unnameA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_sfc_s_c0_in_wt_entrA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_sfc_s_c0_in_wt_entrA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_sfc_logic_s_c0_in_wA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_sfc_logic_s_c0_in_wA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "afs_abort_to_error_i_sfc_s_c1_in_wt_entrA000000Z_afs_abort_to_error3.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_sfc_s_c1_in_wt_entrA000000Z_afs_abort_to_error3.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_sfc_exit_A000001Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_sfc_exit_A000001Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Zerror1_full_detector.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Zerror1_full_detector.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Z_to_error1_data_fifo.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Z_to_error1_data_fifo.sv"
add_fileset_file "afs_abort_to_error_i_sfc_logic_s_c1_in_wA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_sfc_logic_s_c1_in_wA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_mem_pn1_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_mem_pn1_0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_master_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_master_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_slave_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_endpoint.v"
add_fileset_file "acl_ic_slave_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_rrp.v"
add_fileset_file "acl_ic_slave_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "afs_abort_to_error_internal.v" SYSTEM_VERILOG PATH "afs_abort_to_error_internal.v"

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL afs_abort_to_error_internal
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
add_fileset_file "lsu_top.v" SYSTEM_VERILOG PATH "ip/lsu_top.v"
add_fileset_file "lsu_permute_address.v" SYSTEM_VERILOG PATH "ip/lsu_permute_address.v"
add_fileset_file "lsu_pipelined.v" SYSTEM_VERILOG PATH "ip/lsu_pipelined.v"
add_fileset_file "lsu_enabled.v" SYSTEM_VERILOG PATH "ip/lsu_enabled.v"
add_fileset_file "lsu_basic_coalescer.v" SYSTEM_VERILOG PATH "ip/lsu_basic_coalescer.v"
add_fileset_file "lsu_simple.v" SYSTEM_VERILOG PATH "ip/lsu_simple.v"
add_fileset_file "lsu_streaming.v" SYSTEM_VERILOG PATH "ip/lsu_streaming.v"
add_fileset_file "lsu_burst_master.v" SYSTEM_VERILOG PATH "ip/lsu_burst_master.v"
add_fileset_file "lsu_bursting_load_stores.v" SYSTEM_VERILOG PATH "ip/lsu_bursting_load_stores.v"
add_fileset_file "lsu_non_aligned_write.v" SYSTEM_VERILOG PATH "ip/lsu_non_aligned_write.v"
add_fileset_file "lsu_read_cache.v" SYSTEM_VERILOG PATH "ip/lsu_read_cache.v"
add_fileset_file "lsu_atomic.v" SYSTEM_VERILOG PATH "ip/lsu_atomic.v"
add_fileset_file "lsu_prefetch_block.v" SYSTEM_VERILOG PATH "ip/lsu_prefetch_block.v"
add_fileset_file "lsu_wide_wrapper.v" SYSTEM_VERILOG PATH "ip/lsu_wide_wrapper.v"
add_fileset_file "lsu_streaming_prefetch.v" SYSTEM_VERILOG PATH "ip/lsu_streaming_prefetch.v"
add_fileset_file "acl_aligned_burst_coalesced_lsu.v" SYSTEM_VERILOG PATH "ip/acl_aligned_burst_coalesced_lsu.v"
add_fileset_file "acl_toggle_detect.v" SYSTEM_VERILOG PATH "ip/acl_toggle_detect.v"
add_fileset_file "acl_debug_mem.v" SYSTEM_VERILOG PATH "ip/acl_debug_mem.v"
add_fileset_file "lsu_burst_coalesced_pipelined_write.sv" SYSTEM_VERILOG PATH "ip/lsu_burst_coalesced_pipelined_write.sv"
add_fileset_file "lsu_burst_coalesced_pipelined_read.sv" SYSTEM_VERILOG PATH "ip/lsu_burst_coalesced_pipelined_read.sv"
add_fileset_file "acl_fifo_stall_valid_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_fifo_stall_valid_lookahead.sv"
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "ip/acl_parameter_assert.svh"
add_fileset_file "hld_global_load_store.sv" SYSTEM_VERILOG PATH "ip/hld_global_load_store.sv"
add_fileset_file "hld_lsu.sv" SYSTEM_VERILOG PATH "ip/hld_lsu.sv"
add_fileset_file "hld_lsu_burst_coalescer.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_burst_coalescer.sv"
add_fileset_file "hld_lsu_coalescer_dynamic_timeout.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_coalescer_dynamic_timeout.sv"
add_fileset_file "hld_lsu_data_aligner.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_data_aligner.sv"
add_fileset_file "hld_lsu_read_cache.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_read_cache.sv"
add_fileset_file "hld_lsu_read_data_alignment.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_read_data_alignment.sv"
add_fileset_file "hld_lsu_unaligned_controller.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_unaligned_controller.sv"
add_fileset_file "hld_lsu_word_coalescer.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_word_coalescer.sv"
add_fileset_file "hld_lsu_write_data_alignment.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_write_data_alignment.sv"
add_fileset_file "hld_lsu_write_kernel_downstream.sv" SYSTEM_VERILOG PATH "ip/hld_lsu_write_kernel_downstream.sv"
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset.sv"
add_fileset_file "acl_full_detector.v" SYSTEM_VERILOG PATH "ip/acl_full_detector.v"
add_fileset_file "acl_tessellated_incr_decr_decr.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_decr.sv"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "afs_abort_to_error_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_function_wrapper.sv"
add_fileset_file "afs_abort_to_error_function.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_function.sv"
add_fileset_file "afs_abort_to_error_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_bb_B0_runOnce.sv"
add_fileset_file "afs_abort_to_error_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B0_runOnce_branch.sv"
add_fileset_file "afs_abort_to_error_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B0_runOnce_merge.sv"
add_fileset_file "afs_abort_to_error_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_bb_B0_runOnce_stall_region.sv"
add_fileset_file "afs_abort_to_error_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B0_runOnce_merge_reg.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "afs_abort_to_error_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_bb_B1_start.sv"
add_fileset_file "afs_abort_to_error_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B1_start_branch.sv"
add_fileset_file "afs_abort_to_error_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B1_start_merge.sv"
add_fileset_file "afs_abort_to_error_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_bb_B1_start_stall_region.sv"
add_fileset_file "afs_abort_to_error_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_B1_start_merge_reg.sv"
add_fileset_file "afs_abort_to_error_i_iowr_bl_return_unnaA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_iowr_bl_return_unnaA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_iord_bl_call_unnameA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_iord_bl_call_unnameA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_sfc_s_c0_in_wt_entrA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_sfc_s_c0_in_wt_entrA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_sfc_logic_s_c0_in_wA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_sfc_logic_s_c0_in_wA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "afs_abort_to_error_i_sfc_s_c1_in_wt_entrA000000Z_afs_abort_to_error3.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_sfc_s_c1_in_wt_entrA000000Z_afs_abort_to_error3.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_sfc_exit_A000001Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_sfc_exit_A000001Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Zerror1_full_detector.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Zerror1_full_detector.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Z_to_error1_data_fifo.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_sfc_exit_A000000Z_to_error1_data_fifo.sv"
add_fileset_file "afs_abort_to_error_i_sfc_logic_s_c1_in_wA000000Z_afs_abort_to_error0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_sfc_logic_s_c1_in_wA000000Z_afs_abort_to_error0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_mem_pn1_0.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_mem_pn1_0.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/afs_abort_to_error_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_master_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_master_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_slave_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_endpoint.v"
add_fileset_file "acl_ic_slave_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_rrp.v"
add_fileset_file "acl_ic_slave_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "afs_abort_to_error_internal.v" SYSTEM_VERILOG PATH "afs_abort_to_error_internal.v"

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

#### Parameter abort_code interface
add_interface abort_code conduit sink
set_interface_property abort_code associatedClock clock
set_interface_property abort_code associatedReset reset
set_interface_assignment abort_code hls.cosim.name {abort_code}
add_interface_port abort_code abort_code data input 32

#### Parameter EACCES interface
add_interface EACCES conduit sink
set_interface_property EACCES associatedClock clock
set_interface_property EACCES associatedReset reset
set_interface_assignment EACCES hls.cosim.name {@EACCES}
add_interface_port EACCES EACCES data input 64

#### Parameter EAGAIN interface
add_interface EAGAIN conduit sink
set_interface_property EAGAIN associatedClock clock
set_interface_property EAGAIN associatedReset reset
set_interface_assignment EAGAIN hls.cosim.name {@EAGAIN}
add_interface_port EAGAIN EAGAIN data input 64

#### Parameter EBADRQC interface
add_interface EBADRQC conduit sink
set_interface_property EBADRQC associatedClock clock
set_interface_property EBADRQC associatedReset reset
set_interface_assignment EBADRQC hls.cosim.name {@EBADRQC}
add_interface_port EBADRQC EBADRQC data input 64

#### Parameter EBUSY interface
add_interface EBUSY conduit sink
set_interface_property EBUSY associatedClock clock
set_interface_property EBUSY associatedReset reset
set_interface_assignment EBUSY hls.cosim.name {@EBUSY}
add_interface_port EBUSY EBUSY data input 64

#### Parameter EDEADLK interface
add_interface EDEADLK conduit sink
set_interface_property EDEADLK associatedClock clock
set_interface_property EDEADLK associatedReset reset
set_interface_assignment EDEADLK hls.cosim.name {@EDEADLK}
add_interface_port EDEADLK EDEADLK data input 64

#### Parameter EDOM interface
add_interface EDOM conduit sink
set_interface_property EDOM associatedClock clock
set_interface_property EDOM associatedReset reset
set_interface_assignment EDOM hls.cosim.name {@EDOM}
add_interface_port EDOM EDOM data input 64

#### Parameter EDQUOT interface
add_interface EDQUOT conduit sink
set_interface_property EDQUOT associatedClock clock
set_interface_property EDQUOT associatedReset reset
set_interface_assignment EDQUOT hls.cosim.name {@EDQUOT}
add_interface_port EDQUOT EDQUOT data input 64

#### Parameter EEXIST interface
add_interface EEXIST conduit sink
set_interface_property EEXIST associatedClock clock
set_interface_property EEXIST associatedReset reset
set_interface_assignment EEXIST hls.cosim.name {@EEXIST}
add_interface_port EEXIST EEXIST data input 64

#### Parameter EFBIG interface
add_interface EFBIG conduit sink
set_interface_property EFBIG associatedClock clock
set_interface_property EFBIG associatedReset reset
set_interface_assignment EFBIG hls.cosim.name {@EFBIG}
add_interface_port EFBIG EFBIG data input 64

#### Parameter EINVAL interface
add_interface EINVAL conduit sink
set_interface_property EINVAL associatedClock clock
set_interface_property EINVAL associatedReset reset
set_interface_assignment EINVAL hls.cosim.name {@EINVAL}
add_interface_port EINVAL EINVAL data input 64

#### Parameter EIO interface
add_interface EIO conduit sink
set_interface_property EIO associatedClock clock
set_interface_property EIO associatedReset reset
set_interface_assignment EIO hls.cosim.name {@EIO}
add_interface_port EIO EIO data input 64

#### Parameter EISDIR interface
add_interface EISDIR conduit sink
set_interface_property EISDIR associatedClock clock
set_interface_property EISDIR associatedReset reset
set_interface_assignment EISDIR hls.cosim.name {@EISDIR}
add_interface_port EISDIR EISDIR data input 64

#### Parameter EKEYEXPIRED interface
add_interface EKEYEXPIRED conduit sink
set_interface_property EKEYEXPIRED associatedClock clock
set_interface_property EKEYEXPIRED associatedReset reset
set_interface_assignment EKEYEXPIRED hls.cosim.name {@EKEYEXPIRED}
add_interface_port EKEYEXPIRED EKEYEXPIRED data input 64

#### Parameter EKEYREJECTED interface
add_interface EKEYREJECTED conduit sink
set_interface_property EKEYREJECTED associatedClock clock
set_interface_property EKEYREJECTED associatedReset reset
set_interface_assignment EKEYREJECTED hls.cosim.name {@EKEYREJECTED}
add_interface_port EKEYREJECTED EKEYREJECTED data input 64

#### Parameter EMLINK interface
add_interface EMLINK conduit sink
set_interface_property EMLINK associatedClock clock
set_interface_property EMLINK associatedReset reset
set_interface_assignment EMLINK hls.cosim.name {@EMLINK}
add_interface_port EMLINK EMLINK data input 64

#### Parameter ENAMETOOLONG interface
add_interface ENAMETOOLONG conduit sink
set_interface_property ENAMETOOLONG associatedClock clock
set_interface_property ENAMETOOLONG associatedReset reset
set_interface_assignment ENAMETOOLONG hls.cosim.name {@ENAMETOOLONG}
add_interface_port ENAMETOOLONG ENAMETOOLONG data input 64

#### Parameter ENODEV interface
add_interface ENODEV conduit sink
set_interface_property ENODEV associatedClock clock
set_interface_property ENODEV associatedReset reset
set_interface_assignment ENODEV hls.cosim.name {@ENODEV}
add_interface_port ENODEV ENODEV data input 64

#### Parameter ENOENT interface
add_interface ENOENT conduit sink
set_interface_property ENOENT associatedClock clock
set_interface_property ENOENT associatedReset reset
set_interface_assignment ENOENT hls.cosim.name {@ENOENT}
add_interface_port ENOENT ENOENT data input 64

#### Parameter ENOLCK interface
add_interface ENOLCK conduit sink
set_interface_property ENOLCK associatedClock clock
set_interface_property ENOLCK associatedReset reset
set_interface_assignment ENOLCK hls.cosim.name {@ENOLCK}
add_interface_port ENOLCK ENOLCK data input 64

#### Parameter ENOMEDIUM interface
add_interface ENOMEDIUM conduit sink
set_interface_property ENOMEDIUM associatedClock clock
set_interface_property ENOMEDIUM associatedReset reset
set_interface_assignment ENOMEDIUM hls.cosim.name {@ENOMEDIUM}
add_interface_port ENOMEDIUM ENOMEDIUM data input 64

#### Parameter ENOMEM interface
add_interface ENOMEM conduit sink
set_interface_property ENOMEM associatedClock clock
set_interface_property ENOMEM associatedReset reset
set_interface_assignment ENOMEM hls.cosim.name {@ENOMEM}
add_interface_port ENOMEM ENOMEM data input 64

#### Parameter ENOSPC interface
add_interface ENOSPC conduit sink
set_interface_property ENOSPC associatedClock clock
set_interface_property ENOSPC associatedReset reset
set_interface_assignment ENOSPC hls.cosim.name {@ENOSPC}
add_interface_port ENOSPC ENOSPC data input 64

#### Parameter ENOTCONN interface
add_interface ENOTCONN conduit sink
set_interface_property ENOTCONN associatedClock clock
set_interface_property ENOTCONN associatedReset reset
set_interface_assignment ENOTCONN hls.cosim.name {@ENOTCONN}
add_interface_port ENOTCONN ENOTCONN data input 64

#### Parameter ENOTDIR interface
add_interface ENOTDIR conduit sink
set_interface_property ENOTDIR associatedClock clock
set_interface_property ENOTDIR associatedReset reset
set_interface_assignment ENOTDIR hls.cosim.name {@ENOTDIR}
add_interface_port ENOTDIR ENOTDIR data input 64

#### Parameter ENOTEMPTY interface
add_interface ENOTEMPTY conduit sink
set_interface_property ENOTEMPTY associatedClock clock
set_interface_property ENOTEMPTY associatedReset reset
set_interface_assignment ENOTEMPTY hls.cosim.name {@ENOTEMPTY}
add_interface_port ENOTEMPTY ENOTEMPTY data input 64

#### Parameter ENOTSUPP interface
add_interface ENOTSUPP conduit sink
set_interface_property ENOTSUPP associatedClock clock
set_interface_property ENOTSUPP associatedReset reset
set_interface_assignment ENOTSUPP hls.cosim.name {@ENOTSUPP}
add_interface_port ENOTSUPP ENOTSUPP data input 64

#### Parameter ENXIO interface
add_interface ENXIO conduit sink
set_interface_property ENXIO associatedClock clock
set_interface_property ENXIO associatedReset reset
set_interface_assignment ENXIO hls.cosim.name {@ENXIO}
add_interface_port ENXIO ENXIO data input 64

#### Parameter EPERM interface
add_interface EPERM conduit sink
set_interface_property EPERM associatedClock clock
set_interface_property EPERM associatedReset reset
set_interface_assignment EPERM hls.cosim.name {@EPERM}
add_interface_port EPERM EPERM data input 64

#### Parameter EPROTO interface
add_interface EPROTO conduit sink
set_interface_property EPROTO associatedClock clock
set_interface_property EPROTO associatedReset reset
set_interface_assignment EPROTO hls.cosim.name {@EPROTO}
add_interface_port EPROTO EPROTO data input 64

#### Parameter ERANGE interface
add_interface ERANGE conduit sink
set_interface_property ERANGE associatedClock clock
set_interface_property ERANGE associatedReset reset
set_interface_assignment ERANGE hls.cosim.name {@ERANGE}
add_interface_port ERANGE ERANGE data input 64

#### Parameter EREMOTEIO interface
add_interface EREMOTEIO conduit sink
set_interface_property EREMOTEIO associatedClock clock
set_interface_property EREMOTEIO associatedReset reset
set_interface_assignment EREMOTEIO hls.cosim.name {@EREMOTEIO}
add_interface_port EREMOTEIO EREMOTEIO data input 64

#### Parameter EROFS interface
add_interface EROFS conduit sink
set_interface_property EROFS associatedClock clock
set_interface_property EROFS associatedReset reset
set_interface_assignment EROFS hls.cosim.name {@EROFS}
add_interface_port EROFS EROFS data input 64

#### Parameter ETIMEDOUT interface
add_interface ETIMEDOUT conduit sink
set_interface_property ETIMEDOUT associatedClock clock
set_interface_property ETIMEDOUT associatedReset reset
set_interface_assignment ETIMEDOUT hls.cosim.name {@ETIMEDOUT}
add_interface_port ETIMEDOUT ETIMEDOUT data input 64

#### Parameter EWOULDBLOCK interface
add_interface EWOULDBLOCK conduit sink
set_interface_property EWOULDBLOCK associatedClock clock
set_interface_property EWOULDBLOCK associatedReset reset
set_interface_assignment EWOULDBLOCK hls.cosim.name {@EWOULDBLOCK}
add_interface_port EWOULDBLOCK EWOULDBLOCK data input 64

#### Parameter EXDEV interface
add_interface EXDEV conduit sink
set_interface_property EXDEV associatedClock clock
set_interface_property EXDEV associatedReset reset
set_interface_assignment EXDEV hls.cosim.name {@EXDEV}
add_interface_port EXDEV EXDEV data input 64

#### Master interface avmm_0_rw with base address 0
add_interface avmm_0_rw avalon start
set_interface_property avmm_0_rw ENABLED true
set_interface_property avmm_0_rw associatedClock clock
set_interface_property avmm_0_rw burstOnBurstBoundariesOnly false
set_interface_property avmm_0_rw doStreamReads false
set_interface_property avmm_0_rw doStreamWrites false
set_interface_property avmm_0_rw linewrapBursts false
set_interface_property avmm_0_rw readWaitTime 0
set_interface_property avmm_0_rw readLatency 1
add_interface_port avmm_0_rw avmm_0_rw_address address output 64
add_interface_port avmm_0_rw avmm_0_rw_byteenable byteenable output 8
add_interface_port avmm_0_rw avmm_0_rw_read read output 1
add_interface_port avmm_0_rw avmm_0_rw_readdata readdata input 64
add_interface_port avmm_0_rw avmm_0_rw_write write output 1
add_interface_port avmm_0_rw avmm_0_rw_writedata writedata output 64

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }
