package require -exact qsys 15.0
set_module_property NAME obs_key_to_virtual_key_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME obs_key_to_virtual_key_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property SUPPORTED_DEVICE_FAMILIES {"Arria 10"}
set_module_assignment hls.cosim.name {_Z22obs_key_to_virtual_keyi}
set_module_assignment hls.compressed.name {obs_key_to_virtual_key}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL obs_key_to_virtual_key_internal
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
add_fileset_file "obs_key_to_virtual_key_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_function_wrapper.sv"
add_fileset_file "obs_key_to_virtual_key_function.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_function.sv"
add_fileset_file "obs_key_to_virtual_key_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_bb_B0_runOnce.sv"
add_fileset_file "obs_key_to_virtual_key_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_bb_B0_runOnce_stall_region.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "obs_key_to_virtual_key_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B0_runOnce_merge_reg.sv"
add_fileset_file "obs_key_to_virtual_key_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B0_runOnce_branch.sv"
add_fileset_file "obs_key_to_virtual_key_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B0_runOnce_merge.sv"
add_fileset_file "obs_key_to_virtual_key_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_bb_B1_start.sv"
add_fileset_file "obs_key_to_virtual_key_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_bb_B1_start_stall_region.sv"
add_fileset_file "obs_key_to_virtual_key_i_iowr_bl_return_A000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_iowr_bl_return_A000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B1_start_merge_reg.sv"
add_fileset_file "obs_key_to_virtual_key_i_iord_bl_call_unA000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_iord_bl_call_unA000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_sfc_s_c0_in_wt_A000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_sfc_s_c0_in_wt_A000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_sfc_logic_s_c0_A000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_sfc_logic_s_c0_A000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "obs_key_to_virtual_key_i_sfc_s_c1_in_wt_A000000Z_key_to_virtual_key3.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_sfc_s_c1_in_wt_A000000Z_key_to_virtual_key3.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000001Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000001Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Zl_key1_full_detector.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Zl_key1_full_detector.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Zrtual_key1_data_fifo.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Zrtual_key1_data_fifo.sv"
add_fileset_file "obs_key_to_virtual_key_i_sfc_logic_s_c1_A000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_sfc_logic_s_c1_A000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_mem_retval_01_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_mem_retval_01_0.sv"
add_fileset_file "obs_key_to_virtual_key_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B1_start_branch.sv"
add_fileset_file "obs_key_to_virtual_key_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B1_start_merge.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_master_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_master_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_slave_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_endpoint.v"
add_fileset_file "acl_ic_slave_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_rrp.v"
add_fileset_file "acl_ic_slave_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "obs_key_to_virtual_key_internal.v" SYSTEM_VERILOG PATH "obs_key_to_virtual_key_internal.v"

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL obs_key_to_virtual_key_internal
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
add_fileset_file "obs_key_to_virtual_key_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_function_wrapper.sv"
add_fileset_file "obs_key_to_virtual_key_function.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_function.sv"
add_fileset_file "obs_key_to_virtual_key_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_bb_B0_runOnce.sv"
add_fileset_file "obs_key_to_virtual_key_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_bb_B0_runOnce_stall_region.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "obs_key_to_virtual_key_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B0_runOnce_merge_reg.sv"
add_fileset_file "obs_key_to_virtual_key_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B0_runOnce_branch.sv"
add_fileset_file "obs_key_to_virtual_key_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B0_runOnce_merge.sv"
add_fileset_file "obs_key_to_virtual_key_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_bb_B1_start.sv"
add_fileset_file "obs_key_to_virtual_key_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_bb_B1_start_stall_region.sv"
add_fileset_file "obs_key_to_virtual_key_i_iowr_bl_return_A000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_iowr_bl_return_A000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B1_start_merge_reg.sv"
add_fileset_file "obs_key_to_virtual_key_i_iord_bl_call_unA000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_iord_bl_call_unA000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_sfc_s_c0_in_wt_A000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_sfc_s_c0_in_wt_A000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_sfc_logic_s_c0_A000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_sfc_logic_s_c0_A000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "obs_key_to_virtual_key_i_sfc_s_c1_in_wt_A000000Z_key_to_virtual_key3.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_sfc_s_c1_in_wt_A000000Z_key_to_virtual_key3.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000001Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000001Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Zl_key1_full_detector.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Zl_key1_full_detector.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Zrtual_key1_data_fifo.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000000Zrtual_key1_data_fifo.sv"
add_fileset_file "obs_key_to_virtual_key_i_sfc_logic_s_c1_A000000Z_key_to_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_sfc_logic_s_c1_A000000Z_key_to_virtual_key0.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_mem_retval_01_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_mem_retval_01_0.sv"
add_fileset_file "obs_key_to_virtual_key_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B1_start_branch.sv"
add_fileset_file "obs_key_to_virtual_key_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_B1_start_merge.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/obs_key_to_virtual_key_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_master_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_master_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_slave_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_endpoint.v"
add_fileset_file "acl_ic_slave_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_rrp.v"
add_fileset_file "acl_ic_slave_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "obs_key_to_virtual_key_internal.v" SYSTEM_VERILOG PATH "obs_key_to_virtual_key_internal.v"

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

#### Parameter code interface
add_interface code conduit sink
set_interface_property code associatedClock clock
set_interface_property code associatedReset reset
set_interface_assignment code hls.cosim.name {code}
add_interface_port code code data input 32

#### Parameter INVALID_KEY interface
add_interface INVALID_KEY conduit sink
set_interface_property INVALID_KEY associatedClock clock
set_interface_property INVALID_KEY associatedReset reset
set_interface_assignment INVALID_KEY hls.cosim.name {@INVALID_KEY}
add_interface_port INVALID_KEY INVALID_KEY data input 64

#### Parameter kVK_ANSI_0 interface
add_interface kVK_ANSI_0 conduit sink
set_interface_property kVK_ANSI_0 associatedClock clock
set_interface_property kVK_ANSI_0 associatedReset reset
set_interface_assignment kVK_ANSI_0 hls.cosim.name {@kVK_ANSI_0}
add_interface_port kVK_ANSI_0 kVK_ANSI_0 data input 64

