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

// SystemVerilog created from ff_rgb24toyv12_c_B2_branch
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_B2_branch (
    input wire [63:0] in_c0_exe1423,
    input wire [63:0] in_c0_exe2,
    input wire [63:0] in_c0_exe3,
    input wire [63:0] in_c0_exe4,
    input wire [0:0] in_c0_exe5,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_c0_exe7,
    input wire [63:0] in_c0_exe8,
    input wire [63:0] in_c0_exe9,
    input wire [0:0] in_memdep_phi126_pop27,
    input wire [0:0] in_memdep_phi18_pop15,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1423,
    output wire [63:0] out_c0_exe2,
    output wire [63:0] out_c0_exe3,
    output wire [63:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [63:0] out_c0_exe8,
    output wire [63:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi126_pop27,
    output wire [0:0] out_memdep_phi18_pop15,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1423(GPOUT,15)
    assign out_c0_exe1423 = in_c0_exe1423;

    // out_c0_exe2(GPOUT,16)
    assign out_c0_exe2 = in_c0_exe2;

    // out_c0_exe3(GPOUT,17)
    assign out_c0_exe3 = in_c0_exe3;

    // out_c0_exe4(GPOUT,18)
    assign out_c0_exe4 = in_c0_exe4;

    // out_c0_exe5(GPOUT,19)
    assign out_c0_exe5 = in_c0_exe5;

    // out_c0_exe6(GPOUT,20)
    assign out_c0_exe6 = in_c0_exe6;

    // out_c0_exe7(GPOUT,21)
    assign out_c0_exe7 = in_c0_exe7;

    // out_c0_exe8(GPOUT,22)
    assign out_c0_exe8 = in_c0_exe8;

    // out_c0_exe9(GPOUT,23)
    assign out_c0_exe9 = in_c0_exe9;

    // out_memdep_phi126_pop27(GPOUT,24)
    assign out_memdep_phi126_pop27 = in_memdep_phi126_pop27;

    // out_memdep_phi18_pop15(GPOUT,25)
    assign out_memdep_phi18_pop15 = in_memdep_phi18_pop15;

    // stall_out(LOGICAL,28)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,26)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = in_valid_in;

endmodule
