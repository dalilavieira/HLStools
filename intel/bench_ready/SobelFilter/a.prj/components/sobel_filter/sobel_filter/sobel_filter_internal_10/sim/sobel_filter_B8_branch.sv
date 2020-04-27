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

// SystemVerilog created from sobel_filter_B8_branch
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B8_branch (
    input wire [0:0] in_c0_exe10,
    input wire [0:0] in_c0_exe11,
    input wire [0:0] in_c0_exe12,
    input wire [0:0] in_c0_exe13,
    input wire [31:0] in_c0_exe1308,
    input wire [0:0] in_c0_exe14,
    input wire [0:0] in_c0_exe15,
    input wire [31:0] in_c0_exe2309,
    input wire [31:0] in_c0_exe3310,
    input wire [63:0] in_c0_exe4311,
    input wire [0:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_c0_exe9,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_c0_exe5312_0_tpl,
    input wire [31:0] in_c0_exe5312_1_tpl,
    input wire [31:0] in_c0_exe5312_2_tpl,
    input wire [31:0] in_c0_exe5312_3_tpl,
    input wire [31:0] in_c0_exe5312_4_tpl,
    input wire [31:0] in_c0_exe5312_5_tpl,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [31:0] out_c0_exe1308,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [31:0] out_c0_exe2309,
    output wire [31:0] out_c0_exe3310,
    output wire [63:0] out_c0_exe4311,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [31:0] out_c0_exe5312_0_tpl,
    output wire [31:0] out_c0_exe5312_1_tpl,
    output wire [31:0] out_c0_exe5312_2_tpl,
    output wire [31:0] out_c0_exe5312_3_tpl,
    output wire [31:0] out_c0_exe5312_4_tpl,
    output wire [31:0] out_c0_exe5312_5_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10(GPOUT,24)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,25)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,26)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe13(GPOUT,27)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe1308(GPOUT,28)
    assign out_c0_exe1308 = in_c0_exe1308;

    // out_c0_exe14(GPOUT,29)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe15(GPOUT,30)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe2309(GPOUT,31)
    assign out_c0_exe2309 = in_c0_exe2309;

    // out_c0_exe3310(GPOUT,32)
    assign out_c0_exe3310 = in_c0_exe3310;

    // out_c0_exe4311(GPOUT,33)
    assign out_c0_exe4311 = in_c0_exe4311;

    // out_c0_exe7(GPOUT,34)
    assign out_c0_exe7 = in_c0_exe7;

    // out_c0_exe8(GPOUT,35)
    assign out_c0_exe8 = in_c0_exe8;

    // out_c0_exe9(GPOUT,36)
    assign out_c0_exe9 = in_c0_exe9;

    // stall_out(LOGICAL,2)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,37)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,38)
    assign out_valid_out_0 = in_valid_in;

    // out_c0_exe5312_0_tpl(GPOUT,39)
    assign out_c0_exe5312_0_tpl = in_c0_exe5312_0_tpl;

    // out_c0_exe5312_1_tpl(GPOUT,40)
    assign out_c0_exe5312_1_tpl = in_c0_exe5312_1_tpl;

    // out_c0_exe5312_2_tpl(GPOUT,41)
    assign out_c0_exe5312_2_tpl = in_c0_exe5312_2_tpl;

    // out_c0_exe5312_3_tpl(GPOUT,42)
    assign out_c0_exe5312_3_tpl = in_c0_exe5312_3_tpl;

    // out_c0_exe5312_4_tpl(GPOUT,43)
    assign out_c0_exe5312_4_tpl = in_c0_exe5312_4_tpl;

    // out_c0_exe5312_5_tpl(GPOUT,44)
    assign out_c0_exe5312_5_tpl = in_c0_exe5312_5_tpl;

endmodule