#### Parameter kVK_ANSI_1 interface
add_interface kVK_ANSI_1 conduit sink
set_interface_property kVK_ANSI_1 associatedClock clock
set_interface_property kVK_ANSI_1 associatedReset reset
set_interface_assignment kVK_ANSI_1 hls.cosim.name {@kVK_ANSI_1}
add_interface_port kVK_ANSI_1 kVK_ANSI_1 data input 64

#### Parameter kVK_ANSI_2 interface
add_interface kVK_ANSI_2 conduit sink
set_interface_property kVK_ANSI_2 associatedClock clock
set_interface_property kVK_ANSI_2 associatedReset reset
set_interface_assignment kVK_ANSI_2 hls.cosim.name {@kVK_ANSI_2}
add_interface_port kVK_ANSI_2 kVK_ANSI_2 data input 64

#### Parameter kVK_ANSI_3 interface
add_interface kVK_ANSI_3 conduit sink
set_interface_property kVK_ANSI_3 associatedClock clock
set_interface_property kVK_ANSI_3 associatedReset reset
set_interface_assignment kVK_ANSI_3 hls.cosim.name {@kVK_ANSI_3}
add_interface_port kVK_ANSI_3 kVK_ANSI_3 data input 64

#### Parameter kVK_ANSI_4 interface
add_interface kVK_ANSI_4 conduit sink
set_interface_property kVK_ANSI_4 associatedClock clock
set_interface_property kVK_ANSI_4 associatedReset reset
set_interface_assignment kVK_ANSI_4 hls.cosim.name {@kVK_ANSI_4}
add_interface_port kVK_ANSI_4 kVK_ANSI_4 data input 64

#### Parameter kVK_ANSI_5 interface
add_interface kVK_ANSI_5 conduit sink
set_interface_property kVK_ANSI_5 associatedClock clock
set_interface_property kVK_ANSI_5 associatedReset reset
set_interface_assignment kVK_ANSI_5 hls.cosim.name {@kVK_ANSI_5}
add_interface_port kVK_ANSI_5 kVK_ANSI_5 data input 64

#### Parameter kVK_ANSI_6 interface
add_interface kVK_ANSI_6 conduit sink
set_interface_property kVK_ANSI_6 associatedClock clock
set_interface_property kVK_ANSI_6 associatedReset reset
set_interface_assignment kVK_ANSI_6 hls.cosim.name {@kVK_ANSI_6}
add_interface_port kVK_ANSI_6 kVK_ANSI_6 data input 64

#### Parameter kVK_ANSI_7 interface
add_interface kVK_ANSI_7 conduit sink
set_interface_property kVK_ANSI_7 associatedClock clock
set_interface_property kVK_ANSI_7 associatedReset reset
set_interface_assignment kVK_ANSI_7 hls.cosim.name {@kVK_ANSI_7}
add_interface_port kVK_ANSI_7 kVK_ANSI_7 data input 64

#### Parameter kVK_ANSI_8 interface
add_interface kVK_ANSI_8 conduit sink
set_interface_property kVK_ANSI_8 associatedClock clock
set_interface_property kVK_ANSI_8 associatedReset reset
set_interface_assignment kVK_ANSI_8 hls.cosim.name {@kVK_ANSI_8}
add_interface_port kVK_ANSI_8 kVK_ANSI_8 data input 64

#### Parameter kVK_ANSI_9 interface
add_interface kVK_ANSI_9 conduit sink
set_interface_property kVK_ANSI_9 associatedClock clock
set_interface_property kVK_ANSI_9 associatedReset reset
set_interface_assignment kVK_ANSI_9 hls.cosim.name {@kVK_ANSI_9}
add_interface_port kVK_ANSI_9 kVK_ANSI_9 data input 64

#### Parameter kVK_ANSI_A interface
add_interface kVK_ANSI_A conduit sink
set_interface_property kVK_ANSI_A associatedClock clock
set_interface_property kVK_ANSI_A associatedReset reset
set_interface_assignment kVK_ANSI_A hls.cosim.name {@kVK_ANSI_A}
add_interface_port kVK_ANSI_A kVK_ANSI_A data input 64

#### Parameter kVK_ANSI_B interface
add_interface kVK_ANSI_B conduit sink
set_interface_property kVK_ANSI_B associatedClock clock
set_interface_property kVK_ANSI_B associatedReset reset
set_interface_assignment kVK_ANSI_B hls.cosim.name {@kVK_ANSI_B}
add_interface_port kVK_ANSI_B kVK_ANSI_B data input 64

#### Parameter kVK_ANSI_Backslash interface
add_interface kVK_ANSI_Backslash conduit sink
set_interface_property kVK_ANSI_Backslash associatedClock clock
set_interface_property kVK_ANSI_Backslash associatedReset reset
set_interface_assignment kVK_ANSI_Backslash hls.cosim.name {@kVK_ANSI_Backslash}
add_interface_port kVK_ANSI_Backslash kVK_ANSI_Backslash data input 64

#### Parameter kVK_ANSI_C interface
add_interface kVK_ANSI_C conduit sink
set_interface_property kVK_ANSI_C associatedClock clock
set_interface_property kVK_ANSI_C associatedReset reset
set_interface_assignment kVK_ANSI_C hls.cosim.name {@kVK_ANSI_C}
add_interface_port kVK_ANSI_C kVK_ANSI_C data input 64

#### Parameter kVK_ANSI_Comma interface
add_interface kVK_ANSI_Comma conduit sink
set_interface_property kVK_ANSI_Comma associatedClock clock
set_interface_property kVK_ANSI_Comma associatedReset reset
set_interface_assignment kVK_ANSI_Comma hls.cosim.name {@kVK_ANSI_Comma}
add_interface_port kVK_ANSI_Comma kVK_ANSI_Comma data input 64

