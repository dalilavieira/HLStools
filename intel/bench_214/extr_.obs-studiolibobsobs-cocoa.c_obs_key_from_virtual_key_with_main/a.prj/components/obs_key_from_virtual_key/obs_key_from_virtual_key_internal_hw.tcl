package require -exact qsys 15.0
set_module_property NAME obs_key_from_virtual_key_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME obs_key_from_virtual_key_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property SUPPORTED_DEVICE_FAMILIES {"Arria 10"}
set_module_assignment hls.cosim.name {_Z24obs_key_from_virtual_keyi}
set_module_assignment hls.compressed.name {obs_key_from_virtual_key}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL obs_key_from_virtual_key_internal
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
add_fileset_file "obs_key_from_virtual_key_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_function_wrapper.sv"
add_fileset_file "obs_key_from_virtual_key_function.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_function.sv"
add_fileset_file "obs_key_from_virtual_key_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_bb_B0_runOnce.sv"
add_fileset_file "obs_key_from_virtual_key_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_bb_B0_runOnce_stall_region.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "obs_key_from_virtual_key_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B0_runOnce_merge_reg.sv"
add_fileset_file "obs_key_from_virtual_key_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B0_runOnce_branch.sv"
add_fileset_file "obs_key_from_virtual_key_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B0_runOnce_merge.sv"
add_fileset_file "obs_key_from_virtual_key_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_bb_B1_start.sv"
add_fileset_file "obs_key_from_virtual_key_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_bb_B1_start_stall_region.sv"
add_fileset_file "obs_key_from_virtual_key_i_iowr_bl_returA000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_iowr_bl_returA000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B1_start_merge_reg.sv"
add_fileset_file "obs_key_from_virtual_key_i_iord_bl_call_A000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_iord_bl_call_A000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_sfc_s_c0_in_wA000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_sfc_s_c0_in_wA000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_sfc_logic_s_cA000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_sfc_logic_s_cA000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "obs_key_from_virtual_key_i_sfc_s_c1_in_wA000000Zey_from_virtual_key3.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_sfc_s_c1_in_wA000000Zey_from_virtual_key3.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_sfcA000001Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_sfcA000001Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zl_key1_full_detector.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zl_key1_full_detector.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zrtual_key1_data_fifo.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zrtual_key1_data_fifo.sv"
add_fileset_file "obs_key_from_virtual_key_i_sfc_logic_s_cA000001Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_sfc_logic_s_cA000001Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_mem_retval_01_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_mem_retval_01_0.sv"
add_fileset_file "obs_key_from_virtual_key_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B1_start_branch.sv"
add_fileset_file "obs_key_from_virtual_key_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B1_start_merge.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pipA000000Zp_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pipA000000Zp_going_1_valid_fifo.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_master_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_master_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_slave_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_endpoint.v"
add_fileset_file "acl_ic_slave_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_rrp.v"
add_fileset_file "acl_ic_slave_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "obs_key_from_virtual_key_internal.v" SYSTEM_VERILOG PATH "obs_key_from_virtual_key_internal.v"

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL obs_key_from_virtual_key_internal
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
add_fileset_file "obs_key_from_virtual_key_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_function_wrapper.sv"
add_fileset_file "obs_key_from_virtual_key_function.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_function.sv"
add_fileset_file "obs_key_from_virtual_key_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_bb_B0_runOnce.sv"
add_fileset_file "obs_key_from_virtual_key_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_bb_B0_runOnce_stall_region.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "obs_key_from_virtual_key_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B0_runOnce_merge_reg.sv"
add_fileset_file "obs_key_from_virtual_key_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B0_runOnce_branch.sv"
add_fileset_file "obs_key_from_virtual_key_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B0_runOnce_merge.sv"
add_fileset_file "obs_key_from_virtual_key_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_bb_B1_start.sv"
add_fileset_file "obs_key_from_virtual_key_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_bb_B1_start_stall_region.sv"
add_fileset_file "obs_key_from_virtual_key_i_iowr_bl_returA000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_iowr_bl_returA000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B1_start_merge_reg.sv"
add_fileset_file "obs_key_from_virtual_key_i_iord_bl_call_A000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_iord_bl_call_A000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_sfc_s_c0_in_wA000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_sfc_s_c0_in_wA000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_sfc_logic_s_cA000000Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_sfc_logic_s_cA000000Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "obs_key_from_virtual_key_i_sfc_s_c1_in_wA000000Zey_from_virtual_key3.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_sfc_s_c1_in_wA000000Zey_from_virtual_key3.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_sfcA000001Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_sfcA000001Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zl_key1_full_detector.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zl_key1_full_detector.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zrtual_key1_data_fifo.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_sfcA000000Zrtual_key1_data_fifo.sv"
add_fileset_file "obs_key_from_virtual_key_i_sfc_logic_s_cA000001Zey_from_virtual_key0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_sfc_logic_s_cA000001Zey_from_virtual_key0.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_mem_retval_01_0.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_mem_retval_01_0.sv"
add_fileset_file "obs_key_from_virtual_key_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B1_start_branch.sv"
add_fileset_file "obs_key_from_virtual_key_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_B1_start_merge.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "obs_key_from_virtual_key_i_llvm_fpga_pipA000000Zp_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/obs_key_from_virtual_key_i_llvm_fpga_pipA000000Zp_going_1_valid_fifo.sv"
add_fileset_file "acl_avm_to_ic.v" SYSTEM_VERILOG PATH "ip/acl_avm_to_ic.v"
add_fileset_file "acl_ic_master_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_master_endpoint.v"
add_fileset_file "acl_arb_intf.v" SYSTEM_VERILOG PATH "ip/acl_arb_intf.v"
add_fileset_file "acl_ic_intf.v" SYSTEM_VERILOG PATH "ip/acl_ic_intf.v"
add_fileset_file "acl_ic_slave_endpoint.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_endpoint.v"
add_fileset_file "acl_ic_slave_rrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_rrp.v"
add_fileset_file "acl_ic_slave_wrp.v" SYSTEM_VERILOG PATH "ip/acl_ic_slave_wrp.v"
add_fileset_file "acl_arb2.v" SYSTEM_VERILOG PATH "ip/acl_arb2.v"
add_fileset_file "acl_ic_to_avm.v" SYSTEM_VERILOG PATH "ip/acl_ic_to_avm.v"
add_fileset_file "obs_key_from_virtual_key_internal.v" SYSTEM_VERILOG PATH "obs_key_from_virtual_key_internal.v"

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

