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

// SystemVerilog created from sobel_i_sfc_logic_s_c0_in_for_body3_s_c0_enter486_sobel0
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_i_sfc_logic_s_c0_in_for_body3_s_c0_enter486_sobel0 (
    output wire [0:0] out_c0_exi150_0_tpl,
    output wire [31:0] out_c0_exi150_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sobel1,
    input wire [0:0] in_c0_eni147_0_tpl,
    input wire [63:0] in_c0_eni147_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_2940_q;
    wire [31:0] c_i32_050_q;
    wire [31:0] c_i32_102346_q;
    wire [31:0] c_i32_102348_q;
    wire [31:0] c_i32_105347_q;
    wire [31:0] c_i32_214748364744_q;
    wire [31:0] c_i32_214748364845_q;
    wire [31:0] c_i32_3149_q;
    wire [0:0] i_acl_24_i_sobel25_s;
    reg [31:0] i_acl_24_i_sobel25_q;
    wire [26:0] i_acl_24_i_sobel25_vt_const_31_q;
    wire [31:0] i_acl_24_i_sobel25_vt_join_q;
    wire [4:0] i_acl_24_i_sobel25_vt_select_4_b;
    wire [0:0] i_acl_25_i_sobel26_s;
    reg [31:0] i_acl_25_i_sobel26_q;
    wire [31:0] i_acl_25_i_sobel26_vt_join_q;
    wire [4:0] i_acl_25_i_sobel26_vt_select_4_b;
    wire [0:0] i_acl_26_i_sobel27_s;
    reg [31:0] i_acl_26_i_sobel27_q;
    wire [0:0] i_acl_27_i_sobel28_s;
    reg [31:0] i_acl_27_i_sobel28_q;
    wire [63:0] i_acl_sqrtfd_call179_sobel2_out_primWireOut;
    wire [51:0] i_and1_i_sobel6_vt_const_63_q;
    wire [63:0] i_and1_i_sobel6_vt_join_q;
    wire [11:0] i_and1_i_sobel6_vt_select_11_b;
    wire [1:0] i_and23_i_sobel29_vt_const_1_q;
    wire [31:0] i_and23_i_sobel29_vt_join_q;
    wire [2:0] i_and23_i_sobel29_vt_select_4_b;
    wire [29:0] i_and26_i_sobel31_vt_const_31_q;
    wire [31:0] i_and26_i_sobel31_vt_join_q;
    wire [1:0] i_and26_i_sobel31_vt_select_1_b;
    wire [33:0] i_cmp12_i_sobel19_a;
    wire [33:0] i_cmp12_i_sobel19_b;
    logic [33:0] i_cmp12_i_sobel19_o;
    wire [0:0] i_cmp12_i_sobel19_c;
    wire [33:0] i_cmp16_i_sobel20_a;
    wire [33:0] i_cmp16_i_sobel20_b;
    logic [33:0] i_cmp16_i_sobel20_o;
    wire [0:0] i_cmp16_i_sobel20_c;
    wire [0:0] i_cmp_i1_sobel16_qi;
    reg [0:0] i_cmp_i1_sobel16_q;
    wire [0:0] i_cond10_i_sobel18_s;
    reg [31:0] i_cond10_i_sobel18_q;
    wire [1:0] i_conv7_i_sobel15_vt_const_31_q;
    wire [31:0] i_conv7_i_sobel15_vt_join_q;
    wire [29:0] i_conv7_i_sobel15_vt_select_29_b;
    wire [32:0] i_off_i_sobel23_a;
    wire [32:0] i_off_i_sobel23_b;
    logic [32:0] i_off_i_sobel23_o;
    wire [32:0] i_off_i_sobel23_q;
    wire [0:0] i_spec_select23_i_sobel21_s;
    reg [31:0] i_spec_select23_i_sobel21_q;
    wire [32:0] i_sub29_i_sobel33_a;
    wire [32:0] i_sub29_i_sobel33_b;
    logic [32:0] i_sub29_i_sobel33_o;
    wire [32:0] i_sub29_i_sobel33_q;
    wire [16:0] i_unnamed_sobel10_a;
    wire [16:0] i_unnamed_sobel10_b;
    logic [16:0] i_unnamed_sobel10_o;
    wire [16:0] i_unnamed_sobel10_q;
    wire [21:0] i_unnamed_sobel12_vt_const_63_q;
    wire [63:0] i_unnamed_sobel12_vt_join_q;
    wire [41:0] i_unnamed_sobel12_vt_select_41_b;
    wire [31:0] i_unnamed_sobel14_vt_join_q;
    wire [29:0] i_unnamed_sobel14_vt_select_29_b;
    wire [31:0] i_unnamed_sobel22_vt_join_q;
    wire [4:0] i_unnamed_sobel22_vt_select_4_b;
    wire [33:0] i_unnamed_sobel24_a;
    wire [33:0] i_unnamed_sobel24_b;
    logic [33:0] i_unnamed_sobel24_o;
    wire [0:0] i_unnamed_sobel24_c;
    wire [0:0] i_unnamed_sobel34_s;
    reg [31:0] i_unnamed_sobel34_q;
    wire [19:0] i_unnamed_sobel7_vt_const_31_q;
    wire [31:0] i_unnamed_sobel7_vt_join_q;
    wire [11:0] i_unnamed_sobel7_vt_select_11_b;
    wire [20:0] i_unnamed_sobel8_vt_const_31_q;
    wire [31:0] i_unnamed_sobel8_vt_join_q;
    wire [10:0] i_unnamed_sobel8_vt_select_10_b;
    wire [3:0] i_unnamed_sobel9_vt_const_15_q;
    wire [15:0] i_unnamed_sobel9_vt_join_q;
    wire [11:0] i_unnamed_sobel9_vt_select_11_b;
    wire [31:0] bgTrunc_i_off_i_sobel23_sel_x_b;
    wire [31:0] bgTrunc_i_sub29_i_sobel33_sel_x_b;
    wire [15:0] bgTrunc_i_unnamed_sobel10_sel_x_b;
    wire [31:0] c_i32_204739_recast_x_q;
    wire [4:0] i_conv5_trunc_i_sobel11_sel_x_b;
    wire [4:0] i_shr24_i_sobel0_shift_narrow_x_b;
    wire [4:0] i_shr27_i_sobel0_shift_narrow_x_b;
    wire [31:0] i_unnamed_sobel13_sel_x_b;
    wire [31:0] i_unnamed_sobel22_sel_x_b;
    wire [31:0] i_unnamed_sobel7_sel_x_b;
    wire [15:0] i_unnamed_sobel9_sel_x_b;
    wire [31:0] i_and23_i_sobel29_join_q;
    wire [31:0] i_and26_i_sobel31_join_q;
    wire [29:0] i_conv7_i_sobel15_BitSelect_for_a_b;
    wire [31:0] i_conv7_i_sobel15_join_q;
    wire [0:0] i_tobool_i_sobel4_cmp_sign_qi;
    reg [0:0] i_tobool_i_sobel4_cmp_sign_q;
    wire [29:0] i_unnamed_sobel14_BitSelect_for_a_b;
    wire [31:0] i_unnamed_sobel14_join_q;
    wire [10:0] i_unnamed_sobel8_BitSelect_for_a_b;
    wire [31:0] i_unnamed_sobel8_join_q;
    wire [59:0] rightShiftStage0Idx1Rng4_uid147_i_and1_i_sobel0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid149_i_and1_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_s;
    reg [63:0] rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_q;
    wire [47:0] rightShiftStage1Idx1Rng16_uid152_i_and1_i_sobel0_shift_x_b;
    wire [15:0] rightShiftStage1Idx1Pad16_uid153_i_and1_i_sobel0_shift_x_q;
    wire [63:0] rightShiftStage1Idx1_uid154_i_and1_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_s;
    reg [63:0] rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_q;
    wire [31:0] rightShiftStage2Idx1Rng32_uid157_i_and1_i_sobel0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid159_i_and1_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_s;
    reg [63:0] rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_q;
    wire [0:0] xMSB_uid163_i_shr24_i_sobel0_shift_x_b;
    wire [3:0] seMsb_to4_uid165_in;
    wire [3:0] seMsb_to4_uid165_b;
    wire [27:0] rightShiftStage0Idx1Rng4_uid166_i_shr24_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid167_i_shr24_i_sobel0_shift_x_q;
    wire [7:0] seMsb_to8_uid168_in;
    wire [7:0] seMsb_to8_uid168_b;
    wire [23:0] rightShiftStage0Idx2Rng8_uid169_i_shr24_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid170_i_shr24_i_sobel0_shift_x_q;
    wire [11:0] seMsb_to12_uid171_in;
    wire [11:0] seMsb_to12_uid171_b;
    wire [19:0] rightShiftStage0Idx3Rng12_uid172_i_shr24_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid173_i_shr24_i_sobel0_shift_x_q;
    wire [1:0] rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_s;
    reg [31:0] rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_q;
    wire [15:0] seMsb_to16_uid176_in;
    wire [15:0] seMsb_to16_uid176_b;
    wire [15:0] rightShiftStage1Idx1Rng16_uid177_i_shr24_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid178_i_shr24_i_sobel0_shift_x_q;
    wire [0:0] rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_s;
    reg [31:0] rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q;
    wire [0:0] xMSB_uid182_i_shr27_i_sobel0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid184_i_shr27_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid185_i_shr27_i_sobel0_shift_x_q;
    wire [1:0] seMsb_to2_uid186_in;
    wire [1:0] seMsb_to2_uid186_b;
    wire [29:0] rightShiftStage0Idx2Rng2_uid187_i_shr27_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid188_i_shr27_i_sobel0_shift_x_q;
    wire [2:0] seMsb_to3_uid189_in;
    wire [2:0] seMsb_to3_uid189_b;
    wire [28:0] rightShiftStage0Idx3Rng3_uid190_i_shr27_i_sobel0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid191_i_shr27_i_sobel0_shift_x_q;
    wire [1:0] rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_in;
    wire [1:0] rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_b;
    wire [1:0] rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_s;
    reg [31:0] rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q;
    wire [61:0] rightShiftStage0Idx1Rng2_uid197_i_unnamed_sobel0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid199_i_unnamed_sobel0_shift_x_q;
    wire [0:0] rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_s;
    reg [63:0] rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_q;
    wire [59:0] rightShiftStage1Idx1Rng4_uid202_i_unnamed_sobel0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid204_i_unnamed_sobel0_shift_x_q;
    wire [0:0] rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_s;
    reg [63:0] rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_q;
    wire [47:0] rightShiftStage2Idx1Rng16_uid207_i_unnamed_sobel0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid209_i_unnamed_sobel0_shift_x_q;
    wire [0:0] rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_s;
    reg [63:0] rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_q;
    wire [4:0] i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_in;
    wire [2:0] i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_b;
    wire [1:0] i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_c;
    wire [1:0] rightShiftStageSel2Dto2_uid174_i_shr24_i_sobel0_shift_x_merged_bit_select_b;
    wire [0:0] rightShiftStageSel2Dto2_uid174_i_shr24_i_sobel0_shift_x_merged_bit_select_c;
    reg [1:0] redist0_rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_b_1_q;
    reg [0:0] redist1_i_tobool_i_sobel4_cmp_sign_q_3_q;
    reg [0:0] redist1_i_tobool_i_sobel4_cmp_sign_q_3_delay_0;
    reg [0:0] redist2_sync_together54_aunroll_x_in_i_valid_39_q;
    reg [4:0] redist3_i_conv5_trunc_i_sobel11_sel_x_b_1_q;
    reg [29:0] redist4_i_conv7_i_sobel15_vt_select_29_b_1_q;
    reg [31:0] redist5_i_cond10_i_sobel18_q_1_q;
    reg [11:0] redist6_i_and1_i_sobel6_vt_select_11_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together54_aunroll_x_in_i_valid_39(DELAY,216)
    dspba_delay_ver #( .width(1), .depth(39), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together54_aunroll_x_in_i_valid_39 ( .xin(in_i_valid), .xout(redist2_sync_together54_aunroll_x_in_i_valid_39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_050(CONSTANT,7)
    assign c_i32_050_q = $unsigned(32'b00000000000000000000000000000000);

    // i_sub29_i_sobel33(SUB,55)@194
    assign i_sub29_i_sobel33_a = {1'b0, c_i32_050_q};
    assign i_sub29_i_sobel33_b = {1'b0, rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q};
    assign i_sub29_i_sobel33_o = $unsigned(i_sub29_i_sobel33_a) - $unsigned(i_sub29_i_sobel33_b);
    assign i_sub29_i_sobel33_q = i_sub29_i_sobel33_o[32:0];

    // bgTrunc_i_sub29_i_sobel33_sel_x(BITSELECT,89)@194
    assign bgTrunc_i_sub29_i_sobel33_sel_x_b = $unsigned(i_sub29_i_sobel33_q[31:0]);

    // xMSB_uid182_i_shr27_i_sobel0_shift_x(BITSELECT,181)@194
    assign xMSB_uid182_i_shr27_i_sobel0_shift_x_b = $unsigned(rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q[31:31]);

    // seMsb_to3_uid189(BITSELECT,188)@194
    assign seMsb_to3_uid189_in = $unsigned({{2{xMSB_uid182_i_shr27_i_sobel0_shift_x_b[0]}}, xMSB_uid182_i_shr27_i_sobel0_shift_x_b});
    assign seMsb_to3_uid189_b = $unsigned(seMsb_to3_uid189_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid190_i_shr27_i_sobel0_shift_x(BITSELECT,189)@194
    assign rightShiftStage0Idx3Rng3_uid190_i_shr27_i_sobel0_shift_x_b = $unsigned(rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q[31:3]);

    // rightShiftStage0Idx3_uid191_i_shr27_i_sobel0_shift_x(BITJOIN,190)@194
    assign rightShiftStage0Idx3_uid191_i_shr27_i_sobel0_shift_x_q = {seMsb_to3_uid189_b, rightShiftStage0Idx3Rng3_uid190_i_shr27_i_sobel0_shift_x_b};

    // seMsb_to2_uid186(BITSELECT,185)@194
    assign seMsb_to2_uid186_in = $unsigned({{1{xMSB_uid182_i_shr27_i_sobel0_shift_x_b[0]}}, xMSB_uid182_i_shr27_i_sobel0_shift_x_b});
    assign seMsb_to2_uid186_b = $unsigned(seMsb_to2_uid186_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid187_i_shr27_i_sobel0_shift_x(BITSELECT,186)@194
    assign rightShiftStage0Idx2Rng2_uid187_i_shr27_i_sobel0_shift_x_b = $unsigned(rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q[31:2]);

    // rightShiftStage0Idx2_uid188_i_shr27_i_sobel0_shift_x(BITJOIN,187)@194
    assign rightShiftStage0Idx2_uid188_i_shr27_i_sobel0_shift_x_q = {seMsb_to2_uid186_b, rightShiftStage0Idx2Rng2_uid187_i_shr27_i_sobel0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid184_i_shr27_i_sobel0_shift_x(BITSELECT,183)@194
    assign rightShiftStage0Idx1Rng1_uid184_i_shr27_i_sobel0_shift_x_b = $unsigned(rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q[31:1]);

    // rightShiftStage0Idx1_uid185_i_shr27_i_sobel0_shift_x(BITJOIN,184)@194
    assign rightShiftStage0Idx1_uid185_i_shr27_i_sobel0_shift_x_q = {xMSB_uid182_i_shr27_i_sobel0_shift_x_b, rightShiftStage0Idx1Rng1_uid184_i_shr27_i_sobel0_shift_x_b};

    // c_i32_214748364845(CONSTANT,15)
    assign c_i32_214748364845_q = $unsigned(32'b10000000000000000000000000000000);

    // c_i32_214748364744(CONSTANT,14)
    assign c_i32_214748364744_q = $unsigned(32'b01111111111111111111111111111111);

    // i_acl_sqrtfd_call179_sobel2(BLACKBOX,31)@155
    // out out_primWireOut@191
    sobel_flt_i_sfc_logic_s_c0_in_for_body3_A000000Z54c2463b0c2463a0455u thei_acl_sqrtfd_call179_sobel2 (
        .in_0(in_c0_eni147_1_tpl),
        .out_primWireOut(i_acl_sqrtfd_call179_sobel2_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_tobool_i_sobel4_cmp_sign(LOGICAL,138)@191 + 1
    assign i_tobool_i_sobel4_cmp_sign_qi = $unsigned(i_acl_sqrtfd_call179_sobel2_out_primWireOut[63:63]);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool_i_sobel4_cmp_sign_delay ( .xin(i_tobool_i_sobel4_cmp_sign_qi), .xout(i_tobool_i_sobel4_cmp_sign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cond10_i_sobel18(MUX,47)@192
    assign i_cond10_i_sobel18_s = i_tobool_i_sobel4_cmp_sign_q;
    always @(i_cond10_i_sobel18_s or c_i32_214748364744_q or c_i32_214748364845_q)
    begin
        unique case (i_cond10_i_sobel18_s)
            1'b0 : i_cond10_i_sobel18_q = c_i32_214748364744_q;
            1'b1 : i_cond10_i_sobel18_q = c_i32_214748364845_q;
            default : i_cond10_i_sobel18_q = 32'b0;
        endcase
    end

    // redist5_i_cond10_i_sobel18_q_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_cond10_i_sobel18_q_1_q <= '0;
        end
        else
        begin
            redist5_i_cond10_i_sobel18_q_1_q <= $unsigned(i_cond10_i_sobel18_q);
        end
    end

    // i_conv7_i_sobel15_vt_const_31(CONSTANT,50)
    assign i_conv7_i_sobel15_vt_const_31_q = $unsigned(2'b01);

    // i_and23_i_sobel29_vt_const_1(CONSTANT,36)
    assign i_and23_i_sobel29_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_sobel12_vt_const_63(CONSTANT,58)
    assign i_unnamed_sobel12_vt_const_63_q = $unsigned(22'b0000000000000000000000);

    // rightShiftStage1Idx1Pad16_uid153_i_and1_i_sobel0_shift_x(CONSTANT,152)
    assign rightShiftStage1Idx1Pad16_uid153_i_and1_i_sobel0_shift_x_q = $unsigned(16'b0000000000000000);

    // rightShiftStage2Idx1Rng16_uid207_i_unnamed_sobel0_shift_x(BITSELECT,206)@191
    assign rightShiftStage2Idx1Rng16_uid207_i_unnamed_sobel0_shift_x_b = rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_q[63:16];

    // rightShiftStage2Idx1_uid209_i_unnamed_sobel0_shift_x(BITJOIN,208)@191
    assign rightShiftStage2Idx1_uid209_i_unnamed_sobel0_shift_x_q = {rightShiftStage1Idx1Pad16_uid153_i_and1_i_sobel0_shift_x_q, rightShiftStage2Idx1Rng16_uid207_i_unnamed_sobel0_shift_x_b};

    // i_unnamed_sobel9_vt_const_15(CONSTANT,82)
    assign i_unnamed_sobel9_vt_const_15_q = $unsigned(4'b0000);

    // rightShiftStage1Idx1Rng4_uid202_i_unnamed_sobel0_shift_x(BITSELECT,201)@191
    assign rightShiftStage1Idx1Rng4_uid202_i_unnamed_sobel0_shift_x_b = rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_q[63:4];

    // rightShiftStage1Idx1_uid204_i_unnamed_sobel0_shift_x(BITJOIN,203)@191
    assign rightShiftStage1Idx1_uid204_i_unnamed_sobel0_shift_x_q = {i_unnamed_sobel9_vt_const_15_q, rightShiftStage1Idx1Rng4_uid202_i_unnamed_sobel0_shift_x_b};

    // rightShiftStage0Idx1Rng2_uid197_i_unnamed_sobel0_shift_x(BITSELECT,196)@191
    assign rightShiftStage0Idx1Rng2_uid197_i_unnamed_sobel0_shift_x_b = i_acl_sqrtfd_call179_sobel2_out_primWireOut[63:2];

    // rightShiftStage0Idx1_uid199_i_unnamed_sobel0_shift_x(BITJOIN,198)@191
    assign rightShiftStage0Idx1_uid199_i_unnamed_sobel0_shift_x_q = {i_and23_i_sobel29_vt_const_1_q, rightShiftStage0Idx1Rng2_uid197_i_unnamed_sobel0_shift_x_b};

    // rightShiftStage0_uid201_i_unnamed_sobel0_shift_x(MUX,200)@191
    assign rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_s or i_acl_sqrtfd_call179_sobel2_out_primWireOut or rightShiftStage0Idx1_uid199_i_unnamed_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_s)
            1'b0 : rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_q = i_acl_sqrtfd_call179_sobel2_out_primWireOut;
            1'b1 : rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_q = rightShiftStage0Idx1_uid199_i_unnamed_sobel0_shift_x_q;
            default : rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid206_i_unnamed_sobel0_shift_x(MUX,205)@191
    assign rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_s or rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_q or rightShiftStage1Idx1_uid204_i_unnamed_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_s)
            1'b0 : rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_q = rightShiftStage0_uid201_i_unnamed_sobel0_shift_x_q;
            1'b1 : rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_q = rightShiftStage1Idx1_uid204_i_unnamed_sobel0_shift_x_q;
            default : rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid211_i_unnamed_sobel0_shift_x(MUX,210)@191
    assign rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_s or rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_q or rightShiftStage2Idx1_uid209_i_unnamed_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_s)
            1'b0 : rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_q = rightShiftStage1_uid206_i_unnamed_sobel0_shift_x_q;
            1'b1 : rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_q = rightShiftStage2Idx1_uid209_i_unnamed_sobel0_shift_x_q;
            default : rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_sobel12_vt_select_41(BITSELECT,60)@191
    assign i_unnamed_sobel12_vt_select_41_b = rightShiftStage2_uid211_i_unnamed_sobel0_shift_x_q[41:0];

    // i_unnamed_sobel12_vt_join(BITJOIN,59)@191
    assign i_unnamed_sobel12_vt_join_q = {i_unnamed_sobel12_vt_const_63_q, i_unnamed_sobel12_vt_select_41_b};

    // i_unnamed_sobel13_sel_x(BITSELECT,114)@191
    assign i_unnamed_sobel13_sel_x_b = i_unnamed_sobel12_vt_join_q[31:0];

    // i_unnamed_sobel14_BitSelect_for_a(BITSELECT,140)@191
    assign i_unnamed_sobel14_BitSelect_for_a_b = i_unnamed_sobel13_sel_x_b[29:0];

    // i_unnamed_sobel14_join(BITJOIN,141)@191
    assign i_unnamed_sobel14_join_q = {GND_q, GND_q, i_unnamed_sobel14_BitSelect_for_a_b};

    // i_unnamed_sobel14_vt_select_29(BITSELECT,65)@191
    assign i_unnamed_sobel14_vt_select_29_b = i_unnamed_sobel14_join_q[29:0];

    // i_unnamed_sobel14_vt_join(BITJOIN,64)@191
    assign i_unnamed_sobel14_vt_join_q = {i_and23_i_sobel29_vt_const_1_q, i_unnamed_sobel14_vt_select_29_b};

    // i_conv7_i_sobel15_BitSelect_for_a(BITSELECT,136)@191
    assign i_conv7_i_sobel15_BitSelect_for_a_b = i_unnamed_sobel14_vt_join_q[29:0];

    // i_conv7_i_sobel15_join(BITJOIN,137)@191
    assign i_conv7_i_sobel15_join_q = {GND_q, VCC_q, i_conv7_i_sobel15_BitSelect_for_a_b};

    // i_conv7_i_sobel15_vt_select_29(BITSELECT,52)@191
    assign i_conv7_i_sobel15_vt_select_29_b = i_conv7_i_sobel15_join_q[29:0];

    // redist4_i_conv7_i_sobel15_vt_select_29_b_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_conv7_i_sobel15_vt_select_29_b_1_q <= '0;
        end
        else
        begin
            redist4_i_conv7_i_sobel15_vt_select_29_b_1_q <= $unsigned(i_conv7_i_sobel15_vt_select_29_b);
        end
    end

    // i_conv7_i_sobel15_vt_join(BITJOIN,51)@192
    assign i_conv7_i_sobel15_vt_join_q = {i_conv7_i_sobel15_vt_const_31_q, redist4_i_conv7_i_sobel15_vt_select_29_b_1_q};

    // i_unnamed_sobel8_vt_const_31(CONSTANT,78)
    assign i_unnamed_sobel8_vt_const_31_q = $unsigned(21'b000000000000000000000);

    // i_unnamed_sobel7_vt_const_31(CONSTANT,74)
    assign i_unnamed_sobel7_vt_const_31_q = $unsigned(20'b00000000000000000000);

    // i_and1_i_sobel6_vt_const_63(CONSTANT,32)
    assign i_and1_i_sobel6_vt_const_63_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // rightShiftStage2Idx1Rng32_uid157_i_and1_i_sobel0_shift_x(BITSELECT,156)@191
    assign rightShiftStage2Idx1Rng32_uid157_i_and1_i_sobel0_shift_x_b = rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_q[63:32];

    // rightShiftStage2Idx1_uid159_i_and1_i_sobel0_shift_x(BITJOIN,158)@191
    assign rightShiftStage2Idx1_uid159_i_and1_i_sobel0_shift_x_q = {c_i32_050_q, rightShiftStage2Idx1Rng32_uid157_i_and1_i_sobel0_shift_x_b};

    // rightShiftStage1Idx1Rng16_uid152_i_and1_i_sobel0_shift_x(BITSELECT,151)@191
    assign rightShiftStage1Idx1Rng16_uid152_i_and1_i_sobel0_shift_x_b = rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_q[63:16];

    // rightShiftStage1Idx1_uid154_i_and1_i_sobel0_shift_x(BITJOIN,153)@191
    assign rightShiftStage1Idx1_uid154_i_and1_i_sobel0_shift_x_q = {rightShiftStage1Idx1Pad16_uid153_i_and1_i_sobel0_shift_x_q, rightShiftStage1Idx1Rng16_uid152_i_and1_i_sobel0_shift_x_b};

    // rightShiftStage0Idx1Rng4_uid147_i_and1_i_sobel0_shift_x(BITSELECT,146)@191
    assign rightShiftStage0Idx1Rng4_uid147_i_and1_i_sobel0_shift_x_b = i_acl_sqrtfd_call179_sobel2_out_primWireOut[63:4];

    // rightShiftStage0Idx1_uid149_i_and1_i_sobel0_shift_x(BITJOIN,148)@191
    assign rightShiftStage0Idx1_uid149_i_and1_i_sobel0_shift_x_q = {i_unnamed_sobel9_vt_const_15_q, rightShiftStage0Idx1Rng4_uid147_i_and1_i_sobel0_shift_x_b};

    // rightShiftStage0_uid151_i_and1_i_sobel0_shift_x(MUX,150)@191
    assign rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_s or i_acl_sqrtfd_call179_sobel2_out_primWireOut or rightShiftStage0Idx1_uid149_i_and1_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_s)
            1'b0 : rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_q = i_acl_sqrtfd_call179_sobel2_out_primWireOut;
            1'b1 : rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_q = rightShiftStage0Idx1_uid149_i_and1_i_sobel0_shift_x_q;
            default : rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid156_i_and1_i_sobel0_shift_x(MUX,155)@191
    assign rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_s or rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_q or rightShiftStage1Idx1_uid154_i_and1_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_s)
            1'b0 : rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_q = rightShiftStage0_uid151_i_and1_i_sobel0_shift_x_q;
            1'b1 : rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_q = rightShiftStage1Idx1_uid154_i_and1_i_sobel0_shift_x_q;
            default : rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid161_i_and1_i_sobel0_shift_x(MUX,160)@191
    assign rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_s or rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_q or rightShiftStage2Idx1_uid159_i_and1_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_s)
            1'b0 : rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_q = rightShiftStage1_uid156_i_and1_i_sobel0_shift_x_q;
            1'b1 : rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_q = rightShiftStage2Idx1_uid159_i_and1_i_sobel0_shift_x_q;
            default : rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_q = 64'b0;
        endcase
    end

    // i_and1_i_sobel6_vt_select_11(BITSELECT,34)@191
    assign i_and1_i_sobel6_vt_select_11_b = rightShiftStage2_uid161_i_and1_i_sobel0_shift_x_q[11:0];

    // redist6_i_and1_i_sobel6_vt_select_11_b_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_and1_i_sobel6_vt_select_11_b_1_q <= '0;
        end
        else
        begin
            redist6_i_and1_i_sobel6_vt_select_11_b_1_q <= $unsigned(i_and1_i_sobel6_vt_select_11_b);
        end
    end

    // i_and1_i_sobel6_vt_join(BITJOIN,33)@192
    assign i_and1_i_sobel6_vt_join_q = {i_and1_i_sobel6_vt_const_63_q, redist6_i_and1_i_sobel6_vt_select_11_b_1_q};

    // i_unnamed_sobel7_sel_x(BITSELECT,116)@192
    assign i_unnamed_sobel7_sel_x_b = i_and1_i_sobel6_vt_join_q[31:0];

    // i_unnamed_sobel7_vt_select_11(BITSELECT,76)@192
    assign i_unnamed_sobel7_vt_select_11_b = i_unnamed_sobel7_sel_x_b[11:0];

    // i_unnamed_sobel7_vt_join(BITJOIN,75)@192
    assign i_unnamed_sobel7_vt_join_q = {i_unnamed_sobel7_vt_const_31_q, i_unnamed_sobel7_vt_select_11_b};

    // i_unnamed_sobel8_BitSelect_for_a(BITSELECT,142)@192
    assign i_unnamed_sobel8_BitSelect_for_a_b = i_unnamed_sobel7_vt_join_q[10:0];

    // i_unnamed_sobel8_join(BITJOIN,143)@192
    assign i_unnamed_sobel8_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_unnamed_sobel8_BitSelect_for_a_b};

    // i_unnamed_sobel8_vt_select_10(BITSELECT,80)@192
    assign i_unnamed_sobel8_vt_select_10_b = i_unnamed_sobel8_join_q[10:0];

    // i_unnamed_sobel8_vt_join(BITJOIN,79)@192
    assign i_unnamed_sobel8_vt_join_q = {i_unnamed_sobel8_vt_const_31_q, i_unnamed_sobel8_vt_select_10_b};

    // c_i32_105347(CONSTANT,10)
    assign c_i32_105347_q = $unsigned(32'b00000000000000000000010000011101);

    // i_cmp16_i_sobel20(COMPARE,45)@192
    assign i_cmp16_i_sobel20_a = {2'b00, c_i32_105347_q};
    assign i_cmp16_i_sobel20_b = {2'b00, i_unnamed_sobel8_vt_join_q};
    assign i_cmp16_i_sobel20_o = $unsigned(i_cmp16_i_sobel20_a) - $unsigned(i_cmp16_i_sobel20_b);
    assign i_cmp16_i_sobel20_c[0] = i_cmp16_i_sobel20_o[33];

    // i_spec_select23_i_sobel21(MUX,54)@192
    assign i_spec_select23_i_sobel21_s = i_cmp16_i_sobel20_c;
    always @(i_spec_select23_i_sobel21_s or i_conv7_i_sobel15_vt_join_q or i_cond10_i_sobel18_q)
    begin
        unique case (i_spec_select23_i_sobel21_s)
            1'b0 : i_spec_select23_i_sobel21_q = i_conv7_i_sobel15_vt_join_q;
            1'b1 : i_spec_select23_i_sobel21_q = i_cond10_i_sobel18_q;
            default : i_spec_select23_i_sobel21_q = 32'b0;
        endcase
    end

    // c_i32_102346(CONSTANT,8)
    assign c_i32_102346_q = $unsigned(32'b00000000000000000000001111111111);

    // i_cmp12_i_sobel19(COMPARE,44)@192
    assign i_cmp12_i_sobel19_a = {2'b00, i_unnamed_sobel8_vt_join_q};
    assign i_cmp12_i_sobel19_b = {2'b00, c_i32_102346_q};
    assign i_cmp12_i_sobel19_o = $unsigned(i_cmp12_i_sobel19_a) - $unsigned(i_cmp12_i_sobel19_b);
    assign i_cmp12_i_sobel19_c[0] = i_cmp12_i_sobel19_o[33];

    // i_acl_26_i_sobel27(MUX,29)@192 + 1
    assign i_acl_26_i_sobel27_s = i_cmp12_i_sobel19_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_26_i_sobel27_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_26_i_sobel27_s)
                1'b0 : i_acl_26_i_sobel27_q <= i_spec_select23_i_sobel21_q;
                1'b1 : i_acl_26_i_sobel27_q <= c_i32_050_q;
                default : i_acl_26_i_sobel27_q <= 32'b0;
            endcase
        end
    end

    // c_i32_204739_recast_x(CONSTANT,91)
    assign c_i32_204739_recast_x_q = $unsigned(32'b00000000000000000000011111111111);

    // i_cmp_i1_sobel16(LOGICAL,46)@192 + 1
    assign i_cmp_i1_sobel16_qi = $unsigned(i_unnamed_sobel8_vt_join_q == c_i32_204739_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i1_sobel16_delay ( .xin(i_cmp_i1_sobel16_qi), .xout(i_cmp_i1_sobel16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_27_i_sobel28(MUX,30)@193
    assign i_acl_27_i_sobel28_s = i_cmp_i1_sobel16_q;
    always @(i_acl_27_i_sobel28_s or i_acl_26_i_sobel27_q or redist5_i_cond10_i_sobel18_q_1_q)
    begin
        unique case (i_acl_27_i_sobel28_s)
            1'b0 : i_acl_27_i_sobel28_q = i_acl_26_i_sobel27_q;
            1'b1 : i_acl_27_i_sobel28_q = redist5_i_cond10_i_sobel18_q_1_q;
            default : i_acl_27_i_sobel28_q = 32'b0;
        endcase
    end

    // xMSB_uid163_i_shr24_i_sobel0_shift_x(BITSELECT,162)@193
    assign xMSB_uid163_i_shr24_i_sobel0_shift_x_b = $unsigned(i_acl_27_i_sobel28_q[31:31]);

    // seMsb_to16_uid176(BITSELECT,175)@193
    assign seMsb_to16_uid176_in = $unsigned({{15{xMSB_uid163_i_shr24_i_sobel0_shift_x_b[0]}}, xMSB_uid163_i_shr24_i_sobel0_shift_x_b});
    assign seMsb_to16_uid176_b = $unsigned(seMsb_to16_uid176_in[15:0]);

    // rightShiftStage1Idx1Rng16_uid177_i_shr24_i_sobel0_shift_x(BITSELECT,176)@193
    assign rightShiftStage1Idx1Rng16_uid177_i_shr24_i_sobel0_shift_x_b = $unsigned(rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_q[31:16]);

    // rightShiftStage1Idx1_uid178_i_shr24_i_sobel0_shift_x(BITJOIN,177)@193
    assign rightShiftStage1Idx1_uid178_i_shr24_i_sobel0_shift_x_q = {seMsb_to16_uid176_b, rightShiftStage1Idx1Rng16_uid177_i_shr24_i_sobel0_shift_x_b};

    // seMsb_to12_uid171(BITSELECT,170)@193
    assign seMsb_to12_uid171_in = $unsigned({{11{xMSB_uid163_i_shr24_i_sobel0_shift_x_b[0]}}, xMSB_uid163_i_shr24_i_sobel0_shift_x_b});
    assign seMsb_to12_uid171_b = $unsigned(seMsb_to12_uid171_in[11:0]);

    // rightShiftStage0Idx3Rng12_uid172_i_shr24_i_sobel0_shift_x(BITSELECT,171)@193
    assign rightShiftStage0Idx3Rng12_uid172_i_shr24_i_sobel0_shift_x_b = $unsigned(i_acl_27_i_sobel28_q[31:12]);

    // rightShiftStage0Idx3_uid173_i_shr24_i_sobel0_shift_x(BITJOIN,172)@193
    assign rightShiftStage0Idx3_uid173_i_shr24_i_sobel0_shift_x_q = {seMsb_to12_uid171_b, rightShiftStage0Idx3Rng12_uid172_i_shr24_i_sobel0_shift_x_b};

    // seMsb_to8_uid168(BITSELECT,167)@193
    assign seMsb_to8_uid168_in = $unsigned({{7{xMSB_uid163_i_shr24_i_sobel0_shift_x_b[0]}}, xMSB_uid163_i_shr24_i_sobel0_shift_x_b});
    assign seMsb_to8_uid168_b = $unsigned(seMsb_to8_uid168_in[7:0]);

    // rightShiftStage0Idx2Rng8_uid169_i_shr24_i_sobel0_shift_x(BITSELECT,168)@193
    assign rightShiftStage0Idx2Rng8_uid169_i_shr24_i_sobel0_shift_x_b = $unsigned(i_acl_27_i_sobel28_q[31:8]);

    // rightShiftStage0Idx2_uid170_i_shr24_i_sobel0_shift_x(BITJOIN,169)@193
    assign rightShiftStage0Idx2_uid170_i_shr24_i_sobel0_shift_x_q = {seMsb_to8_uid168_b, rightShiftStage0Idx2Rng8_uid169_i_shr24_i_sobel0_shift_x_b};

    // seMsb_to4_uid165(BITSELECT,164)@193
    assign seMsb_to4_uid165_in = $unsigned({{3{xMSB_uid163_i_shr24_i_sobel0_shift_x_b[0]}}, xMSB_uid163_i_shr24_i_sobel0_shift_x_b});
    assign seMsb_to4_uid165_b = $unsigned(seMsb_to4_uid165_in[3:0]);

    // rightShiftStage0Idx1Rng4_uid166_i_shr24_i_sobel0_shift_x(BITSELECT,165)@193
    assign rightShiftStage0Idx1Rng4_uid166_i_shr24_i_sobel0_shift_x_b = $unsigned(i_acl_27_i_sobel28_q[31:4]);

    // rightShiftStage0Idx1_uid167_i_shr24_i_sobel0_shift_x(BITJOIN,166)@193
    assign rightShiftStage0Idx1_uid167_i_shr24_i_sobel0_shift_x_q = {seMsb_to4_uid165_b, rightShiftStage0Idx1Rng4_uid166_i_shr24_i_sobel0_shift_x_b};

    // rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x(MUX,174)@193
    assign rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_s = rightShiftStageSel2Dto2_uid174_i_shr24_i_sobel0_shift_x_merged_bit_select_b;
    always @(rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_s or i_acl_27_i_sobel28_q or rightShiftStage0Idx1_uid167_i_shr24_i_sobel0_shift_x_q or rightShiftStage0Idx2_uid170_i_shr24_i_sobel0_shift_x_q or rightShiftStage0Idx3_uid173_i_shr24_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_s)
            2'b00 : rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_q = i_acl_27_i_sobel28_q;
            2'b01 : rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_q = rightShiftStage0Idx1_uid167_i_shr24_i_sobel0_shift_x_q;
            2'b10 : rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_q = rightShiftStage0Idx2_uid170_i_shr24_i_sobel0_shift_x_q;
            2'b11 : rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_q = rightShiftStage0Idx3_uid173_i_shr24_i_sobel0_shift_x_q;
            default : rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // i_acl_24_i_sobel25_vt_const_31(CONSTANT,22)
    assign i_acl_24_i_sobel25_vt_const_31_q = $unsigned(27'b000000000000000000000000000);

    // i_unnamed_sobel9_sel_x(BITSELECT,117)@192
    assign i_unnamed_sobel9_sel_x_b = i_and1_i_sobel6_vt_join_q[15:0];

    // i_unnamed_sobel9_vt_select_11(BITSELECT,84)@192
    assign i_unnamed_sobel9_vt_select_11_b = i_unnamed_sobel9_sel_x_b[11:0];

    // i_unnamed_sobel9_vt_join(BITJOIN,83)@192
    assign i_unnamed_sobel9_vt_join_q = {i_unnamed_sobel9_vt_const_15_q, i_unnamed_sobel9_vt_select_11_b};

    // c_i16_2940(CONSTANT,5)
    assign c_i16_2940_q = $unsigned(16'b0000000000011101);

    // i_unnamed_sobel10(SUB,57)@192
    assign i_unnamed_sobel10_a = {1'b0, c_i16_2940_q};
    assign i_unnamed_sobel10_b = {1'b0, i_unnamed_sobel9_vt_join_q};
    assign i_unnamed_sobel10_o = $unsigned(i_unnamed_sobel10_a) - $unsigned(i_unnamed_sobel10_b);
    assign i_unnamed_sobel10_q = i_unnamed_sobel10_o[16:0];

    // bgTrunc_i_unnamed_sobel10_sel_x(BITSELECT,90)@192
    assign bgTrunc_i_unnamed_sobel10_sel_x_b = $unsigned(i_unnamed_sobel10_q[15:0]);

    // i_conv5_trunc_i_sobel11_sel_x(BITSELECT,97)@192
    assign i_conv5_trunc_i_sobel11_sel_x_b = bgTrunc_i_unnamed_sobel10_sel_x_b[4:0];

    // redist3_i_conv5_trunc_i_sobel11_sel_x_b_1(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_conv5_trunc_i_sobel11_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist3_i_conv5_trunc_i_sobel11_sel_x_b_1_q <= $unsigned(i_conv5_trunc_i_sobel11_sel_x_b);
        end
    end

    // i_unnamed_sobel22_sel_x(BITSELECT,115)@193
    assign i_unnamed_sobel22_sel_x_b = {27'b000000000000000000000000000, redist3_i_conv5_trunc_i_sobel11_sel_x_b_1_q[4:0]};

    // i_unnamed_sobel22_vt_select_4(BITSELECT,69)@193
    assign i_unnamed_sobel22_vt_select_4_b = i_unnamed_sobel22_sel_x_b[4:0];

    // i_unnamed_sobel22_vt_join(BITJOIN,68)@193
    assign i_unnamed_sobel22_vt_join_q = {i_acl_24_i_sobel25_vt_const_31_q, i_unnamed_sobel22_vt_select_4_b};

    // c_i32_3149(CONSTANT,17)
    assign c_i32_3149_q = $unsigned(32'b00000000000000000000000000011111);

    // c_i32_102348(CONSTANT,9)
    assign c_i32_102348_q = $unsigned(32'b11111111111111111111110000000001);

    // i_off_i_sobel23(ADD,53)@192
    assign i_off_i_sobel23_a = {1'b0, i_unnamed_sobel8_vt_join_q};
    assign i_off_i_sobel23_b = {1'b0, c_i32_102348_q};
    assign i_off_i_sobel23_o = $unsigned(i_off_i_sobel23_a) + $unsigned(i_off_i_sobel23_b);
    assign i_off_i_sobel23_q = i_off_i_sobel23_o[32:0];

    // bgTrunc_i_off_i_sobel23_sel_x(BITSELECT,88)@192
    assign bgTrunc_i_off_i_sobel23_sel_x_b = i_off_i_sobel23_q[31:0];

    // i_unnamed_sobel24(COMPARE,70)@192 + 1
    assign i_unnamed_sobel24_a = {2'b00, bgTrunc_i_off_i_sobel23_sel_x_b};
    assign i_unnamed_sobel24_b = {2'b00, c_i32_3149_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_sobel24_o <= 34'b0;
        end
        else
        begin
            i_unnamed_sobel24_o <= $unsigned(i_unnamed_sobel24_a) - $unsigned(i_unnamed_sobel24_b);
        end
    end
    assign i_unnamed_sobel24_c[0] = i_unnamed_sobel24_o[33];

    // i_acl_24_i_sobel25(MUX,21)@193
    assign i_acl_24_i_sobel25_s = i_unnamed_sobel24_c;
    always @(i_acl_24_i_sobel25_s or c_i32_050_q or i_unnamed_sobel22_vt_join_q)
    begin
        unique case (i_acl_24_i_sobel25_s)
            1'b0 : i_acl_24_i_sobel25_q = c_i32_050_q;
            1'b1 : i_acl_24_i_sobel25_q = i_unnamed_sobel22_vt_join_q;
            default : i_acl_24_i_sobel25_q = 32'b0;
        endcase
    end

    // i_acl_24_i_sobel25_vt_select_4(BITSELECT,24)@193
    assign i_acl_24_i_sobel25_vt_select_4_b = i_acl_24_i_sobel25_q[4:0];

    // i_acl_24_i_sobel25_vt_join(BITJOIN,23)@193
    assign i_acl_24_i_sobel25_vt_join_q = {i_acl_24_i_sobel25_vt_const_31_q, i_acl_24_i_sobel25_vt_select_4_b};

    // i_acl_25_i_sobel26(MUX,25)@193
    assign i_acl_25_i_sobel26_s = i_cmp_i1_sobel16_q;
    always @(i_acl_25_i_sobel26_s or i_acl_24_i_sobel25_vt_join_q or c_i32_050_q)
    begin
        unique case (i_acl_25_i_sobel26_s)
            1'b0 : i_acl_25_i_sobel26_q = i_acl_24_i_sobel25_vt_join_q;
            1'b1 : i_acl_25_i_sobel26_q = c_i32_050_q;
            default : i_acl_25_i_sobel26_q = 32'b0;
        endcase
    end

    // i_acl_25_i_sobel26_vt_select_4(BITSELECT,28)@193
    assign i_acl_25_i_sobel26_vt_select_4_b = i_acl_25_i_sobel26_q[4:0];

    // i_acl_25_i_sobel26_vt_join(BITJOIN,27)@193
    assign i_acl_25_i_sobel26_vt_join_q = {i_acl_24_i_sobel25_vt_const_31_q, i_acl_25_i_sobel26_vt_select_4_b};

    // i_and23_i_sobel29_BitSelect_for_a_merged_bit_select(BITSELECT,212)@193
    assign i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_in = i_acl_25_i_sobel26_vt_join_q[4:0];
    assign i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_b = i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_in[4:2];
    assign i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_c = i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_in[1:0];

    // i_and23_i_sobel29_join(BITJOIN,133)@193
    assign i_and23_i_sobel29_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_b, GND_q, GND_q};

    // i_and23_i_sobel29_vt_select_4(BITSELECT,39)@193
    assign i_and23_i_sobel29_vt_select_4_b = i_and23_i_sobel29_join_q[4:2];

    // i_and23_i_sobel29_vt_join(BITJOIN,38)@193
    assign i_and23_i_sobel29_vt_join_q = {i_acl_24_i_sobel25_vt_const_31_q, i_and23_i_sobel29_vt_select_4_b, i_and23_i_sobel29_vt_const_1_q};

    // i_shr24_i_sobel0_shift_narrow_x(BITSELECT,102)@193
    assign i_shr24_i_sobel0_shift_narrow_x_b = i_and23_i_sobel29_vt_join_q[4:0];

    // rightShiftStageSel2Dto2_uid174_i_shr24_i_sobel0_shift_x_merged_bit_select(BITSELECT,213)@193
    assign rightShiftStageSel2Dto2_uid174_i_shr24_i_sobel0_shift_x_merged_bit_select_b = i_shr24_i_sobel0_shift_narrow_x_b[3:2];
    assign rightShiftStageSel2Dto2_uid174_i_shr24_i_sobel0_shift_x_merged_bit_select_c = i_shr24_i_sobel0_shift_narrow_x_b[4:4];

    // rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x(MUX,179)@193 + 1
    assign rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_s = rightShiftStageSel2Dto2_uid174_i_shr24_i_sobel0_shift_x_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_s)
                1'b0 : rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q <= rightShiftStage0_uid175_i_shr24_i_sobel0_shift_x_q;
                1'b1 : rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q <= rightShiftStage1Idx1_uid178_i_shr24_i_sobel0_shift_x_q;
                default : rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_and26_i_sobel31_vt_const_31(CONSTANT,41)
    assign i_and26_i_sobel31_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // i_and26_i_sobel31_join(BITJOIN,135)@193
    assign i_and26_i_sobel31_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and23_i_sobel29_BitSelect_for_a_merged_bit_select_c};

    // i_and26_i_sobel31_vt_select_1(BITSELECT,43)@193
    assign i_and26_i_sobel31_vt_select_1_b = i_and26_i_sobel31_join_q[1:0];

    // i_and26_i_sobel31_vt_join(BITJOIN,42)@193
    assign i_and26_i_sobel31_vt_join_q = {i_and26_i_sobel31_vt_const_31_q, i_and26_i_sobel31_vt_select_1_b};

    // i_shr27_i_sobel0_shift_narrow_x(BITSELECT,108)@193
    assign i_shr27_i_sobel0_shift_narrow_x_b = i_and26_i_sobel31_vt_join_q[4:0];

    // rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x(BITSELECT,191)@193
    assign rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_in = i_shr27_i_sobel0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_b = rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_in[1:0];

    // redist0_rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_b_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist0_rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_b_1_q <= $unsigned(rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_b);
        end
    end

    // rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x(MUX,192)@194
    assign rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_s = redist0_rightShiftStageSel0Dto0_uid192_i_shr27_i_sobel0_shift_x_b_1_q;
    always @(rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_s or rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q or rightShiftStage0Idx1_uid185_i_shr27_i_sobel0_shift_x_q or rightShiftStage0Idx2_uid188_i_shr27_i_sobel0_shift_x_q or rightShiftStage0Idx3_uid191_i_shr27_i_sobel0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_s)
            2'b00 : rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q = rightShiftStage1_uid180_i_shr24_i_sobel0_shift_x_q;
            2'b01 : rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q = rightShiftStage0Idx1_uid185_i_shr27_i_sobel0_shift_x_q;
            2'b10 : rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q = rightShiftStage0Idx2_uid188_i_shr27_i_sobel0_shift_x_q;
            2'b11 : rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q = rightShiftStage0Idx3_uid191_i_shr27_i_sobel0_shift_x_q;
            default : rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q = 32'b0;
        endcase
    end

    // redist1_i_tobool_i_sobel4_cmp_sign_q_3(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_tobool_i_sobel4_cmp_sign_q_3_delay_0 <= '0;
            redist1_i_tobool_i_sobel4_cmp_sign_q_3_q <= '0;
        end
        else
        begin
            redist1_i_tobool_i_sobel4_cmp_sign_q_3_delay_0 <= $unsigned(i_tobool_i_sobel4_cmp_sign_q);
            redist1_i_tobool_i_sobel4_cmp_sign_q_3_q <= redist1_i_tobool_i_sobel4_cmp_sign_q_3_delay_0;
        end
    end

    // i_unnamed_sobel34(MUX,72)@194
    assign i_unnamed_sobel34_s = redist1_i_tobool_i_sobel4_cmp_sign_q_3_q;
    always @(i_unnamed_sobel34_s or rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q or bgTrunc_i_sub29_i_sobel33_sel_x_b)
    begin
        unique case (i_unnamed_sobel34_s)
            1'b0 : i_unnamed_sobel34_q = rightShiftStage0_uid193_i_shr27_i_sobel0_shift_x_q;
            1'b1 : i_unnamed_sobel34_q = bgTrunc_i_sub29_i_sobel33_sel_x_b;
            default : i_unnamed_sobel34_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,118)@194
    assign out_c0_exi150_0_tpl = GND_q;
    assign out_c0_exi150_1_tpl = i_unnamed_sobel34_q;
    assign out_o_valid = redist2_sync_together54_aunroll_x_in_i_valid_39_q;
    assign out_unnamed_sobel1 = GND_q;

endmodule
