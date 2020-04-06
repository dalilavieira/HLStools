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

// SystemVerilog created from bubbleSort_bb_B1_start_stall_region
// SystemVerilog created on Mon Apr  6 10:26:56 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_bb_B1_start_stall_region (
    input wire [127:0] in_iord_bl_call_bubbleSort_i_fifodata,
    input wire [0:0] in_iord_bl_call_bubbleSort_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_bubbleSort_o_fifoready,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bubbleSort_B1_start_merge_reg_out_stall_out;
    wire [0:0] bubbleSort_B1_start_merge_reg_out_valid_out;
    wire [31:0] c_i32_120_q;
    wire [31:0] c_i32_121_q;
    wire [32:0] c_i33_122_q;
    wire [33:0] i_cmp22_bubblesort5_a;
    wire [33:0] i_cmp22_bubblesort5_b;
    logic [33:0] i_cmp22_bubblesort5_o;
    wire [0:0] i_cmp22_bubblesort5_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_valid_out;
    wire [0:0] i_smax15_bubblesort11_s;
    reg [31:0] i_smax15_bubblesort11_q;
    wire [31:0] i_smax15_bubblesort11_vt_join_q;
    wire [30:0] i_smax15_bubblesort11_vt_select_30_b;
    wire [32:0] i_unnamed_bubblesort12_a;
    wire [32:0] i_unnamed_bubblesort12_b;
    logic [32:0] i_unnamed_bubblesort12_o;
    wire [32:0] i_unnamed_bubblesort12_q;
    wire [32:0] i_unnamed_bubblesort13_vt_join_q;
    wire [31:0] i_unnamed_bubblesort13_vt_select_31_b;
    wire [33:0] i_unnamed_bubblesort14_a;
    wire [33:0] i_unnamed_bubblesort14_b;
    logic [33:0] i_unnamed_bubblesort14_o;
    wire [33:0] i_unnamed_bubblesort14_q;
    wire [33:0] i_unnamed_bubblesort7_a;
    wire [33:0] i_unnamed_bubblesort7_b;
    logic [33:0] i_unnamed_bubblesort7_o;
    wire [0:0] i_unnamed_bubblesort7_c;
    wire [31:0] bgTrunc_i_unnamed_bubblesort12_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_bubblesort14_sel_x_b;
    wire [31:0] c_i32_019_recast_x_q;
    wire [0:0] i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_iord_bl_call_bubbleSort_o_fifoready;
    wire [0:0] i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_data_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_pipeline_valid_out;
    wire [32:0] i_unnamed_bubblesort13_sel_x_b;
    reg [30:0] redist0_i_smax15_bubblesort11_vt_select_30_b_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_b;
    wire [95:0] bubble_join_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_bubbleSort_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_bubbleSort_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_or0;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_V0;
    wire [0:0] SE_out_bubbleSort_B1_start_merge_reg_V1;
    reg [0:0] SE_i_cmp22_bubblesort5_R_v_0;
    reg [0:0] SE_i_cmp22_bubblesort5_R_v_1;
    wire [0:0] SE_i_cmp22_bubblesort5_v_s_0;
    wire [0:0] SE_i_cmp22_bubblesort5_s_tv_0;
    wire [0:0] SE_i_cmp22_bubblesort5_s_tv_1;
    wire [0:0] SE_i_cmp22_bubblesort5_backEN;
    wire [0:0] SE_i_cmp22_bubblesort5_or0;
    wire [0:0] SE_i_cmp22_bubblesort5_backStall;
    wire [0:0] SE_i_cmp22_bubblesort5_V0;
    wire [0:0] SE_i_cmp22_bubblesort5_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and2;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and3;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9(STALLENABLE,98)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg(STALLENABLE,147)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_s_tv_0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_v_s_0;
            end

        end
    end

    // c_i32_019_recast_x(CONSTANT,63)
    assign c_i32_019_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp22_bubblesort5(COMPARE,18)@2 + 1
    assign i_cmp22_bubblesort5_a = $unsigned({{2{c_i32_019_recast_x_q[31]}}, c_i32_019_recast_x_q});
    assign i_cmp22_bubblesort5_b = $unsigned({{2{bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c[31]}}, bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp22_bubblesort5_o <= 34'b0;
        end
        else if (SE_i_cmp22_bubblesort5_backEN == 1'b1)
        begin
            i_cmp22_bubblesort5_o <= $unsigned($signed(i_cmp22_bubblesort5_a) - $signed(i_cmp22_bubblesort5_b));
        end
    end
    assign i_cmp22_bubblesort5_c[0] = i_cmp22_bubblesort5_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10(BLACKBOX,19)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    bubbleSort_i_llvm_fpga_ffwd_source_i1_unA000000Zblesort5_bubblesort0 thei_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_cmp22_bubblesort5_c),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_backStall),
        .in_valid_in(SE_i_cmp22_bubblesort5_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_122(CONSTANT,9)
    assign c_i33_122_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_121(CONSTANT,8)
    assign c_i32_121_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_120(CONSTANT,7)
    assign c_i32_120_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_bubblesort7(COMPARE,34)@2
    assign i_unnamed_bubblesort7_a = $unsigned({{2{c_i32_120_q[31]}}, c_i32_120_q});
    assign i_unnamed_bubblesort7_b = $unsigned({{2{bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c[31]}}, bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c});
    assign i_unnamed_bubblesort7_o = $unsigned($signed(i_unnamed_bubblesort7_a) - $signed(i_unnamed_bubblesort7_b));
    assign i_unnamed_bubblesort7_c[0] = i_unnamed_bubblesort7_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax15_bubblesort11(MUX,24)@2
    assign i_smax15_bubblesort11_s = i_unnamed_bubblesort7_c;
    always @(i_smax15_bubblesort11_s or c_i32_120_q or bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c)
    begin
        unique case (i_smax15_bubblesort11_s)
            1'b0 : i_smax15_bubblesort11_q = c_i32_120_q;
            1'b1 : i_smax15_bubblesort11_q = bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c;
            default : i_smax15_bubblesort11_q = 32'b0;
        endcase
    end

    // i_smax15_bubblesort11_vt_select_30(BITSELECT,27)@2
    assign i_smax15_bubblesort11_vt_select_30_b = i_smax15_bubblesort11_q[30:0];

    // redist0_i_smax15_bubblesort11_vt_select_30_b_1_0(REG,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_smax15_bubblesort11_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_i_cmp22_bubblesort5_backEN == 1'b1)
        begin
            redist0_i_smax15_bubblesort11_vt_select_30_b_1_0_q <= $unsigned(i_smax15_bubblesort11_vt_select_30_b);
        end
    end

    // i_smax15_bubblesort11_vt_join(BITJOIN,26)@3
    assign i_smax15_bubblesort11_vt_join_q = {GND_q, redist0_i_smax15_bubblesort11_vt_select_30_b_1_0_q};

    // i_unnamed_bubblesort12(ADD,28)@3
    assign i_unnamed_bubblesort12_a = {1'b0, i_smax15_bubblesort11_vt_join_q};
    assign i_unnamed_bubblesort12_b = {1'b0, c_i32_121_q};
    assign i_unnamed_bubblesort12_o = $unsigned(i_unnamed_bubblesort12_a) + $unsigned(i_unnamed_bubblesort12_b);
    assign i_unnamed_bubblesort12_q = i_unnamed_bubblesort12_o[32:0];

    // bgTrunc_i_unnamed_bubblesort12_sel_x(BITSELECT,61)@3
    assign bgTrunc_i_unnamed_bubblesort12_sel_x_b = i_unnamed_bubblesort12_q[31:0];

    // i_unnamed_bubblesort13_sel_x(BITSELECT,72)@3
    assign i_unnamed_bubblesort13_sel_x_b = {1'b0, bgTrunc_i_unnamed_bubblesort12_sel_x_b[31:0]};

    // i_unnamed_bubblesort13_vt_select_31(BITSELECT,32)@3
    assign i_unnamed_bubblesort13_vt_select_31_b = i_unnamed_bubblesort13_sel_x_b[31:0];

    // i_unnamed_bubblesort13_vt_join(BITJOIN,31)@3
    assign i_unnamed_bubblesort13_vt_join_q = {GND_q, i_unnamed_bubblesort13_vt_select_31_b};

    // i_unnamed_bubblesort14(ADD,33)@3
    assign i_unnamed_bubblesort14_a = {1'b0, i_unnamed_bubblesort13_vt_join_q};
    assign i_unnamed_bubblesort14_b = {1'b0, c_i33_122_q};
    assign i_unnamed_bubblesort14_o = $unsigned(i_unnamed_bubblesort14_a) + $unsigned(i_unnamed_bubblesort14_b);
    assign i_unnamed_bubblesort14_q = i_unnamed_bubblesort14_o[33:0];

    // bgTrunc_i_unnamed_bubblesort14_sel_x(BITSELECT,62)@3
    assign bgTrunc_i_unnamed_bubblesort14_sel_x_b = i_unnamed_bubblesort14_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15(BLACKBOX,21)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    bubbleSort_i_llvm_fpga_ffwd_source_i33_uA000000Zblesort6_bubblesort0 thei_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_unnamed_bubblesort14_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_backStall),
        .in_valid_in(SE_i_cmp22_bubblesort5_V1),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg(STALLFIFO,149)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1(STALLENABLE,146)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and2 = i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and1;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and3 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and2;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_1_reg_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_and3;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg(STALLENABLE,148)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_s_tv_0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4(STALLENABLE,102)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_valid_out;

    // bubble_join_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x(BITJOIN,89)
    assign bubble_join_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_q = {i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x(BITSELECT,90)
    assign bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_q[95:64]);

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4(BLACKBOX,22)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    bubbleSort_i_llvm_fpga_ffwd_source_p1024A000000Zblesort3_bubblesort0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V2),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9(BLACKBOX,20)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    bubbleSort_i_llvm_fpga_ffwd_source_i32_uA000000Zblesort4_bubblesort0 thei_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp22_bubblesort5(STALLENABLE,94)
    // Valid signal propagation
    assign SE_i_cmp22_bubblesort5_V0 = SE_i_cmp22_bubblesort5_R_v_0;
    assign SE_i_cmp22_bubblesort5_V1 = SE_i_cmp22_bubblesort5_R_v_1;
    // Stall signal propagation
    assign SE_i_cmp22_bubblesort5_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_stall_out & SE_i_cmp22_bubblesort5_R_v_0;
    assign SE_i_cmp22_bubblesort5_s_tv_1 = i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_stall_out & SE_i_cmp22_bubblesort5_R_v_1;
    // Backward Enable generation
    assign SE_i_cmp22_bubblesort5_or0 = SE_i_cmp22_bubblesort5_s_tv_0;
    assign SE_i_cmp22_bubblesort5_backEN = ~ (SE_i_cmp22_bubblesort5_s_tv_1 | SE_i_cmp22_bubblesort5_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp22_bubblesort5_v_s_0 = SE_i_cmp22_bubblesort5_backEN & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_cmp22_bubblesort5_backStall = ~ (SE_i_cmp22_bubblesort5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp22_bubblesort5_R_v_0 <= 1'b0;
            SE_i_cmp22_bubblesort5_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp22_bubblesort5_backEN == 1'b0)
            begin
                SE_i_cmp22_bubblesort5_R_v_0 <= SE_i_cmp22_bubblesort5_R_v_0 & SE_i_cmp22_bubblesort5_s_tv_0;
            end
            else
            begin
                SE_i_cmp22_bubblesort5_R_v_0 <= SE_i_cmp22_bubblesort5_v_s_0;
            end

            if (SE_i_cmp22_bubblesort5_backEN == 1'b0)
            begin
                SE_i_cmp22_bubblesort5_R_v_1 <= SE_i_cmp22_bubblesort5_R_v_1 & SE_i_cmp22_bubblesort5_s_tv_1;
            end
            else
            begin
                SE_i_cmp22_bubblesort5_R_v_1 <= SE_i_cmp22_bubblesort5_v_s_0;
            end

        end
    end

    // SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x(STALLENABLE,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed0 = (~ (SE_i_cmp22_bubblesort5_backStall) & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_stall_out) & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_stall_out) & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_StallValid = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_backStall & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_StallValid & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_StallValid & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_toReg2 = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_StallValid & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_or0 = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_or1 = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_consumed2 & SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_or1);
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_backStall = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V0 = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V1 = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_V2 = SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_wireValid = i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1(BITJOIN,85)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1(BITSELECT,86)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_q[0:0]);

    // i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x(BLACKBOX,70)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_bubbleSort_o_fifoready@20000000
    // out out_o_stall@20000000
    bubbleSort_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort0 thei_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_b),
        .in_i_stall(SE_out_i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_V0),
        .in_iord_bl_call_bubbleSort_i_fifodata(in_iord_bl_call_bubbleSort_i_fifodata),
        .in_iord_bl_call_bubbleSort_i_fifovalid(in_iord_bl_call_bubbleSort_i_fifovalid),
        .out_iord_bl_call_bubbleSort_o_fifoready(i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_iord_bl_call_bubbleSort_o_fifoready),
        .out_o_stall(i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1(STALLENABLE,104)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_backStall = i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1(BLACKBOX,23)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_backStall),
        .in_valid_in(SE_out_bubbleSort_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,113)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = bubbleSort_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubbleSort_B1_start_merge_reg(BLACKBOX,4)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    bubbleSort_B1_start_merge_reg thebubbleSort_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_bubbleSort_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(bubbleSort_B1_start_merge_reg_out_stall_out),
        .out_valid_out(bubbleSort_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubbleSort_B1_start_merge_reg(STALLENABLE,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_bubbleSort_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_bubbleSort_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_bubbleSort_B1_start_merge_reg_fromReg0 <= SE_out_bubbleSort_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_bubbleSort_B1_start_merge_reg_fromReg1 <= SE_out_bubbleSort_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_bubbleSort_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_stall_out) & SE_out_bubbleSort_B1_start_merge_reg_wireValid) | SE_out_bubbleSort_B1_start_merge_reg_fromReg0;
    assign SE_out_bubbleSort_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_o_stall) & SE_out_bubbleSort_B1_start_merge_reg_wireValid) | SE_out_bubbleSort_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_bubbleSort_B1_start_merge_reg_StallValid = SE_out_bubbleSort_B1_start_merge_reg_backStall & SE_out_bubbleSort_B1_start_merge_reg_wireValid;
    assign SE_out_bubbleSort_B1_start_merge_reg_toReg0 = SE_out_bubbleSort_B1_start_merge_reg_StallValid & SE_out_bubbleSort_B1_start_merge_reg_consumed0;
    assign SE_out_bubbleSort_B1_start_merge_reg_toReg1 = SE_out_bubbleSort_B1_start_merge_reg_StallValid & SE_out_bubbleSort_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_bubbleSort_B1_start_merge_reg_or0 = SE_out_bubbleSort_B1_start_merge_reg_consumed0;
    assign SE_out_bubbleSort_B1_start_merge_reg_wireStall = ~ (SE_out_bubbleSort_B1_start_merge_reg_consumed1 & SE_out_bubbleSort_B1_start_merge_reg_or0);
    assign SE_out_bubbleSort_B1_start_merge_reg_backStall = SE_out_bubbleSort_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_bubbleSort_B1_start_merge_reg_V0 = SE_out_bubbleSort_B1_start_merge_reg_wireValid & ~ (SE_out_bubbleSort_B1_start_merge_reg_fromReg0);
    assign SE_out_bubbleSort_B1_start_merge_reg_V1 = SE_out_bubbleSort_B1_start_merge_reg_wireValid & ~ (SE_out_bubbleSort_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_bubbleSort_B1_start_merge_reg_wireValid = bubbleSort_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x(STALLENABLE,120)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x(BLACKBOX,71)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    bubbleSort_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0 thei_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_backStall),
        .in_i_valid(SE_out_bubbleSort_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_bubbleSort0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going35_bubblesort1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,16)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_bubblesort1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,54)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,55)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_bubblesort3_bubblesort4_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,59)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,65)
    assign out_iord_bl_call_bubbleSort_o_fifoready = i_iord_bl_call_bubblesort_unnamed_bubblesort2_bubblesort2_aunroll_x_out_iord_bl_call_bubbleSort_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,66)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_bubblesort4_bubblesort9_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,67)@3
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_bubblesorts_c0_enter4_bubblesort0_aunroll_x_1_V0;

    // dupName_1_regfree_osync_x(GPOUT,68)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_bubblesort5_bubblesort10_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,69)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i33_unnamed_bubblesort6_bubblesort15_out_intel_reserved_ffwd_3_0;

endmodule
