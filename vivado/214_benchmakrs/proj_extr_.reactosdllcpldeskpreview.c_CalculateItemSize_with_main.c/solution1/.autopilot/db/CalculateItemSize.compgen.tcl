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
    name pPreviewData_cxEdge \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_cxEdge \
    op interface \
    ports { pPreviewData_cxEdge { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name pPreviewData_cySizeFrame \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_cySizeFrame \
    op interface \
    ports { pPreviewData_cySizeFrame { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name pPreviewData_cyEdge \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_cyEdge \
    op interface \
    ports { pPreviewData_cyEdge { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name pPreviewData_cyCaption \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_cyCaption \
    op interface \
    ports { pPreviewData_cyCaption { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name pPreviewData_cyBorder \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_cyBorder \
    op interface \
    ports { pPreviewData_cyBorder { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name pPreviewData_cyMenu \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_cyMenu \
    op interface \
    ports { pPreviewData_cyMenu { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name pPreviewData_rcDialogButton_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogButton_left \
    op interface \
    ports { pPreviewData_rcDialogButton_left { O 32 vector } pPreviewData_rcDialogButton_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name pPreviewData_rcDialogButton_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogButton_right \
    op interface \
    ports { pPreviewData_rcDialogButton_right { O 32 vector } pPreviewData_rcDialogButton_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name pPreviewData_rcDialogButton_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogButton_bottom \
    op interface \
    ports { pPreviewData_rcDialogButton_bottom { O 32 vector } pPreviewData_rcDialogButton_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name pPreviewData_rcDialogButton_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogButton_top \
    op interface \
    ports { pPreviewData_rcDialogButton_top { O 32 vector } pPreviewData_rcDialogButton_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name pPreviewData_rcDialogClient_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogClient_left \
    op interface \
    ports { pPreviewData_rcDialogClient_left { O 32 vector } pPreviewData_rcDialogClient_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name pPreviewData_rcDialogClient_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogClient_top \
    op interface \
    ports { pPreviewData_rcDialogClient_top { O 32 vector } pPreviewData_rcDialogClient_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name pPreviewData_rcDialogClient_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogClient_right \
    op interface \
    ports { pPreviewData_rcDialogClient_right { O 32 vector } pPreviewData_rcDialogClient_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name pPreviewData_rcDialogClient_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogClient_bottom \
    op interface \
    ports { pPreviewData_rcDialogClient_bottom { O 32 vector } pPreviewData_rcDialogClient_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name pPreviewData_rcDialogFrame_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogFrame_left \
    op interface \
    ports { pPreviewData_rcDialogFrame_left { O 32 vector } pPreviewData_rcDialogFrame_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name pPreviewData_rcDialogFrame_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogFrame_top \
    op interface \
    ports { pPreviewData_rcDialogFrame_top { O 32 vector } pPreviewData_rcDialogFrame_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name pPreviewData_rcDialogFrame_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogFrame_right \
    op interface \
    ports { pPreviewData_rcDialogFrame_right { O 32 vector } pPreviewData_rcDialogFrame_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name pPreviewData_rcDialogFrame_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogFrame_bottom \
    op interface \
    ports { pPreviewData_rcDialogFrame_bottom { O 32 vector } pPreviewData_rcDialogFrame_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name pPreviewData_rcDialogCaption_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogCaption_left \
    op interface \
    ports { pPreviewData_rcDialogCaption_left { O 32 vector } pPreviewData_rcDialogCaption_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name pPreviewData_rcDialogCaption_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogCaption_top \
    op interface \
    ports { pPreviewData_rcDialogCaption_top { O 32 vector } pPreviewData_rcDialogCaption_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name pPreviewData_rcDialogCaption_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogCaption_right \
    op interface \
    ports { pPreviewData_rcDialogCaption_right { O 32 vector } pPreviewData_rcDialogCaption_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name pPreviewData_rcDialogCaption_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogCaption_bottom \
    op interface \
    ports { pPreviewData_rcDialogCaption_bottom { O 32 vector } pPreviewData_rcDialogCaption_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name pPreviewData_rcDialogCaptionButtons_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogCaptionButtons_left \
    op interface \
    ports { pPreviewData_rcDialogCaptionButtons_left { O 32 vector } pPreviewData_rcDialogCaptionButtons_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name pPreviewData_rcDialogCaptionButtons_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogCaptionButtons_top \
    op interface \
    ports { pPreviewData_rcDialogCaptionButtons_top { O 32 vector } pPreviewData_rcDialogCaptionButtons_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name pPreviewData_rcDialogCaptionButtons_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogCaptionButtons_right \
    op interface \
    ports { pPreviewData_rcDialogCaptionButtons_right { O 32 vector } pPreviewData_rcDialogCaptionButtons_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name pPreviewData_rcDialogCaptionButtons_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDialogCaptionButtons_bottom \
    op interface \
    ports { pPreviewData_rcDialogCaptionButtons_bottom { O 32 vector } pPreviewData_rcDialogCaptionButtons_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name pPreviewData_rcDesktop_left \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDesktop_left \
    op interface \
    ports { pPreviewData_rcDesktop_left { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name pPreviewData_rcDesktop_top \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDesktop_top \
    op interface \
    ports { pPreviewData_rcDesktop_top { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name pPreviewData_rcDesktop_right \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDesktop_right \
    op interface \
    ports { pPreviewData_rcDesktop_right { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name pPreviewData_rcDesktop_bottom \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcDesktop_bottom \
    op interface \
    ports { pPreviewData_rcDesktop_bottom { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name pPreviewData_rcActiveClient_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveClient_left \
    op interface \
    ports { pPreviewData_rcActiveClient_left { O 32 vector } pPreviewData_rcActiveClient_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name pPreviewData_rcActiveClient_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveClient_top \
    op interface \
    ports { pPreviewData_rcActiveClient_top { O 32 vector } pPreviewData_rcActiveClient_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name pPreviewData_rcActiveClient_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveClient_right \
    op interface \
    ports { pPreviewData_rcActiveClient_right { O 32 vector } pPreviewData_rcActiveClient_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name pPreviewData_rcActiveClient_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveClient_bottom \
    op interface \
    ports { pPreviewData_rcActiveClient_bottom { O 32 vector } pPreviewData_rcActiveClient_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name pPreviewData_rcActiveScroll_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveScroll_top \
    op interface \
    ports { pPreviewData_rcActiveScroll_top { O 32 vector } pPreviewData_rcActiveScroll_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name pPreviewData_rcActiveScroll_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveScroll_right \
    op interface \
    ports { pPreviewData_rcActiveScroll_right { O 32 vector } pPreviewData_rcActiveScroll_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name pPreviewData_rcActiveScroll_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveScroll_bottom \
    op interface \
    ports { pPreviewData_rcActiveScroll_bottom { O 32 vector } pPreviewData_rcActiveScroll_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name pPreviewData_rcActiveScroll_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveScroll_left \
    op interface \
    ports { pPreviewData_rcActiveScroll_left { O 32 vector } pPreviewData_rcActiveScroll_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name pPreviewData_cxScrollbar \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_cxScrollbar \
    op interface \
    ports { pPreviewData_cxScrollbar { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name pPreviewData_rcActiveFrame_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveFrame_left \
    op interface \
    ports { pPreviewData_rcActiveFrame_left { O 32 vector } pPreviewData_rcActiveFrame_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name pPreviewData_rcActiveFrame_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveFrame_top \
    op interface \
    ports { pPreviewData_rcActiveFrame_top { O 32 vector } pPreviewData_rcActiveFrame_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name pPreviewData_rcActiveFrame_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveFrame_right \
    op interface \
    ports { pPreviewData_rcActiveFrame_right { O 32 vector } pPreviewData_rcActiveFrame_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name pPreviewData_rcActiveFrame_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveFrame_bottom \
    op interface \
    ports { pPreviewData_rcActiveFrame_bottom { O 32 vector } pPreviewData_rcActiveFrame_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name pPreviewData_rcActiveMenuBar_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveMenuBar_left \
    op interface \
    ports { pPreviewData_rcActiveMenuBar_left { O 32 vector } pPreviewData_rcActiveMenuBar_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name pPreviewData_rcActiveMenuBar_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveMenuBar_top \
    op interface \
    ports { pPreviewData_rcActiveMenuBar_top { O 32 vector } pPreviewData_rcActiveMenuBar_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name pPreviewData_rcActiveMenuBar_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveMenuBar_right \
    op interface \
    ports { pPreviewData_rcActiveMenuBar_right { O 32 vector } pPreviewData_rcActiveMenuBar_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name pPreviewData_rcActiveMenuBar_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveMenuBar_bottom \
    op interface \
    ports { pPreviewData_rcActiveMenuBar_bottom { O 32 vector } pPreviewData_rcActiveMenuBar_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name pPreviewData_rcActiveCaption_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveCaption_left \
    op interface \
    ports { pPreviewData_rcActiveCaption_left { O 32 vector } pPreviewData_rcActiveCaption_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name pPreviewData_rcActiveCaption_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveCaption_top \
    op interface \
    ports { pPreviewData_rcActiveCaption_top { O 32 vector } pPreviewData_rcActiveCaption_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name pPreviewData_rcActiveCaption_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveCaption_right \
    op interface \
    ports { pPreviewData_rcActiveCaption_right { O 32 vector } pPreviewData_rcActiveCaption_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name pPreviewData_rcActiveCaption_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveCaption_bottom \
    op interface \
    ports { pPreviewData_rcActiveCaption_bottom { O 32 vector } pPreviewData_rcActiveCaption_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name pPreviewData_rcActiveCaptionButtons_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveCaptionButtons_left \
    op interface \
    ports { pPreviewData_rcActiveCaptionButtons_left { O 32 vector } pPreviewData_rcActiveCaptionButtons_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name pPreviewData_rcActiveCaptionButtons_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveCaptionButtons_top \
    op interface \
    ports { pPreviewData_rcActiveCaptionButtons_top { O 32 vector } pPreviewData_rcActiveCaptionButtons_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name pPreviewData_rcActiveCaptionButtons_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveCaptionButtons_right \
    op interface \
    ports { pPreviewData_rcActiveCaptionButtons_right { O 32 vector } pPreviewData_rcActiveCaptionButtons_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name pPreviewData_rcActiveCaptionButtons_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcActiveCaptionButtons_bottom \
    op interface \
    ports { pPreviewData_rcActiveCaptionButtons_bottom { O 32 vector } pPreviewData_rcActiveCaptionButtons_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name pPreviewData_rcInactiveCaption_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveCaption_left \
    op interface \
    ports { pPreviewData_rcInactiveCaption_left { O 32 vector } pPreviewData_rcInactiveCaption_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name pPreviewData_rcInactiveCaption_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveCaption_top \
    op interface \
    ports { pPreviewData_rcInactiveCaption_top { O 32 vector } pPreviewData_rcInactiveCaption_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name pPreviewData_rcInactiveCaption_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveCaption_right \
    op interface \
    ports { pPreviewData_rcInactiveCaption_right { O 32 vector } pPreviewData_rcInactiveCaption_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name pPreviewData_rcInactiveCaption_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveCaption_bottom \
    op interface \
    ports { pPreviewData_rcInactiveCaption_bottom { O 32 vector } pPreviewData_rcInactiveCaption_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name pPreviewData_rcInactiveFrame_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveFrame_left \
    op interface \
    ports { pPreviewData_rcInactiveFrame_left { O 32 vector } pPreviewData_rcInactiveFrame_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name pPreviewData_rcInactiveFrame_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveFrame_top \
    op interface \
    ports { pPreviewData_rcInactiveFrame_top { O 32 vector } pPreviewData_rcInactiveFrame_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name pPreviewData_rcInactiveFrame_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveFrame_right \
    op interface \
    ports { pPreviewData_rcInactiveFrame_right { O 32 vector } pPreviewData_rcInactiveFrame_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name pPreviewData_rcInactiveFrame_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveFrame_bottom \
    op interface \
    ports { pPreviewData_rcInactiveFrame_bottom { O 32 vector } pPreviewData_rcInactiveFrame_bottom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name pPreviewData_rcInactiveCaptionButtons_left \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveCaptionButtons_left \
    op interface \
    ports { pPreviewData_rcInactiveCaptionButtons_left { O 32 vector } pPreviewData_rcInactiveCaptionButtons_left_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name pPreviewData_rcInactiveCaptionButtons_top \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveCaptionButtons_top \
    op interface \
    ports { pPreviewData_rcInactiveCaptionButtons_top { O 32 vector } pPreviewData_rcInactiveCaptionButtons_top_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name pPreviewData_rcInactiveCaptionButtons_right \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveCaptionButtons_right \
    op interface \
    ports { pPreviewData_rcInactiveCaptionButtons_right { O 32 vector } pPreviewData_rcInactiveCaptionButtons_right_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name pPreviewData_rcInactiveCaptionButtons_bottom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pPreviewData_rcInactiveCaptionButtons_bottom \
    op interface \
    ports { pPreviewData_rcInactiveCaptionButtons_bottom { O 32 vector } pPreviewData_rcInactiveCaptionButtons_bottom_ap_vld { O 1 bit } } \
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


