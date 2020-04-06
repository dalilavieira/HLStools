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

// SystemVerilog created from floydWarshall_B9_merge
// SystemVerilog created on Mon Apr  6 11:17:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_B9_merge (
    input wire [31:0] in_c0_exe1010_0,
    input wire [31:0] in_c0_exe1111_0,
    input wire [31:0] in_c0_exe1212_0,
    input wire [31:0] in_c0_exe1313_0,
    input wire [31:0] in_c0_exe1414_0,
    input wire [31:0] in_c0_exe1515_0,
    input wire [31:0] in_c0_exe1616_0,
    input wire [31:0] in_c0_exe1717_0,
    input wire [31:0] in_c0_exe1919_0,
    input wire [0:0] in_c0_exe2020_0,
    input wire [0:0] in_c0_exe2121_0,
    input wire [31:0] in_c0_exe22782_0,
    input wire [31:0] in_c0_exe32793_0,
    input wire [31:0] in_c0_exe42804_0,
    input wire [31:0] in_c0_exe52815_0,
    input wire [31:0] in_c0_exe62826_0,
    input wire [31:0] in_c0_exe77_0,
    input wire [31:0] in_c0_exe88_0,
    input wire [31:0] in_c0_exe99_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1010,
    output wire [31:0] out_c0_exe1111,
    output wire [31:0] out_c0_exe1212,
    output wire [31:0] out_c0_exe1313,
    output wire [31:0] out_c0_exe1414,
    output wire [31:0] out_c0_exe1515,
    output wire [31:0] out_c0_exe1616,
    output wire [31:0] out_c0_exe1717,
    output wire [31:0] out_c0_exe1919,
    output wire [0:0] out_c0_exe2020,
    output wire [0:0] out_c0_exe2121,
    output wire [31:0] out_c0_exe22782,
    output wire [31:0] out_c0_exe32793,
    output wire [31:0] out_c0_exe42804,
    output wire [31:0] out_c0_exe52815,
    output wire [31:0] out_c0_exe62826,
    output wire [31:0] out_c0_exe77,
    output wire [31:0] out_c0_exe88,
    output wire [31:0] out_c0_exe99,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1010(GPOUT,23)
    assign out_c0_exe1010 = in_c0_exe1010_0;

    // out_c0_exe1111(GPOUT,24)
    assign out_c0_exe1111 = in_c0_exe1111_0;

    // out_c0_exe1212(GPOUT,25)
    assign out_c0_exe1212 = in_c0_exe1212_0;

    // out_c0_exe1313(GPOUT,26)
    assign out_c0_exe1313 = in_c0_exe1313_0;

    // out_c0_exe1414(GPOUT,27)
    assign out_c0_exe1414 = in_c0_exe1414_0;

    // out_c0_exe1515(GPOUT,28)
    assign out_c0_exe1515 = in_c0_exe1515_0;

    // out_c0_exe1616(GPOUT,29)
    assign out_c0_exe1616 = in_c0_exe1616_0;

    // out_c0_exe1717(GPOUT,30)
    assign out_c0_exe1717 = in_c0_exe1717_0;

    // out_c0_exe1919(GPOUT,31)
    assign out_c0_exe1919 = in_c0_exe1919_0;

    // out_c0_exe2020(GPOUT,32)
    assign out_c0_exe2020 = in_c0_exe2020_0;

    // out_c0_exe2121(GPOUT,33)
    assign out_c0_exe2121 = in_c0_exe2121_0;

    // out_c0_exe22782(GPOUT,34)
    assign out_c0_exe22782 = in_c0_exe22782_0;

    // out_c0_exe32793(GPOUT,35)
    assign out_c0_exe32793 = in_c0_exe32793_0;

    // out_c0_exe42804(GPOUT,36)
    assign out_c0_exe42804 = in_c0_exe42804_0;

    // out_c0_exe52815(GPOUT,37)
    assign out_c0_exe52815 = in_c0_exe52815_0;

    // out_c0_exe62826(GPOUT,38)
    assign out_c0_exe62826 = in_c0_exe62826_0;

    // out_c0_exe77(GPOUT,39)
    assign out_c0_exe77 = in_c0_exe77_0;

    // out_c0_exe88(GPOUT,40)
    assign out_c0_exe88 = in_c0_exe88_0;

    // out_c0_exe99(GPOUT,41)
    assign out_c0_exe99 = in_c0_exe99_0;

    // stall_out(LOGICAL,44)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,42)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,43)
    assign out_valid_out = in_valid_in_0;

endmodule
