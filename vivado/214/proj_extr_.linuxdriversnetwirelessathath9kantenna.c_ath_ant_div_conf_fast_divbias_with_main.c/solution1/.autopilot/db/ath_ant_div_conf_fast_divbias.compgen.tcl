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
    name ant_conf_div_group \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ant_conf_div_group \
    op interface \
    ports { ant_conf_div_group { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name ant_conf_main_lna_conf \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ant_conf_main_lna_conf \
    op interface \
    ports { ant_conf_main_lna_conf { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name ant_conf_alt_lna_conf \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ant_conf_alt_lna_conf \
    op interface \
    ports { ant_conf_alt_lna_conf { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name ant_conf_fast_div_bias \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ant_conf_fast_div_bias \
    op interface \
    ports { ant_conf_fast_div_bias { O 32 vector } ant_conf_fast_div_bias_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name ant_conf_alt_gaintb \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ant_conf_alt_gaintb \
    op interface \
    ports { ant_conf_alt_gaintb { O 32 vector } ant_conf_alt_gaintb_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name ant_conf_main_gaintb \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ant_conf_main_gaintb \
    op interface \
    ports { ant_conf_main_gaintb { O 32 vector } ant_conf_main_gaintb_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name antcomb_ant_ratio \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_antcomb_ant_ratio \
    op interface \
    ports { antcomb_ant_ratio { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name antcomb_fast_div_bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_antcomb_fast_div_bias \
    op interface \
    ports { antcomb_fast_div_bias { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name antcomb_scan \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_antcomb_scan \
    op interface \
    ports { antcomb_scan { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name alt_ratio \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_alt_ratio \
    op interface \
    ports { alt_ratio { I 32 vector } } \
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


