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

// SystemVerilog created from fir_bb_B11
// SystemVerilog created on Mon Apr 27 09:47:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_bb_B11 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_j_027_pop2482_0,
    input wire [31:0] in_j_027_pop2482_1,
    input wire [15:0] in_lm121_fir_avm_readdata,
    input wire [0:0] in_lm121_fir_avm_readdatavalid,
    input wire [0:0] in_lm121_fir_avm_waitrequest,
    input wire [0:0] in_lm121_fir_avm_writeack,
    input wire [15:0] in_lm2_fir_avm_readdata,
    input wire [0:0] in_lm2_fir_avm_readdatavalid,
    input wire [0:0] in_lm2_fir_avm_waitrequest,
    input wire [0:0] in_lm2_fir_avm_writeack,
    input wire [0:0] in_notcmp2481_0,
    input wire [0:0] in_notcmp2481_1,
    input wire [0:0] in_notcmp2973_pop2583_0,
    input wire [0:0] in_notcmp2973_pop2583_1,
    input wire [0:0] in_notcmp2980_0,
    input wire [0:0] in_notcmp2980_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe2133,
    output wire [15:0] out_c0_exe3134,
    output wire [0:0] out_c0_exe5136,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_lm121_fir_avm_address,
    output wire [0:0] out_lm121_fir_avm_burstcount,
    output wire [1:0] out_lm121_fir_avm_byteenable,
    output wire [0:0] out_lm121_fir_avm_enable,
    output wire [0:0] out_lm121_fir_avm_read,
    output wire [0:0] out_lm121_fir_avm_write,
    output wire [15:0] out_lm121_fir_avm_writedata,
    output wire [31:0] out_lm2_fir_avm_address,
    output wire [0:0] out_lm2_fir_avm_burstcount,
    output wire [1:0] out_lm2_fir_avm_byteenable,
    output wire [0:0] out_lm2_fir_avm_enable,
    output wire [0:0] out_lm2_fir_avm_read,
    output wire [0:0] out_lm2_fir_avm_write,
    output wire [15:0] out_lm2_fir_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_fir_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out;
    wire [0:0] bb_fir_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out;
    wire [31:0] bb_fir_B11_stall_region_out_c0_exe2133;
    wire [15:0] bb_fir_B11_stall_region_out_c0_exe3134;
    wire [0:0] bb_fir_B11_stall_region_out_c0_exe4135;
    wire [0:0] bb_fir_B11_stall_region_out_c0_exe5136;
    wire [0:0] bb_fir_B11_stall_region_out_c0_exe6;
    wire [31:0] bb_fir_B11_stall_region_out_lm121_fir_avm_address;
    wire [0:0] bb_fir_B11_stall_region_out_lm121_fir_avm_burstcount;
    wire [1:0] bb_fir_B11_stall_region_out_lm121_fir_avm_byteenable;
    wire [0:0] bb_fir_B11_stall_region_out_lm121_fir_avm_enable;
    wire [0:0] bb_fir_B11_stall_region_out_lm121_fir_avm_read;
    wire [0:0] bb_fir_B11_stall_region_out_lm121_fir_avm_write;
    wire [15:0] bb_fir_B11_stall_region_out_lm121_fir_avm_writedata;
    wire [31:0] bb_fir_B11_stall_region_out_lm2_fir_avm_address;
    wire [0:0] bb_fir_B11_stall_region_out_lm2_fir_avm_burstcount;
    wire [1:0] bb_fir_B11_stall_region_out_lm2_fir_avm_byteenable;
    wire [0:0] bb_fir_B11_stall_region_out_lm2_fir_avm_enable;
    wire [0:0] bb_fir_B11_stall_region_out_lm2_fir_avm_read;
    wire [0:0] bb_fir_B11_stall_region_out_lm2_fir_avm_write;
    wire [15:0] bb_fir_B11_stall_region_out_lm2_fir_avm_writedata;
    wire [0:0] bb_fir_B11_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_fir_B11_stall_region_out_stall_out;
    wire [0:0] bb_fir_B11_stall_region_out_valid_out;
    wire [31:0] fir_B11_branch_out_c0_exe2133;
    wire [15:0] fir_B11_branch_out_c0_exe3134;
    wire [0:0] fir_B11_branch_out_c0_exe5136;
    wire [0:0] fir_B11_branch_out_c0_exe6;
    wire [0:0] fir_B11_branch_out_stall_out;
    wire [0:0] fir_B11_branch_out_valid_out_0;
    wire [0:0] fir_B11_branch_out_valid_out_1;
    wire [0:0] fir_B11_merge_out_forked;
    wire [31:0] fir_B11_merge_out_j_027_pop2482;
    wire [0:0] fir_B11_merge_out_notcmp2481;
    wire [0:0] fir_B11_merge_out_notcmp2973_pop2583;
    wire [0:0] fir_B11_merge_out_notcmp2980;
    wire [0:0] fir_B11_merge_out_stall_out_0;
    wire [0:0] fir_B11_merge_out_stall_out_1;
    wire [0:0] fir_B11_merge_out_valid_out;


    // fir_B11_merge(BLACKBOX,4)
    fir_B11_merge thefir_B11_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_j_027_pop2482_0(in_j_027_pop2482_0),
        .in_j_027_pop2482_1(in_j_027_pop2482_1),
        .in_notcmp2481_0(in_notcmp2481_0),
        .in_notcmp2481_1(in_notcmp2481_1),
        .in_notcmp2973_pop2583_0(in_notcmp2973_pop2583_0),
        .in_notcmp2973_pop2583_1(in_notcmp2973_pop2583_1),
        .in_notcmp2980_0(in_notcmp2980_0),
        .in_notcmp2980_1(in_notcmp2980_1),
        .in_stall_in(bb_fir_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(fir_B11_merge_out_forked),
        .out_j_027_pop2482(fir_B11_merge_out_j_027_pop2482),
        .out_notcmp2481(fir_B11_merge_out_notcmp2481),
        .out_notcmp2973_pop2583(fir_B11_merge_out_notcmp2973_pop2583),
        .out_notcmp2980(fir_B11_merge_out_notcmp2980),
        .out_stall_out_0(fir_B11_merge_out_stall_out_0),
        .out_stall_out_1(fir_B11_merge_out_stall_out_1),
        .out_valid_out(fir_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_fir_B11_stall_region(BLACKBOX,2)
    fir_bb_B11_stall_region thebb_fir_B11_stall_region (
        .in_flush(in_flush),
        .in_forked(fir_B11_merge_out_forked),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_j_027_pop2482(fir_B11_merge_out_j_027_pop2482),
        .in_lm121_fir_avm_readdata(in_lm121_fir_avm_readdata),
        .in_lm121_fir_avm_readdatavalid(in_lm121_fir_avm_readdatavalid),
        .in_lm121_fir_avm_waitrequest(in_lm121_fir_avm_waitrequest),
        .in_lm121_fir_avm_writeack(in_lm121_fir_avm_writeack),
        .in_lm2_fir_avm_readdata(in_lm2_fir_avm_readdata),
        .in_lm2_fir_avm_readdatavalid(in_lm2_fir_avm_readdatavalid),
        .in_lm2_fir_avm_waitrequest(in_lm2_fir_avm_waitrequest),
        .in_lm2_fir_avm_writeack(in_lm2_fir_avm_writeack),
        .in_notcmp2481(fir_B11_merge_out_notcmp2481),
        .in_notcmp2973_pop2583(fir_B11_merge_out_notcmp2973_pop2583),
        .in_notcmp2980(fir_B11_merge_out_notcmp2980),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(fir_B11_branch_out_stall_out),
        .in_valid_in(fir_B11_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out(bb_fir_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out(bb_fir_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out),
        .out_c0_exe2133(bb_fir_B11_stall_region_out_c0_exe2133),
        .out_c0_exe3134(bb_fir_B11_stall_region_out_c0_exe3134),
        .out_c0_exe4135(bb_fir_B11_stall_region_out_c0_exe4135),
        .out_c0_exe5136(bb_fir_B11_stall_region_out_c0_exe5136),
        .out_c0_exe6(bb_fir_B11_stall_region_out_c0_exe6),
        .out_lm121_fir_avm_address(bb_fir_B11_stall_region_out_lm121_fir_avm_address),
        .out_lm121_fir_avm_burstcount(bb_fir_B11_stall_region_out_lm121_fir_avm_burstcount),
        .out_lm121_fir_avm_byteenable(bb_fir_B11_stall_region_out_lm121_fir_avm_byteenable),
        .out_lm121_fir_avm_enable(bb_fir_B11_stall_region_out_lm121_fir_avm_enable),
        .out_lm121_fir_avm_read(bb_fir_B11_stall_region_out_lm121_fir_avm_read),
        .out_lm121_fir_avm_write(bb_fir_B11_stall_region_out_lm121_fir_avm_write),
        .out_lm121_fir_avm_writedata(bb_fir_B11_stall_region_out_lm121_fir_avm_writedata),
        .out_lm2_fir_avm_address(bb_fir_B11_stall_region_out_lm2_fir_avm_address),
        .out_lm2_fir_avm_burstcount(bb_fir_B11_stall_region_out_lm2_fir_avm_burstcount),
        .out_lm2_fir_avm_byteenable(bb_fir_B11_stall_region_out_lm2_fir_avm_byteenable),
        .out_lm2_fir_avm_enable(bb_fir_B11_stall_region_out_lm2_fir_avm_enable),
        .out_lm2_fir_avm_read(bb_fir_B11_stall_region_out_lm2_fir_avm_read),
        .out_lm2_fir_avm_write(bb_fir_B11_stall_region_out_lm2_fir_avm_write),
        .out_lm2_fir_avm_writedata(bb_fir_B11_stall_region_out_lm2_fir_avm_writedata),
        .out_pipeline_valid_out(bb_fir_B11_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_fir_B11_stall_region_out_stall_out),
        .out_valid_out(bb_fir_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // fir_B11_branch(BLACKBOX,3)
    fir_B11_branch thefir_B11_branch (
        .in_c0_exe2133(bb_fir_B11_stall_region_out_c0_exe2133),
        .in_c0_exe3134(bb_fir_B11_stall_region_out_c0_exe3134),
        .in_c0_exe4135(bb_fir_B11_stall_region_out_c0_exe4135),
        .in_c0_exe5136(bb_fir_B11_stall_region_out_c0_exe5136),
        .in_c0_exe6(bb_fir_B11_stall_region_out_c0_exe6),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_fir_B11_stall_region_out_valid_out),
        .out_c0_exe2133(fir_B11_branch_out_c0_exe2133),
        .out_c0_exe3134(fir_B11_branch_out_c0_exe3134),
        .out_c0_exe5136(fir_B11_branch_out_c0_exe5136),
        .out_c0_exe6(fir_B11_branch_out_c0_exe6),
        .out_stall_out(fir_B11_branch_out_stall_out),
        .out_valid_out_0(fir_B11_branch_out_valid_out_0),
        .out_valid_out_1(fir_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2133(GPOUT,31)
    assign out_c0_exe2133 = fir_B11_branch_out_c0_exe2133;

    // out_c0_exe3134(GPOUT,32)
    assign out_c0_exe3134 = fir_B11_branch_out_c0_exe3134;

    // out_c0_exe5136(GPOUT,33)
    assign out_c0_exe5136 = fir_B11_branch_out_c0_exe5136;

    // out_c0_exe6(GPOUT,34)
    assign out_c0_exe6 = fir_B11_branch_out_c0_exe6;

    // out_exiting_stall_out(GPOUT,35)
    assign out_exiting_stall_out = bb_fir_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,36)
    assign out_exiting_valid_out = bb_fir_B11_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out;

    // out_lm121_fir_avm_address(GPOUT,37)
    assign out_lm121_fir_avm_address = bb_fir_B11_stall_region_out_lm121_fir_avm_address;

    // out_lm121_fir_avm_burstcount(GPOUT,38)
    assign out_lm121_fir_avm_burstcount = bb_fir_B11_stall_region_out_lm121_fir_avm_burstcount;

    // out_lm121_fir_avm_byteenable(GPOUT,39)
    assign out_lm121_fir_avm_byteenable = bb_fir_B11_stall_region_out_lm121_fir_avm_byteenable;

    // out_lm121_fir_avm_enable(GPOUT,40)
    assign out_lm121_fir_avm_enable = bb_fir_B11_stall_region_out_lm121_fir_avm_enable;

    // out_lm121_fir_avm_read(GPOUT,41)
    assign out_lm121_fir_avm_read = bb_fir_B11_stall_region_out_lm121_fir_avm_read;

    // out_lm121_fir_avm_write(GPOUT,42)
    assign out_lm121_fir_avm_write = bb_fir_B11_stall_region_out_lm121_fir_avm_write;

    // out_lm121_fir_avm_writedata(GPOUT,43)
    assign out_lm121_fir_avm_writedata = bb_fir_B11_stall_region_out_lm121_fir_avm_writedata;

    // out_lm2_fir_avm_address(GPOUT,44)
    assign out_lm2_fir_avm_address = bb_fir_B11_stall_region_out_lm2_fir_avm_address;

    // out_lm2_fir_avm_burstcount(GPOUT,45)
    assign out_lm2_fir_avm_burstcount = bb_fir_B11_stall_region_out_lm2_fir_avm_burstcount;

    // out_lm2_fir_avm_byteenable(GPOUT,46)
    assign out_lm2_fir_avm_byteenable = bb_fir_B11_stall_region_out_lm2_fir_avm_byteenable;

    // out_lm2_fir_avm_enable(GPOUT,47)
    assign out_lm2_fir_avm_enable = bb_fir_B11_stall_region_out_lm2_fir_avm_enable;

    // out_lm2_fir_avm_read(GPOUT,48)
    assign out_lm2_fir_avm_read = bb_fir_B11_stall_region_out_lm2_fir_avm_read;

    // out_lm2_fir_avm_write(GPOUT,49)
    assign out_lm2_fir_avm_write = bb_fir_B11_stall_region_out_lm2_fir_avm_write;

    // out_lm2_fir_avm_writedata(GPOUT,50)
    assign out_lm2_fir_avm_writedata = bb_fir_B11_stall_region_out_lm2_fir_avm_writedata;

    // out_stall_out_0(GPOUT,51)
    assign out_stall_out_0 = fir_B11_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,52)
    assign out_stall_out_1 = fir_B11_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,53)
    assign out_valid_out_0 = fir_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,54)
    assign out_valid_out_1 = fir_B11_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,56)
    assign out_pipeline_valid_out = bb_fir_B11_stall_region_out_pipeline_valid_out;

endmodule
