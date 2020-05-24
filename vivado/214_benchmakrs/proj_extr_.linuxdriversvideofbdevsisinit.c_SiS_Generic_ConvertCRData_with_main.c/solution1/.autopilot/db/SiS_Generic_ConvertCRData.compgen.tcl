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
    name crdata \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename crdata \
    op interface \
    ports { crdata_address0 { O 10 vector } crdata_ce0 { O 1 bit } crdata_q0 { I 8 vector } crdata_address1 { O 10 vector } crdata_ce1 { O 1 bit } crdata_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'crdata'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name xres \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_xres \
    op interface \
    ports { xres { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name yres \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_yres \
    op interface \
    ports { yres { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name var_xres \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_xres \
    op interface \
    ports { var_xres { O 32 vector } var_xres_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
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
    id 6 \
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
    id 7 \
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
    id 8 \
    name var_yres \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_yres \
    op interface \
    ports { var_yres { O 32 vector } var_yres_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
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
    id 10 \
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
    id 11 \
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
    id 12 \
    name writeres \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_writeres \
    op interface \
    ports { writeres { I 32 vector } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


