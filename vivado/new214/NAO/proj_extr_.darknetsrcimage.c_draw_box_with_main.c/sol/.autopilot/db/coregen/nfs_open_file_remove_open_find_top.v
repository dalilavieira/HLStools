// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module nfs_open_file_remove_open_find_top (
nofp_nof_access,
nofp_nof_deny,
nofp_nof_d_r,
nofp_nof_d_r_drw,
accessMode,
denyMode,
newAccessMode,
newAccessMode_ap_vld,
newDenyMode,
newDenyMode_ap_vld,
delegated,
delegated_ap_vld,
ap_start,
ap_ready,
ap_done,
ap_idle
);

input [32 - 1:0] nofp_nof_access ;
input [32 - 1:0] nofp_nof_deny ;
input [32 - 1:0] nofp_nof_d_r ;
input [32 - 1:0] nofp_nof_d_r_drw ;
input [32 - 1:0] accessMode ;
input [32 - 1:0] denyMode ;
output [32 - 1:0] newAccessMode ;
output newAccessMode_ap_vld ;
output [32 - 1:0] newDenyMode ;
output newDenyMode_ap_vld ;
output [32 - 1:0] delegated ;
output delegated_ap_vld ;
input ap_start ;
output ap_ready ;
output ap_done ;
output ap_idle ;




nfs_open_file_remove_open_find nfs_open_file_remove_open_find_U(
    .nofp_nof_access(nofp_nof_access),
    .nofp_nof_deny(nofp_nof_deny),
    .nofp_nof_d_r(nofp_nof_d_r),
    .nofp_nof_d_r_drw(nofp_nof_d_r_drw),
    .accessMode(accessMode),
    .denyMode(denyMode),
    .newAccessMode(newAccessMode),
    .newAccessMode_ap_vld(newAccessMode_ap_vld),
    .newDenyMode(newDenyMode),
    .newDenyMode_ap_vld(newDenyMode_ap_vld),
    .delegated(delegated),
    .delegated_ap_vld(delegated_ap_vld),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

endmodule