#### Parameter OBS_KEY_0 interface
add_interface OBS_KEY_0 conduit sink
set_interface_property OBS_KEY_0 associatedClock clock
set_interface_property OBS_KEY_0 associatedReset reset
set_interface_assignment OBS_KEY_0 hls.cosim.name {@OBS_KEY_0}
add_interface_port OBS_KEY_0 OBS_KEY_0 data input 64

#### Parameter OBS_KEY_1 interface
add_interface OBS_KEY_1 conduit sink
set_interface_property OBS_KEY_1 associatedClock clock
set_interface_property OBS_KEY_1 associatedReset reset
set_interface_assignment OBS_KEY_1 hls.cosim.name {@OBS_KEY_1}
add_interface_port OBS_KEY_1 OBS_KEY_1 data input 64

#### Parameter OBS_KEY_2 interface
add_interface OBS_KEY_2 conduit sink
set_interface_property OBS_KEY_2 associatedClock clock
set_interface_property OBS_KEY_2 associatedReset reset
set_interface_assignment OBS_KEY_2 hls.cosim.name {@OBS_KEY_2}
add_interface_port OBS_KEY_2 OBS_KEY_2 data input 64

#### Parameter OBS_KEY_3 interface
add_interface OBS_KEY_3 conduit sink
set_interface_property OBS_KEY_3 associatedClock clock
set_interface_property OBS_KEY_3 associatedReset reset
set_interface_assignment OBS_KEY_3 hls.cosim.name {@OBS_KEY_3}
add_interface_port OBS_KEY_3 OBS_KEY_3 data input 64

#### Parameter OBS_KEY_4 interface
add_interface OBS_KEY_4 conduit sink
set_interface_property OBS_KEY_4 associatedClock clock
set_interface_property OBS_KEY_4 associatedReset reset
set_interface_assignment OBS_KEY_4 hls.cosim.name {@OBS_KEY_4}
add_interface_port OBS_KEY_4 OBS_KEY_4 data input 64

#### Parameter OBS_KEY_5 interface
add_interface OBS_KEY_5 conduit sink
set_interface_property OBS_KEY_5 associatedClock clock
set_interface_property OBS_KEY_5 associatedReset reset
set_interface_assignment OBS_KEY_5 hls.cosim.name {@OBS_KEY_5}
add_interface_port OBS_KEY_5 OBS_KEY_5 data input 64

#### Parameter OBS_KEY_6 interface
add_interface OBS_KEY_6 conduit sink
set_interface_property OBS_KEY_6 associatedClock clock
set_interface_property OBS_KEY_6 associatedReset reset
set_interface_assignment OBS_KEY_6 hls.cosim.name {@OBS_KEY_6}
add_interface_port OBS_KEY_6 OBS_KEY_6 data input 64

#### Parameter OBS_KEY_7 interface
add_interface OBS_KEY_7 conduit sink
set_interface_property OBS_KEY_7 associatedClock clock
set_interface_property OBS_KEY_7 associatedReset reset
set_interface_assignment OBS_KEY_7 hls.cosim.name {@OBS_KEY_7}
add_interface_port OBS_KEY_7 OBS_KEY_7 data input 64

#### Parameter OBS_KEY_8 interface
add_interface OBS_KEY_8 conduit sink
set_interface_property OBS_KEY_8 associatedClock clock
set_interface_property OBS_KEY_8 associatedReset reset
set_interface_assignment OBS_KEY_8 hls.cosim.name {@OBS_KEY_8}
add_interface_port OBS_KEY_8 OBS_KEY_8 data input 64

#### Parameter OBS_KEY_9 interface
add_interface OBS_KEY_9 conduit sink
set_interface_property OBS_KEY_9 associatedClock clock
set_interface_property OBS_KEY_9 associatedReset reset
set_interface_assignment OBS_KEY_9 hls.cosim.name {@OBS_KEY_9}
add_interface_port OBS_KEY_9 OBS_KEY_9 data input 64

#### Parameter OBS_KEY_A interface
add_interface OBS_KEY_A conduit sink
set_interface_property OBS_KEY_A associatedClock clock
set_interface_property OBS_KEY_A associatedReset reset
set_interface_assignment OBS_KEY_A hls.cosim.name {@OBS_KEY_A}
add_interface_port OBS_KEY_A OBS_KEY_A data input 64

#### Parameter OBS_KEY_ALT interface
add_interface OBS_KEY_ALT conduit sink
set_interface_property OBS_KEY_ALT associatedClock clock
set_interface_property OBS_KEY_ALT associatedReset reset
set_interface_assignment OBS_KEY_ALT hls.cosim.name {@OBS_KEY_ALT}
add_interface_port OBS_KEY_ALT OBS_KEY_ALT data input 64

#### Parameter OBS_KEY_B interface
add_interface OBS_KEY_B conduit sink
set_interface_property OBS_KEY_B associatedClock clock
set_interface_property OBS_KEY_B associatedReset reset
set_interface_assignment OBS_KEY_B hls.cosim.name {@OBS_KEY_B}
add_interface_port OBS_KEY_B OBS_KEY_B data input 64

#### Parameter OBS_KEY_BACKSLASH interface
add_interface OBS_KEY_BACKSLASH conduit sink
set_interface_property OBS_KEY_BACKSLASH associatedClock clock
set_interface_property OBS_KEY_BACKSLASH associatedReset reset
set_interface_assignment OBS_KEY_BACKSLASH hls.cosim.name {@OBS_KEY_BACKSLASH}
add_interface_port OBS_KEY_BACKSLASH OBS_KEY_BACKSLASH data input 64

#### Parameter OBS_KEY_BACKSPACE interface
add_interface OBS_KEY_BACKSPACE conduit sink
set_interface_property OBS_KEY_BACKSPACE associatedClock clock
set_interface_property OBS_KEY_BACKSPACE associatedReset reset
set_interface_assignment OBS_KEY_BACKSPACE hls.cosim.name {@OBS_KEY_BACKSPACE}
add_interface_port OBS_KEY_BACKSPACE OBS_KEY_BACKSPACE data input 64

#### Parameter OBS_KEY_BRACKETLEFT interface
add_interface OBS_KEY_BRACKETLEFT conduit sink
set_interface_property OBS_KEY_BRACKETLEFT associatedClock clock
set_interface_property OBS_KEY_BRACKETLEFT associatedReset reset
set_interface_assignment OBS_KEY_BRACKETLEFT hls.cosim.name {@OBS_KEY_BRACKETLEFT}
add_interface_port OBS_KEY_BRACKETLEFT OBS_KEY_BRACKETLEFT data input 64

