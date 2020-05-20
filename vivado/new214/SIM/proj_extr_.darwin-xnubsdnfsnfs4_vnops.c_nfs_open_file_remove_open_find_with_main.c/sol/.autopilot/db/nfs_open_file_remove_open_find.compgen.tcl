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
    name nofp_nof_access \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nofp_nof_access \
    op interface \
    ports { nofp_nof_access { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name nofp_nof_deny \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nofp_nof_deny \
    op interface \
    ports { nofp_nof_deny { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name nofp_nof_d_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nofp_nof_d_r \
    op interface \
    ports { nofp_nof_d_r { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name nofp_nof_d_r_drw \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nofp_nof_d_r_drw \
    op interface \
    ports { nofp_nof_d_r_drw { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name accessMode \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_accessMode \
    op interface \
    ports { accessMode { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name denyMode \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_denyMode \
    op interface \
    ports { denyMode { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name newAccessMode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_newAccessMode \
    op interface \
    ports { newAccessMode { O 32 vector } newAccessMode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name newDenyMode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_newDenyMode \
    op interface \
    ports { newDenyMode { O 32 vector } newDenyMode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name delegated \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_delegated \
    op interface \
    ports { delegated { O 32 vector } delegated_ap_vld { O 1 bit } } \
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


