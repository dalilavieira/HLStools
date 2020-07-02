# This script segment is generated automatically by AutoPilot

set id 1
set name ivtv_yuv_window_setup_sdiv_32ns_32ns_32_36_seq_1
set corename simcore_sdiv_seq
set op sdiv
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
if {[info proc ap_gen_simcore_sdiv] == "ap_gen_simcore_sdiv"} {
eval "ap_gen_simcore_sdiv { \
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
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_sdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op sdiv
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
    name itv_yuv_info_osd_x_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_osd_x_offset \
    op interface \
    ports { itv_yuv_info_osd_x_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name itv_yuv_info_osd_y_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_osd_y_offset \
    op interface \
    ports { itv_yuv_info_osd_y_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name itv_yuv_info_track_osd \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_track_osd \
    op interface \
    ports { itv_yuv_info_track_osd { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name itv_yuv_info_old_frame_info_src_y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_src_y \
    op interface \
    ports { itv_yuv_info_old_frame_info_src_y { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name itv_yuv_info_old_frame_info_src_h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_src_h \
    op interface \
    ports { itv_yuv_info_old_frame_info_src_h { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name itv_yuv_info_old_frame_info_dst_h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_dst_h \
    op interface \
    ports { itv_yuv_info_old_frame_info_dst_h { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name itv_yuv_info_old_frame_info_interlaced_y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_interlaced_y \
    op interface \
    ports { itv_yuv_info_old_frame_info_interlaced_y { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name itv_yuv_info_old_frame_info_pan_y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_pan_y \
    op interface \
    ports { itv_yuv_info_old_frame_info_pan_y { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name itv_yuv_info_old_frame_info_dst_y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_dst_y \
    op interface \
    ports { itv_yuv_info_old_frame_info_dst_y { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name itv_yuv_info_old_frame_info_vis_h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_vis_h \
    op interface \
    ports { itv_yuv_info_old_frame_info_vis_h { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name itv_yuv_info_old_frame_info_lace_mode \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_lace_mode \
    op interface \
    ports { itv_yuv_info_old_frame_info_lace_mode { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name itv_yuv_info_old_frame_info_interlaced_uv \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_itv_yuv_info_old_frame_info_interlaced_uv \
    op interface \
    ports { itv_yuv_info_old_frame_info_interlaced_uv { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name f_src_x \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_src_x \
    op interface \
    ports { f_src_x_i { I 32 vector } f_src_x_o { O 32 vector } f_src_x_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name f_src_y \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_src_y \
    op interface \
    ports { f_src_y_i { I 32 vector } f_src_y_o { O 32 vector } f_src_y_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name f_src_w \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_src_w \
    op interface \
    ports { f_src_w_i { I 32 vector } f_src_w_o { O 32 vector } f_src_w_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name f_dst_w \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_dst_w \
    op interface \
    ports { f_dst_w_i { I 32 vector } f_dst_w_o { O 32 vector } f_dst_w_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name f_src_h \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_src_h \
    op interface \
    ports { f_src_h_i { I 32 vector } f_src_h_o { O 32 vector } f_src_h_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name f_dst_h \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_dst_h \
    op interface \
    ports { f_dst_h_i { I 32 vector } f_dst_h_o { O 32 vector } f_dst_h_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name f_interlaced_y \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_interlaced_y \
    op interface \
    ports { f_interlaced_y_i { I 32 vector } f_interlaced_y_o { O 32 vector } f_interlaced_y_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name f_pan_y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_pan_y \
    op interface \
    ports { f_pan_y { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name f_dst_y \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_dst_y \
    op interface \
    ports { f_dst_y_i { I 32 vector } f_dst_y_o { O 32 vector } f_dst_y_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name f_vis_h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_vis_h \
    op interface \
    ports { f_vis_h { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name f_pan_x \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_pan_x \
    op interface \
    ports { f_pan_x { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name f_dst_x \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_f_dst_x \
    op interface \
    ports { f_dst_x_i { I 32 vector } f_dst_x_o { O 32 vector } f_dst_x_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name f_vis_w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_vis_w \
    op interface \
    ports { f_vis_w { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name f_lace_mode \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_lace_mode \
    op interface \
    ports { f_lace_mode { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name f_interlaced_uv \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_f_interlaced_uv \
    op interface \
    ports { f_interlaced_uv { I 32 vector } } \
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