#### Parameter OBS_KEY_BRACKETRIGHT interface
add_interface OBS_KEY_BRACKETRIGHT conduit sink
set_interface_property OBS_KEY_BRACKETRIGHT associatedClock clock
set_interface_property OBS_KEY_BRACKETRIGHT associatedReset reset
set_interface_assignment OBS_KEY_BRACKETRIGHT hls.cosim.name {@OBS_KEY_BRACKETRIGHT}
add_interface_port OBS_KEY_BRACKETRIGHT OBS_KEY_BRACKETRIGHT data input 64

#### Parameter OBS_KEY_C interface
add_interface OBS_KEY_C conduit sink
set_interface_property OBS_KEY_C associatedClock clock
set_interface_property OBS_KEY_C associatedReset reset
set_interface_assignment OBS_KEY_C hls.cosim.name {@OBS_KEY_C}
add_interface_port OBS_KEY_C OBS_KEY_C data input 64

#### Parameter OBS_KEY_CAPSLOCK interface
add_interface OBS_KEY_CAPSLOCK conduit sink
set_interface_property OBS_KEY_CAPSLOCK associatedClock clock
set_interface_property OBS_KEY_CAPSLOCK associatedReset reset
set_interface_assignment OBS_KEY_CAPSLOCK hls.cosim.name {@OBS_KEY_CAPSLOCK}
add_interface_port OBS_KEY_CAPSLOCK OBS_KEY_CAPSLOCK data input 64

#### Parameter OBS_KEY_CLEAR interface
add_interface OBS_KEY_CLEAR conduit sink
set_interface_property OBS_KEY_CLEAR associatedClock clock
set_interface_property OBS_KEY_CLEAR associatedReset reset
set_interface_assignment OBS_KEY_CLEAR hls.cosim.name {@OBS_KEY_CLEAR}
add_interface_port OBS_KEY_CLEAR OBS_KEY_CLEAR data input 64

#### Parameter OBS_KEY_COMMA interface
add_interface OBS_KEY_COMMA conduit sink
set_interface_property OBS_KEY_COMMA associatedClock clock
set_interface_property OBS_KEY_COMMA associatedReset reset
set_interface_assignment OBS_KEY_COMMA hls.cosim.name {@OBS_KEY_COMMA}
add_interface_port OBS_KEY_COMMA OBS_KEY_COMMA data input 64

#### Parameter OBS_KEY_CONTROL interface
add_interface OBS_KEY_CONTROL conduit sink
set_interface_property OBS_KEY_CONTROL associatedClock clock
set_interface_property OBS_KEY_CONTROL associatedReset reset
set_interface_assignment OBS_KEY_CONTROL hls.cosim.name {@OBS_KEY_CONTROL}
add_interface_port OBS_KEY_CONTROL OBS_KEY_CONTROL data input 64

#### Parameter OBS_KEY_D interface
add_interface OBS_KEY_D conduit sink
set_interface_property OBS_KEY_D associatedClock clock
set_interface_property OBS_KEY_D associatedReset reset
set_interface_assignment OBS_KEY_D hls.cosim.name {@OBS_KEY_D}
add_interface_port OBS_KEY_D OBS_KEY_D data input 64

#### Parameter OBS_KEY_DEAD_GRAVE interface
add_interface OBS_KEY_DEAD_GRAVE conduit sink
set_interface_property OBS_KEY_DEAD_GRAVE associatedClock clock
set_interface_property OBS_KEY_DEAD_GRAVE associatedReset reset
set_interface_assignment OBS_KEY_DEAD_GRAVE hls.cosim.name {@OBS_KEY_DEAD_GRAVE}
add_interface_port OBS_KEY_DEAD_GRAVE OBS_KEY_DEAD_GRAVE data input 64

#### Parameter OBS_KEY_DELETE interface
add_interface OBS_KEY_DELETE conduit sink
set_interface_property OBS_KEY_DELETE associatedClock clock
set_interface_property OBS_KEY_DELETE associatedReset reset
set_interface_assignment OBS_KEY_DELETE hls.cosim.name {@OBS_KEY_DELETE}
add_interface_port OBS_KEY_DELETE OBS_KEY_DELETE data input 64

#### Parameter OBS_KEY_DOWN interface
add_interface OBS_KEY_DOWN conduit sink
set_interface_property OBS_KEY_DOWN associatedClock clock
set_interface_property OBS_KEY_DOWN associatedReset reset
set_interface_assignment OBS_KEY_DOWN hls.cosim.name {@OBS_KEY_DOWN}
add_interface_port OBS_KEY_DOWN OBS_KEY_DOWN data input 64

#### Parameter OBS_KEY_E interface
add_interface OBS_KEY_E conduit sink
set_interface_property OBS_KEY_E associatedClock clock
set_interface_property OBS_KEY_E associatedReset reset
set_interface_assignment OBS_KEY_E hls.cosim.name {@OBS_KEY_E}
add_interface_port OBS_KEY_E OBS_KEY_E data input 64

#### Parameter OBS_KEY_END interface
add_interface OBS_KEY_END conduit sink
set_interface_property OBS_KEY_END associatedClock clock
set_interface_property OBS_KEY_END associatedReset reset
set_interface_assignment OBS_KEY_END hls.cosim.name {@OBS_KEY_END}
add_interface_port OBS_KEY_END OBS_KEY_END data input 64

#### Parameter OBS_KEY_ENTER interface
add_interface OBS_KEY_ENTER conduit sink
set_interface_property OBS_KEY_ENTER associatedClock clock
set_interface_property OBS_KEY_ENTER associatedReset reset
set_interface_assignment OBS_KEY_ENTER hls.cosim.name {@OBS_KEY_ENTER}
add_interface_port OBS_KEY_ENTER OBS_KEY_ENTER data input 64

#### Parameter OBS_KEY_EQUAL interface
add_interface OBS_KEY_EQUAL conduit sink
set_interface_property OBS_KEY_EQUAL associatedClock clock
set_interface_property OBS_KEY_EQUAL associatedReset reset
set_interface_assignment OBS_KEY_EQUAL hls.cosim.name {@OBS_KEY_EQUAL}
add_interface_port OBS_KEY_EQUAL OBS_KEY_EQUAL data input 64

