# This script segment is generated automatically by AutoPilot

set id 1
set name imsttfb_check_var_sdiv_32ns_32ns_32_36_seq_1
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


set id 2
set name imsttfb_check_var_sdiv_32ns_32s_32_36_seq_1
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
set in1_signed 1
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
    id 5 \
    name var_bits_per_pixel \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_bits_per_pixel \
    op interface \
    ports { var_bits_per_pixel { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name var_xres_virtual \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_xres_virtual \
    op interface \
    ports { var_xres_virtual { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name var_xres \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_xres \
    op interface \
    ports { var_xres { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name var_yres_virtual \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_var_yres_virtual \
    op interface \
    ports { var_yres_virtual_i { I 32 vector } var_yres_virtual_o { O 32 vector } var_yres_virtual_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name var_yres \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_yres \
    op interface \
    ports { var_yres { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name var_vmode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_vmode \
    op interface \
    ports { var_vmode { O 32 vector } var_vmode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name var_height \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_height \
    op interface \
    ports { var_height { O 32 vector } var_height_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name var_width \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_width \
    op interface \
    ports { var_width { O 32 vector } var_width_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name var_left_margin \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_left_margin \
    op interface \
    ports { var_left_margin { O 32 vector } var_left_margin_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name var_right_margin \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_right_margin \
    op interface \
    ports { var_right_margin { O 32 vector } var_right_margin_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name var_upper_margin \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_upper_margin \
    op interface \
    ports { var_upper_margin { O 32 vector } var_upper_margin_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name var_lower_margin \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_lower_margin \
    op interface \
    ports { var_lower_margin { O 32 vector } var_lower_margin_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name var_hsync_len \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_hsync_len \
    op interface \
    ports { var_hsync_len { O 32 vector } var_hsync_len_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name var_vsync_len \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_vsync_len \
    op interface \
    ports { var_vsync_len { O 32 vector } var_vsync_len_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name var_transp_offset \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_transp_offset \
    op interface \
    ports { var_transp_offset { O 32 vector } var_transp_offset_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name var_transp_length \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_transp_length \
    op interface \
    ports { var_transp_length { O 32 vector } var_transp_length_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name var_transp_msb_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_transp_msb_right \
    op interface \
    ports { var_transp_msb_right { O 32 vector } var_transp_msb_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name var_blue_length \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_blue_length \
    op interface \
    ports { var_blue_length { O 32 vector } var_blue_length_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name var_blue_msb_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_blue_msb_right \
    op interface \
    ports { var_blue_msb_right { O 32 vector } var_blue_msb_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name var_blue_offset \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_blue_offset \
    op interface \
    ports { var_blue_offset { O 32 vector } var_blue_offset_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name var_green_offset \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_green_offset \
    op interface \
    ports { var_green_offset { O 32 vector } var_green_offset_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name var_green_length \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_var_green_length \
    op interface \
    ports { var_green_length_i { I 32 vector } var_green_length_o { O 32 vector } var_green_length_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name var_green_msb_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_green_msb_right \
    op interface \
    ports { var_green_msb_right { O 32 vector } var_green_msb_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name var_red_offset \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_red_offset \
    op interface \
    ports { var_red_offset { O 32 vector } var_red_offset_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name var_red_length \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_red_length \
    op interface \
    ports { var_red_length { O 32 vector } var_red_length_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name var_red_msb_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_red_msb_right \
    op interface \
    ports { var_red_msb_right { O 32 vector } var_red_msb_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name var_nonstd \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_nonstd \
    op interface \
    ports { var_nonstd { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name info_fix_smem_len \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_info_fix_smem_len \
    op interface \
    ports { info_fix_smem_len { I 32 vector } } \
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