#### Parameter kVK_ANSI_D interface
add_interface kVK_ANSI_D conduit sink
set_interface_property kVK_ANSI_D associatedClock clock
set_interface_property kVK_ANSI_D associatedReset reset
set_interface_assignment kVK_ANSI_D hls.cosim.name {@kVK_ANSI_D}
add_interface_port kVK_ANSI_D kVK_ANSI_D data input 64

#### Parameter kVK_ANSI_E interface
add_interface kVK_ANSI_E conduit sink
set_interface_property kVK_ANSI_E associatedClock clock
set_interface_property kVK_ANSI_E associatedReset reset
set_interface_assignment kVK_ANSI_E hls.cosim.name {@kVK_ANSI_E}
add_interface_port kVK_ANSI_E kVK_ANSI_E data input 64

#### Parameter kVK_ANSI_Equal interface
add_interface kVK_ANSI_Equal conduit sink
set_interface_property kVK_ANSI_Equal associatedClock clock
set_interface_property kVK_ANSI_Equal associatedReset reset
set_interface_assignment kVK_ANSI_Equal hls.cosim.name {@kVK_ANSI_Equal}
add_interface_port kVK_ANSI_Equal kVK_ANSI_Equal data input 64

#### Parameter kVK_ANSI_F interface
add_interface kVK_ANSI_F conduit sink
set_interface_property kVK_ANSI_F associatedClock clock
set_interface_property kVK_ANSI_F associatedReset reset
set_interface_assignment kVK_ANSI_F hls.cosim.name {@kVK_ANSI_F}
add_interface_port kVK_ANSI_F kVK_ANSI_F data input 64

#### Parameter kVK_ANSI_G interface
add_interface kVK_ANSI_G conduit sink
set_interface_property kVK_ANSI_G associatedClock clock
set_interface_property kVK_ANSI_G associatedReset reset
set_interface_assignment kVK_ANSI_G hls.cosim.name {@kVK_ANSI_G}
add_interface_port kVK_ANSI_G kVK_ANSI_G data input 64

#### Parameter kVK_ANSI_Grave interface
add_interface kVK_ANSI_Grave conduit sink
set_interface_property kVK_ANSI_Grave associatedClock clock
set_interface_property kVK_ANSI_Grave associatedReset reset
set_interface_assignment kVK_ANSI_Grave hls.cosim.name {@kVK_ANSI_Grave}
add_interface_port kVK_ANSI_Grave kVK_ANSI_Grave data input 64

#### Parameter kVK_ANSI_H interface
add_interface kVK_ANSI_H conduit sink
set_interface_property kVK_ANSI_H associatedClock clock
set_interface_property kVK_ANSI_H associatedReset reset
set_interface_assignment kVK_ANSI_H hls.cosim.name {@kVK_ANSI_H}
add_interface_port kVK_ANSI_H kVK_ANSI_H data input 64

#### Parameter kVK_ANSI_I interface
add_interface kVK_ANSI_I conduit sink
set_interface_property kVK_ANSI_I associatedClock clock
set_interface_property kVK_ANSI_I associatedReset reset
set_interface_assignment kVK_ANSI_I hls.cosim.name {@kVK_ANSI_I}
add_interface_port kVK_ANSI_I kVK_ANSI_I data input 64

#### Parameter kVK_ANSI_J interface
add_interface kVK_ANSI_J conduit sink
set_interface_property kVK_ANSI_J associatedClock clock
set_interface_property kVK_ANSI_J associatedReset reset
set_interface_assignment kVK_ANSI_J hls.cosim.name {@kVK_ANSI_J}
add_interface_port kVK_ANSI_J kVK_ANSI_J data input 64

#### Parameter kVK_ANSI_K interface
add_interface kVK_ANSI_K conduit sink
set_interface_property kVK_ANSI_K associatedClock clock
set_interface_property kVK_ANSI_K associatedReset reset
set_interface_assignment kVK_ANSI_K hls.cosim.name {@kVK_ANSI_K}
add_interface_port kVK_ANSI_K kVK_ANSI_K data input 64

#### Parameter kVK_ANSI_Keypad0 interface
add_interface kVK_ANSI_Keypad0 conduit sink
set_interface_property kVK_ANSI_Keypad0 associatedClock clock
set_interface_property kVK_ANSI_Keypad0 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad0 hls.cosim.name {@kVK_ANSI_Keypad0}
add_interface_port kVK_ANSI_Keypad0 kVK_ANSI_Keypad0 data input 64

#### Parameter kVK_ANSI_Keypad1 interface
add_interface kVK_ANSI_Keypad1 conduit sink
set_interface_property kVK_ANSI_Keypad1 associatedClock clock
set_interface_property kVK_ANSI_Keypad1 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad1 hls.cosim.name {@kVK_ANSI_Keypad1}
add_interface_port kVK_ANSI_Keypad1 kVK_ANSI_Keypad1 data input 64

#### Parameter kVK_ANSI_Keypad2 interface
add_interface kVK_ANSI_Keypad2 conduit sink
set_interface_property kVK_ANSI_Keypad2 associatedClock clock
set_interface_property kVK_ANSI_Keypad2 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad2 hls.cosim.name {@kVK_ANSI_Keypad2}
add_interface_port kVK_ANSI_Keypad2 kVK_ANSI_Keypad2 data input 64

#### Parameter kVK_ANSI_Keypad3 interface
add_interface kVK_ANSI_Keypad3 conduit sink
set_interface_property kVK_ANSI_Keypad3 associatedClock clock
set_interface_property kVK_ANSI_Keypad3 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad3 hls.cosim.name {@kVK_ANSI_Keypad3}
add_interface_port kVK_ANSI_Keypad3 kVK_ANSI_Keypad3 data input 64

