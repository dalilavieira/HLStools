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

// SystemVerilog created from euler_bb_B1_start_stall_region
// SystemVerilog created on Mon Apr  6 11:17:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_bb_B1_start_stall_region (
    input wire [31:0] in_iord_bl_call_euler_i_fifodata,
    input wire [0:0] in_iord_bl_call_euler_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_euler_o_fifoready,
    output wire [32:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_118_q;
    wire [31:0] c_i32_119_q;
    wire [32:0] c_i33_120_q;
    wire [0:0] euler_B1_start_merge_reg_out_stall_out;
    wire [0:0] euler_B1_start_merge_reg_out_valid_out;
    wire [33:0] i_cmp11_euler4_a;
    wire [33:0] i_cmp11_euler4_b;
    logic [33:0] i_cmp11_euler4_o;
    wire [0:0] i_cmp11_euler4_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_valid_out;
    wire [0:0] i_smax_euler9_s;
    reg [31:0] i_smax_euler9_q;
    wire [31:0] i_smax_euler9_vt_join_q;
    wire [30:0] i_smax_euler9_vt_select_30_b;
    wire [32:0] i_unnamed_euler10_a;
    wire [32:0] i_unnamed_euler10_b;
    logic [32:0] i_unnamed_euler10_o;
    wire [32:0] i_unnamed_euler10_q;
    wire [32:0] i_unnamed_euler11_vt_join_q;
    wire [31:0] i_unnamed_euler11_vt_select_31_b;
    wire [33:0] i_unnamed_euler12_a;
    wire [33:0] i_unnamed_euler12_b;
    logic [33:0] i_unnamed_euler12_o;
    wire [33:0] i_unnamed_euler12_q;
    wire [33:0] i_unnamed_euler6_a;
    wire [33:0] i_unnamed_euler6_b;
    logic [33:0] i_unnamed_euler6_o;
    wire [0:0] i_unnamed_euler6_c;
    wire [31:0] bgTrunc_i_unnamed_euler10_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_euler12_sel_x_b;
    wire [31:0] c_i32_017_recast_x_q;
    wire [0:0] i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_iord_bl_call_euler_o_fifoready;
    wire [0:0] i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_valid;
    wire [31:0] i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_data_0_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_pipeline_valid_out;
    wire [32:0] i_unnamed_euler11_sel_x_b;
    reg [30:0] redist0_i_smax_euler9_vt_select_30_b_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_b;
    wire [31:0] bubble_join_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_q;
    wire [31:0] bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_b;
    wire [0:0] SE_out_euler_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_euler_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_euler_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_euler_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_euler_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_euler_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_euler_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_euler_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_euler_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_euler_B1_start_merge_reg_or0;
    wire [0:0] SE_out_euler_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_euler_B1_start_merge_reg_V0;
    wire [0:0] SE_out_euler_B1_start_merge_reg_V1;
    reg [0:0] SE_i_cmp11_euler4_R_v_0;
    reg [0:0] SE_i_cmp11_euler4_R_v_1;
    wire [0:0] SE_i_cmp11_euler4_v_s_0;
    wire [0:0] SE_i_cmp11_euler4_s_tv_0;
    wire [0:0] SE_i_cmp11_euler4_s_tv_1;
    wire [0:0] SE_i_cmp11_euler4_backEN;
    wire [0:0] SE_i_cmp11_euler4_or0;
    wire [0:0] SE_i_cmp11_euler4_backStall;
    wire [0:0] SE_i_cmp11_euler4_V0;
    wire [0:0] SE_i_cmp11_euler4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg(STALLFIFO,129)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1(STALLENABLE,128)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_and1;

    // c_i33_120(CONSTANT,8)
    assign c_i33_120_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_119(CONSTANT,7)
    assign c_i32_119_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x(BITJOIN,79)
    assign bubble_join_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_q = i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_data_0_tpl;

    // bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x(BITSELECT,80)
    assign bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_q[31:0]);

    // c_i32_118(CONSTANT,6)
    assign c_i32_118_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_euler6(COMPARE,32)@2
    assign i_unnamed_euler6_a = $unsigned({{2{c_i32_118_q[31]}}, c_i32_118_q});
    assign i_unnamed_euler6_b = $unsigned({{2{bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_b[31]}}, bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_b});
    assign i_unnamed_euler6_o = $unsigned($signed(i_unnamed_euler6_a) - $signed(i_unnamed_euler6_b));
    assign i_unnamed_euler6_c[0] = i_unnamed_euler6_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_euler9(MUX,22)@2
    assign i_smax_euler9_s = i_unnamed_euler6_c;
    always @(i_smax_euler9_s or c_i32_118_q or bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_b)
    begin
        unique case (i_smax_euler9_s)
            1'b0 : i_smax_euler9_q = c_i32_118_q;
            1'b1 : i_smax_euler9_q = bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_b;
            default : i_smax_euler9_q = 32'b0;
        endcase
    end

    // i_smax_euler9_vt_select_30(BITSELECT,25)@2
    assign i_smax_euler9_vt_select_30_b = i_smax_euler9_q[30:0];

    // redist0_i_smax_euler9_vt_select_30_b_1_0(REG,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_smax_euler9_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_i_cmp11_euler4_backEN == 1'b1)
        begin
            redist0_i_smax_euler9_vt_select_30_b_1_0_q <= $unsigned(i_smax_euler9_vt_select_30_b);
        end
    end

    // i_smax_euler9_vt_join(BITJOIN,24)@3
    assign i_smax_euler9_vt_join_q = {GND_q, redist0_i_smax_euler9_vt_select_30_b_1_0_q};

    // i_unnamed_euler10(ADD,26)@3
    assign i_unnamed_euler10_a = {1'b0, i_smax_euler9_vt_join_q};
    assign i_unnamed_euler10_b = {1'b0, c_i32_119_q};
    assign i_unnamed_euler10_o = $unsigned(i_unnamed_euler10_a) + $unsigned(i_unnamed_euler10_b);
    assign i_unnamed_euler10_q = i_unnamed_euler10_o[32:0];

    // bgTrunc_i_unnamed_euler10_sel_x(BITSELECT,55)@3
    assign bgTrunc_i_unnamed_euler10_sel_x_b = i_unnamed_euler10_q[31:0];

    // i_unnamed_euler11_sel_x(BITSELECT,64)@3
    assign i_unnamed_euler11_sel_x_b = {1'b0, bgTrunc_i_unnamed_euler10_sel_x_b[31:0]};

    // i_unnamed_euler11_vt_select_31(BITSELECT,30)@3
    assign i_unnamed_euler11_vt_select_31_b = i_unnamed_euler11_sel_x_b[31:0];

    // i_unnamed_euler11_vt_join(BITJOIN,29)@3
    assign i_unnamed_euler11_vt_join_q = {GND_q, i_unnamed_euler11_vt_select_31_b};

    // i_unnamed_euler12(ADD,31)@3
    assign i_unnamed_euler12_a = {1'b0, i_unnamed_euler11_vt_join_q};
    assign i_unnamed_euler12_b = {1'b0, c_i33_120_q};
    assign i_unnamed_euler12_o = $unsigned(i_unnamed_euler12_a) + $unsigned(i_unnamed_euler12_b);
    assign i_unnamed_euler12_q = i_unnamed_euler12_o[33:0];

    // bgTrunc_i_unnamed_euler12_sel_x(BITSELECT,56)@3
    assign bgTrunc_i_unnamed_euler12_sel_x_b = i_unnamed_euler12_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13(BLACKBOX,20)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    euler_i_llvm_fpga_ffwd_source_i33_unnamed_4_euler0 thei_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bgTrunc_i_unnamed_euler12_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_backStall),
        .in_valid_in(SE_i_cmp11_euler4_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_017_recast_x(CONSTANT,57)
    assign c_i32_017_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp11_euler4(COMPARE,18)@2 + 1
    assign i_cmp11_euler4_a = $unsigned({{2{c_i32_017_recast_x_q[31]}}, c_i32_017_recast_x_q});
    assign i_cmp11_euler4_b = $unsigned({{2{bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_b[31]}}, bubble_select_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp11_euler4_o <= 34'b0;
        end
        else if (SE_i_cmp11_euler4_backEN == 1'b1)
        begin
            i_cmp11_euler4_o <= $unsigned($signed(i_cmp11_euler4_a) - $signed(i_cmp11_euler4_b));
        end
    end
    assign i_cmp11_euler4_c[0] = i_cmp11_euler4_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8(BLACKBOX,19)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    euler_i_llvm_fpga_ffwd_source_i1_unnamed_3_euler0 thei_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_cmp11_euler4_c),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_backStall),
        .in_valid_in(SE_i_cmp11_euler4_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp11_euler4(STALLENABLE,84)
    // Valid signal propagation
    assign SE_i_cmp11_euler4_V0 = SE_i_cmp11_euler4_R_v_0;
    assign SE_i_cmp11_euler4_V1 = SE_i_cmp11_euler4_R_v_1;
    // Stall signal propagation
    assign SE_i_cmp11_euler4_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_stall_out & SE_i_cmp11_euler4_R_v_0;
    assign SE_i_cmp11_euler4_s_tv_1 = i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_stall_out & SE_i_cmp11_euler4_R_v_1;
    // Backward Enable generation
    assign SE_i_cmp11_euler4_or0 = SE_i_cmp11_euler4_s_tv_0;
    assign SE_i_cmp11_euler4_backEN = ~ (SE_i_cmp11_euler4_s_tv_1 | SE_i_cmp11_euler4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp11_euler4_v_s_0 = SE_i_cmp11_euler4_backEN & SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_cmp11_euler4_backStall = ~ (SE_i_cmp11_euler4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp11_euler4_R_v_0 <= 1'b0;
            SE_i_cmp11_euler4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp11_euler4_backEN == 1'b0)
            begin
                SE_i_cmp11_euler4_R_v_0 <= SE_i_cmp11_euler4_R_v_0 & SE_i_cmp11_euler4_s_tv_0;
            end
            else
            begin
                SE_i_cmp11_euler4_R_v_0 <= SE_i_cmp11_euler4_v_s_0;
            end

            if (SE_i_cmp11_euler4_backEN == 1'b0)
            begin
                SE_i_cmp11_euler4_R_v_1 <= SE_i_cmp11_euler4_R_v_1 & SE_i_cmp11_euler4_s_tv_1;
            end
            else
            begin
                SE_i_cmp11_euler4_R_v_1 <= SE_i_cmp11_euler4_v_s_0;
            end

        end
    end

    // SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x(STALLENABLE,104)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_V0 = SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_backStall = SE_i_cmp11_euler4_backStall | ~ (SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_wireValid = i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1(BITJOIN,75)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1(BITSELECT,76)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_q[0:0]);

    // i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x(BLACKBOX,62)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_euler_o_fifoready@20000000
    // out out_o_stall@20000000
    euler_i_iord_bl_call_unnamed_euler2_euler0 thei_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_b),
        .in_i_stall(SE_out_i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_V0),
        .in_iord_bl_call_euler_i_fifodata(in_iord_bl_call_euler_i_fifodata),
        .in_iord_bl_call_euler_i_fifovalid(in_iord_bl_call_euler_i_fifovalid),
        .out_iord_bl_call_euler_o_fifoready(i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_iord_bl_call_euler_o_fifoready),
        .out_o_stall(i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1(STALLENABLE,90)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_backStall = i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1(BLACKBOX,21)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    euler_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_euler1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_backStall),
        .in_valid_in(SE_out_euler_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,99)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = euler_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // euler_B1_start_merge_reg(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    euler_B1_start_merge_reg theeuler_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_euler_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(euler_B1_start_merge_reg_out_stall_out),
        .out_valid_out(euler_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_euler_B1_start_merge_reg(STALLENABLE,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_euler_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_euler_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_euler_B1_start_merge_reg_fromReg0 <= SE_out_euler_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_euler_B1_start_merge_reg_fromReg1 <= SE_out_euler_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_euler_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_stall_out) & SE_out_euler_B1_start_merge_reg_wireValid) | SE_out_euler_B1_start_merge_reg_fromReg0;
    assign SE_out_euler_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_o_stall) & SE_out_euler_B1_start_merge_reg_wireValid) | SE_out_euler_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_euler_B1_start_merge_reg_StallValid = SE_out_euler_B1_start_merge_reg_backStall & SE_out_euler_B1_start_merge_reg_wireValid;
    assign SE_out_euler_B1_start_merge_reg_toReg0 = SE_out_euler_B1_start_merge_reg_StallValid & SE_out_euler_B1_start_merge_reg_consumed0;
    assign SE_out_euler_B1_start_merge_reg_toReg1 = SE_out_euler_B1_start_merge_reg_StallValid & SE_out_euler_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_euler_B1_start_merge_reg_or0 = SE_out_euler_B1_start_merge_reg_consumed0;
    assign SE_out_euler_B1_start_merge_reg_wireStall = ~ (SE_out_euler_B1_start_merge_reg_consumed1 & SE_out_euler_B1_start_merge_reg_or0);
    assign SE_out_euler_B1_start_merge_reg_backStall = SE_out_euler_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_euler_B1_start_merge_reg_V0 = SE_out_euler_B1_start_merge_reg_wireValid & ~ (SE_out_euler_B1_start_merge_reg_fromReg0);
    assign SE_out_euler_B1_start_merge_reg_V1 = SE_out_euler_B1_start_merge_reg_wireValid & ~ (SE_out_euler_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_euler_B1_start_merge_reg_wireValid = euler_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x(STALLENABLE,106)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x(BLACKBOX,63)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    euler_i_sfc_s_c0_in_wt_entry_s_c0_enter6_euler0 thei_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_backStall),
        .in_i_valid(SE_out_euler_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_euler0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_euler1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,16)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_euler1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,48)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,49)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i1_unnamed_euler3_euler8_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,53)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,59)
    assign out_iord_bl_call_euler_o_fifoready = i_iord_bl_call_euler_unnamed_euler2_euler2_aunroll_x_out_iord_bl_call_euler_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i33_unnamed_euler4_euler13_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,61)@3
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eulers_c0_enter6_euler0_aunroll_x_1_V0;

endmodule
