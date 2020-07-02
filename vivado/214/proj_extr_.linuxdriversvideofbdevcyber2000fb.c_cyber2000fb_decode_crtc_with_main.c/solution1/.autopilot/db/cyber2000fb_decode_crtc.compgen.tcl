# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1 \
    name hw_crtc \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename hw_crtc \
    op interface \
    ports { hw_crtc_address0 { O 10 vector } hw_crtc_ce0 { O 1 bit } hw_crtc_we0 { O 1 bit } hw_crtc_d0 { O 32 vector } hw_crtc_address1 { O 10 vector } hw_crtc_ce1 { O 1 bit } hw_crtc_we1 { O 1 bit } hw_crtc_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'hw_crtc'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name hw_pitch \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hw_pitch \
    op interface \
    ports { hw_pitch { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name hw_crtc_ofl \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_hw_crtc_ofl \
    op interface \
    ports { hw_crtc_ofl_i { I 32 vector } hw_crtc_ofl_o { O 32 vector } hw_crtc_ofl_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
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
    id 5 \
    name var_right_margin \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_right_margin \
    op interface \
    ports { var_right_margin { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name var_hsync_len \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_hsync_len \
    op interface \
    ports { var_hsync_len { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name var_left_margin \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_left_margin \
    op interface \
    ports { var_left_margin { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
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
    id 9 \
    name var_lower_margin \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_lower_margin \
    op interface \
    ports { var_lower_margin { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name var_vsync_len \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_vsync_len \
    op interface \
    ports { var_vsync_len { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name var_upper_margin \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_upper_margin \
    op interface \
    ports { var_upper_margin { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name var_vmode \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_var_vmode \
    op interface \
    ports { var_vmode { I 32 vector } } \
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