#### Parameter kVK_ANSI_Keypad4 interface
add_interface kVK_ANSI_Keypad4 conduit sink
set_interface_property kVK_ANSI_Keypad4 associatedClock clock
set_interface_property kVK_ANSI_Keypad4 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad4 hls.cosim.name {@kVK_ANSI_Keypad4}
add_interface_port kVK_ANSI_Keypad4 kVK_ANSI_Keypad4 data input 64

#### Parameter kVK_ANSI_Keypad5 interface
add_interface kVK_ANSI_Keypad5 conduit sink
set_interface_property kVK_ANSI_Keypad5 associatedClock clock
set_interface_property kVK_ANSI_Keypad5 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad5 hls.cosim.name {@kVK_ANSI_Keypad5}
add_interface_port kVK_ANSI_Keypad5 kVK_ANSI_Keypad5 data input 64

#### Parameter kVK_ANSI_Keypad6 interface
add_interface kVK_ANSI_Keypad6 conduit sink
set_interface_property kVK_ANSI_Keypad6 associatedClock clock
set_interface_property kVK_ANSI_Keypad6 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad6 hls.cosim.name {@kVK_ANSI_Keypad6}
add_interface_port kVK_ANSI_Keypad6 kVK_ANSI_Keypad6 data input 64

#### Parameter kVK_ANSI_Keypad7 interface
add_interface kVK_ANSI_Keypad7 conduit sink
set_interface_property kVK_ANSI_Keypad7 associatedClock clock
set_interface_property kVK_ANSI_Keypad7 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad7 hls.cosim.name {@kVK_ANSI_Keypad7}
add_interface_port kVK_ANSI_Keypad7 kVK_ANSI_Keypad7 data input 64

#### Parameter kVK_ANSI_Keypad8 interface
add_interface kVK_ANSI_Keypad8 conduit sink
set_interface_property kVK_ANSI_Keypad8 associatedClock clock
set_interface_property kVK_ANSI_Keypad8 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad8 hls.cosim.name {@kVK_ANSI_Keypad8}
add_interface_port kVK_ANSI_Keypad8 kVK_ANSI_Keypad8 data input 64

#### Parameter kVK_ANSI_Keypad9 interface
add_interface kVK_ANSI_Keypad9 conduit sink
set_interface_property kVK_ANSI_Keypad9 associatedClock clock
set_interface_property kVK_ANSI_Keypad9 associatedReset reset
set_interface_assignment kVK_ANSI_Keypad9 hls.cosim.name {@kVK_ANSI_Keypad9}
add_interface_port kVK_ANSI_Keypad9 kVK_ANSI_Keypad9 data input 64

#### Parameter kVK_ANSI_KeypadClear interface
add_interface kVK_ANSI_KeypadClear conduit sink
set_interface_property kVK_ANSI_KeypadClear associatedClock clock
set_interface_property kVK_ANSI_KeypadClear associatedReset reset
set_interface_assignment kVK_ANSI_KeypadClear hls.cosim.name {@kVK_ANSI_KeypadClear}
add_interface_port kVK_ANSI_KeypadClear kVK_ANSI_KeypadClear data input 64

#### Parameter kVK_ANSI_KeypadDecimal interface
add_interface kVK_ANSI_KeypadDecimal conduit sink
set_interface_property kVK_ANSI_KeypadDecimal associatedClock clock
set_interface_property kVK_ANSI_KeypadDecimal associatedReset reset
set_interface_assignment kVK_ANSI_KeypadDecimal hls.cosim.name {@kVK_ANSI_KeypadDecimal}
add_interface_port kVK_ANSI_KeypadDecimal kVK_ANSI_KeypadDecimal data input 64

#### Parameter kVK_ANSI_KeypadDivide interface
add_interface kVK_ANSI_KeypadDivide conduit sink
set_interface_property kVK_ANSI_KeypadDivide associatedClock clock
set_interface_property kVK_ANSI_KeypadDivide associatedReset reset
set_interface_assignment kVK_ANSI_KeypadDivide hls.cosim.name {@kVK_ANSI_KeypadDivide}
add_interface_port kVK_ANSI_KeypadDivide kVK_ANSI_KeypadDivide data input 64

#### Parameter kVK_ANSI_KeypadEnter interface
add_interface kVK_ANSI_KeypadEnter conduit sink
set_interface_property kVK_ANSI_KeypadEnter associatedClock clock
set_interface_property kVK_ANSI_KeypadEnter associatedReset reset
set_interface_assignment kVK_ANSI_KeypadEnter hls.cosim.name {@kVK_ANSI_KeypadEnter}
add_interface_port kVK_ANSI_KeypadEnter kVK_ANSI_KeypadEnter data input 64

#### Parameter kVK_ANSI_KeypadEquals interface
add_interface kVK_ANSI_KeypadEquals conduit sink
set_interface_property kVK_ANSI_KeypadEquals associatedClock clock
set_interface_property kVK_ANSI_KeypadEquals associatedReset reset
set_interface_assignment kVK_ANSI_KeypadEquals hls.cosim.name {@kVK_ANSI_KeypadEquals}
add_interface_port kVK_ANSI_KeypadEquals kVK_ANSI_KeypadEquals data input 64

#### Parameter kVK_ANSI_KeypadMinus interface
add_interface kVK_ANSI_KeypadMinus conduit sink
set_interface_property kVK_ANSI_KeypadMinus associatedClock clock
set_interface_property kVK_ANSI_KeypadMinus associatedReset reset
set_interface_assignment kVK_ANSI_KeypadMinus hls.cosim.name {@kVK_ANSI_KeypadMinus}
add_interface_port kVK_ANSI_KeypadMinus kVK_ANSI_KeypadMinus data input 64

#### Parameter kVK_ANSI_KeypadMultiply interface
add_interface kVK_ANSI_KeypadMultiply conduit sink
set_interface_property kVK_ANSI_KeypadMultiply associatedClock clock
set_interface_property kVK_ANSI_KeypadMultiply associatedReset reset
set_interface_assignment kVK_ANSI_KeypadMultiply hls.cosim.name {@kVK_ANSI_KeypadMultiply}
add_interface_port kVK_ANSI_KeypadMultiply kVK_ANSI_KeypadMultiply data input 64