#### Parameter OBS_KEY_ESCAPE interface
add_interface OBS_KEY_ESCAPE conduit sink
set_interface_property OBS_KEY_ESCAPE associatedClock clock
set_interface_property OBS_KEY_ESCAPE associatedReset reset
set_interface_assignment OBS_KEY_ESCAPE hls.cosim.name {@OBS_KEY_ESCAPE}
add_interface_port OBS_KEY_ESCAPE OBS_KEY_ESCAPE data input 64

#### Parameter OBS_KEY_F interface
add_interface OBS_KEY_F conduit sink
set_interface_property OBS_KEY_F associatedClock clock
set_interface_property OBS_KEY_F associatedReset reset
set_interface_assignment OBS_KEY_F hls.cosim.name {@OBS_KEY_F}
add_interface_port OBS_KEY_F OBS_KEY_F data input 64

#### Parameter OBS_KEY_F1 interface
add_interface OBS_KEY_F1 conduit sink
set_interface_property OBS_KEY_F1 associatedClock clock
set_interface_property OBS_KEY_F1 associatedReset reset
set_interface_assignment OBS_KEY_F1 hls.cosim.name {@OBS_KEY_F1}
add_interface_port OBS_KEY_F1 OBS_KEY_F1 data input 64

#### Parameter OBS_KEY_F10 interface
add_interface OBS_KEY_F10 conduit sink
set_interface_property OBS_KEY_F10 associatedClock clock
set_interface_property OBS_KEY_F10 associatedReset reset
set_interface_assignment OBS_KEY_F10 hls.cosim.name {@OBS_KEY_F10}
add_interface_port OBS_KEY_F10 OBS_KEY_F10 data input 64

#### Parameter OBS_KEY_F11 interface
add_interface OBS_KEY_F11 conduit sink
set_interface_property OBS_KEY_F11 associatedClock clock
set_interface_property OBS_KEY_F11 associatedReset reset
set_interface_assignment OBS_KEY_F11 hls.cosim.name {@OBS_KEY_F11}
add_interface_port OBS_KEY_F11 OBS_KEY_F11 data input 64

#### Parameter OBS_KEY_F12 interface
add_interface OBS_KEY_F12 conduit sink
set_interface_property OBS_KEY_F12 associatedClock clock
set_interface_property OBS_KEY_F12 associatedReset reset
set_interface_assignment OBS_KEY_F12 hls.cosim.name {@OBS_KEY_F12}
add_interface_port OBS_KEY_F12 OBS_KEY_F12 data input 64

#### Parameter OBS_KEY_F13 interface
add_interface OBS_KEY_F13 conduit sink
set_interface_property OBS_KEY_F13 associatedClock clock
set_interface_property OBS_KEY_F13 associatedReset reset
set_interface_assignment OBS_KEY_F13 hls.cosim.name {@OBS_KEY_F13}
add_interface_port OBS_KEY_F13 OBS_KEY_F13 data input 64

#### Parameter OBS_KEY_F14 interface
add_interface OBS_KEY_F14 conduit sink
set_interface_property OBS_KEY_F14 associatedClock clock
set_interface_property OBS_KEY_F14 associatedReset reset
set_interface_assignment OBS_KEY_F14 hls.cosim.name {@OBS_KEY_F14}
add_interface_port OBS_KEY_F14 OBS_KEY_F14 data input 64

#### Parameter OBS_KEY_F15 interface
add_interface OBS_KEY_F15 conduit sink
set_interface_property OBS_KEY_F15 associatedClock clock
set_interface_property OBS_KEY_F15 associatedReset reset
set_interface_assignment OBS_KEY_F15 hls.cosim.name {@OBS_KEY_F15}
add_interface_port OBS_KEY_F15 OBS_KEY_F15 data input 64

#### Parameter OBS_KEY_F16 interface
add_interface OBS_KEY_F16 conduit sink
set_interface_property OBS_KEY_F16 associatedClock clock
set_interface_property OBS_KEY_F16 associatedReset reset
set_interface_assignment OBS_KEY_F16 hls.cosim.name {@OBS_KEY_F16}
add_interface_port OBS_KEY_F16 OBS_KEY_F16 data input 64

#### Parameter OBS_KEY_F17 interface
add_interface OBS_KEY_F17 conduit sink
set_interface_property OBS_KEY_F17 associatedClock clock
set_interface_property OBS_KEY_F17 associatedReset reset
set_interface_assignment OBS_KEY_F17 hls.cosim.name {@OBS_KEY_F17}
add_interface_port OBS_KEY_F17 OBS_KEY_F17 data input 64

#### Parameter OBS_KEY_F18 interface
add_interface OBS_KEY_F18 conduit sink
set_interface_property OBS_KEY_F18 associatedClock clock
set_interface_property OBS_KEY_F18 associatedReset reset
set_interface_assignment OBS_KEY_F18 hls.cosim.name {@OBS_KEY_F18}
add_interface_port OBS_KEY_F18 OBS_KEY_F18 data input 64

#### Parameter OBS_KEY_F19 interface
add_interface OBS_KEY_F19 conduit sink
set_interface_property OBS_KEY_F19 associatedClock clock
set_interface_property OBS_KEY_F19 associatedReset reset
set_interface_assignment OBS_KEY_F19 hls.cosim.name {@OBS_KEY_F19}
add_interface_port OBS_KEY_F19 OBS_KEY_F19 data input 64

#### Parameter OBS_KEY_F2 interface
add_interface OBS_KEY_F2 conduit sink
set_interface_property OBS_KEY_F2 associatedClock clock
set_interface_property OBS_KEY_F2 associatedReset reset
set_interface_assignment OBS_KEY_F2 hls.cosim.name {@OBS_KEY_F2}
add_interface_port OBS_KEY_F2 OBS_KEY_F2 data input 64

#### Parameter OBS_KEY_F20 interface
add_interface OBS_KEY_F20 conduit sink
set_interface_property OBS_KEY_F20 associatedClock clock
set_interface_property OBS_KEY_F20 associatedReset reset
set_interface_assignment OBS_KEY_F20 hls.cosim.name {@OBS_KEY_F20}
add_interface_port OBS_KEY_F20 OBS_KEY_F20 data input 64

#### Parameter OBS_KEY_F3 interface
add_interface OBS_KEY_F3 conduit sink
set_interface_property OBS_KEY_F3 associatedClock clock
set_interface_property OBS_KEY_F3 associatedReset reset
set_interface_assignment OBS_KEY_F3 hls.cosim.name {@OBS_KEY_F3}
add_interface_port OBS_KEY_F3 OBS_KEY_F3 data input 64

