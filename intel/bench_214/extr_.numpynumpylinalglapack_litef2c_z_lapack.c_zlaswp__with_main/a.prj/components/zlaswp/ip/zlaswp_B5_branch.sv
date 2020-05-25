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

// SystemVerilog created from zlaswp_B5_branch
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_B5_branch (
    input wire [31:0] in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi,
    input wire [31:0] in_c0_exe1,
    input wire [0:0] in_c0_exe3,
    input wire [0:0] in_c0_exe4,
    input wire [31:0] in_lm18611,
    input wire [31:0] in_lm19012,
    input wire [0:0] in_memdep_phi103_pop16,
    input wire [0:0] in_memdep_phi120_pop17,
    input wire [0:0] in_memdep_phi136_pop18,
    input wire [0:0] in_memdep_phi57_pop10,
    input wire [0:0] in_memdep_phi72_pop13,
    input wire [0:0] in_memdep_phi88_pop15,
    input wire [0:0] in_reduction_zlaswp_33,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_zlaswp35,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi,
    output wire [31:0] out_c0_exe1,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [31:0] out_lm18611,
    output wire [31:0] out_lm19012,
    output wire [0:0] out_memdep_phi103_pop16,
    output wire [0:0] out_memdep_phi120_pop17,
    output wire [0:0] out_memdep_phi136_pop18,
    output wire [0:0] out_memdep_phi57_pop10,
    output wire [0:0] out_memdep_phi72_pop13,
    output wire [0:0] out_memdep_phi88_pop15,
    output wire [0:0] out_reduction_zlaswp_33,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_unnamed_zlaswp35,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi(GPOUT,18)
    assign out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi = in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi;

    // out_c0_exe1(GPOUT,19)
    assign out_c0_exe1 = in_c0_exe1;

    // out_c0_exe3(GPOUT,20)
    assign out_c0_exe3 = in_c0_exe3;

    // out_c0_exe4(GPOUT,21)
    assign out_c0_exe4 = in_c0_exe4;

    // out_lm18611(GPOUT,22)
    assign out_lm18611 = in_lm18611;

    // out_lm19012(GPOUT,23)
    assign out_lm19012 = in_lm19012;

    // out_memdep_phi103_pop16(GPOUT,24)
    assign out_memdep_phi103_pop16 = in_memdep_phi103_pop16;

    // out_memdep_phi120_pop17(GPOUT,25)
    assign out_memdep_phi120_pop17 = in_memdep_phi120_pop17;

    // out_memdep_phi136_pop18(GPOUT,26)
    assign out_memdep_phi136_pop18 = in_memdep_phi136_pop18;

    // out_memdep_phi57_pop10(GPOUT,27)
    assign out_memdep_phi57_pop10 = in_memdep_phi57_pop10;

    // out_memdep_phi72_pop13(GPOUT,28)
    assign out_memdep_phi72_pop13 = in_memdep_phi72_pop13;

    // out_memdep_phi88_pop15(GPOUT,29)
    assign out_memdep_phi88_pop15 = in_memdep_phi88_pop15;

    // out_reduction_zlaswp_33(GPOUT,30)
    assign out_reduction_zlaswp_33 = in_reduction_zlaswp_33;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,31)
    assign out_stall_out = stall_out_q;

    // out_unnamed_zlaswp35(GPOUT,32)
    assign out_unnamed_zlaswp35 = in_unnamed_zlaswp35;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = in_valid_in;

endmodule