#### Parameter kVK_ANSI_KeypadPlus interface
add_interface kVK_ANSI_KeypadPlus conduit sink
set_interface_property kVK_ANSI_KeypadPlus associatedClock clock
set_interface_property kVK_ANSI_KeypadPlus associatedReset reset
set_interface_assignment kVK_ANSI_KeypadPlus hls.cosim.name {@kVK_ANSI_KeypadPlus}
add_interface_port kVK_ANSI_KeypadPlus kVK_ANSI_KeypadPlus data input 64

#### Parameter kVK_ANSI_L interface
add_interface kVK_ANSI_L conduit sink
set_interface_property kVK_ANSI_L associatedClock clock
set_interface_property kVK_ANSI_L associatedReset reset
set_interface_assignment kVK_ANSI_L hls.cosim.name {@kVK_ANSI_L}
add_interface_port kVK_ANSI_L kVK_ANSI_L data input 64

#### Parameter kVK_ANSI_LeftBracket interface
add_interface kVK_ANSI_LeftBracket conduit sink
set_interface_property kVK_ANSI_LeftBracket associatedClock clock
set_interface_property kVK_ANSI_LeftBracket associatedReset reset
set_interface_assignment kVK_ANSI_LeftBracket hls.cosim.name {@kVK_ANSI_LeftBracket}
add_interface_port kVK_ANSI_LeftBracket kVK_ANSI_LeftBracket data input 64

#### Parameter kVK_ANSI_M interface
add_interface kVK_ANSI_M conduit sink
set_interface_property kVK_ANSI_M associatedClock clock
set_interface_property kVK_ANSI_M associatedReset reset
set_interface_assignment kVK_ANSI_M hls.cosim.name {@kVK_ANSI_M}
add_interface_port kVK_ANSI_M kVK_ANSI_M data input 64

#### Parameter kVK_ANSI_Minus interface
add_interface kVK_ANSI_Minus conduit sink
set_interface_property kVK_ANSI_Minus associatedClock clock
set_interface_property kVK_ANSI_Minus associatedReset reset
set_interface_assignment kVK_ANSI_Minus hls.cosim.name {@kVK_ANSI_Minus}
add_interface_port kVK_ANSI_Minus kVK_ANSI_Minus data input 64

#### Parameter kVK_ANSI_N interface
add_interface kVK_ANSI_N conduit sink
set_interface_property kVK_ANSI_N associatedClock clock
set_interface_property kVK_ANSI_N associatedReset reset
set_interface_assignment kVK_ANSI_N hls.cosim.name {@kVK_ANSI_N}
add_interface_port kVK_ANSI_N kVK_ANSI_N data input 64

#### Parameter kVK_ANSI_O interface
add_interface kVK_ANSI_O conduit sink
set_interface_property kVK_ANSI_O associatedClock clock
set_interface_property kVK_ANSI_O associatedReset reset
set_interface_assignment kVK_ANSI_O hls.cosim.name {@kVK_ANSI_O}
add_interface_port kVK_ANSI_O kVK_ANSI_O data input 64

#### Parameter kVK_ANSI_P interface
add_interface kVK_ANSI_P conduit sink
set_interface_property kVK_ANSI_P associatedClock clock
set_interface_property kVK_ANSI_P associatedReset reset
set_interface_assignment kVK_ANSI_P hls.cosim.name {@kVK_ANSI_P}
add_interface_port kVK_ANSI_P kVK_ANSI_P data input 64

#### Parameter kVK_ANSI_Period interface
add_interface kVK_ANSI_Period conduit sink
set_interface_property kVK_ANSI_Period associatedClock clock
set_interface_property kVK_ANSI_Period associatedReset reset
set_interface_assignment kVK_ANSI_Period hls.cosim.name {@kVK_ANSI_Period}
add_interface_port kVK_ANSI_Period kVK_ANSI_Period data input 64

#### Parameter kVK_ANSI_Q interface
add_interface kVK_ANSI_Q conduit sink
set_interface_property kVK_ANSI_Q associatedClock clock
set_interface_property kVK_ANSI_Q associatedReset reset
set_interface_assignment kVK_ANSI_Q hls.cosim.name {@kVK_ANSI_Q}
add_interface_port kVK_ANSI_Q kVK_ANSI_Q data input 64

#### Parameter kVK_ANSI_Quote interface
add_interface kVK_ANSI_Quote conduit sink
set_interface_property kVK_ANSI_Quote associatedClock clock
set_interface_property kVK_ANSI_Quote associatedReset reset
set_interface_assignment kVK_ANSI_Quote hls.cosim.name {@kVK_ANSI_Quote}
add_interface_port kVK_ANSI_Quote kVK_ANSI_Quote data input 64

#### Parameter kVK_ANSI_R interface
add_interface kVK_ANSI_R conduit sink
set_interface_property kVK_ANSI_R associatedClock clock
set_interface_property kVK_ANSI_R associatedReset reset
set_interface_assignment kVK_ANSI_R hls.cosim.name {@kVK_ANSI_R}
add_interface_port kVK_ANSI_R kVK_ANSI_R data input 64

#### Parameter kVK_ANSI_RightBracket interface
add_interface kVK_ANSI_RightBracket conduit sink
set_interface_property kVK_ANSI_RightBracket associatedClock clock
set_interface_property kVK_ANSI_RightBracket associatedReset reset
set_interface_assignment kVK_ANSI_RightBracket hls.cosim.name {@kVK_ANSI_RightBracket}
add_interface_port kVK_ANSI_RightBracket kVK_ANSI_RightBracket data input 64

#### Parameter kVK_ANSI_S interface
add_interface kVK_ANSI_S conduit sink
set_interface_property kVK_ANSI_S associatedClock clock
set_interface_property kVK_ANSI_S associatedReset reset
set_interface_assignment kVK_ANSI_S hls.cosim.name {@kVK_ANSI_S}
add_interface_port kVK_ANSI_S kVK_ANSI_S data input 64