#### Parameter OBS_KEY_F4 interface
add_interface OBS_KEY_F4 conduit sink
set_interface_property OBS_KEY_F4 associatedClock clock
set_interface_property OBS_KEY_F4 associatedReset reset
set_interface_assignment OBS_KEY_F4 hls.cosim.name {@OBS_KEY_F4}
add_interface_port OBS_KEY_F4 OBS_KEY_F4 data input 64

#### Parameter OBS_KEY_F5 interface
add_interface OBS_KEY_F5 conduit sink
set_interface_property OBS_KEY_F5 associatedClock clock
set_interface_property OBS_KEY_F5 associatedReset reset
set_interface_assignment OBS_KEY_F5 hls.cosim.name {@OBS_KEY_F5}
add_interface_port OBS_KEY_F5 OBS_KEY_F5 data input 64

#### Parameter OBS_KEY_F6 interface
add_interface OBS_KEY_F6 conduit sink
set_interface_property OBS_KEY_F6 associatedClock clock
set_interface_property OBS_KEY_F6 associatedReset reset
set_interface_assignment OBS_KEY_F6 hls.cosim.name {@OBS_KEY_F6}
add_interface_port OBS_KEY_F6 OBS_KEY_F6 data input 64

#### Parameter OBS_KEY_F7 interface
add_interface OBS_KEY_F7 conduit sink
set_interface_property OBS_KEY_F7 associatedClock clock
set_interface_property OBS_KEY_F7 associatedReset reset
set_interface_assignment OBS_KEY_F7 hls.cosim.name {@OBS_KEY_F7}
add_interface_port OBS_KEY_F7 OBS_KEY_F7 data input 64

#### Parameter OBS_KEY_F8 interface
add_interface OBS_KEY_F8 conduit sink
set_interface_property OBS_KEY_F8 associatedClock clock
set_interface_property OBS_KEY_F8 associatedReset reset
set_interface_assignment OBS_KEY_F8 hls.cosim.name {@OBS_KEY_F8}
add_interface_port OBS_KEY_F8 OBS_KEY_F8 data input 64

#### Parameter OBS_KEY_F9 interface
add_interface OBS_KEY_F9 conduit sink
set_interface_property OBS_KEY_F9 associatedClock clock
set_interface_property OBS_KEY_F9 associatedReset reset
set_interface_assignment OBS_KEY_F9 hls.cosim.name {@OBS_KEY_F9}
add_interface_port OBS_KEY_F9 OBS_KEY_F9 data input 64

#### Parameter OBS_KEY_G interface
add_interface OBS_KEY_G conduit sink
set_interface_property OBS_KEY_G associatedClock clock
set_interface_property OBS_KEY_G associatedReset reset
set_interface_assignment OBS_KEY_G hls.cosim.name {@OBS_KEY_G}
add_interface_port OBS_KEY_G OBS_KEY_G data input 64

#### Parameter OBS_KEY_H interface
add_interface OBS_KEY_H conduit sink
set_interface_property OBS_KEY_H associatedClock clock
set_interface_property OBS_KEY_H associatedReset reset
set_interface_assignment OBS_KEY_H hls.cosim.name {@OBS_KEY_H}
add_interface_port OBS_KEY_H OBS_KEY_H data input 64

#### Parameter OBS_KEY_HELP interface
add_interface OBS_KEY_HELP conduit sink
set_interface_property OBS_KEY_HELP associatedClock clock
set_interface_property OBS_KEY_HELP associatedReset reset
set_interface_assignment OBS_KEY_HELP hls.cosim.name {@OBS_KEY_HELP}
add_interface_port OBS_KEY_HELP OBS_KEY_HELP data input 64

#### Parameter OBS_KEY_HOME interface
add_interface OBS_KEY_HOME conduit sink
set_interface_property OBS_KEY_HOME associatedClock clock
set_interface_property OBS_KEY_HOME associatedReset reset
set_interface_assignment OBS_KEY_HOME hls.cosim.name {@OBS_KEY_HOME}
add_interface_port OBS_KEY_HOME OBS_KEY_HOME data input 64

#### Parameter OBS_KEY_I interface
add_interface OBS_KEY_I conduit sink
set_interface_property OBS_KEY_I associatedClock clock
set_interface_property OBS_KEY_I associatedReset reset
set_interface_assignment OBS_KEY_I hls.cosim.name {@OBS_KEY_I}
add_interface_port OBS_KEY_I OBS_KEY_I data input 64

#### Parameter OBS_KEY_J interface
add_interface OBS_KEY_J conduit sink
set_interface_property OBS_KEY_J associatedClock clock
set_interface_property OBS_KEY_J associatedReset reset
set_interface_assignment OBS_KEY_J hls.cosim.name {@OBS_KEY_J}
add_interface_port OBS_KEY_J OBS_KEY_J data input 64

#### Parameter OBS_KEY_K interface
add_interface OBS_KEY_K conduit sink
set_interface_property OBS_KEY_K associatedClock clock
set_interface_property OBS_KEY_K associatedReset reset
set_interface_assignment OBS_KEY_K hls.cosim.name {@OBS_KEY_K}
add_interface_port OBS_KEY_K OBS_KEY_K data input 64

#### Parameter OBS_KEY_L interface
add_interface OBS_KEY_L conduit sink
set_interface_property OBS_KEY_L associatedClock clock
set_interface_property OBS_KEY_L associatedReset reset
set_interface_assignment OBS_KEY_L hls.cosim.name {@OBS_KEY_L}
add_interface_port OBS_KEY_L OBS_KEY_L data input 64

#### Parameter OBS_KEY_LEFT interface
add_interface OBS_KEY_LEFT conduit sink
set_interface_property OBS_KEY_LEFT associatedClock clock
set_interface_property OBS_KEY_LEFT associatedReset reset
set_interface_assignment OBS_KEY_LEFT hls.cosim.name {@OBS_KEY_LEFT}
add_interface_port OBS_KEY_LEFT OBS_KEY_LEFT data input 64

#### Parameter OBS_KEY_M interface
add_interface OBS_KEY_M conduit sink
set_interface_property OBS_KEY_M associatedClock clock
set_interface_property OBS_KEY_M associatedReset reset
set_interface_assignment OBS_KEY_M hls.cosim.name {@OBS_KEY_M}
add_interface_port OBS_KEY_M OBS_KEY_M data input 64

