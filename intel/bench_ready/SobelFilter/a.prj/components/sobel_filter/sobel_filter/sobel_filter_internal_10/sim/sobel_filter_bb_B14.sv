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

// SystemVerilog created from sobel_filter_bb_B14
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B14 (
    output wire [31:0] out_c0_exe2447,
    output wire [0:0] out_c0_exe4449,
    output wire [0:0] out_c0_exe5450,
    output wire [0:0] out_c0_exe6451,
    output wire [63:0] out_c0_exe7452,
    output wire [0:0] out_c0_exe8453,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_acl_140242_0,
    input wire [31:0] in_acl_140242_1,
    input wire [31:0] in_acl_141243_0,
    input wire [31:0] in_acl_141243_1,
    input wire [0:0] in_exitcond45164_pop43236_0,
    input wire [0:0] in_exitcond45164_pop43236_1,
    input wire [0:0] in_exitcond45165_pop47248_0,
    input wire [0:0] in_exitcond45165_pop47248_1,
    input wire [0:0] in_forked58_0,
    input wire [0:0] in_forked58_1,
    input wire [63:0] in_idxprom43_i_i78244_0,
    input wire [63:0] in_idxprom43_i_i78244_1,
    input wire [0:0] in_memdep_phi18_pop28179_pop49250_0,
    input wire [0:0] in_memdep_phi18_pop28179_pop49250_1,
    input wire [0:0] in_memdep_phi18_pop28232_0,
    input wire [0:0] in_memdep_phi18_pop28232_1,
    input wire [31:0] in_mul_i_i124149245_0,
    input wire [31:0] in_mul_i_i124149245_1,
    input wire [0:0] in_notcmp131171_pop44240_0,
    input wire [0:0] in_notcmp131171_pop44240_1,
    input wire [0:0] in_notcmp131172_pop48249_0,
    input wire [0:0] in_notcmp131172_pop48249_1,
    input wire [0:0] in_notcmp73247_0,
    input wire [0:0] in_notcmp73247_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_case_assign178246_0_0_tpl,
    input wire [31:0] in_case_assign178246_0_1_tpl,
    input wire [31:0] in_case_assign178246_0_2_tpl,
    input wire [31:0] in_case_assign178246_0_3_tpl,
    input wire [31:0] in_case_assign178246_0_4_tpl,
    input wire [31:0] in_case_assign178246_0_5_tpl,
    input wire [31:0] in_case_assign178246_1_0_tpl,
    input wire [31:0] in_case_assign178246_1_1_tpl,
    input wire [31:0] in_case_assign178246_1_2_tpl,
    input wire [31:0] in_case_assign178246_1_3_tpl,
    input wire [31:0] in_case_assign178246_1_4_tpl,
    input wire [31:0] in_case_assign178246_1_5_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_sobel_filter6_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_sobel_filter6_exiting_valid_out;
    wire [31:0] bb_sobel_filter_B14_stall_region_out_c0_exe2447;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_c0_exe3448;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_c0_exe4449;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_c0_exe5450;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_c0_exe6451;
    wire [63:0] bb_sobel_filter_B14_stall_region_out_c0_exe7452;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_c0_exe8453;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_stall_out;
    wire [0:0] bb_sobel_filter_B14_stall_region_out_valid_out;
    wire [31:0] sobel_filter_B14_branch_out_c0_exe2447;
    wire [0:0] sobel_filter_B14_branch_out_c0_exe4449;
    wire [0:0] sobel_filter_B14_branch_out_c0_exe5450;
    wire [0:0] sobel_filter_B14_branch_out_c0_exe6451;
    wire [63:0] sobel_filter_B14_branch_out_c0_exe7452;
    wire [0:0] sobel_filter_B14_branch_out_c0_exe8453;
    wire [0:0] sobel_filter_B14_branch_out_stall_out;
    wire [0:0] sobel_filter_B14_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B14_branch_out_valid_out_1;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_acl_140242;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_acl_141243;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_exitcond45164_pop43236;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_exitcond45165_pop47248;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_forked58;
    wire [63:0] sobel_filter_B14_merge_aunroll_x_out_idxprom43_i_i78244;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_memdep_phi18_pop28179_pop49250;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_memdep_phi18_pop28232;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_mul_i_i124149245;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_notcmp131171_pop44240;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_notcmp131172_pop48249;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_notcmp73247;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_stall_out_0;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_stall_out_1;
    wire [0:0] sobel_filter_B14_merge_aunroll_x_out_valid_out;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_case_assign178246_0_tpl;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_case_assign178246_1_tpl;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_case_assign178246_2_tpl;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_case_assign178246_3_tpl;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_case_assign178246_4_tpl;
    wire [31:0] sobel_filter_B14_merge_aunroll_x_out_case_assign178246_5_tpl;


    // sobel_filter_B14_merge_aunroll_x(BLACKBOX,58)
    sobel_filter_B14_merge thesobel_filter_B14_merge_aunroll_x (
        .in_acl_140242_0(in_acl_140242_0),
        .in_acl_140242_1(in_acl_140242_1),
        .in_acl_141243_0(in_acl_141243_0),
        .in_acl_141243_1(in_acl_141243_1),
        .in_exitcond45164_pop43236_0(in_exitcond45164_pop43236_0),
        .in_exitcond45164_pop43236_1(in_exitcond45164_pop43236_1),
        .in_exitcond45165_pop47248_0(in_exitcond45165_pop47248_0),
        .in_exitcond45165_pop47248_1(in_exitcond45165_pop47248_1),
        .in_forked58_0(in_forked58_0),
        .in_forked58_1(in_forked58_1),
        .in_idxprom43_i_i78244_0(in_idxprom43_i_i78244_0),
        .in_idxprom43_i_i78244_1(in_idxprom43_i_i78244_1),
        .in_memdep_phi18_pop28179_pop49250_0(in_memdep_phi18_pop28179_pop49250_0),
        .in_memdep_phi18_pop28179_pop49250_1(in_memdep_phi18_pop28179_pop49250_1),
        .in_memdep_phi18_pop28232_0(in_memdep_phi18_pop28232_0),
        .in_memdep_phi18_pop28232_1(in_memdep_phi18_pop28232_1),
        .in_mul_i_i124149245_0(in_mul_i_i124149245_0),
        .in_mul_i_i124149245_1(in_mul_i_i124149245_1),
        .in_notcmp131171_pop44240_0(in_notcmp131171_pop44240_0),
        .in_notcmp131171_pop44240_1(in_notcmp131171_pop44240_1),
        .in_notcmp131172_pop48249_0(in_notcmp131172_pop48249_0),
        .in_notcmp131172_pop48249_1(in_notcmp131172_pop48249_1),
        .in_notcmp73247_0(in_notcmp73247_0),
        .in_notcmp73247_1(in_notcmp73247_1),
        .in_stall_in(bb_sobel_filter_B14_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .in_case_assign178246_0_0_tpl(in_case_assign178246_0_0_tpl),
        .in_case_assign178246_0_1_tpl(in_case_assign178246_0_1_tpl),
        .in_case_assign178246_0_2_tpl(in_case_assign178246_0_2_tpl),
        .in_case_assign178246_0_3_tpl(in_case_assign178246_0_3_tpl),
        .in_case_assign178246_0_4_tpl(in_case_assign178246_0_4_tpl),
        .in_case_assign178246_0_5_tpl(in_case_assign178246_0_5_tpl),
        .in_case_assign178246_1_0_tpl(in_case_assign178246_1_0_tpl),
        .in_case_assign178246_1_1_tpl(in_case_assign178246_1_1_tpl),
        .in_case_assign178246_1_2_tpl(in_case_assign178246_1_2_tpl),
        .in_case_assign178246_1_3_tpl(in_case_assign178246_1_3_tpl),
        .in_case_assign178246_1_4_tpl(in_case_assign178246_1_4_tpl),
        .in_case_assign178246_1_5_tpl(in_case_assign178246_1_5_tpl),
        .out_acl_140242(sobel_filter_B14_merge_aunroll_x_out_acl_140242),
        .out_acl_141243(sobel_filter_B14_merge_aunroll_x_out_acl_141243),
        .out_exitcond45164_pop43236(sobel_filter_B14_merge_aunroll_x_out_exitcond45164_pop43236),
        .out_exitcond45165_pop47248(sobel_filter_B14_merge_aunroll_x_out_exitcond45165_pop47248),
        .out_forked58(sobel_filter_B14_merge_aunroll_x_out_forked58),
        .out_idxprom43_i_i78244(sobel_filter_B14_merge_aunroll_x_out_idxprom43_i_i78244),
        .out_memdep_phi18_pop28179_pop49250(sobel_filter_B14_merge_aunroll_x_out_memdep_phi18_pop28179_pop49250),
        .out_memdep_phi18_pop28232(sobel_filter_B14_merge_aunroll_x_out_memdep_phi18_pop28232),
        .out_mul_i_i124149245(sobel_filter_B14_merge_aunroll_x_out_mul_i_i124149245),
        .out_notcmp131171_pop44240(sobel_filter_B14_merge_aunroll_x_out_notcmp131171_pop44240),
        .out_notcmp131172_pop48249(sobel_filter_B14_merge_aunroll_x_out_notcmp131172_pop48249),
        .out_notcmp73247(sobel_filter_B14_merge_aunroll_x_out_notcmp73247),
        .out_stall_out_0(sobel_filter_B14_merge_aunroll_x_out_stall_out_0),
        .out_stall_out_1(sobel_filter_B14_merge_aunroll_x_out_stall_out_1),
        .out_valid_out(sobel_filter_B14_merge_aunroll_x_out_valid_out),
        .out_case_assign178246_0_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_0_tpl),
        .out_case_assign178246_1_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_1_tpl),
        .out_case_assign178246_2_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_2_tpl),
        .out_case_assign178246_3_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_3_tpl),
        .out_case_assign178246_4_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_4_tpl),
        .out_case_assign178246_5_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B14_stall_region(BLACKBOX,2)
    sobel_filter_bb_B14_stall_region thebb_sobel_filter_B14_stall_region (
        .in_acl_140242(sobel_filter_B14_merge_aunroll_x_out_acl_140242),
        .in_acl_141243(sobel_filter_B14_merge_aunroll_x_out_acl_141243),
        .in_exitcond45164_pop43236(sobel_filter_B14_merge_aunroll_x_out_exitcond45164_pop43236),
        .in_exitcond45165_pop47248(sobel_filter_B14_merge_aunroll_x_out_exitcond45165_pop47248),
        .in_forked58(sobel_filter_B14_merge_aunroll_x_out_forked58),
        .in_idxprom43_i_i78244(sobel_filter_B14_merge_aunroll_x_out_idxprom43_i_i78244),
        .in_memdep_phi18_pop28179_pop49250(sobel_filter_B14_merge_aunroll_x_out_memdep_phi18_pop28179_pop49250),
        .in_memdep_phi18_pop28232(sobel_filter_B14_merge_aunroll_x_out_memdep_phi18_pop28232),
        .in_mul_i_i124149245(sobel_filter_B14_merge_aunroll_x_out_mul_i_i124149245),
        .in_notcmp131171_pop44240(sobel_filter_B14_merge_aunroll_x_out_notcmp131171_pop44240),
        .in_notcmp131172_pop48249(sobel_filter_B14_merge_aunroll_x_out_notcmp131172_pop48249),
        .in_notcmp73247(sobel_filter_B14_merge_aunroll_x_out_notcmp73247),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sobel_filter_B14_branch_out_stall_out),
        .in_valid_in(sobel_filter_B14_merge_aunroll_x_out_valid_out),
        .in_case_assign178246_0_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_0_tpl),
        .in_case_assign178246_1_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_1_tpl),
        .in_case_assign178246_2_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_2_tpl),
        .in_case_assign178246_3_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_3_tpl),
        .in_case_assign178246_4_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_4_tpl),
        .in_case_assign178246_5_tpl(sobel_filter_B14_merge_aunroll_x_out_case_assign178246_5_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_sobel_filter6_exiting_stall_out(bb_sobel_filter_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_sobel_filter6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_sobel_filter6_exiting_valid_out(bb_sobel_filter_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_sobel_filter6_exiting_valid_out),
        .out_c0_exe2447(bb_sobel_filter_B14_stall_region_out_c0_exe2447),
        .out_c0_exe3448(bb_sobel_filter_B14_stall_region_out_c0_exe3448),
        .out_c0_exe4449(bb_sobel_filter_B14_stall_region_out_c0_exe4449),
        .out_c0_exe5450(bb_sobel_filter_B14_stall_region_out_c0_exe5450),
        .out_c0_exe6451(bb_sobel_filter_B14_stall_region_out_c0_exe6451),
        .out_c0_exe7452(bb_sobel_filter_B14_stall_region_out_c0_exe7452),
        .out_c0_exe8453(bb_sobel_filter_B14_stall_region_out_c0_exe8453),
        .out_pipeline_valid_out(bb_sobel_filter_B14_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sobel_filter_B14_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_filter_B14_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B14_branch(BLACKBOX,17)
    sobel_filter_B14_branch thesobel_filter_B14_branch (
        .in_c0_exe2447(bb_sobel_filter_B14_stall_region_out_c0_exe2447),
        .in_c0_exe3448(bb_sobel_filter_B14_stall_region_out_c0_exe3448),
        .in_c0_exe4449(bb_sobel_filter_B14_stall_region_out_c0_exe4449),
        .in_c0_exe5450(bb_sobel_filter_B14_stall_region_out_c0_exe5450),
        .in_c0_exe6451(bb_sobel_filter_B14_stall_region_out_c0_exe6451),
        .in_c0_exe7452(bb_sobel_filter_B14_stall_region_out_c0_exe7452),
        .in_c0_exe8453(bb_sobel_filter_B14_stall_region_out_c0_exe8453),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sobel_filter_B14_stall_region_out_valid_out),
        .out_c0_exe2447(sobel_filter_B14_branch_out_c0_exe2447),
        .out_c0_exe4449(sobel_filter_B14_branch_out_c0_exe4449),
        .out_c0_exe5450(sobel_filter_B14_branch_out_c0_exe5450),
        .out_c0_exe6451(sobel_filter_B14_branch_out_c0_exe6451),
        .out_c0_exe7452(sobel_filter_B14_branch_out_c0_exe7452),
        .out_c0_exe8453(sobel_filter_B14_branch_out_c0_exe8453),
        .out_stall_out(sobel_filter_B14_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B14_branch_out_valid_out_0),
        .out_valid_out_1(sobel_filter_B14_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2447(GPOUT,3)
    assign out_c0_exe2447 = sobel_filter_B14_branch_out_c0_exe2447;

    // out_c0_exe4449(GPOUT,4)
    assign out_c0_exe4449 = sobel_filter_B14_branch_out_c0_exe4449;

    // out_c0_exe5450(GPOUT,5)
    assign out_c0_exe5450 = sobel_filter_B14_branch_out_c0_exe5450;

    // out_c0_exe6451(GPOUT,6)
    assign out_c0_exe6451 = sobel_filter_B14_branch_out_c0_exe6451;

    // out_c0_exe7452(GPOUT,7)
    assign out_c0_exe7452 = sobel_filter_B14_branch_out_c0_exe7452;

    // out_c0_exe8453(GPOUT,8)
    assign out_c0_exe8453 = sobel_filter_B14_branch_out_c0_exe8453;

    // out_exiting_stall_out(GPOUT,9)
    assign out_exiting_stall_out = bb_sobel_filter_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_sobel_filter6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,10)
    assign out_exiting_valid_out = bb_sobel_filter_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_sobel_filter6_exiting_valid_out;

    // out_stall_out_0(GPOUT,11)
    assign out_stall_out_0 = sobel_filter_B14_merge_aunroll_x_out_stall_out_0;

    // out_stall_out_1(GPOUT,12)
    assign out_stall_out_1 = sobel_filter_B14_merge_aunroll_x_out_stall_out_1;

    // out_valid_out_0(GPOUT,13)
    assign out_valid_out_0 = sobel_filter_B14_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,14)
    assign out_valid_out_1 = sobel_filter_B14_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,16)
    assign out_pipeline_valid_out = bb_sobel_filter_B14_stall_region_out_pipeline_valid_out;

endmodule
