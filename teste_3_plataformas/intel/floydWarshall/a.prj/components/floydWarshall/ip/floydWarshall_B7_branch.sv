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

// SystemVerilog created from floydWarshall_B7_branch
// SystemVerilog created on Mon Apr  6 10:18:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_B7_branch (
    input wire [31:0] in_A_sroa_0_4_replace_phi,
    input wire [31:0] in_A_sroa_12_4_replace_phi,
    input wire [31:0] in_A_sroa_17_4_replace_phi,
    input wire [31:0] in_A_sroa_22_4_replace_phi,
    input wire [31:0] in_A_sroa_27_4_replace_phi,
    input wire [31:0] in_A_sroa_32_4_replace_phi,
    input wire [31:0] in_A_sroa_37_4_replace_phi,
    input wire [31:0] in_A_sroa_42_4_replace_phi,
    input wire [31:0] in_A_sroa_47_4_replace_phi,
    input wire [31:0] in_A_sroa_52_4_replace_phi,
    input wire [31:0] in_A_sroa_57_4_replace_phi,
    input wire [31:0] in_A_sroa_62_4_replace_phi,
    input wire [31:0] in_A_sroa_67_4_replace_phi,
    input wire [31:0] in_A_sroa_72_4_replace_phi,
    input wire [31:0] in_A_sroa_77_4_replace_phi,
    input wire [31:0] in_A_sroa_7_4_replace_phi,
    input wire [0:0] in_c0_exe1255,
    input wire [0:0] in_c0_exe2256,
    input wire [31:0] in_c0_exe3257,
    input wire [31:0] in_c0_exe4258,
    input wire [31:0] in_c0_exe6,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_A_sroa_0_4_replace_phi,
    output wire [31:0] out_A_sroa_12_4_replace_phi,
    output wire [31:0] out_A_sroa_17_4_replace_phi,
    output wire [31:0] out_A_sroa_22_4_replace_phi,
    output wire [31:0] out_A_sroa_27_4_replace_phi,
    output wire [31:0] out_A_sroa_32_4_replace_phi,
    output wire [31:0] out_A_sroa_37_4_replace_phi,
    output wire [31:0] out_A_sroa_42_4_replace_phi,
    output wire [31:0] out_A_sroa_47_4_replace_phi,
    output wire [31:0] out_A_sroa_52_4_replace_phi,
    output wire [31:0] out_A_sroa_57_4_replace_phi,
    output wire [31:0] out_A_sroa_62_4_replace_phi,
    output wire [31:0] out_A_sroa_67_4_replace_phi,
    output wire [31:0] out_A_sroa_72_4_replace_phi,
    output wire [31:0] out_A_sroa_77_4_replace_phi,
    output wire [31:0] out_A_sroa_7_4_replace_phi,
    output wire [0:0] out_c0_exe1255,
    output wire [0:0] out_c0_exe2256,
    output wire [31:0] out_c0_exe3257,
    output wire [31:0] out_c0_exe4258,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_A_sroa_0_4_replace_phi(GPOUT,25)
    assign out_A_sroa_0_4_replace_phi = in_A_sroa_0_4_replace_phi;

    // out_A_sroa_12_4_replace_phi(GPOUT,26)
    assign out_A_sroa_12_4_replace_phi = in_A_sroa_12_4_replace_phi;

    // out_A_sroa_17_4_replace_phi(GPOUT,27)
    assign out_A_sroa_17_4_replace_phi = in_A_sroa_17_4_replace_phi;

    // out_A_sroa_22_4_replace_phi(GPOUT,28)
    assign out_A_sroa_22_4_replace_phi = in_A_sroa_22_4_replace_phi;

    // out_A_sroa_27_4_replace_phi(GPOUT,29)
    assign out_A_sroa_27_4_replace_phi = in_A_sroa_27_4_replace_phi;

    // out_A_sroa_32_4_replace_phi(GPOUT,30)
    assign out_A_sroa_32_4_replace_phi = in_A_sroa_32_4_replace_phi;

    // out_A_sroa_37_4_replace_phi(GPOUT,31)
    assign out_A_sroa_37_4_replace_phi = in_A_sroa_37_4_replace_phi;

    // out_A_sroa_42_4_replace_phi(GPOUT,32)
    assign out_A_sroa_42_4_replace_phi = in_A_sroa_42_4_replace_phi;

    // out_A_sroa_47_4_replace_phi(GPOUT,33)
    assign out_A_sroa_47_4_replace_phi = in_A_sroa_47_4_replace_phi;

    // out_A_sroa_52_4_replace_phi(GPOUT,34)
    assign out_A_sroa_52_4_replace_phi = in_A_sroa_52_4_replace_phi;

    // out_A_sroa_57_4_replace_phi(GPOUT,35)
    assign out_A_sroa_57_4_replace_phi = in_A_sroa_57_4_replace_phi;

    // out_A_sroa_62_4_replace_phi(GPOUT,36)
    assign out_A_sroa_62_4_replace_phi = in_A_sroa_62_4_replace_phi;

    // out_A_sroa_67_4_replace_phi(GPOUT,37)
    assign out_A_sroa_67_4_replace_phi = in_A_sroa_67_4_replace_phi;

    // out_A_sroa_72_4_replace_phi(GPOUT,38)
    assign out_A_sroa_72_4_replace_phi = in_A_sroa_72_4_replace_phi;

    // out_A_sroa_77_4_replace_phi(GPOUT,39)
    assign out_A_sroa_77_4_replace_phi = in_A_sroa_77_4_replace_phi;

    // out_A_sroa_7_4_replace_phi(GPOUT,40)
    assign out_A_sroa_7_4_replace_phi = in_A_sroa_7_4_replace_phi;

    // out_c0_exe1255(GPOUT,41)
    assign out_c0_exe1255 = in_c0_exe1255;

    // out_c0_exe2256(GPOUT,42)
    assign out_c0_exe2256 = in_c0_exe2256;

    // out_c0_exe3257(GPOUT,43)
    assign out_c0_exe3257 = in_c0_exe3257;

    // out_c0_exe4258(GPOUT,44)
    assign out_c0_exe4258 = in_c0_exe4258;

    // out_c0_exe6(GPOUT,45)
    assign out_c0_exe6 = in_c0_exe6;

    // stall_out(LOGICAL,48)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,46)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,47)
    assign out_valid_out_0 = in_valid_in;

endmodule
