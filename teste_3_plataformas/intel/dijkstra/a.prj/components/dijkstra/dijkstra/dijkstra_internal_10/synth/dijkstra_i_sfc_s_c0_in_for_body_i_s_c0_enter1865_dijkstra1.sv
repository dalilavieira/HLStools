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

// SystemVerilog created from dijkstra_i_sfc_s_c0_in_for_body_i_s_c0_enter1865_dijkstra1
// SystemVerilog created on Mon Apr  6 11:16:52 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_i_sfc_s_c0_in_for_body_i_s_c0_enter1865_dijkstra1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [31:0] in_intel_reserved_ffwd_35_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_49_0,
    input wire [31:0] in_intel_reserved_ffwd_47_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_7_tpl,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [31:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit190_0_tpl,
    output wire [0:0] out_c0_exit190_1_tpl,
    output wire [0:0] out_c0_exit190_2_tpl,
    output wire [31:0] out_c0_exit190_3_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_3_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x(BLACKBOX,22)@3
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@6
    // out out_data_out_0_tpl@6
    // out out_data_out_1_tpl@6
    // out out_data_out_2_tpl@6
    // out out_data_out_3_tpl@6
    dijkstra_i_llvm_fpga_sfc_exit_s_c0_out_fA000000Zc0_exit190_dijkstra0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_3_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x(BLACKBOX,23)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_49_0@20000000
    // out out_o_valid@3
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_dijkstra1@3
    // out out_c0_exi3_0_tpl@3
    // out out_c0_exi3_1_tpl@3
    // out out_c0_exi3_2_tpl@3
    // out out_c0_exi3_3_tpl@3
    dijkstra_i_sfc_logic_s_c0_in_for_body_i_s_c0_enter1865_dijkstra0 thei_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni2_0_tpl(in_c0_eni2_0_tpl),
        .in_c0_eni2_1_tpl(in_c0_eni2_1_tpl),
        .in_c0_eni2_2_tpl(in_c0_eni2_2_tpl),
        .in_intel_reserved_ffwd_47_0_0_tpl(in_intel_reserved_ffwd_47_0_0_tpl),
        .in_intel_reserved_ffwd_47_0_1_tpl(in_intel_reserved_ffwd_47_0_1_tpl),
        .in_intel_reserved_ffwd_47_0_2_tpl(in_intel_reserved_ffwd_47_0_2_tpl),
        .in_intel_reserved_ffwd_47_0_3_tpl(in_intel_reserved_ffwd_47_0_3_tpl),
        .in_intel_reserved_ffwd_47_0_4_tpl(in_intel_reserved_ffwd_47_0_4_tpl),
        .in_intel_reserved_ffwd_47_0_5_tpl(in_intel_reserved_ffwd_47_0_5_tpl),
        .in_intel_reserved_ffwd_47_0_6_tpl(in_intel_reserved_ffwd_47_0_6_tpl),
        .in_intel_reserved_ffwd_47_0_7_tpl(in_intel_reserved_ffwd_47_0_7_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out),
        .out_intel_reserved_ffwd_49_0(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_dijkstra1(),
        .out_c0_exi3_0_tpl(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_0_tpl),
        .out_c0_exi3_1_tpl(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_1_tpl),
        .out_c0_exi3_2_tpl(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_2_tpl),
        .out_c0_exi3_3_tpl(i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_c0_exi3_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out = i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out;

    // sync_out(GPOUT,19)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out = i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_49_0 = i_sfc_logic_s_c0_in_for_body_i_dijkstras_c0_enter1865_dijkstra0_aunroll_x_out_intel_reserved_ffwd_49_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,26)@6
    assign out_c0_exit190_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit190_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit190_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit190_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_data_out_3_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_i_dijkstras_c0_exit190_dijkstra1_aunroll_x_out_valid_out;

endmodule
