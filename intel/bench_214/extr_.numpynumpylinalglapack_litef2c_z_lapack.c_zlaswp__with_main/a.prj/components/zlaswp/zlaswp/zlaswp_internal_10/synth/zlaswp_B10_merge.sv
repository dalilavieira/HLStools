// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 19.4 (Release Build #64)
// 
// Legal Notice: Copyright 2019 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from zlaswp_B10_merge
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_B10_merge (
    input wire [31:0] in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316_0,
    input wire [0:0] in_lm3213_toi1_intcast561_0,
    input wire [0:0] in_memdep_1024_0,
    input wire [0:0] in_memdep_1195_0,
    input wire [0:0] in_memdep_712_0,
    input wire [0:0] in_memdep_873_0,
    input wire [0:0] in_notcmp193223_pop338_0,
    input wire [0:0] in_phi_decision209_xor_and_i0222_pop327_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316,
    output wire [0:0] out_lm3213_toi1_intcast561,
    output wire [0:0] out_memdep_1024,
    output wire [0:0] out_memdep_1195,
    output wire [0:0] out_memdep_712,
    output wire [0:0] out_memdep_873,
    output wire [0:0] out_notcmp193223_pop338,
    output wire [0:0] out_phi_decision209_xor_and_i0222_pop327,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316(GPOUT,12)
    assign out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316 = in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316_0;

    // out_lm3213_toi1_intcast561(GPOUT,13)
    assign out_lm3213_toi1_intcast561 = in_lm3213_toi1_intcast561_0;

    // out_memdep_1024(GPOUT,14)
    assign out_memdep_1024 = in_memdep_1024_0;

    // out_memdep_1195(GPOUT,15)
    assign out_memdep_1195 = in_memdep_1195_0;

    // out_memdep_712(GPOUT,16)
    assign out_memdep_712 = in_memdep_712_0;

    // out_memdep_873(GPOUT,17)
    assign out_memdep_873 = in_memdep_873_0;

    // out_notcmp193223_pop338(GPOUT,18)
    assign out_notcmp193223_pop338 = in_notcmp193223_pop338_0;

    // out_phi_decision209_xor_and_i0222_pop327(GPOUT,19)
    assign out_phi_decision209_xor_and_i0222_pop327 = in_phi_decision209_xor_and_i0222_pop327_0;

    // stall_out(LOGICAL,22)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,21)
    assign out_valid_out = in_valid_in_0;

endmodule