#### Parameter kVK_ANSI_Semicolon interface
add_interface kVK_ANSI_Semicolon conduit sink
set_interface_property kVK_ANSI_Semicolon associatedClock clock
set_interface_property kVK_ANSI_Semicolon associatedReset reset
set_interface_assignment kVK_ANSI_Semicolon hls.cosim.name {@kVK_ANSI_Semicolon}
add_interface_port kVK_ANSI_Semicolon kVK_ANSI_Semicolon data input 64

#### Parameter kVK_ANSI_Slash interface
add_interface kVK_ANSI_Slash conduit sink
set_interface_property kVK_ANSI_Slash associatedClock clock
set_interface_property kVK_ANSI_Slash associatedReset reset
set_interface_assignment kVK_ANSI_Slash hls.cosim.name {@kVK_ANSI_Slash}
add_interface_port kVK_ANSI_Slash kVK_ANSI_Slash data input 64

#### Parameter kVK_ANSI_T interface
add_interface kVK_ANSI_T conduit sink
set_interface_property kVK_ANSI_T associatedClock clock
set_interface_property kVK_ANSI_T associatedReset reset
set_interface_assignment kVK_ANSI_T hls.cosim.name {@kVK_ANSI_T}
add_interface_port kVK_ANSI_T kVK_ANSI_T data input 64

#### Parameter kVK_ANSI_U interface
add_interface kVK_ANSI_U conduit sink
set_interface_property kVK_ANSI_U associatedClock clock
set_interface_property kVK_ANSI_U associatedReset reset
set_interface_assignment kVK_ANSI_U hls.cosim.name {@kVK_ANSI_U}
add_interface_port kVK_ANSI_U kVK_ANSI_U data input 64

#### Parameter kVK_ANSI_V interface
add_interface kVK_ANSI_V conduit sink
set_interface_property kVK_ANSI_V associatedClock clock
set_interface_property kVK_ANSI_V associatedReset reset
set_interface_assignment kVK_ANSI_V hls.cosim.name {@kVK_ANSI_V}
add_interface_port kVK_ANSI_V kVK_ANSI_V data input 64

#### Parameter kVK_ANSI_W interface
add_interface kVK_ANSI_W conduit sink
set_interface_property kVK_ANSI_W associatedClock clock
set_interface_property kVK_ANSI_W associatedReset reset
set_interface_assignment kVK_ANSI_W hls.cosim.name {@kVK_ANSI_W}
add_interface_port kVK_ANSI_W kVK_ANSI_W data input 64

#### Parameter kVK_ANSI_X interface
add_interface kVK_ANSI_X conduit sink
set_interface_property kVK_ANSI_X associatedClock clock
set_interface_property kVK_ANSI_X associatedReset reset
set_interface_assignment kVK_ANSI_X hls.cosim.name {@kVK_ANSI_X}
add_interface_port kVK_ANSI_X kVK_ANSI_X data input 64

#### Parameter kVK_ANSI_Y interface
add_interface kVK_ANSI_Y conduit sink
set_interface_property kVK_ANSI_Y associatedClock clock
set_interface_property kVK_ANSI_Y associatedReset reset
set_interface_assignment kVK_ANSI_Y hls.cosim.name {@kVK_ANSI_Y}
add_interface_port kVK_ANSI_Y kVK_ANSI_Y data input 64

#### Parameter kVK_ANSI_Z interface
add_interface kVK_ANSI_Z conduit sink
set_interface_property kVK_ANSI_Z associatedClock clock
set_interface_property kVK_ANSI_Z associatedReset reset
set_interface_assignment kVK_ANSI_Z hls.cosim.name {@kVK_ANSI_Z}
add_interface_port kVK_ANSI_Z kVK_ANSI_Z data input 64

#### Parameter kVK_CapsLock interface
add_interface kVK_CapsLock conduit sink
set_interface_property kVK_CapsLock associatedClock clock
set_interface_property kVK_CapsLock associatedReset reset
set_interface_assignment kVK_CapsLock hls.cosim.name {@kVK_CapsLock}
add_interface_port kVK_CapsLock kVK_CapsLock data input 64

#### Parameter kVK_Command interface
add_interface kVK_Command conduit sink
set_interface_property kVK_Command associatedClock clock
set_interface_property kVK_Command associatedReset reset
set_interface_assignment kVK_Command hls.cosim.name {@kVK_Command}
add_interface_port kVK_Command kVK_Command data input 64

#### Parameter kVK_Control interface
add_interface kVK_Control conduit sink
set_interface_property kVK_Control associatedClock clock
set_interface_property kVK_Control associatedReset reset
set_interface_assignment kVK_Control hls.cosim.name {@kVK_Control}
add_interface_port kVK_Control kVK_Control data input 64

#### Parameter kVK_Delete interface
add_interface kVK_Delete conduit sink
set_interface_property kVK_Delete associatedClock clock
set_interface_property kVK_Delete associatedReset reset
set_interface_assignment kVK_Delete hls.cosim.name {@kVK_Delete}
add_interface_port kVK_Delete kVK_Delete data input 64

#### Parameter kVK_DownArrow interface
add_interface kVK_DownArrow conduit sink
set_interface_property kVK_DownArrow associatedClock clock
set_interface_property kVK_DownArrow associatedReset reset
set_interface_assignment kVK_DownArrow hls.cosim.name {@kVK_DownArrow}
add_interface_port kVK_DownArrow kVK_DownArrow data input 64

#### Parameter kVK_End interface
add_interface kVK_End conduit sink
set_interface_property kVK_End associatedClock clock
set_interface_property kVK_End associatedReset reset
set_interface_assignment kVK_End hls.cosim.name {@kVK_End}
add_interface_port kVK_End kVK_End data input 64

