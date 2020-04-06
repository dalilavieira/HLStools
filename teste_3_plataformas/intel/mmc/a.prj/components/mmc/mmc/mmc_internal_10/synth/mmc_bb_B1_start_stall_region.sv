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

// SystemVerilog created from mmc_bb_B1_start_stall_region
// SystemVerilog created on Mon Apr  6 12:55:18 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmc_bb_B1_start_stall_region (
    input wire [63:0] in_iord_bl_call_mmc_i_fifodata,
    input wire [0:0] in_iord_bl_call_mmc_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_mmc_o_fifoready,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_cmp9_mmc5_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_valid_out;
    wire [0:0] mmc_B1_start_merge_reg_out_stall_out;
    wire [0:0] mmc_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_iord_bl_call_mmc_o_fifoready;
    wire [0:0] i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_valid;
    wire [31:0] i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_data_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_b;
    wire [63:0] bubble_join_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_q;
    wire [31:0] bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_c;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_V0;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_mmc_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_mmc_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_or0;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_V0;
    wire [0:0] SE_out_mmc_B1_start_merge_reg_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_V0;
    reg [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_R_v_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg(STALLENABLE,100)
    // Valid signal propagation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_V0 = bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_backStall & bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_backEN = ~ (bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_v_s_0 = bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_backEN & SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_backStall = ~ (bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_R_v_0 & bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_R_v_0 <= bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7(STALLENABLE,67)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and0 = i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and2 = i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_wireValid = bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_and2;

    // bubble_join_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x(BITJOIN,58)
    assign bubble_join_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_q = {i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x(BITSELECT,59)
    assign bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_q[31:0]);
    assign bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_q[63:32]);

    // i_cmp9_mmc5(LOGICAL,12)@2
    assign i_cmp9_mmc5_q = $unsigned(bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_b == bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_c ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8(BLACKBOX,13)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    mmc_i_llvm_fpga_ffwd_source_i1_unnamed_5_mmc0 thei_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_cmp9_mmc5_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V2),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7(BLACKBOX,15)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    mmc_i_llvm_fpga_ffwd_source_i32_unnamed_4_mmc0 thei_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4(BLACKBOX,14)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    mmc_i_llvm_fpga_ffwd_source_i32_unnamed_3_mmc0 thei_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x(STALLENABLE,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_stall_out) & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_stall_out) & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_stall_out) & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_StallValid = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_backStall & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_StallValid & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_StallValid & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_toReg2 = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_StallValid & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_or0 = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_or1 = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_consumed2 & SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_or1);
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_backStall = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V0 = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V1 = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_V2 = SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_wireValid = i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1(BITJOIN,52)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1(BITSELECT,53)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_q[0:0]);

    // i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x(BLACKBOX,46)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_mmc_o_fifoready@20000000
    // out out_o_stall@20000000
    mmc_i_iord_bl_call_unnamed_mmc2_mmc0 thei_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_b),
        .in_i_stall(SE_out_i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_V0),
        .in_iord_bl_call_mmc_i_fifodata(in_iord_bl_call_mmc_i_fifodata),
        .in_iord_bl_call_mmc_i_fifovalid(in_iord_bl_call_mmc_i_fifovalid),
        .out_iord_bl_call_mmc_o_fifoready(i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_iord_bl_call_mmc_o_fifoready),
        .out_o_stall(i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1(STALLENABLE,69)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_backStall = i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1(BLACKBOX,16)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    mmc_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_backStall),
        .in_valid_in(SE_out_mmc_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,72)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = mmc_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // mmc_B1_start_merge_reg(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    mmc_B1_start_merge_reg themmc_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_mmc_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(mmc_B1_start_merge_reg_out_stall_out),
        .out_valid_out(mmc_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_mmc_B1_start_merge_reg(STALLENABLE,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_mmc_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_mmc_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_mmc_B1_start_merge_reg_fromReg0 <= SE_out_mmc_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_mmc_B1_start_merge_reg_fromReg1 <= SE_out_mmc_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_mmc_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_stall_out) & SE_out_mmc_B1_start_merge_reg_wireValid) | SE_out_mmc_B1_start_merge_reg_fromReg0;
    assign SE_out_mmc_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_o_stall) & SE_out_mmc_B1_start_merge_reg_wireValid) | SE_out_mmc_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_mmc_B1_start_merge_reg_StallValid = SE_out_mmc_B1_start_merge_reg_backStall & SE_out_mmc_B1_start_merge_reg_wireValid;
    assign SE_out_mmc_B1_start_merge_reg_toReg0 = SE_out_mmc_B1_start_merge_reg_StallValid & SE_out_mmc_B1_start_merge_reg_consumed0;
    assign SE_out_mmc_B1_start_merge_reg_toReg1 = SE_out_mmc_B1_start_merge_reg_StallValid & SE_out_mmc_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_mmc_B1_start_merge_reg_or0 = SE_out_mmc_B1_start_merge_reg_consumed0;
    assign SE_out_mmc_B1_start_merge_reg_wireStall = ~ (SE_out_mmc_B1_start_merge_reg_consumed1 & SE_out_mmc_B1_start_merge_reg_or0);
    assign SE_out_mmc_B1_start_merge_reg_backStall = SE_out_mmc_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_mmc_B1_start_merge_reg_V0 = SE_out_mmc_B1_start_merge_reg_wireValid & ~ (SE_out_mmc_B1_start_merge_reg_fromReg0);
    assign SE_out_mmc_B1_start_merge_reg_V1 = SE_out_mmc_B1_start_merge_reg_wireValid & ~ (SE_out_mmc_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_mmc_B1_start_merge_reg_wireValid = mmc_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x(STALLENABLE,77)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_1_reg_backStall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x(BLACKBOX,47)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    mmc_i_sfc_s_c0_in_wt_entry_s_c0_enter1_mmc0 thei_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_backStall),
        .in_i_valid(SE_out_mmc_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_mmc0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going15_mmc1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,10)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_mmc1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,34)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_mmcs_c0_enter1_mmc0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,35)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_mmc3_mmc4_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,40)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,42)
    assign out_iord_bl_call_mmc_o_fifoready = i_iord_bl_call_mmc_unnamed_mmc2_mmc2_aunroll_x_out_iord_bl_call_mmc_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,44)@2
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_mmc4_mmc7_V0;

    // dupName_1_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_mmc5_mmc8_out_intel_reserved_ffwd_2_0;

endmodule
