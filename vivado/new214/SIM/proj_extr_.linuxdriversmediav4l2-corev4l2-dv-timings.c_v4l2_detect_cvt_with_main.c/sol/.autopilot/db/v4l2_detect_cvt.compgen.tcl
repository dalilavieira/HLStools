# This script segment is generated automatically by AutoPilot

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
    id 1 \
    name frame_height \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_frame_height \
    op interface \
    ports { frame_height { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name hfreq \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_hfreq \
    op interface \
    ports { hfreq { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name vsync \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vsync \
    op interface \
    ports { vsync { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name active_width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_active_width \
    op interface \
    ports { active_width { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name polarities \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_polarities \
    op interface \
    ports { polarities { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name interlaced \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_interlaced \
    op interface \
    ports { interlaced { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name fmt_bt_width \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_width \
    op interface \
    ports { fmt_bt_width { O 32 vector } fmt_bt_width_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name fmt_bt_height \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_height \
    op interface \
    ports { fmt_bt_height { O 32 vector } fmt_bt_height_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name fmt_bt_hfrontporch \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_hfrontporch \
    op interface \
    ports { fmt_bt_hfrontporch { O 32 vector } fmt_bt_hfrontporch_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name fmt_bt_vfrontporch \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_vfrontporch \
    op interface \
    ports { fmt_bt_vfrontporch { O 32 vector } fmt_bt_vfrontporch_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name fmt_bt_hsync \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_hsync \
    op interface \
    ports { fmt_bt_hsync { O 32 vector } fmt_bt_hsync_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name fmt_bt_vsync \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_vsync \
    op interface \
    ports { fmt_bt_vsync { O 32 vector } fmt_bt_vsync_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name fmt_bt_hbackporch \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_hbackporch \
    op interface \
    ports { fmt_bt_hbackporch { O 32 vector } fmt_bt_hbackporch_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name fmt_bt_vbackporch \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_vbackporch \
    op interface \
    ports { fmt_bt_vbackporch { O 32 vector } fmt_bt_vbackporch_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name fmt_bt_il_vbackporch \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_il_vbackporch \
    op interface \
    ports { fmt_bt_il_vbackporch { O 32 vector } fmt_bt_il_vbackporch_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name fmt_bt_il_vfrontporch \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_il_vfrontporch \
    op interface \
    ports { fmt_bt_il_vfrontporch { O 32 vector } fmt_bt_il_vfrontporch_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name fmt_bt_il_vsync \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_il_vsync \
    op interface \
    ports { fmt_bt_il_vsync { O 32 vector } fmt_bt_il_vsync_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name fmt_bt_standards \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_standards \
    op interface \
    ports { fmt_bt_standards { O 32 vector } fmt_bt_standards_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name fmt_bt_interlaced \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_interlaced \
    op interface \
    ports { fmt_bt_interlaced { O 32 vector } fmt_bt_interlaced_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name fmt_bt_polarities \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_bt_polarities \
    op interface \
    ports { fmt_bt_polarities { O 32 vector } fmt_bt_polarities_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name fmt_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_fmt_type \
    op interface \
    ports { fmt_type { O 32 vector } fmt_type_ap_vld { O 1 bit } } \
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