#### Parameter kVK_Escape interface
add_interface kVK_Escape conduit sink
set_interface_property kVK_Escape associatedClock clock
set_interface_property kVK_Escape associatedReset reset
set_interface_assignment kVK_Escape hls.cosim.name {@kVK_Escape}
add_interface_port kVK_Escape kVK_Escape data input 64

#### Parameter kVK_F1 interface
add_interface kVK_F1 conduit sink
set_interface_property kVK_F1 associatedClock clock
set_interface_property kVK_F1 associatedReset reset
set_interface_assignment kVK_F1 hls.cosim.name {@kVK_F1}
add_interface_port kVK_F1 kVK_F1 data input 64

#### Parameter kVK_F10 interface
add_interface kVK_F10 conduit sink
set_interface_property kVK_F10 associatedClock clock
set_interface_property kVK_F10 associatedReset reset
set_interface_assignment kVK_F10 hls.cosim.name {@kVK_F10}
add_interface_port kVK_F10 kVK_F10 data input 64

#### Parameter kVK_F11 interface
add_interface kVK_F11 conduit sink
set_interface_property kVK_F11 associatedClock clock
set_interface_property kVK_F11 associatedReset reset
set_interface_assignment kVK_F11 hls.cosim.name {@kVK_F11}
add_interface_port kVK_F11 kVK_F11 data input 64

#### Parameter kVK_F12 interface
add_interface kVK_F12 conduit sink
set_interface_property kVK_F12 associatedClock clock
set_interface_property kVK_F12 associatedReset reset
set_interface_assignment kVK_F12 hls.cosim.name {@kVK_F12}
add_interface_port kVK_F12 kVK_F12 data input 64

#### Parameter kVK_F13 interface
add_interface kVK_F13 conduit sink
set_interface_property kVK_F13 associatedClock clock
set_interface_property kVK_F13 associatedReset reset
set_interface_assignment kVK_F13 hls.cosim.name {@kVK_F13}
add_interface_port kVK_F13 kVK_F13 data input 64

#### Parameter kVK_F14 interface
add_interface kVK_F14 conduit sink
set_interface_property kVK_F14 associatedClock clock
set_interface_property kVK_F14 associatedReset reset
set_interface_assignment kVK_F14 hls.cosim.name {@kVK_F14}
add_interface_port kVK_F14 kVK_F14 data input 64

#### Parameter kVK_F15 interface
add_interface kVK_F15 conduit sink
set_interface_property kVK_F15 associatedClock clock
set_interface_property kVK_F15 associatedReset reset
set_interface_assignment kVK_F15 hls.cosim.name {@kVK_F15}
add_interface_port kVK_F15 kVK_F15 data input 64

#### Parameter kVK_F16 interface
add_interface kVK_F16 conduit sink
set_interface_property kVK_F16 associatedClock clock
set_interface_property kVK_F16 associatedReset reset
set_interface_assignment kVK_F16 hls.cosim.name {@kVK_F16}
add_interface_port kVK_F16 kVK_F16 data input 64

#### Parameter kVK_F17 interface
add_interface kVK_F17 conduit sink
set_interface_property kVK_F17 associatedClock clock
set_interface_property kVK_F17 associatedReset reset
set_interface_assignment kVK_F17 hls.cosim.name {@kVK_F17}
add_interface_port kVK_F17 kVK_F17 data input 64

#### Parameter kVK_F18 interface
add_interface kVK_F18 conduit sink
set_interface_property kVK_F18 associatedClock clock
set_interface_property kVK_F18 associatedReset reset
set_interface_assignment kVK_F18 hls.cosim.name {@kVK_F18}
add_interface_port kVK_F18 kVK_F18 data input 64

#### Parameter kVK_F19 interface
add_interface kVK_F19 conduit sink
set_interface_property kVK_F19 associatedClock clock
set_interface_property kVK_F19 associatedReset reset
set_interface_assignment kVK_F19 hls.cosim.name {@kVK_F19}
add_interface_port kVK_F19 kVK_F19 data input 64

#### Parameter kVK_F2 interface
add_interface kVK_F2 conduit sink
set_interface_property kVK_F2 associatedClock clock
set_interface_property kVK_F2 associatedReset reset
set_interface_assignment kVK_F2 hls.cosim.name {@kVK_F2}
add_interface_port kVK_F2 kVK_F2 data input 64

#### Parameter kVK_F20 interface
add_interface kVK_F20 conduit sink
set_interface_property kVK_F20 associatedClock clock
set_interface_property kVK_F20 associatedReset reset
set_interface_assignment kVK_F20 hls.cosim.name {@kVK_F20}
add_interface_port kVK_F20 kVK_F20 data input 64

#### Parameter kVK_F3 interface
add_interface kVK_F3 conduit sink
set_interface_property kVK_F3 associatedClock clock
set_interface_property kVK_F3 associatedReset reset
set_interface_assignment kVK_F3 hls.cosim.name {@kVK_F3}
add_interface_port kVK_F3 kVK_F3 data input 64

#### Parameter kVK_F4 interface
add_interface kVK_F4 conduit sink
set_interface_property kVK_F4 associatedClock clock
set_interface_property kVK_F4 associatedReset reset
set_interface_assignment kVK_F4 hls.cosim.name {@kVK_F4}
add_interface_port kVK_F4 kVK_F4 data input 64

#### Parameter kVK_F5 interface
add_interface kVK_F5 conduit sink
set_interface_property kVK_F5 associatedClock clock
set_interface_property kVK_F5 associatedReset reset
set_interface_assignment kVK_F5 hls.cosim.name {@kVK_F5}
add_interface_port kVK_F5 kVK_F5 data input 64

#### Parameter kVK_F6 interface
add_interface kVK_F6 conduit sink
set_interface_property kVK_F6 associatedClock clock
set_interface_property kVK_F6 associatedReset reset
set_interface_assignment kVK_F6 hls.cosim.name {@kVK_F6}
add_interface_port kVK_F6 kVK_F6 data input 64

