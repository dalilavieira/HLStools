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
    name state_deci \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_deci \
    op interface \
    ports { state_deci { O 32 vector } state_deci_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name state_csel \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_csel \
    op interface \
    ports { state_csel { O 32 vector } state_csel_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name state_rsel \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_rsel \
    op interface \
    ports { state_rsel { O 32 vector } state_rsel_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name state_master_clk \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_state_master_clk \
    op interface \
    ports { state_master_clk { O 32 vector } state_master_clk_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name rate \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rate \
    op interface \
    ports { rate { I 32 vector } } \
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