#### Parameter OBS_KEY_META interface
add_interface OBS_KEY_META conduit sink
set_interface_property OBS_KEY_META associatedClock clock
set_interface_property OBS_KEY_META associatedReset reset
set_interface_assignment OBS_KEY_META hls.cosim.name {@OBS_KEY_META}
add_interface_port OBS_KEY_META OBS_KEY_META data input 64

#### Parameter OBS_KEY_MINUS interface
add_interface OBS_KEY_MINUS conduit sink
set_interface_property OBS_KEY_MINUS associatedClock clock
set_interface_property OBS_KEY_MINUS associatedReset reset
set_interface_assignment OBS_KEY_MINUS hls.cosim.name {@OBS_KEY_MINUS}
add_interface_port OBS_KEY_MINUS OBS_KEY_MINUS data input 64

#### Parameter OBS_KEY_N interface
add_interface OBS_KEY_N conduit sink
set_interface_property OBS_KEY_N associatedClock clock
set_interface_property OBS_KEY_N associatedReset reset
set_interface_assignment OBS_KEY_N hls.cosim.name {@OBS_KEY_N}
add_interface_port OBS_KEY_N OBS_KEY_N data input 64

#### Parameter OBS_KEY_NONE interface
add_interface OBS_KEY_NONE conduit sink
set_interface_property OBS_KEY_NONE associatedClock clock
set_interface_property OBS_KEY_NONE associatedReset reset
set_interface_assignment OBS_KEY_NONE hls.cosim.name {@OBS_KEY_NONE}
add_interface_port OBS_KEY_NONE OBS_KEY_NONE data input 64

#### Parameter OBS_KEY_NUM0 interface
add_interface OBS_KEY_NUM0 conduit sink
set_interface_property OBS_KEY_NUM0 associatedClock clock
set_interface_property OBS_KEY_NUM0 associatedReset reset
set_interface_assignment OBS_KEY_NUM0 hls.cosim.name {@OBS_KEY_NUM0}
add_interface_port OBS_KEY_NUM0 OBS_KEY_NUM0 data input 64

#### Parameter OBS_KEY_NUM1 interface
add_interface OBS_KEY_NUM1 conduit sink
set_interface_property OBS_KEY_NUM1 associatedClock clock
set_interface_property OBS_KEY_NUM1 associatedReset reset
set_interface_assignment OBS_KEY_NUM1 hls.cosim.name {@OBS_KEY_NUM1}
add_interface_port OBS_KEY_NUM1 OBS_KEY_NUM1 data input 64

#### Parameter OBS_KEY_NUM2 interface
add_interface OBS_KEY_NUM2 conduit sink
set_interface_property OBS_KEY_NUM2 associatedClock clock
set_interface_property OBS_KEY_NUM2 associatedReset reset
set_interface_assignment OBS_KEY_NUM2 hls.cosim.name {@OBS_KEY_NUM2}
add_interface_port OBS_KEY_NUM2 OBS_KEY_NUM2 data input 64

#### Parameter OBS_KEY_NUM3 interface
add_interface OBS_KEY_NUM3 conduit sink
set_interface_property OBS_KEY_NUM3 associatedClock clock
set_interface_property OBS_KEY_NUM3 associatedReset reset
set_interface_assignment OBS_KEY_NUM3 hls.cosim.name {@OBS_KEY_NUM3}
add_interface_port OBS_KEY_NUM3 OBS_KEY_NUM3 data input 64

#### Parameter OBS_KEY_NUM4 interface
add_interface OBS_KEY_NUM4 conduit sink
set_interface_property OBS_KEY_NUM4 associatedClock clock
set_interface_property OBS_KEY_NUM4 associatedReset reset
set_interface_assignment OBS_KEY_NUM4 hls.cosim.name {@OBS_KEY_NUM4}
add_interface_port OBS_KEY_NUM4 OBS_KEY_NUM4 data input 64

#### Parameter OBS_KEY_NUM5 interface
add_interface OBS_KEY_NUM5 conduit sink
set_interface_property OBS_KEY_NUM5 associatedClock clock
set_interface_property OBS_KEY_NUM5 associatedReset reset
set_interface_assignment OBS_KEY_NUM5 hls.cosim.name {@OBS_KEY_NUM5}
add_interface_port OBS_KEY_NUM5 OBS_KEY_NUM5 data input 64

#### Parameter OBS_KEY_NUM6 interface
add_interface OBS_KEY_NUM6 conduit sink
set_interface_property OBS_KEY_NUM6 associatedClock clock
set_interface_property OBS_KEY_NUM6 associatedReset reset
set_interface_assignment OBS_KEY_NUM6 hls.cosim.name {@OBS_KEY_NUM6}
add_interface_port OBS_KEY_NUM6 OBS_KEY_NUM6 data input 64

#### Parameter OBS_KEY_NUM7 interface
add_interface OBS_KEY_NUM7 conduit sink
set_interface_property OBS_KEY_NUM7 associatedClock clock
set_interface_property OBS_KEY_NUM7 associatedReset reset
set_interface_assignment OBS_KEY_NUM7 hls.cosim.name {@OBS_KEY_NUM7}
add_interface_port OBS_KEY_NUM7 OBS_KEY_NUM7 data input 64

#### Parameter OBS_KEY_NUM8 interface
add_interface OBS_KEY_NUM8 conduit sink
set_interface_property OBS_KEY_NUM8 associatedClock clock
set_interface_property OBS_KEY_NUM8 associatedReset reset
set_interface_assignment OBS_KEY_NUM8 hls.cosim.name {@OBS_KEY_NUM8}
add_interface_port OBS_KEY_NUM8 OBS_KEY_NUM8 data input 64

#### Parameter OBS_KEY_NUM9 interface
add_interface OBS_KEY_NUM9 conduit sink
set_interface_property OBS_KEY_NUM9 associatedClock clock
set_interface_property OBS_KEY_NUM9 associatedReset reset
set_interface_assignment OBS_KEY_NUM9 hls.cosim.name {@OBS_KEY_NUM9}
add_interface_port OBS_KEY_NUM9 OBS_KEY_NUM9 data input 64

#### Parameter OBS_KEY_NUMASTERISK interface
add_interface OBS_KEY_NUMASTERISK conduit sink
set_interface_property OBS_KEY_NUMASTERISK associatedClock clock
set_interface_property OBS_KEY_NUMASTERISK associatedReset reset
set_interface_assignment OBS_KEY_NUMASTERISK hls.cosim.name {@OBS_KEY_NUMASTERISK}
add_interface_port OBS_KEY_NUMASTERISK OBS_KEY_NUMASTERISK data input 64

