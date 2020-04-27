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

// SystemVerilog created from sobel_filter_bb_B6
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B6 (
    input wire [0:0] in_feedback_in_27,
    output wire [0:0] out_feedback_stall_out_27,
    input wire [0:0] in_feedback_valid_in_27,
    input wire [0:0] in_c0_exe32921_0,
    input wire [0:0] in_c0_exe42_0,
    input wire [0:0] in_c0_exe53_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe32921,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe53,
    output wire [0:0] out_memdep_phi_pop27,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B6_stall_region_out_c0_exe32921;
    wire [0:0] bb_sobel_filter_B6_stall_region_out_c0_exe42;
    wire [0:0] bb_sobel_filter_B6_stall_region_out_c0_exe53;
    wire [0:0] bb_sobel_filter_B6_stall_region_out_feedback_stall_out_27;
    wire [0:0] bb_sobel_filter_B6_stall_region_out_memdep_phi_pop27;
    wire [0:0] bb_sobel_filter_B6_stall_region_out_stall_out;
    wire [0:0] bb_sobel_filter_B6_stall_region_out_valid_out;
    wire [0:0] sobel_filter_B6_branch_out_c0_exe32921;
    wire [0:0] sobel_filter_B6_branch_out_c0_exe42;
    wire [0:0] sobel_filter_B6_branch_out_c0_exe53;
    wire [0:0] sobel_filter_B6_branch_out_memdep_phi_pop27;
    wire [0:0] sobel_filter_B6_branch_out_stall_out;
    wire [0:0] sobel_filter_B6_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B6_merge_out_c0_exe32921;
    wire [0:0] sobel_filter_B6_merge_out_c0_exe42;
    wire [0:0] sobel_filter_B6_merge_out_c0_exe53;
    wire [0:0] sobel_filter_B6_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B6_merge_out_valid_out;


    // sobel_filter_B6_branch(BLACKBOX,17)
    sobel_filter_B6_branch thesobel_filter_B6_branch (
        .in_c0_exe32921(bb_sobel_filter_B6_stall_region_out_c0_exe32921),
        .in_c0_exe42(bb_sobel_filter_B6_stall_region_out_c0_exe42),
        .in_c0_exe53(bb_sobel_filter_B6_stall_region_out_c0_exe53),
        .in_memdep_phi_pop27(bb_sobel_filter_B6_stall_region_out_memdep_phi_pop27),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_sobel_filter_B6_stall_region_out_valid_out),
        .out_c0_exe32921(sobel_filter_B6_branch_out_c0_exe32921),
        .out_c0_exe42(sobel_filter_B6_branch_out_c0_exe42),
        .out_c0_exe53(sobel_filter_B6_branch_out_c0_exe53),
        .out_memdep_phi_pop27(sobel_filter_B6_branch_out_memdep_phi_pop27),
        .out_stall_out(sobel_filter_B6_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B6_merge(BLACKBOX,18)
    sobel_filter_B6_merge thesobel_filter_B6_merge (
        .in_c0_exe32921_0(in_c0_exe32921_0),
        .in_c0_exe42_0(in_c0_exe42_0),
        .in_c0_exe53_0(in_c0_exe53_0),
        .in_stall_in(bb_sobel_filter_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe32921(sobel_filter_B6_merge_out_c0_exe32921),
        .out_c0_exe42(sobel_filter_B6_merge_out_c0_exe42),
        .out_c0_exe53(sobel_filter_B6_merge_out_c0_exe53),
        .out_stall_out_0(sobel_filter_B6_merge_out_stall_out_0),
        .out_valid_out(sobel_filter_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B6_stall_region(BLACKBOX,2)
    sobel_filter_bb_B6_stall_region thebb_sobel_filter_B6_stall_region (
        .in_c0_exe32921(sobel_filter_B6_merge_out_c0_exe32921),
        .in_c0_exe42(sobel_filter_B6_merge_out_c0_exe42),
        .in_c0_exe53(sobel_filter_B6_merge_out_c0_exe53),
        .in_feedback_in_27(in_feedback_in_27),
        .in_feedback_valid_in_27(in_feedback_valid_in_27),
        .in_stall_in(sobel_filter_B6_branch_out_stall_out),
        .in_valid_in(sobel_filter_B6_merge_out_valid_out),
        .out_c0_exe32921(bb_sobel_filter_B6_stall_region_out_c0_exe32921),
        .out_c0_exe42(bb_sobel_filter_B6_stall_region_out_c0_exe42),
        .out_c0_exe53(bb_sobel_filter_B6_stall_region_out_c0_exe53),
        .out_feedback_stall_out_27(bb_sobel_filter_B6_stall_region_out_feedback_stall_out_27),
        .out_memdep_phi_pop27(bb_sobel_filter_B6_stall_region_out_memdep_phi_pop27),
        .out_stall_out(bb_sobel_filter_B6_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_filter_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_27_sync(GPOUT,4)
    assign out_feedback_stall_out_27 = bb_sobel_filter_B6_stall_region_out_feedback_stall_out_27;

    // out_c0_exe32921(GPOUT,11)
    assign out_c0_exe32921 = sobel_filter_B6_branch_out_c0_exe32921;

    // out_c0_exe42(GPOUT,12)
    assign out_c0_exe42 = sobel_filter_B6_branch_out_c0_exe42;

    // out_c0_exe53(GPOUT,13)
    assign out_c0_exe53 = sobel_filter_B6_branch_out_c0_exe53;

    // out_memdep_phi_pop27(GPOUT,14)
    assign out_memdep_phi_pop27 = sobel_filter_B6_branch_out_memdep_phi_pop27;

    // out_stall_out_0(GPOUT,15)
    assign out_stall_out_0 = sobel_filter_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,16)
    assign out_valid_out_0 = sobel_filter_B6_branch_out_valid_out_0;

endmodule
