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

// SystemVerilog created from sobel_filter_B13_branch
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B13_branch (
    input wire [0:0] in_c0_exe10403,
    input wire [0:0] in_c0_exe11404,
    input wire [0:0] in_c0_exe12405,
    input wire [0:0] in_c0_exe13406,
    input wire [31:0] in_c0_exe1394,
    input wire [31:0] in_c0_exe2395,
    input wire [63:0] in_c0_exe3396,
    input wire [31:0] in_c0_exe4397,
    input wire [0:0] in_c0_exe7400,
    input wire [0:0] in_c0_exe8401,
    input wire [0:0] in_c0_exe9402,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_c0_exe5398_0_tpl,
    input wire [31:0] in_c0_exe5398_1_tpl,
    input wire [31:0] in_c0_exe5398_2_tpl,
    input wire [31:0] in_c0_exe5398_3_tpl,
    input wire [31:0] in_c0_exe5398_4_tpl,
    input wire [31:0] in_c0_exe5398_5_tpl,
    output wire [0:0] out_c0_exe10403,
    output wire [0:0] out_c0_exe11404,
    output wire [0:0] out_c0_exe12405,
    output wire [0:0] out_c0_exe13406,
    output wire [31:0] out_c0_exe1394,
    output wire [31:0] out_c0_exe2395,
    output wire [63:0] out_c0_exe3396,
    output wire [31:0] out_c0_exe4397,
    output wire [0:0] out_c0_exe7400,
    output wire [0:0] out_c0_exe8401,
    output wire [0:0] out_c0_exe9402,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [31:0] out_c0_exe5398_0_tpl,
    output wire [31:0] out_c0_exe5398_1_tpl,
    output wire [31:0] out_c0_exe5398_2_tpl,
    output wire [31:0] out_c0_exe5398_3_tpl,
    output wire [31:0] out_c0_exe5398_4_tpl,
    output wire [31:0] out_c0_exe5398_5_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10403(GPOUT,22)
    assign out_c0_exe10403 = in_c0_exe10403;

    // out_c0_exe11404(GPOUT,23)
    assign out_c0_exe11404 = in_c0_exe11404;

    // out_c0_exe12405(GPOUT,24)
    assign out_c0_exe12405 = in_c0_exe12405;

    // out_c0_exe13406(GPOUT,25)
    assign out_c0_exe13406 = in_c0_exe13406;

    // out_c0_exe1394(GPOUT,26)
    assign out_c0_exe1394 = in_c0_exe1394;

    // out_c0_exe2395(GPOUT,27)
    assign out_c0_exe2395 = in_c0_exe2395;

    // out_c0_exe3396(GPOUT,28)
    assign out_c0_exe3396 = in_c0_exe3396;

    // out_c0_exe4397(GPOUT,29)
    assign out_c0_exe4397 = in_c0_exe4397;

    // out_c0_exe7400(GPOUT,30)
    assign out_c0_exe7400 = in_c0_exe7400;

    // out_c0_exe8401(GPOUT,31)
    assign out_c0_exe8401 = in_c0_exe8401;

    // out_c0_exe9402(GPOUT,32)
    assign out_c0_exe9402 = in_c0_exe9402;

    // stall_out(LOGICAL,2)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,33)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,34)
    assign out_valid_out_0 = in_valid_in;

    // out_c0_exe5398_0_tpl(GPOUT,35)
    assign out_c0_exe5398_0_tpl = in_c0_exe5398_0_tpl;

    // out_c0_exe5398_1_tpl(GPOUT,36)
    assign out_c0_exe5398_1_tpl = in_c0_exe5398_1_tpl;

    // out_c0_exe5398_2_tpl(GPOUT,37)
    assign out_c0_exe5398_2_tpl = in_c0_exe5398_2_tpl;

    // out_c0_exe5398_3_tpl(GPOUT,38)
    assign out_c0_exe5398_3_tpl = in_c0_exe5398_3_tpl;

    // out_c0_exe5398_4_tpl(GPOUT,39)
    assign out_c0_exe5398_4_tpl = in_c0_exe5398_4_tpl;

    // out_c0_exe5398_5_tpl(GPOUT,40)
    assign out_c0_exe5398_5_tpl = in_c0_exe5398_5_tpl;

endmodule
