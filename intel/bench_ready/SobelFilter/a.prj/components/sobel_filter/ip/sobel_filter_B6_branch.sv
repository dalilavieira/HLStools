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

// SystemVerilog created from sobel_filter_B6_branch
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B6_branch (
    input wire [0:0] in_c0_exe32921,
    input wire [0:0] in_c0_exe42,
    input wire [0:0] in_c0_exe53,
    input wire [0:0] in_memdep_phi_pop27,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe32921,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe53,
    output wire [0:0] out_memdep_phi_pop27,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe32921(GPOUT,8)
    assign out_c0_exe32921 = in_c0_exe32921;

    // out_c0_exe42(GPOUT,9)
    assign out_c0_exe42 = in_c0_exe42;

    // out_c0_exe53(GPOUT,10)
    assign out_c0_exe53 = in_c0_exe53;

    // out_memdep_phi_pop27(GPOUT,11)
    assign out_memdep_phi_pop27 = in_memdep_phi_pop27;

    // stall_out(LOGICAL,14)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,12)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,13)
    assign out_valid_out_0 = in_valid_in;

endmodule