#### Parameter OBS_KEY_NUMEQUAL interface
add_interface OBS_KEY_NUMEQUAL conduit sink
set_interface_property OBS_KEY_NUMEQUAL associatedClock clock
set_interface_property OBS_KEY_NUMEQUAL associatedReset reset
set_interface_assignment OBS_KEY_NUMEQUAL hls.cosim.name {@OBS_KEY_NUMEQUAL}
add_interface_port OBS_KEY_NUMEQUAL OBS_KEY_NUMEQUAL data input 64

#### Parameter OBS_KEY_NUMMINUS interface
add_interface OBS_KEY_NUMMINUS conduit sink
set_interface_property OBS_KEY_NUMMINUS associatedClock clock
set_interface_property OBS_KEY_NUMMINUS associatedReset reset
set_interface_assignment OBS_KEY_NUMMINUS hls.cosim.name {@OBS_KEY_NUMMINUS}
add_interface_port OBS_KEY_NUMMINUS OBS_KEY_NUMMINUS data input 64

#### Parameter OBS_KEY_NUMPERIOD interface
add_interface OBS_KEY_NUMPERIOD conduit sink
set_interface_property OBS_KEY_NUMPERIOD associatedClock clock
set_interface_property OBS_KEY_NUMPERIOD associatedReset reset
set_interface_assignment OBS_KEY_NUMPERIOD hls.cosim.name {@OBS_KEY_NUMPERIOD}
add_interface_port OBS_KEY_NUMPERIOD OBS_KEY_NUMPERIOD data input 64

#### Parameter OBS_KEY_NUMPLUS interface
add_interface OBS_KEY_NUMPLUS conduit sink
set_interface_property OBS_KEY_NUMPLUS associatedClock clock
set_interface_property OBS_KEY_NUMPLUS associatedReset reset
set_interface_assignment OBS_KEY_NUMPLUS hls.cosim.name {@OBS_KEY_NUMPLUS}
add_interface_port OBS_KEY_NUMPLUS OBS_KEY_NUMPLUS data input 64

#### Parameter OBS_KEY_NUMSLASH interface
add_interface OBS_KEY_NUMSLASH conduit sink
set_interface_property OBS_KEY_NUMSLASH associatedClock clock
set_interface_property OBS_KEY_NUMSLASH associatedReset reset
set_interface_assignment OBS_KEY_NUMSLASH hls.cosim.name {@OBS_KEY_NUMSLASH}
add_interface_port OBS_KEY_NUMSLASH OBS_KEY_NUMSLASH data input 64

#### Parameter OBS_KEY_O interface
add_interface OBS_KEY_O conduit sink
set_interface_property OBS_KEY_O associatedClock clock
set_interface_property OBS_KEY_O associatedReset reset
set_interface_assignment OBS_KEY_O hls.cosim.name {@OBS_KEY_O}
add_interface_port OBS_KEY_O OBS_KEY_O data input 64

#### Parameter OBS_KEY_P interface
add_interface OBS_KEY_P conduit sink
set_interface_property OBS_KEY_P associatedClock clock
set_interface_property OBS_KEY_P associatedReset reset
set_interface_assignment OBS_KEY_P hls.cosim.name {@OBS_KEY_P}
add_interface_port OBS_KEY_P OBS_KEY_P data input 64

#### Parameter OBS_KEY_PAGEDOWN interface
add_interface OBS_KEY_PAGEDOWN conduit sink
set_interface_property OBS_KEY_PAGEDOWN associatedClock clock
set_interface_property OBS_KEY_PAGEDOWN associatedReset reset
set_interface_assignment OBS_KEY_PAGEDOWN hls.cosim.name {@OBS_KEY_PAGEDOWN}
add_interface_port OBS_KEY_PAGEDOWN OBS_KEY_PAGEDOWN data input 64

#### Parameter OBS_KEY_PAGEUP interface
add_interface OBS_KEY_PAGEUP conduit sink
set_interface_property OBS_KEY_PAGEUP associatedClock clock
set_interface_property OBS_KEY_PAGEUP associatedReset reset
set_interface_assignment OBS_KEY_PAGEUP hls.cosim.name {@OBS_KEY_PAGEUP}
add_interface_port OBS_KEY_PAGEUP OBS_KEY_PAGEUP data input 64

#### Parameter OBS_KEY_PERIOD interface
add_interface OBS_KEY_PERIOD conduit sink
set_interface_property OBS_KEY_PERIOD associatedClock clock
set_interface_property OBS_KEY_PERIOD associatedReset reset
set_interface_assignment OBS_KEY_PERIOD hls.cosim.name {@OBS_KEY_PERIOD}
add_interface_port OBS_KEY_PERIOD OBS_KEY_PERIOD data input 64

#### Parameter OBS_KEY_Q interface
add_interface OBS_KEY_Q conduit sink
set_interface_property OBS_KEY_Q associatedClock clock
set_interface_property OBS_KEY_Q associatedReset reset
set_interface_assignment OBS_KEY_Q hls.cosim.name {@OBS_KEY_Q}
add_interface_port OBS_KEY_Q OBS_KEY_Q data input 64

#### Parameter OBS_KEY_QUOTE interface
add_interface OBS_KEY_QUOTE conduit sink
set_interface_property OBS_KEY_QUOTE associatedClock clock
set_interface_property OBS_KEY_QUOTE associatedReset reset
set_interface_assignment OBS_KEY_QUOTE hls.cosim.name {@OBS_KEY_QUOTE}
add_interface_port OBS_KEY_QUOTE OBS_KEY_QUOTE data input 64

#### Parameter OBS_KEY_R interface
add_interface OBS_KEY_R conduit sink
set_interface_property OBS_KEY_R associatedClock clock
set_interface_property OBS_KEY_R associatedReset reset
set_interface_assignment OBS_KEY_R hls.cosim.name {@OBS_KEY_R}
add_interface_port OBS_KEY_R OBS_KEY_R data input 64

#### Parameter OBS_KEY_RETURN interface
add_interface OBS_KEY_RETURN conduit sink
set_interface_property OBS_KEY_RETURN associatedClock clock
set_interface_property OBS_KEY_RETURN associatedReset reset
set_interface_assignment OBS_KEY_RETURN hls.cosim.name {@OBS_KEY_RETURN}
add_interface_port OBS_KEY_RETURN OBS_KEY_RETURN data input 64

