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

// SystemVerilog created from euler_B3_branch
// SystemVerilog created on Mon Apr  6 10:27:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_B3_branch (
    input wire [32:0] in_c0_exe145,
    input wire [0:0] in_c0_exe2,
    input wire [0:0] in_c0_exe3,
    input wire [0:0] in_c0_exe4,
    input wire [0:0] in_c0_exe5,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_c0_exe145,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe145(GPOUT,9)
    assign out_c0_exe145 = in_c0_exe145;

    // out_c0_exe2(GPOUT,10)
    assign out_c0_exe2 = in_c0_exe2;

    // out_c0_exe3(GPOUT,11)
    assign out_c0_exe3 = in_c0_exe3;

    // out_c0_exe4(GPOUT,12)
    assign out_c0_exe4 = in_c0_exe4;

    // out_c0_exe5(GPOUT,13)
    assign out_c0_exe5 = in_c0_exe5;

    // stall_out(LOGICAL,16)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,14)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,15)
    assign out_valid_out_0 = in_valid_in;

endmodule
