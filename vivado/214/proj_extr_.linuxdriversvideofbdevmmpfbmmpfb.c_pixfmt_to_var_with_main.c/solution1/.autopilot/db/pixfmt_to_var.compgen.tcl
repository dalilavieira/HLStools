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
    name var_bits_per_pixel \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_bits_per_pixel \
    op interface \
    ports { var_bits_per_pixel { O 32 vector } var_bits_per_pixel_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
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
    id 3 \
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
    id 4 \
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
    id 5 \
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
    id 6 \
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
    id 7 \
    name var_green_length \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_var_green_length \
    op interface \
    ports { var_green_length { O 32 vector } var_green_length_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
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
    id 9 \
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
    id 10 \
    name pix_fmt \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pix_fmt \
    op interface \
    ports { pix_fmt { I 32 vector } } \
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



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


