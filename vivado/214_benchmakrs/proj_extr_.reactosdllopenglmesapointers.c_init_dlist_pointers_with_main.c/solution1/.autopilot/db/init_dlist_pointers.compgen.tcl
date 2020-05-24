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
    name table_Viewport \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Viewport \
    op interface \
    ports { table_Viewport { O 32 vector } table_Viewport_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name table_VertexPointer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_VertexPointer \
    op interface \
    ports { table_VertexPointer { O 32 vector } table_VertexPointer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name table_Vertex3fv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Vertex3fv \
    op interface \
    ports { table_Vertex3fv { O 32 vector } table_Vertex3fv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name table_Vertex4f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Vertex4f \
    op interface \
    ports { table_Vertex4f { O 32 vector } table_Vertex4f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name table_Vertex3f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Vertex3f \
    op interface \
    ports { table_Vertex3f { O 32 vector } table_Vertex3f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name table_Vertex2f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Vertex2f \
    op interface \
    ports { table_Vertex2f { O 32 vector } table_Vertex2f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name table_Translatef \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Translatef \
    op interface \
    ports { table_Translatef { O 32 vector } table_Translatef_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name table_TexParameterfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexParameterfv \
    op interface \
    ports { table_TexParameterfv { O 32 vector } table_TexParameterfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name table_TexSubImage2D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexSubImage2D \
    op interface \
    ports { table_TexSubImage2D { O 32 vector } table_TexSubImage2D_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name table_TexSubImage1D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexSubImage1D \
    op interface \
    ports { table_TexSubImage1D { O 32 vector } table_TexSubImage1D_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name table_TexImage2D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexImage2D \
    op interface \
    ports { table_TexImage2D { O 32 vector } table_TexImage2D_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name table_TexImage1D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexImage1D \
    op interface \
    ports { table_TexImage1D { O 32 vector } table_TexImage1D_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name table_TexGenfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexGenfv \
    op interface \
    ports { table_TexGenfv { O 32 vector } table_TexGenfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name table_TexEnvfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexEnvfv \
    op interface \
    ports { table_TexEnvfv { O 32 vector } table_TexEnvfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name table_TexCoordPointer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexCoordPointer \
    op interface \
    ports { table_TexCoordPointer { O 32 vector } table_TexCoordPointer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name table_TexCoord4f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexCoord4f \
    op interface \
    ports { table_TexCoord4f { O 32 vector } table_TexCoord4f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name table_TexCoord2f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_TexCoord2f \
    op interface \
    ports { table_TexCoord2f { O 32 vector } table_TexCoord2f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name table_StencilOp \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_StencilOp \
    op interface \
    ports { table_StencilOp { O 32 vector } table_StencilOp_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name table_StencilMask \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_StencilMask \
    op interface \
    ports { table_StencilMask { O 32 vector } table_StencilMask_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name table_StencilFunc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_StencilFunc \
    op interface \
    ports { table_StencilFunc { O 32 vector } table_StencilFunc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name table_ShadeModel \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ShadeModel \
    op interface \
    ports { table_ShadeModel { O 32 vector } table_ShadeModel_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name table_SelectBuffer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_SelectBuffer \
    op interface \
    ports { table_SelectBuffer { O 32 vector } table_SelectBuffer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name table_Scissor \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Scissor \
    op interface \
    ports { table_Scissor { O 32 vector } table_Scissor_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name table_Scalef \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Scalef \
    op interface \
    ports { table_Scalef { O 32 vector } table_Scalef_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name table_Rotatef \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Rotatef \
    op interface \
    ports { table_Rotatef { O 32 vector } table_Rotatef_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name table_RenderMode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_RenderMode \
    op interface \
    ports { table_RenderMode { O 32 vector } table_RenderMode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name table_Rectf \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Rectf \
    op interface \
    ports { table_Rectf { O 32 vector } table_Rectf_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name table_ReadPixels \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ReadPixels \
    op interface \
    ports { table_ReadPixels { O 32 vector } table_ReadPixels_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name table_ReadBuffer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ReadBuffer \
    op interface \
    ports { table_ReadBuffer { O 32 vector } table_ReadBuffer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name table_RasterPos4f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_RasterPos4f \
    op interface \
    ports { table_RasterPos4f { O 32 vector } table_RasterPos4f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name table_PushName \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PushName \
    op interface \
    ports { table_PushName { O 32 vector } table_PushName_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name table_PushMatrix \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PushMatrix \
    op interface \
    ports { table_PushMatrix { O 32 vector } table_PushMatrix_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name table_PushClientAttrib \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PushClientAttrib \
    op interface \
    ports { table_PushClientAttrib { O 32 vector } table_PushClientAttrib_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name table_PushAttrib \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PushAttrib \
    op interface \
    ports { table_PushAttrib { O 32 vector } table_PushAttrib_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name table_PrioritizeTextures \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PrioritizeTextures \
    op interface \
    ports { table_PrioritizeTextures { O 32 vector } table_PrioritizeTextures_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name table_PopName \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PopName \
    op interface \
    ports { table_PopName { O 32 vector } table_PopName_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name table_PopMatrix \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PopMatrix \
    op interface \
    ports { table_PopMatrix { O 32 vector } table_PopMatrix_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name table_PopClientAttrib \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PopClientAttrib \
    op interface \
    ports { table_PopClientAttrib { O 32 vector } table_PopClientAttrib_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name table_PopAttrib \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PopAttrib \
    op interface \
    ports { table_PopAttrib { O 32 vector } table_PopAttrib_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name table_PolygonStipple \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PolygonStipple \
    op interface \
    ports { table_PolygonStipple { O 32 vector } table_PolygonStipple_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name table_PolygonOffset \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PolygonOffset \
    op interface \
    ports { table_PolygonOffset { O 32 vector } table_PolygonOffset_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name table_PolygonMode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PolygonMode \
    op interface \
    ports { table_PolygonMode { O 32 vector } table_PolygonMode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name table_PointSize \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PointSize \
    op interface \
    ports { table_PointSize { O 32 vector } table_PointSize_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name table_PixelZoom \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PixelZoom \
    op interface \
    ports { table_PixelZoom { O 32 vector } table_PixelZoom_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name table_PixelTransferf \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PixelTransferf \
    op interface \
    ports { table_PixelTransferf { O 32 vector } table_PixelTransferf_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name table_PixelStorei \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PixelStorei \
    op interface \
    ports { table_PixelStorei { O 32 vector } table_PixelStorei_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name table_PixelMapfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PixelMapfv \
    op interface \
    ports { table_PixelMapfv { O 32 vector } table_PixelMapfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name table_PassThrough \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_PassThrough \
    op interface \
    ports { table_PassThrough { O 32 vector } table_PassThrough_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name table_Ortho \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Ortho \
    op interface \
    ports { table_Ortho { O 32 vector } table_Ortho_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name table_NormalPointer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_NormalPointer \
    op interface \
    ports { table_NormalPointer { O 32 vector } table_NormalPointer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name table_Normal3fv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Normal3fv \
    op interface \
    ports { table_Normal3fv { O 32 vector } table_Normal3fv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name table_Normal3f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Normal3f \
    op interface \
    ports { table_Normal3f { O 32 vector } table_Normal3f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name table_NewList \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_NewList \
    op interface \
    ports { table_NewList { O 32 vector } table_NewList_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name table_MultMatrixf \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_MultMatrixf \
    op interface \
    ports { table_MultMatrixf { O 32 vector } table_MultMatrixf_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name table_MatrixMode \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_MatrixMode \
    op interface \
    ports { table_MatrixMode { O 32 vector } table_MatrixMode_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name table_Materialfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Materialfv \
    op interface \
    ports { table_Materialfv { O 32 vector } table_Materialfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name table_MapGrid2f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_MapGrid2f \
    op interface \
    ports { table_MapGrid2f { O 32 vector } table_MapGrid2f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name table_MapGrid1f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_MapGrid1f \
    op interface \
    ports { table_MapGrid1f { O 32 vector } table_MapGrid1f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name table_Map2f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Map2f \
    op interface \
    ports { table_Map2f { O 32 vector } table_Map2f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name table_Map1f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Map1f \
    op interface \
    ports { table_Map1f { O 32 vector } table_Map1f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name table_LogicOp \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_LogicOp \
    op interface \
    ports { table_LogicOp { O 32 vector } table_LogicOp_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name table_LoadName \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_LoadName \
    op interface \
    ports { table_LoadName { O 32 vector } table_LoadName_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name table_LoadMatrixf \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_LoadMatrixf \
    op interface \
    ports { table_LoadMatrixf { O 32 vector } table_LoadMatrixf_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name table_LoadIdentity \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_LoadIdentity \
    op interface \
    ports { table_LoadIdentity { O 32 vector } table_LoadIdentity_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name table_ListBase \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ListBase \
    op interface \
    ports { table_ListBase { O 32 vector } table_ListBase_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name table_LineWidth \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_LineWidth \
    op interface \
    ports { table_LineWidth { O 32 vector } table_LineWidth_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name table_LineStipple \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_LineStipple \
    op interface \
    ports { table_LineStipple { O 32 vector } table_LineStipple_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name table_Lightfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Lightfv \
    op interface \
    ports { table_Lightfv { O 32 vector } table_Lightfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name table_LightModelfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_LightModelfv \
    op interface \
    ports { table_LightModelfv { O 32 vector } table_LightModelfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name table_IsList \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_IsList \
    op interface \
    ports { table_IsList { O 32 vector } table_IsList_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name table_IsTexture \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_IsTexture \
    op interface \
    ports { table_IsTexture { O 32 vector } table_IsTexture_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name table_IsEnabled \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_IsEnabled \
    op interface \
    ports { table_IsEnabled { O 32 vector } table_IsEnabled_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name table_InterleavedArrays \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_InterleavedArrays \
    op interface \
    ports { table_InterleavedArrays { O 32 vector } table_InterleavedArrays_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name table_InitNames \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_InitNames \
    op interface \
    ports { table_InitNames { O 32 vector } table_InitNames_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name table_IndexPointer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_IndexPointer \
    op interface \
    ports { table_IndexPointer { O 32 vector } table_IndexPointer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name table_Indexi \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Indexi \
    op interface \
    ports { table_Indexi { O 32 vector } table_Indexi_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name table_Indexf \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Indexf \
    op interface \
    ports { table_Indexf { O 32 vector } table_Indexf_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name table_IndexMask \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_IndexMask \
    op interface \
    ports { table_IndexMask { O 32 vector } table_IndexMask_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name table_Hint \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Hint \
    op interface \
    ports { table_Hint { O 32 vector } table_Hint_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name table_GetTexParameteriv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexParameteriv \
    op interface \
    ports { table_GetTexParameteriv { O 32 vector } table_GetTexParameteriv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name table_GetTexParameterfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexParameterfv \
    op interface \
    ports { table_GetTexParameterfv { O 32 vector } table_GetTexParameterfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name table_GetTexLevelParameteriv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexLevelParameteriv \
    op interface \
    ports { table_GetTexLevelParameteriv { O 32 vector } table_GetTexLevelParameteriv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name table_GetTexLevelParameterfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexLevelParameterfv \
    op interface \
    ports { table_GetTexLevelParameterfv { O 32 vector } table_GetTexLevelParameterfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name table_GetTexImage \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexImage \
    op interface \
    ports { table_GetTexImage { O 32 vector } table_GetTexImage_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name table_GetTexGeniv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexGeniv \
    op interface \
    ports { table_GetTexGeniv { O 32 vector } table_GetTexGeniv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name table_GetTexGenfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexGenfv \
    op interface \
    ports { table_GetTexGenfv { O 32 vector } table_GetTexGenfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name table_GetTexGendv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexGendv \
    op interface \
    ports { table_GetTexGendv { O 32 vector } table_GetTexGendv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name table_GetTexEnviv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexEnviv \
    op interface \
    ports { table_GetTexEnviv { O 32 vector } table_GetTexEnviv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name table_GetTexEnvfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetTexEnvfv \
    op interface \
    ports { table_GetTexEnvfv { O 32 vector } table_GetTexEnvfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name table_GetPolygonStipple \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetPolygonStipple \
    op interface \
    ports { table_GetPolygonStipple { O 32 vector } table_GetPolygonStipple_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name table_GetPointerv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetPointerv \
    op interface \
    ports { table_GetPointerv { O 32 vector } table_GetPointerv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name table_GetPixelMapusv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetPixelMapusv \
    op interface \
    ports { table_GetPixelMapusv { O 32 vector } table_GetPixelMapusv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name table_GetPixelMapuiv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetPixelMapuiv \
    op interface \
    ports { table_GetPixelMapuiv { O 32 vector } table_GetPixelMapuiv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name table_GetPixelMapfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetPixelMapfv \
    op interface \
    ports { table_GetPixelMapfv { O 32 vector } table_GetPixelMapfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name table_GetMaterialiv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetMaterialiv \
    op interface \
    ports { table_GetMaterialiv { O 32 vector } table_GetMaterialiv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name table_GetMaterialfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetMaterialfv \
    op interface \
    ports { table_GetMaterialfv { O 32 vector } table_GetMaterialfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name table_GetMapiv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetMapiv \
    op interface \
    ports { table_GetMapiv { O 32 vector } table_GetMapiv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name table_GetMapfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetMapfv \
    op interface \
    ports { table_GetMapfv { O 32 vector } table_GetMapfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name table_GetMapdv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetMapdv \
    op interface \
    ports { table_GetMapdv { O 32 vector } table_GetMapdv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name table_GetLightiv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetLightiv \
    op interface \
    ports { table_GetLightiv { O 32 vector } table_GetLightiv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name table_GetLightfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetLightfv \
    op interface \
    ports { table_GetLightfv { O 32 vector } table_GetLightfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name table_GetString \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetString \
    op interface \
    ports { table_GetString { O 32 vector } table_GetString_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name table_GetIntegerv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetIntegerv \
    op interface \
    ports { table_GetIntegerv { O 32 vector } table_GetIntegerv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name table_GetFloatv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetFloatv \
    op interface \
    ports { table_GetFloatv { O 32 vector } table_GetFloatv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name table_GetError \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetError \
    op interface \
    ports { table_GetError { O 32 vector } table_GetError_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name table_GetDoublev \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetDoublev \
    op interface \
    ports { table_GetDoublev { O 32 vector } table_GetDoublev_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name table_GetColorTableParameteriv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetColorTableParameteriv \
    op interface \
    ports { table_GetColorTableParameteriv { O 32 vector } table_GetColorTableParameteriv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name table_GetColorTable \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetColorTable \
    op interface \
    ports { table_GetColorTable { O 32 vector } table_GetColorTable_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name table_GetClipPlane \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetClipPlane \
    op interface \
    ports { table_GetClipPlane { O 32 vector } table_GetClipPlane_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name table_GetBooleanv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GetBooleanv \
    op interface \
    ports { table_GetBooleanv { O 32 vector } table_GetBooleanv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name table_GenTextures \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GenTextures \
    op interface \
    ports { table_GenTextures { O 32 vector } table_GenTextures_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name table_GenLists \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_GenLists \
    op interface \
    ports { table_GenLists { O 32 vector } table_GenLists_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name table_Frustum \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Frustum \
    op interface \
    ports { table_Frustum { O 32 vector } table_Frustum_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name table_FrontFace \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_FrontFace \
    op interface \
    ports { table_FrontFace { O 32 vector } table_FrontFace_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name table_Fogfv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Fogfv \
    op interface \
    ports { table_Fogfv { O 32 vector } table_Fogfv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name table_Flush \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Flush \
    op interface \
    ports { table_Flush { O 32 vector } table_Flush_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name table_Finish \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Finish \
    op interface \
    ports { table_Finish { O 32 vector } table_Finish_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name table_FeedbackBuffer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_FeedbackBuffer \
    op interface \
    ports { table_FeedbackBuffer { O 32 vector } table_FeedbackBuffer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name table_EvalPoint2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EvalPoint2 \
    op interface \
    ports { table_EvalPoint2 { O 32 vector } table_EvalPoint2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name table_EvalPoint1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EvalPoint1 \
    op interface \
    ports { table_EvalPoint1 { O 32 vector } table_EvalPoint1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name table_EvalMesh2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EvalMesh2 \
    op interface \
    ports { table_EvalMesh2 { O 32 vector } table_EvalMesh2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name table_EvalMesh1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EvalMesh1 \
    op interface \
    ports { table_EvalMesh1 { O 32 vector } table_EvalMesh1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name table_EvalCoord2f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EvalCoord2f \
    op interface \
    ports { table_EvalCoord2f { O 32 vector } table_EvalCoord2f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name table_EvalCoord1f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EvalCoord1f \
    op interface \
    ports { table_EvalCoord1f { O 32 vector } table_EvalCoord1f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name table_EndList \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EndList \
    op interface \
    ports { table_EndList { O 32 vector } table_EndList_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name table_End \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_End \
    op interface \
    ports { table_End { O 32 vector } table_End_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name table_EnableClientState \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EnableClientState \
    op interface \
    ports { table_EnableClientState { O 32 vector } table_EnableClientState_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name table_Enable \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Enable \
    op interface \
    ports { table_Enable { O 32 vector } table_Enable_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name table_EdgeFlagPointer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EdgeFlagPointer \
    op interface \
    ports { table_EdgeFlagPointer { O 32 vector } table_EdgeFlagPointer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name table_EdgeFlag \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_EdgeFlag \
    op interface \
    ports { table_EdgeFlag { O 32 vector } table_EdgeFlag_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name table_DrawPixels \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DrawPixels \
    op interface \
    ports { table_DrawPixels { O 32 vector } table_DrawPixels_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name table_DrawElements \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DrawElements \
    op interface \
    ports { table_DrawElements { O 32 vector } table_DrawElements_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name table_DrawBuffer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DrawBuffer \
    op interface \
    ports { table_DrawBuffer { O 32 vector } table_DrawBuffer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name table_DrawArrays \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DrawArrays \
    op interface \
    ports { table_DrawArrays { O 32 vector } table_DrawArrays_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name table_DisableClientState \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DisableClientState \
    op interface \
    ports { table_DisableClientState { O 32 vector } table_DisableClientState_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name table_Disable \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Disable \
    op interface \
    ports { table_Disable { O 32 vector } table_Disable_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name table_DepthRange \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DepthRange \
    op interface \
    ports { table_DepthRange { O 32 vector } table_DepthRange_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name table_DepthMask \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DepthMask \
    op interface \
    ports { table_DepthMask { O 32 vector } table_DepthMask_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name table_DepthFunc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DepthFunc \
    op interface \
    ports { table_DepthFunc { O 32 vector } table_DepthFunc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name table_DeleteTextures \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DeleteTextures \
    op interface \
    ports { table_DeleteTextures { O 32 vector } table_DeleteTextures_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name table_DeleteLists \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_DeleteLists \
    op interface \
    ports { table_DeleteLists { O 32 vector } table_DeleteLists_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name table_CullFace \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_CullFace \
    op interface \
    ports { table_CullFace { O 32 vector } table_CullFace_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name table_CopyTexSubImage2D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_CopyTexSubImage2D \
    op interface \
    ports { table_CopyTexSubImage2D { O 32 vector } table_CopyTexSubImage2D_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name table_CopyTexSubImage1D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_CopyTexSubImage1D \
    op interface \
    ports { table_CopyTexSubImage1D { O 32 vector } table_CopyTexSubImage1D_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name table_CopyTexImage2D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_CopyTexImage2D \
    op interface \
    ports { table_CopyTexImage2D { O 32 vector } table_CopyTexImage2D_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name table_CopyTexImage1D \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_CopyTexImage1D \
    op interface \
    ports { table_CopyTexImage1D { O 32 vector } table_CopyTexImage1D_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name table_CopyPixels \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_CopyPixels \
    op interface \
    ports { table_CopyPixels { O 32 vector } table_CopyPixels_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name table_ColorSubTable \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ColorSubTable \
    op interface \
    ports { table_ColorSubTable { O 32 vector } table_ColorSubTable_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name table_ColorTable \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ColorTable \
    op interface \
    ports { table_ColorTable { O 32 vector } table_ColorTable_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name table_ColorPointer \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ColorPointer \
    op interface \
    ports { table_ColorPointer { O 32 vector } table_ColorPointer_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name table_ColorMaterial \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ColorMaterial \
    op interface \
    ports { table_ColorMaterial { O 32 vector } table_ColorMaterial_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name table_ColorMask \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ColorMask \
    op interface \
    ports { table_ColorMask { O 32 vector } table_ColorMask_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name table_Color4ubv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Color4ubv \
    op interface \
    ports { table_Color4ubv { O 32 vector } table_Color4ubv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name table_Color4ub \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Color4ub \
    op interface \
    ports { table_Color4ub { O 32 vector } table_Color4ub_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name table_Color4fv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Color4fv \
    op interface \
    ports { table_Color4fv { O 32 vector } table_Color4fv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name table_Color4f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Color4f \
    op interface \
    ports { table_Color4f { O 32 vector } table_Color4f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name table_Color3fv \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Color3fv \
    op interface \
    ports { table_Color3fv { O 32 vector } table_Color3fv_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name table_Color3f \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Color3f \
    op interface \
    ports { table_Color3f { O 32 vector } table_Color3f_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name table_ClipPlane \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ClipPlane \
    op interface \
    ports { table_ClipPlane { O 32 vector } table_ClipPlane_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name table_ClearStencil \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ClearStencil \
    op interface \
    ports { table_ClearStencil { O 32 vector } table_ClearStencil_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name table_ClearIndex \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ClearIndex \
    op interface \
    ports { table_ClearIndex { O 32 vector } table_ClearIndex_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name table_ClearDepth \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ClearDepth \
    op interface \
    ports { table_ClearDepth { O 32 vector } table_ClearDepth_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name table_ClearColor \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ClearColor \
    op interface \
    ports { table_ClearColor { O 32 vector } table_ClearColor_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name table_ClearAccum \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ClearAccum \
    op interface \
    ports { table_ClearAccum { O 32 vector } table_ClearAccum_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name table_Clear \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Clear \
    op interface \
    ports { table_Clear { O 32 vector } table_Clear_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name table_CallLists \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_CallLists \
    op interface \
    ports { table_CallLists { O 32 vector } table_CallLists_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name table_CallList \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_CallList \
    op interface \
    ports { table_CallList { O 32 vector } table_CallList_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name table_BlendFunc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_BlendFunc \
    op interface \
    ports { table_BlendFunc { O 32 vector } table_BlendFunc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name table_Bitmap \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Bitmap \
    op interface \
    ports { table_Bitmap { O 32 vector } table_Bitmap_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name table_BindTexture \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_BindTexture \
    op interface \
    ports { table_BindTexture { O 32 vector } table_BindTexture_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name table_Begin \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Begin \
    op interface \
    ports { table_Begin { O 32 vector } table_Begin_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name table_ArrayElement \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_ArrayElement \
    op interface \
    ports { table_ArrayElement { O 32 vector } table_ArrayElement_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name table_AreTexturesResident \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_AreTexturesResident \
    op interface \
    ports { table_AreTexturesResident { O 32 vector } table_AreTexturesResident_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name table_AlphaFunc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_AlphaFunc \
    op interface \
    ports { table_AlphaFunc { O 32 vector } table_AlphaFunc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name table_Accum \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_table_Accum \
    op interface \
    ports { table_Accum { O 32 vector } table_Accum_ap_vld { O 1 bit } } \
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