#### Parameter OBS_KEY_RIGHT interface
add_interface OBS_KEY_RIGHT conduit sink
set_interface_property OBS_KEY_RIGHT associatedClock clock
set_interface_property OBS_KEY_RIGHT associatedReset reset
set_interface_assignment OBS_KEY_RIGHT hls.cosim.name {@OBS_KEY_RIGHT}
add_interface_port OBS_KEY_RIGHT OBS_KEY_RIGHT data input 64

#### Parameter OBS_KEY_S interface
add_interface OBS_KEY_S conduit sink
set_interface_property OBS_KEY_S associatedClock clock
set_interface_property OBS_KEY_S associatedReset reset
set_interface_assignment OBS_KEY_S hls.cosim.name {@OBS_KEY_S}
add_interface_port OBS_KEY_S OBS_KEY_S data input 64

#### Parameter OBS_KEY_SECTION interface
add_interface OBS_KEY_SECTION conduit sink
set_interface_property OBS_KEY_SECTION associatedClock clock
set_interface_property OBS_KEY_SECTION associatedReset reset
set_interface_assignment OBS_KEY_SECTION hls.cosim.name {@OBS_KEY_SECTION}
add_interface_port OBS_KEY_SECTION OBS_KEY_SECTION data input 64

#### Parameter OBS_KEY_SEMICOLON interface
add_interface OBS_KEY_SEMICOLON conduit sink
set_interface_property OBS_KEY_SEMICOLON associatedClock clock
set_interface_property OBS_KEY_SEMICOLON associatedReset reset
set_interface_assignment OBS_KEY_SEMICOLON hls.cosim.name {@OBS_KEY_SEMICOLON}
add_interface_port OBS_KEY_SEMICOLON OBS_KEY_SEMICOLON data input 64

#### Parameter OBS_KEY_SHIFT interface
add_interface OBS_KEY_SHIFT conduit sink
set_interface_property OBS_KEY_SHIFT associatedClock clock
set_interface_property OBS_KEY_SHIFT associatedReset reset
set_interface_assignment OBS_KEY_SHIFT hls.cosim.name {@OBS_KEY_SHIFT}
add_interface_port OBS_KEY_SHIFT OBS_KEY_SHIFT data input 64

#### Parameter OBS_KEY_SLASH interface
add_interface OBS_KEY_SLASH conduit sink
set_interface_property OBS_KEY_SLASH associatedClock clock
set_interface_property OBS_KEY_SLASH associatedReset reset
set_interface_assignment OBS_KEY_SLASH hls.cosim.name {@OBS_KEY_SLASH}
add_interface_port OBS_KEY_SLASH OBS_KEY_SLASH data input 64

#### Parameter OBS_KEY_SPACE interface
add_interface OBS_KEY_SPACE conduit sink
set_interface_property OBS_KEY_SPACE associatedClock clock
set_interface_property OBS_KEY_SPACE associatedReset reset
set_interface_assignment OBS_KEY_SPACE hls.cosim.name {@OBS_KEY_SPACE}
add_interface_port OBS_KEY_SPACE OBS_KEY_SPACE data input 64

#### Parameter OBS_KEY_T interface
add_interface OBS_KEY_T conduit sink
set_interface_property OBS_KEY_T associatedClock clock
set_interface_property OBS_KEY_T associatedReset reset
set_interface_assignment OBS_KEY_T hls.cosim.name {@OBS_KEY_T}
add_interface_port OBS_KEY_T OBS_KEY_T data input 64

#### Parameter OBS_KEY_TAB interface
add_interface OBS_KEY_TAB conduit sink
set_interface_property OBS_KEY_TAB associatedClock clock
set_interface_property OBS_KEY_TAB associatedReset reset
set_interface_assignment OBS_KEY_TAB hls.cosim.name {@OBS_KEY_TAB}
add_interface_port OBS_KEY_TAB OBS_KEY_TAB data input 64

#### Parameter OBS_KEY_U interface
add_interface OBS_KEY_U conduit sink
set_interface_property OBS_KEY_U associatedClock clock
set_interface_property OBS_KEY_U associatedReset reset
set_interface_assignment OBS_KEY_U hls.cosim.name {@OBS_KEY_U}
add_interface_port OBS_KEY_U OBS_KEY_U data input 64

#### Parameter OBS_KEY_UP interface
add_interface OBS_KEY_UP conduit sink
set_interface_property OBS_KEY_UP associatedClock clock
set_interface_property OBS_KEY_UP associatedReset reset
set_interface_assignment OBS_KEY_UP hls.cosim.name {@OBS_KEY_UP}
add_interface_port OBS_KEY_UP OBS_KEY_UP data input 64

#### Parameter OBS_KEY_V interface
add_interface OBS_KEY_V conduit sink
set_interface_property OBS_KEY_V associatedClock clock
set_interface_property OBS_KEY_V associatedReset reset
set_interface_assignment OBS_KEY_V hls.cosim.name {@OBS_KEY_V}
add_interface_port OBS_KEY_V OBS_KEY_V data input 64

#### Parameter OBS_KEY_W interface
add_interface OBS_KEY_W conduit sink
set_interface_property OBS_KEY_W associatedClock clock
set_interface_property OBS_KEY_W associatedReset reset
set_interface_assignment OBS_KEY_W hls.cosim.name {@OBS_KEY_W}
add_interface_port OBS_KEY_W OBS_KEY_W data input 64

#### Parameter OBS_KEY_X interface
add_interface OBS_KEY_X conduit sink
set_interface_property OBS_KEY_X associatedClock clock
set_interface_property OBS_KEY_X associatedReset reset
set_interface_assignment OBS_KEY_X hls.cosim.name {@OBS_KEY_X}
add_interface_port OBS_KEY_X OBS_KEY_X data input 64

#### Parameter OBS_KEY_Y interface
add_interface OBS_KEY_Y conduit sink
set_interface_property OBS_KEY_Y associatedClock clock
set_interface_property OBS_KEY_Y associatedReset reset
set_interface_assignment OBS_KEY_Y hls.cosim.name {@OBS_KEY_Y}
add_interface_port OBS_KEY_Y OBS_KEY_Y data input 64

#### Parameter OBS_KEY_Z interface
add_interface OBS_KEY_Z conduit sink
set_interface_property OBS_KEY_Z associatedClock clock
set_interface_property OBS_KEY_Z associatedReset reset
set_interface_assignment OBS_KEY_Z hls.cosim.name {@OBS_KEY_Z}
add_interface_port OBS_KEY_Z OBS_KEY_Z data input 64

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