#### Parameter kVK_F7 interface
add_interface kVK_F7 conduit sink
set_interface_property kVK_F7 associatedClock clock
set_interface_property kVK_F7 associatedReset reset
set_interface_assignment kVK_F7 hls.cosim.name {@kVK_F7}
add_interface_port kVK_F7 kVK_F7 data input 64

#### Parameter kVK_F8 interface
add_interface kVK_F8 conduit sink
set_interface_property kVK_F8 associatedClock clock
set_interface_property kVK_F8 associatedReset reset
set_interface_assignment kVK_F8 hls.cosim.name {@kVK_F8}
add_interface_port kVK_F8 kVK_F8 data input 64

#### Parameter kVK_F9 interface
add_interface kVK_F9 conduit sink
set_interface_property kVK_F9 associatedClock clock
set_interface_property kVK_F9 associatedReset reset
set_interface_assignment kVK_F9 hls.cosim.name {@kVK_F9}
add_interface_port kVK_F9 kVK_F9 data input 64

#### Parameter kVK_ForwardDelete interface
add_interface kVK_ForwardDelete conduit sink
set_interface_property kVK_ForwardDelete associatedClock clock
set_interface_property kVK_ForwardDelete associatedReset reset
set_interface_assignment kVK_ForwardDelete hls.cosim.name {@kVK_ForwardDelete}
add_interface_port kVK_ForwardDelete kVK_ForwardDelete data input 64

#### Parameter kVK_Help interface
add_interface kVK_Help conduit sink
set_interface_property kVK_Help associatedClock clock
set_interface_property kVK_Help associatedReset reset
set_interface_assignment kVK_Help hls.cosim.name {@kVK_Help}
add_interface_port kVK_Help kVK_Help data input 64

#### Parameter kVK_Home interface
add_interface kVK_Home conduit sink
set_interface_property kVK_Home associatedClock clock
set_interface_property kVK_Home associatedReset reset
set_interface_assignment kVK_Home hls.cosim.name {@kVK_Home}
add_interface_port kVK_Home kVK_Home data input 64

#### Parameter kVK_ISO_Section interface
add_interface kVK_ISO_Section conduit sink
set_interface_property kVK_ISO_Section associatedClock clock
set_interface_property kVK_ISO_Section associatedReset reset
set_interface_assignment kVK_ISO_Section hls.cosim.name {@kVK_ISO_Section}
add_interface_port kVK_ISO_Section kVK_ISO_Section data input 64

#### Parameter kVK_LeftArrow interface
add_interface kVK_LeftArrow conduit sink
set_interface_property kVK_LeftArrow associatedClock clock
set_interface_property kVK_LeftArrow associatedReset reset
set_interface_assignment kVK_LeftArrow hls.cosim.name {@kVK_LeftArrow}
add_interface_port kVK_LeftArrow kVK_LeftArrow data input 64

#### Parameter kVK_Option interface
add_interface kVK_Option conduit sink
set_interface_property kVK_Option associatedClock clock
set_interface_property kVK_Option associatedReset reset
set_interface_assignment kVK_Option hls.cosim.name {@kVK_Option}
add_interface_port kVK_Option kVK_Option data input 64

#### Parameter kVK_PageDown interface
add_interface kVK_PageDown conduit sink
set_interface_property kVK_PageDown associatedClock clock
set_interface_property kVK_PageDown associatedReset reset
set_interface_assignment kVK_PageDown hls.cosim.name {@kVK_PageDown}
add_interface_port kVK_PageDown kVK_PageDown data input 64

#### Parameter kVK_PageUp interface
add_interface kVK_PageUp conduit sink
set_interface_property kVK_PageUp associatedClock clock
set_interface_property kVK_PageUp associatedReset reset
set_interface_assignment kVK_PageUp hls.cosim.name {@kVK_PageUp}
add_interface_port kVK_PageUp kVK_PageUp data input 64

#### Parameter kVK_Return interface
add_interface kVK_Return conduit sink
set_interface_property kVK_Return associatedClock clock
set_interface_property kVK_Return associatedReset reset
set_interface_assignment kVK_Return hls.cosim.name {@kVK_Return}
add_interface_port kVK_Return kVK_Return data input 64

#### Parameter kVK_RightArrow interface
add_interface kVK_RightArrow conduit sink
set_interface_property kVK_RightArrow associatedClock clock
set_interface_property kVK_RightArrow associatedReset reset
set_interface_assignment kVK_RightArrow hls.cosim.name {@kVK_RightArrow}
add_interface_port kVK_RightArrow kVK_RightArrow data input 64

#### Parameter kVK_Shift interface
add_interface kVK_Shift conduit sink
set_interface_property kVK_Shift associatedClock clock
set_interface_property kVK_Shift associatedReset reset
set_interface_assignment kVK_Shift hls.cosim.name {@kVK_Shift}
add_interface_port kVK_Shift kVK_Shift data input 64

#### Parameter kVK_Space interface
add_interface kVK_Space conduit sink
set_interface_property kVK_Space associatedClock clock
set_interface_property kVK_Space associatedReset reset
set_interface_assignment kVK_Space hls.cosim.name {@kVK_Space}
add_interface_port kVK_Space kVK_Space data input 64

#### Parameter kVK_Tab interface
add_interface kVK_Tab conduit sink
set_interface_property kVK_Tab associatedClock clock
set_interface_property kVK_Tab associatedReset reset
set_interface_assignment kVK_Tab hls.cosim.name {@kVK_Tab}
add_interface_port kVK_Tab kVK_Tab data input 64

#### Parameter kVK_UpArrow interface
add_interface kVK_UpArrow conduit sink
set_interface_property kVK_UpArrow associatedClock clock
set_interface_property kVK_UpArrow associatedReset reset
set_interface_assignment kVK_UpArrow hls.cosim.name {@kVK_UpArrow}
add_interface_port kVK_UpArrow kVK_UpArrow data input 64

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
