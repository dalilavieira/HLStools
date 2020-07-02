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
    name type_info_get_print_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_print_type \
    op interface \
    ports { type_info_get_print_type { O 32 vector } type_info_get_print_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name type_info_get_mlist \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_mlist \
    op interface \
    ports { type_info_get_mlist { O 32 vector } type_info_get_mlist_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name type_info_get_index \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_index \
    op interface \
    ports { type_info_get_index { O 32 vector } type_info_get_index_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name type_info_get_arglist \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_arglist \
    op interface \
    ports { type_info_get_arglist { O 32 vector } type_info_get_arglist_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name type_info_get_this_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_this_type \
    op interface \
    ports { type_info_get_this_type { O 32 vector } type_info_get_this_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name type_info_get_class_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_class_type \
    op interface \
    ports { type_info_get_class_type { O 32 vector } type_info_get_class_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name type_info_get_return_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_return_type \
    op interface \
    ports { type_info_get_return_type { O 32 vector } type_info_get_return_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name type_info_get_utype \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_utype \
    op interface \
    ports { type_info_get_utype { O 32 vector } type_info_get_utype_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name type_info_get_vshape \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_vshape \
    op interface \
    ports { type_info_get_vshape { O 32 vector } type_info_get_vshape_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name type_info_get_derived \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_derived \
    op interface \
    ports { type_info_get_derived { O 32 vector } type_info_get_derived_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name type_info_get_base_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_base_type \
    op interface \
    ports { type_info_get_base_type { O 32 vector } type_info_get_base_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name type_info_get_index_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_index_type \
    op interface \
    ports { type_info_get_index_type { O 32 vector } type_info_get_index_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name type_info_get_element_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_element_type \
    op interface \
    ports { type_info_get_element_type { O 32 vector } type_info_get_element_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name type_info_get_arg_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_arg_type \
    op interface \
    ports { type_info_get_arg_type { O 32 vector } type_info_get_arg_type_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name type_info_get_members \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_members \
    op interface \
    ports { type_info_get_members { O 32 vector } type_info_get_members_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name type_info_get_name_len \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_name_len \
    op interface \
    ports { type_info_get_name_len { O 32 vector } type_info_get_name_len_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name type_info_get_val \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_val \
    op interface \
    ports { type_info_get_val { O 32 vector } type_info_get_val_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name type_info_get_name \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_name \
    op interface \
    ports { type_info_get_name { O 32 vector } type_info_get_name_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name type_info_free_s \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_free_s \
    op interface \
    ports { type_info_free_s { O 32 vector } type_info_free_s_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name type_info_is_fwdref \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_is_fwdref \
    op interface \
    ports { type_info_is_fwdref { O 32 vector } type_info_is_fwdref_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name type_info_get_modified_type \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_type_info_get_modified_type \
    op interface \
    ports { type_info_get_modified_type { O 32 vector } type_info_get_modified_type_ap_vld { O 1 bit } } \
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


