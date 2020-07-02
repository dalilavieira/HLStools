# This script segment is generated automatically by AutoPilot

set id 1
set name cx2341x_set_ctrl_srem_32ns_32ns_32_36_seq_1
set corename simcore_srem_seq
set op srem
set stage_num 36
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set start_width 1
set start_signed 0
set done_width 1
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_srem] == "ap_gen_simcore_srem"} {
eval "ap_gen_simcore_srem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_srem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op srem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    start_width ${start_width} \
    start_signed ${start_signed} \
    done_width ${done_width} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name params_audio_sampling_freq \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_audio_sampling_freq \
    op interface \
    ports { params_audio_sampling_freq { O 32 vector } params_audio_sampling_freq_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name params_audio_encoding \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_audio_encoding \
    op interface \
    ports { params_audio_encoding { O 32 vector } params_audio_encoding_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name params_audio_l2_bitrate \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_audio_l2_bitrate \
    op interface \
    ports { params_audio_l2_bitrate { O 32 vector } params_audio_l2_bitrate_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name params_audio_mode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_audio_mode \
    op interface \
    ports { params_audio_mode { O 32 vector } params_audio_mode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name params_audio_mode_extension \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_audio_mode_extension \
    op interface \
    ports { params_audio_mode_extension { O 32 vector } params_audio_mode_extension_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name params_audio_emphasis \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_audio_emphasis \
    op interface \
    ports { params_audio_emphasis { O 32 vector } params_audio_emphasis_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name params_audio_crc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_audio_crc \
    op interface \
    ports { params_audio_crc { O 32 vector } params_audio_crc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name params_audio_mute \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_audio_mute \
    op interface \
    ports { params_audio_mute { O 32 vector } params_audio_mute_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name params_video_aspect \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_aspect \
    op interface \
    ports { params_video_aspect { O 32 vector } params_video_aspect_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name params_video_gop_size \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_gop_size \
    op interface \
    ports { params_video_gop_size_i { I 32 vector } params_video_gop_size_o { O 32 vector } params_video_gop_size_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name params_video_b_frames \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_b_frames \
    op interface \
    ports { params_video_b_frames_i { I 32 vector } params_video_b_frames_o { O 32 vector } params_video_b_frames_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name params_video_gop_closure \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_gop_closure \
    op interface \
    ports { params_video_gop_closure { O 32 vector } params_video_gop_closure_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name params_video_bitrate_mode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_bitrate_mode \
    op interface \
    ports { params_video_bitrate_mode { O 32 vector } params_video_bitrate_mode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name params_video_bitrate \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_bitrate \
    op interface \
    ports { params_video_bitrate { O 32 vector } params_video_bitrate_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name params_video_bitrate_peak \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_bitrate_peak \
    op interface \
    ports { params_video_bitrate_peak { O 32 vector } params_video_bitrate_peak_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name params_video_temporal_decimation \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_temporal_decimation \
    op interface \
    ports { params_video_temporal_decimation { O 32 vector } params_video_temporal_decimation_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name params_video_mute \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_mute \
    op interface \
    ports { params_video_mute { O 32 vector } params_video_mute_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name params_video_mute_yuv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_mute_yuv \
    op interface \
    ports { params_video_mute_yuv { O 32 vector } params_video_mute_yuv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name params_stream_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_stream_type \
    op interface \
    ports { params_stream_type { O 32 vector } params_stream_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name params_stream_vbi_fmt \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_stream_vbi_fmt \
    op interface \
    ports { params_stream_vbi_fmt { O 32 vector } params_stream_vbi_fmt_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name params_video_spatial_filter_mode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_spatial_filter_mode \
    op interface \
    ports { params_video_spatial_filter_mode { O 32 vector } params_video_spatial_filter_mode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name params_video_spatial_filter \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_spatial_filter \
    op interface \
    ports { params_video_spatial_filter { O 32 vector } params_video_spatial_filter_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name params_video_luma_spatial_filter_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_luma_spatial_filter_type \
    op interface \
    ports { params_video_luma_spatial_filter_type { O 32 vector } params_video_luma_spatial_filter_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name params_video_chroma_spatial_filter_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_chroma_spatial_filter_type \
    op interface \
    ports { params_video_chroma_spatial_filter_type { O 32 vector } params_video_chroma_spatial_filter_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name params_video_temporal_filter_mode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_temporal_filter_mode \
    op interface \
    ports { params_video_temporal_filter_mode { O 32 vector } params_video_temporal_filter_mode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name params_video_temporal_filter \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_temporal_filter \
    op interface \
    ports { params_video_temporal_filter { O 32 vector } params_video_temporal_filter_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name params_video_median_filter_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_median_filter_type \
    op interface \
    ports { params_video_median_filter_type { O 32 vector } params_video_median_filter_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name params_video_luma_median_filter_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_luma_median_filter_top \
    op interface \
    ports { params_video_luma_median_filter_top { O 32 vector } params_video_luma_median_filter_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name params_video_luma_median_filter_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_luma_median_filter_bottom \
    op interface \
    ports { params_video_luma_median_filter_bottom { O 32 vector } params_video_luma_median_filter_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name params_video_chroma_median_filter_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_chroma_median_filter_top \
    op interface \
    ports { params_video_chroma_median_filter_top { O 32 vector } params_video_chroma_median_filter_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name params_video_chroma_median_filter_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_chroma_median_filter_bottom \
    op interface \
    ports { params_video_chroma_median_filter_bottom { O 32 vector } params_video_chroma_median_filter_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name params_stream_insert_nav_packets \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_params_stream_insert_nav_packets \
    op interface \
    ports { params_stream_insert_nav_packets { O 32 vector } params_stream_insert_nav_packets_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name params_video_encoding \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_params_video_encoding \
    op interface \
    ports { params_video_encoding_i { I 32 vector } params_video_encoding_o { O 32 vector } params_video_encoding_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name busy \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_busy \
    op interface \
    ports { busy { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name ctrl_id \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ctrl_id \
    op interface \
    ports { ctrl_id { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name ctrl_value \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_ctrl_value \
    op interface \
    ports { ctrl_value_i { I 32 vector } ctrl_value_o { O 32 vector } ctrl_value_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 32 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


