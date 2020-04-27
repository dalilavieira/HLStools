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

// SystemVerilog created from sobel_filter_i_sfc_logic_s_c0_in_entry_s_c0_enter_sobel_filter0
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_sfc_logic_s_c0_in_entry_s_c0_enter_sobel_filter0 (
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sobel_filter2_0_tpl,
    output wire [0:0] out_unnamed_sobel_filter3,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_1_024000e_0538_q;
    wire [15:0] c_i16_2942_q;
    wire [31:0] c_i32_052_q;
    wire [31:0] c_i32_102348_q;
    wire [31:0] c_i32_102350_q;
    wire [31:0] c_i32_105349_q;
    wire [31:0] c_i32_214748364746_q;
    wire [31:0] c_i32_214748364847_q;
    wire [31:0] c_i32_3151_q;
    wire [0:0] i_acl_24_i_sobel_filter24_s;
    reg [31:0] i_acl_24_i_sobel_filter24_q;
    wire [26:0] i_acl_24_i_sobel_filter24_vt_const_31_q;
    wire [31:0] i_acl_24_i_sobel_filter24_vt_join_q;
    wire [4:0] i_acl_24_i_sobel_filter24_vt_select_4_b;
    wire [0:0] i_acl_25_i_sobel_filter25_s;
    reg [31:0] i_acl_25_i_sobel_filter25_q;
    wire [31:0] i_acl_25_i_sobel_filter25_vt_join_q;
    wire [4:0] i_acl_25_i_sobel_filter25_vt_select_4_b;
    wire [0:0] i_acl_26_i_sobel_filter26_s;
    reg [31:0] i_acl_26_i_sobel_filter26_q;
    wire [0:0] i_acl_27_i_sobel_filter27_s;
    reg [31:0] i_acl_27_i_sobel_filter27_q;
    wire [63:0] i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut;
    wire [51:0] i_and1_i_sobel_filter5_vt_const_63_q;
    wire [63:0] i_and1_i_sobel_filter5_vt_join_q;
    wire [11:0] i_and1_i_sobel_filter5_vt_select_11_b;
    wire [1:0] i_and23_i_sobel_filter28_vt_const_1_q;
    wire [31:0] i_and23_i_sobel_filter28_vt_join_q;
    wire [2:0] i_and23_i_sobel_filter28_vt_select_4_b;
    wire [29:0] i_and26_i_sobel_filter30_vt_const_31_q;
    wire [31:0] i_and26_i_sobel_filter30_vt_join_q;
    wire [1:0] i_and26_i_sobel_filter30_vt_select_1_b;
    wire [33:0] i_cmp12_i_sobel_filter18_a;
    wire [33:0] i_cmp12_i_sobel_filter18_b;
    logic [33:0] i_cmp12_i_sobel_filter18_o;
    wire [0:0] i_cmp12_i_sobel_filter18_c;
    wire [33:0] i_cmp16_i_sobel_filter19_a;
    wire [33:0] i_cmp16_i_sobel_filter19_b;
    logic [33:0] i_cmp16_i_sobel_filter19_o;
    wire [0:0] i_cmp16_i_sobel_filter19_c;
    wire [0:0] i_cmp_i_sobel_filter15_qi;
    reg [0:0] i_cmp_i_sobel_filter15_q;
    wire [0:0] i_cond10_i_sobel_filter17_s;
    reg [31:0] i_cond10_i_sobel_filter17_q;
    wire [1:0] i_conv7_i_sobel_filter14_vt_const_31_q;
    wire [31:0] i_conv7_i_sobel_filter14_vt_join_q;
    wire [29:0] i_conv7_i_sobel_filter14_vt_select_29_b;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_sobel_filter1_sobel_filter34_out_intel_reserved_ffwd_0_0;
    wire [32:0] i_off_i_sobel_filter22_a;
    wire [32:0] i_off_i_sobel_filter22_b;
    logic [32:0] i_off_i_sobel_filter22_o;
    wire [32:0] i_off_i_sobel_filter22_q;
    wire [0:0] i_spec_select23_i_sobel_filter20_s;
    reg [31:0] i_spec_select23_i_sobel_filter20_q;
    wire [32:0] i_sub29_i_sobel_filter32_a;
    wire [32:0] i_sub29_i_sobel_filter32_b;
    logic [32:0] i_sub29_i_sobel_filter32_o;
    wire [32:0] i_sub29_i_sobel_filter32_q;
    wire [21:0] i_unnamed_sobel_filter11_vt_const_63_q;
    wire [63:0] i_unnamed_sobel_filter11_vt_join_q;
    wire [41:0] i_unnamed_sobel_filter11_vt_select_41_b;
    wire [31:0] i_unnamed_sobel_filter13_vt_join_q;
    wire [29:0] i_unnamed_sobel_filter13_vt_select_29_b;
    wire [31:0] i_unnamed_sobel_filter21_vt_join_q;
    wire [4:0] i_unnamed_sobel_filter21_vt_select_4_b;
    wire [33:0] i_unnamed_sobel_filter23_a;
    wire [33:0] i_unnamed_sobel_filter23_b;
    logic [33:0] i_unnamed_sobel_filter23_o;
    wire [0:0] i_unnamed_sobel_filter23_c;
    wire [0:0] i_unnamed_sobel_filter33_s;
    reg [31:0] i_unnamed_sobel_filter33_q;
    wire [19:0] i_unnamed_sobel_filter6_vt_const_31_q;
    wire [31:0] i_unnamed_sobel_filter6_vt_join_q;
    wire [11:0] i_unnamed_sobel_filter6_vt_select_11_b;
    wire [20:0] i_unnamed_sobel_filter7_vt_const_31_q;
    wire [31:0] i_unnamed_sobel_filter7_vt_join_q;
    wire [10:0] i_unnamed_sobel_filter7_vt_select_10_b;
    wire [3:0] i_unnamed_sobel_filter8_vt_const_15_q;
    wire [15:0] i_unnamed_sobel_filter8_vt_join_q;
    wire [11:0] i_unnamed_sobel_filter8_vt_select_11_b;
    wire [16:0] i_unnamed_sobel_filter9_a;
    wire [16:0] i_unnamed_sobel_filter9_b;
    logic [16:0] i_unnamed_sobel_filter9_o;
    wire [16:0] i_unnamed_sobel_filter9_q;
    wire [31:0] bgTrunc_i_off_i_sobel_filter22_sel_x_b;
    wire [31:0] bgTrunc_i_sub29_i_sobel_filter32_sel_x_b;
    wire [15:0] bgTrunc_i_unnamed_sobel_filter9_sel_x_b;
    wire [31:0] c_i32_204741_recast_x_q;
    wire [4:0] i_conv5_trunc_i_sobel_filter10_sel_x_b;
    wire [4:0] i_shr24_i_sobel_filter0_shift_narrow_x_b;
    wire [4:0] i_shr27_i_sobel_filter0_shift_narrow_x_b;
    wire [31:0] i_unnamed_sobel_filter12_sel_x_b;
    wire [31:0] i_unnamed_sobel_filter21_sel_x_b;
    wire [31:0] i_unnamed_sobel_filter6_sel_x_b;
    wire [15:0] i_unnamed_sobel_filter8_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    wire [31:0] i_and23_i_sobel_filter28_join_q;
    wire [31:0] i_and26_i_sobel_filter30_join_q;
    wire [29:0] i_conv7_i_sobel_filter14_BitSelect_for_a_b;
    wire [31:0] i_conv7_i_sobel_filter14_join_q;
    wire [0:0] i_tobool_i_sobel_filter3_cmp_sign_qi;
    reg [0:0] i_tobool_i_sobel_filter3_cmp_sign_q;
    wire [29:0] i_unnamed_sobel_filter13_BitSelect_for_a_b;
    wire [31:0] i_unnamed_sobel_filter13_join_q;
    wire [10:0] i_unnamed_sobel_filter7_BitSelect_for_a_b;
    wire [31:0] i_unnamed_sobel_filter7_join_q;
    wire [59:0] rightShiftStage0Idx1Rng4_uid152_i_and1_i_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid154_i_and1_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_q;
    wire [47:0] rightShiftStage1Idx1Rng16_uid157_i_and1_i_sobel_filter0_shift_x_b;
    wire [15:0] rightShiftStage1Idx1Pad16_uid158_i_and1_i_sobel_filter0_shift_x_q;
    wire [63:0] rightShiftStage1Idx1_uid159_i_and1_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_q;
    wire [31:0] rightShiftStage2Idx1Rng32_uid162_i_and1_i_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid164_i_and1_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_q;
    wire [0:0] xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b;
    wire [3:0] seMsb_to4_uid170_in;
    wire [3:0] seMsb_to4_uid170_b;
    wire [27:0] rightShiftStage0Idx1Rng4_uid171_i_shr24_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid172_i_shr24_i_sobel_filter0_shift_x_q;
    wire [7:0] seMsb_to8_uid173_in;
    wire [7:0] seMsb_to8_uid173_b;
    wire [23:0] rightShiftStage0Idx2Rng8_uid174_i_shr24_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid175_i_shr24_i_sobel_filter0_shift_x_q;
    wire [11:0] seMsb_to12_uid176_in;
    wire [11:0] seMsb_to12_uid176_b;
    wire [19:0] rightShiftStage0Idx3Rng12_uid177_i_shr24_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid178_i_shr24_i_sobel_filter0_shift_x_q;
    wire [1:0] rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_q;
    wire [15:0] seMsb_to16_uid181_in;
    wire [15:0] seMsb_to16_uid181_b;
    wire [15:0] rightShiftStage1Idx1Rng16_uid182_i_shr24_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid183_i_shr24_i_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q;
    wire [0:0] xMSB_uid187_i_shr27_i_sobel_filter0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid189_i_shr27_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid190_i_shr27_i_sobel_filter0_shift_x_q;
    wire [1:0] seMsb_to2_uid191_in;
    wire [1:0] seMsb_to2_uid191_b;
    wire [29:0] rightShiftStage0Idx2Rng2_uid192_i_shr27_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid193_i_shr27_i_sobel_filter0_shift_x_q;
    wire [2:0] seMsb_to3_uid194_in;
    wire [2:0] seMsb_to3_uid194_b;
    wire [28:0] rightShiftStage0Idx3Rng3_uid195_i_shr27_i_sobel_filter0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid196_i_shr27_i_sobel_filter0_shift_x_q;
    wire [1:0] rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_in;
    wire [1:0] rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_b;
    wire [1:0] rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_s;
    reg [31:0] rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q;
    wire [61:0] rightShiftStage0Idx1Rng2_uid202_i_unnamed_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid204_i_unnamed_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_q;
    wire [59:0] rightShiftStage1Idx1Rng4_uid207_i_unnamed_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid209_i_unnamed_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_q;
    wire [47:0] rightShiftStage2Idx1Rng16_uid212_i_unnamed_sobel_filter0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid214_i_unnamed_sobel_filter0_shift_x_q;
    wire [0:0] rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_s;
    reg [63:0] rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_q;
    wire [4:0] i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_in;
    wire [2:0] i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_b;
    wire [1:0] i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_c;
    wire [1:0] rightShiftStageSel2Dto2_uid179_i_shr24_i_sobel_filter0_shift_x_merged_bit_select_b;
    wire [0:0] rightShiftStageSel2Dto2_uid179_i_shr24_i_sobel_filter0_shift_x_merged_bit_select_c;
    reg [1:0] redist0_rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_b_1_q;
    reg [0:0] redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3_q;
    reg [0:0] redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3_delay_0;
    reg [29:0] redist2_i_conv7_i_sobel_filter14_BitSelect_for_a_b_1_q;
    reg [0:0] redist3_sync_together55_in_i_valid_38_q;
    reg [4:0] redist4_i_unnamed_sobel_filter21_vt_select_4_b_1_q;
    reg [31:0] redist5_i_cond10_i_sobel_filter17_q_1_q;
    reg [11:0] redist6_i_and1_i_sobel_filter5_vt_select_11_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together55_in_i_valid_38(DELAY,222)
    dspba_delay_ver #( .width(1), .depth(38), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together55_in_i_valid_38 ( .xin(in_i_valid), .xout(redist3_sync_together55_in_i_valid_38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg1(REG,124)@39 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist3_sync_together55_in_i_valid_38_q);
        end
    end

    // c_i32_052(CONSTANT,8)
    assign c_i32_052_q = $unsigned(32'b00000000000000000000000000000000);

    // i_sub29_i_sobel_filter32(SUB,57)@40
    assign i_sub29_i_sobel_filter32_a = {1'b0, c_i32_052_q};
    assign i_sub29_i_sobel_filter32_b = {1'b0, rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q};
    assign i_sub29_i_sobel_filter32_o = $unsigned(i_sub29_i_sobel_filter32_a) - $unsigned(i_sub29_i_sobel_filter32_b);
    assign i_sub29_i_sobel_filter32_q = i_sub29_i_sobel_filter32_o[32:0];

    // bgTrunc_i_sub29_i_sobel_filter32_sel_x(BITSELECT,93)@40
    assign bgTrunc_i_sub29_i_sobel_filter32_sel_x_b = $unsigned(i_sub29_i_sobel_filter32_q[31:0]);

    // xMSB_uid187_i_shr27_i_sobel_filter0_shift_x(BITSELECT,186)@40
    assign xMSB_uid187_i_shr27_i_sobel_filter0_shift_x_b = $unsigned(rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q[31:31]);

    // seMsb_to3_uid194(BITSELECT,193)@40
    assign seMsb_to3_uid194_in = $unsigned({{2{xMSB_uid187_i_shr27_i_sobel_filter0_shift_x_b[0]}}, xMSB_uid187_i_shr27_i_sobel_filter0_shift_x_b});
    assign seMsb_to3_uid194_b = $unsigned(seMsb_to3_uid194_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid195_i_shr27_i_sobel_filter0_shift_x(BITSELECT,194)@40
    assign rightShiftStage0Idx3Rng3_uid195_i_shr27_i_sobel_filter0_shift_x_b = $unsigned(rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q[31:3]);

    // rightShiftStage0Idx3_uid196_i_shr27_i_sobel_filter0_shift_x(BITJOIN,195)@40
    assign rightShiftStage0Idx3_uid196_i_shr27_i_sobel_filter0_shift_x_q = {seMsb_to3_uid194_b, rightShiftStage0Idx3Rng3_uid195_i_shr27_i_sobel_filter0_shift_x_b};

    // seMsb_to2_uid191(BITSELECT,190)@40
    assign seMsb_to2_uid191_in = $unsigned({{1{xMSB_uid187_i_shr27_i_sobel_filter0_shift_x_b[0]}}, xMSB_uid187_i_shr27_i_sobel_filter0_shift_x_b});
    assign seMsb_to2_uid191_b = $unsigned(seMsb_to2_uid191_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid192_i_shr27_i_sobel_filter0_shift_x(BITSELECT,191)@40
    assign rightShiftStage0Idx2Rng2_uid192_i_shr27_i_sobel_filter0_shift_x_b = $unsigned(rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q[31:2]);

    // rightShiftStage0Idx2_uid193_i_shr27_i_sobel_filter0_shift_x(BITJOIN,192)@40
    assign rightShiftStage0Idx2_uid193_i_shr27_i_sobel_filter0_shift_x_q = {seMsb_to2_uid191_b, rightShiftStage0Idx2Rng2_uid192_i_shr27_i_sobel_filter0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid189_i_shr27_i_sobel_filter0_shift_x(BITSELECT,188)@40
    assign rightShiftStage0Idx1Rng1_uid189_i_shr27_i_sobel_filter0_shift_x_b = $unsigned(rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q[31:1]);

    // rightShiftStage0Idx1_uid190_i_shr27_i_sobel_filter0_shift_x(BITJOIN,189)@40
    assign rightShiftStage0Idx1_uid190_i_shr27_i_sobel_filter0_shift_x_q = {xMSB_uid187_i_shr27_i_sobel_filter0_shift_x_b, rightShiftStage0Idx1Rng1_uid189_i_shr27_i_sobel_filter0_shift_x_b};

    // c_i32_214748364847(CONSTANT,16)
    assign c_i32_214748364847_q = $unsigned(32'b10000000000000000000000000000000);

    // c_i32_214748364746(CONSTANT,15)
    assign c_i32_214748364746_q = $unsigned(32'b01111111111111111111111111111111);

    // c_double_1_024000e_0538(FLOATCONSTANT,5)
    assign c_double_1_024000e_0538_q = $unsigned(64'b0100000011111001000000000000000000000000000000000000000000000000);

    // i_acl_sqrtfd_call111_sobel_filter1(BLACKBOX,32)@37
    sobel_filter_flt_i_sfc_logic_s_c0_in_entA000000Z2i226743i22612364eny thei_acl_sqrtfd_call111_sobel_filter1 (
        .in_0(c_double_1_024000e_0538_q),
        .out_primWireOut(i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // i_tobool_i_sobel_filter3_cmp_sign(LOGICAL,143)@37 + 1
    assign i_tobool_i_sobel_filter3_cmp_sign_qi = $unsigned(i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut[63:63]);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_tobool_i_sobel_filter3_cmp_sign_delay ( .xin(i_tobool_i_sobel_filter3_cmp_sign_qi), .xout(i_tobool_i_sobel_filter3_cmp_sign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cond10_i_sobel_filter17(MUX,48)@38
    assign i_cond10_i_sobel_filter17_s = i_tobool_i_sobel_filter3_cmp_sign_q;
    always @(i_cond10_i_sobel_filter17_s or c_i32_214748364746_q or c_i32_214748364847_q)
    begin
        unique case (i_cond10_i_sobel_filter17_s)
            1'b0 : i_cond10_i_sobel_filter17_q = c_i32_214748364746_q;
            1'b1 : i_cond10_i_sobel_filter17_q = c_i32_214748364847_q;
            default : i_cond10_i_sobel_filter17_q = 32'b0;
        endcase
    end

    // redist5_i_cond10_i_sobel_filter17_q_1(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_cond10_i_sobel_filter17_q_1_q <= '0;
        end
        else
        begin
            redist5_i_cond10_i_sobel_filter17_q_1_q <= $unsigned(i_cond10_i_sobel_filter17_q);
        end
    end

    // i_conv7_i_sobel_filter14_vt_const_31(CONSTANT,51)
    assign i_conv7_i_sobel_filter14_vt_const_31_q = $unsigned(2'b01);

    // i_and23_i_sobel_filter28_vt_const_1(CONSTANT,37)
    assign i_and23_i_sobel_filter28_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_sobel_filter11_vt_const_63(CONSTANT,59)
    assign i_unnamed_sobel_filter11_vt_const_63_q = $unsigned(22'b0000000000000000000000);

    // rightShiftStage1Idx1Pad16_uid158_i_and1_i_sobel_filter0_shift_x(CONSTANT,157)
    assign rightShiftStage1Idx1Pad16_uid158_i_and1_i_sobel_filter0_shift_x_q = $unsigned(16'b0000000000000000);

    // rightShiftStage2Idx1Rng16_uid212_i_unnamed_sobel_filter0_shift_x(BITSELECT,211)@37
    assign rightShiftStage2Idx1Rng16_uid212_i_unnamed_sobel_filter0_shift_x_b = rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_q[63:16];

    // rightShiftStage2Idx1_uid214_i_unnamed_sobel_filter0_shift_x(BITJOIN,213)@37
    assign rightShiftStage2Idx1_uid214_i_unnamed_sobel_filter0_shift_x_q = {rightShiftStage1Idx1Pad16_uid158_i_and1_i_sobel_filter0_shift_x_q, rightShiftStage2Idx1Rng16_uid212_i_unnamed_sobel_filter0_shift_x_b};

    // i_unnamed_sobel_filter8_vt_const_15(CONSTANT,83)
    assign i_unnamed_sobel_filter8_vt_const_15_q = $unsigned(4'b0000);

    // rightShiftStage1Idx1Rng4_uid207_i_unnamed_sobel_filter0_shift_x(BITSELECT,206)@37
    assign rightShiftStage1Idx1Rng4_uid207_i_unnamed_sobel_filter0_shift_x_b = rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_q[63:4];

    // rightShiftStage1Idx1_uid209_i_unnamed_sobel_filter0_shift_x(BITJOIN,208)@37
    assign rightShiftStage1Idx1_uid209_i_unnamed_sobel_filter0_shift_x_q = {i_unnamed_sobel_filter8_vt_const_15_q, rightShiftStage1Idx1Rng4_uid207_i_unnamed_sobel_filter0_shift_x_b};

    // rightShiftStage0Idx1Rng2_uid202_i_unnamed_sobel_filter0_shift_x(BITSELECT,201)@37
    assign rightShiftStage0Idx1Rng2_uid202_i_unnamed_sobel_filter0_shift_x_b = i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut[63:2];

    // rightShiftStage0Idx1_uid204_i_unnamed_sobel_filter0_shift_x(BITJOIN,203)@37
    assign rightShiftStage0Idx1_uid204_i_unnamed_sobel_filter0_shift_x_q = {i_and23_i_sobel_filter28_vt_const_1_q, rightShiftStage0Idx1Rng2_uid202_i_unnamed_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x(MUX,205)@37
    assign rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_s or i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut or rightShiftStage0Idx1_uid204_i_unnamed_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_q = i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut;
            1'b1 : rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid204_i_unnamed_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x(MUX,210)@37
    assign rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_s or rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_q or rightShiftStage1Idx1_uid209_i_unnamed_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage0_uid206_i_unnamed_sobel_filter0_shift_x_q;
            1'b1 : rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage1Idx1_uid209_i_unnamed_sobel_filter0_shift_x_q;
            default : rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x(MUX,215)@37
    assign rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_s or rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_q or rightShiftStage2Idx1_uid214_i_unnamed_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage1_uid211_i_unnamed_sobel_filter0_shift_x_q;
            1'b1 : rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_q = rightShiftStage2Idx1_uid214_i_unnamed_sobel_filter0_shift_x_q;
            default : rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_sobel_filter11_vt_select_41(BITSELECT,61)@37
    assign i_unnamed_sobel_filter11_vt_select_41_b = rightShiftStage2_uid216_i_unnamed_sobel_filter0_shift_x_q[41:0];

    // i_unnamed_sobel_filter11_vt_join(BITJOIN,60)@37
    assign i_unnamed_sobel_filter11_vt_join_q = {i_unnamed_sobel_filter11_vt_const_63_q, i_unnamed_sobel_filter11_vt_select_41_b};

    // i_unnamed_sobel_filter12_sel_x(BITSELECT,118)@37
    assign i_unnamed_sobel_filter12_sel_x_b = i_unnamed_sobel_filter11_vt_join_q[31:0];

    // i_unnamed_sobel_filter13_BitSelect_for_a(BITSELECT,145)@37
    assign i_unnamed_sobel_filter13_BitSelect_for_a_b = i_unnamed_sobel_filter12_sel_x_b[29:0];

    // i_unnamed_sobel_filter13_join(BITJOIN,146)@37
    assign i_unnamed_sobel_filter13_join_q = {GND_q, GND_q, i_unnamed_sobel_filter13_BitSelect_for_a_b};

    // i_unnamed_sobel_filter13_vt_select_29(BITSELECT,66)@37
    assign i_unnamed_sobel_filter13_vt_select_29_b = i_unnamed_sobel_filter13_join_q[29:0];

    // i_unnamed_sobel_filter13_vt_join(BITJOIN,65)@37
    assign i_unnamed_sobel_filter13_vt_join_q = {i_and23_i_sobel_filter28_vt_const_1_q, i_unnamed_sobel_filter13_vt_select_29_b};

    // i_conv7_i_sobel_filter14_BitSelect_for_a(BITSELECT,141)@37
    assign i_conv7_i_sobel_filter14_BitSelect_for_a_b = i_unnamed_sobel_filter13_vt_join_q[29:0];

    // redist2_i_conv7_i_sobel_filter14_BitSelect_for_a_b_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_conv7_i_sobel_filter14_BitSelect_for_a_b_1_q <= '0;
        end
        else
        begin
            redist2_i_conv7_i_sobel_filter14_BitSelect_for_a_b_1_q <= $unsigned(i_conv7_i_sobel_filter14_BitSelect_for_a_b);
        end
    end

    // i_conv7_i_sobel_filter14_join(BITJOIN,142)@38
    assign i_conv7_i_sobel_filter14_join_q = {GND_q, VCC_q, redist2_i_conv7_i_sobel_filter14_BitSelect_for_a_b_1_q};

    // i_conv7_i_sobel_filter14_vt_select_29(BITSELECT,53)@38
    assign i_conv7_i_sobel_filter14_vt_select_29_b = i_conv7_i_sobel_filter14_join_q[29:0];

    // i_conv7_i_sobel_filter14_vt_join(BITJOIN,52)@38
    assign i_conv7_i_sobel_filter14_vt_join_q = {i_conv7_i_sobel_filter14_vt_const_31_q, i_conv7_i_sobel_filter14_vt_select_29_b};

    // i_unnamed_sobel_filter7_vt_const_31(CONSTANT,79)
    assign i_unnamed_sobel_filter7_vt_const_31_q = $unsigned(21'b000000000000000000000);

    // i_unnamed_sobel_filter6_vt_const_31(CONSTANT,75)
    assign i_unnamed_sobel_filter6_vt_const_31_q = $unsigned(20'b00000000000000000000);

    // i_and1_i_sobel_filter5_vt_const_63(CONSTANT,33)
    assign i_and1_i_sobel_filter5_vt_const_63_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // rightShiftStage2Idx1Rng32_uid162_i_and1_i_sobel_filter0_shift_x(BITSELECT,161)@37
    assign rightShiftStage2Idx1Rng32_uid162_i_and1_i_sobel_filter0_shift_x_b = rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_q[63:32];

    // rightShiftStage2Idx1_uid164_i_and1_i_sobel_filter0_shift_x(BITJOIN,163)@37
    assign rightShiftStage2Idx1_uid164_i_and1_i_sobel_filter0_shift_x_q = {c_i32_052_q, rightShiftStage2Idx1Rng32_uid162_i_and1_i_sobel_filter0_shift_x_b};

    // rightShiftStage1Idx1Rng16_uid157_i_and1_i_sobel_filter0_shift_x(BITSELECT,156)@37
    assign rightShiftStage1Idx1Rng16_uid157_i_and1_i_sobel_filter0_shift_x_b = rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_q[63:16];

    // rightShiftStage1Idx1_uid159_i_and1_i_sobel_filter0_shift_x(BITJOIN,158)@37
    assign rightShiftStage1Idx1_uid159_i_and1_i_sobel_filter0_shift_x_q = {rightShiftStage1Idx1Pad16_uid158_i_and1_i_sobel_filter0_shift_x_q, rightShiftStage1Idx1Rng16_uid157_i_and1_i_sobel_filter0_shift_x_b};

    // rightShiftStage0Idx1Rng4_uid152_i_and1_i_sobel_filter0_shift_x(BITSELECT,151)@37
    assign rightShiftStage0Idx1Rng4_uid152_i_and1_i_sobel_filter0_shift_x_b = i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut[63:4];

    // rightShiftStage0Idx1_uid154_i_and1_i_sobel_filter0_shift_x(BITJOIN,153)@37
    assign rightShiftStage0Idx1_uid154_i_and1_i_sobel_filter0_shift_x_q = {i_unnamed_sobel_filter8_vt_const_15_q, rightShiftStage0Idx1Rng4_uid152_i_and1_i_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x(MUX,155)@37
    assign rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_s or i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut or rightShiftStage0Idx1_uid154_i_and1_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_q = i_acl_sqrtfd_call111_sobel_filter1_out_primWireOut;
            1'b1 : rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid154_i_and1_i_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x(MUX,160)@37
    assign rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_s or rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_q or rightShiftStage1Idx1_uid159_i_and1_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_q = rightShiftStage0_uid156_i_and1_i_sobel_filter0_shift_x_q;
            1'b1 : rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_q = rightShiftStage1Idx1_uid159_i_and1_i_sobel_filter0_shift_x_q;
            default : rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x(MUX,165)@37
    assign rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_s or rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_q or rightShiftStage2Idx1_uid164_i_and1_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_s)
            1'b0 : rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_q = rightShiftStage1_uid161_i_and1_i_sobel_filter0_shift_x_q;
            1'b1 : rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_q = rightShiftStage2Idx1_uid164_i_and1_i_sobel_filter0_shift_x_q;
            default : rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_q = 64'b0;
        endcase
    end

    // i_and1_i_sobel_filter5_vt_select_11(BITSELECT,35)@37
    assign i_and1_i_sobel_filter5_vt_select_11_b = rightShiftStage2_uid166_i_and1_i_sobel_filter0_shift_x_q[11:0];

    // redist6_i_and1_i_sobel_filter5_vt_select_11_b_1(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_and1_i_sobel_filter5_vt_select_11_b_1_q <= '0;
        end
        else
        begin
            redist6_i_and1_i_sobel_filter5_vt_select_11_b_1_q <= $unsigned(i_and1_i_sobel_filter5_vt_select_11_b);
        end
    end

    // i_and1_i_sobel_filter5_vt_join(BITJOIN,34)@38
    assign i_and1_i_sobel_filter5_vt_join_q = {i_and1_i_sobel_filter5_vt_const_63_q, redist6_i_and1_i_sobel_filter5_vt_select_11_b_1_q};

    // i_unnamed_sobel_filter6_sel_x(BITSELECT,120)@38
    assign i_unnamed_sobel_filter6_sel_x_b = i_and1_i_sobel_filter5_vt_join_q[31:0];

    // i_unnamed_sobel_filter6_vt_select_11(BITSELECT,77)@38
    assign i_unnamed_sobel_filter6_vt_select_11_b = i_unnamed_sobel_filter6_sel_x_b[11:0];

    // i_unnamed_sobel_filter6_vt_join(BITJOIN,76)@38
    assign i_unnamed_sobel_filter6_vt_join_q = {i_unnamed_sobel_filter6_vt_const_31_q, i_unnamed_sobel_filter6_vt_select_11_b};

    // i_unnamed_sobel_filter7_BitSelect_for_a(BITSELECT,147)@38
    assign i_unnamed_sobel_filter7_BitSelect_for_a_b = i_unnamed_sobel_filter6_vt_join_q[10:0];

    // i_unnamed_sobel_filter7_join(BITJOIN,148)@38
    assign i_unnamed_sobel_filter7_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_unnamed_sobel_filter7_BitSelect_for_a_b};

    // i_unnamed_sobel_filter7_vt_select_10(BITSELECT,81)@38
    assign i_unnamed_sobel_filter7_vt_select_10_b = i_unnamed_sobel_filter7_join_q[10:0];

    // i_unnamed_sobel_filter7_vt_join(BITJOIN,80)@38
    assign i_unnamed_sobel_filter7_vt_join_q = {i_unnamed_sobel_filter7_vt_const_31_q, i_unnamed_sobel_filter7_vt_select_10_b};

    // c_i32_105349(CONSTANT,11)
    assign c_i32_105349_q = $unsigned(32'b00000000000000000000010000011101);

    // i_cmp16_i_sobel_filter19(COMPARE,46)@38
    assign i_cmp16_i_sobel_filter19_a = {2'b00, c_i32_105349_q};
    assign i_cmp16_i_sobel_filter19_b = {2'b00, i_unnamed_sobel_filter7_vt_join_q};
    assign i_cmp16_i_sobel_filter19_o = $unsigned(i_cmp16_i_sobel_filter19_a) - $unsigned(i_cmp16_i_sobel_filter19_b);
    assign i_cmp16_i_sobel_filter19_c[0] = i_cmp16_i_sobel_filter19_o[33];

    // i_spec_select23_i_sobel_filter20(MUX,56)@38
    assign i_spec_select23_i_sobel_filter20_s = i_cmp16_i_sobel_filter19_c;
    always @(i_spec_select23_i_sobel_filter20_s or i_conv7_i_sobel_filter14_vt_join_q or i_cond10_i_sobel_filter17_q)
    begin
        unique case (i_spec_select23_i_sobel_filter20_s)
            1'b0 : i_spec_select23_i_sobel_filter20_q = i_conv7_i_sobel_filter14_vt_join_q;
            1'b1 : i_spec_select23_i_sobel_filter20_q = i_cond10_i_sobel_filter17_q;
            default : i_spec_select23_i_sobel_filter20_q = 32'b0;
        endcase
    end

    // c_i32_102348(CONSTANT,9)
    assign c_i32_102348_q = $unsigned(32'b00000000000000000000001111111111);

    // i_cmp12_i_sobel_filter18(COMPARE,45)@38
    assign i_cmp12_i_sobel_filter18_a = {2'b00, i_unnamed_sobel_filter7_vt_join_q};
    assign i_cmp12_i_sobel_filter18_b = {2'b00, c_i32_102348_q};
    assign i_cmp12_i_sobel_filter18_o = $unsigned(i_cmp12_i_sobel_filter18_a) - $unsigned(i_cmp12_i_sobel_filter18_b);
    assign i_cmp12_i_sobel_filter18_c[0] = i_cmp12_i_sobel_filter18_o[33];

    // i_acl_26_i_sobel_filter26(MUX,30)@38 + 1
    assign i_acl_26_i_sobel_filter26_s = i_cmp12_i_sobel_filter18_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_26_i_sobel_filter26_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_26_i_sobel_filter26_s)
                1'b0 : i_acl_26_i_sobel_filter26_q <= i_spec_select23_i_sobel_filter20_q;
                1'b1 : i_acl_26_i_sobel_filter26_q <= c_i32_052_q;
                default : i_acl_26_i_sobel_filter26_q <= 32'b0;
            endcase
        end
    end

    // c_i32_204741_recast_x(CONSTANT,95)
    assign c_i32_204741_recast_x_q = $unsigned(32'b00000000000000000000011111111111);

    // i_cmp_i_sobel_filter15(LOGICAL,47)@38 + 1
    assign i_cmp_i_sobel_filter15_qi = $unsigned(i_unnamed_sobel_filter7_vt_join_q == c_i32_204741_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i_sobel_filter15_delay ( .xin(i_cmp_i_sobel_filter15_qi), .xout(i_cmp_i_sobel_filter15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_27_i_sobel_filter27(MUX,31)@39
    assign i_acl_27_i_sobel_filter27_s = i_cmp_i_sobel_filter15_q;
    always @(i_acl_27_i_sobel_filter27_s or i_acl_26_i_sobel_filter26_q or redist5_i_cond10_i_sobel_filter17_q_1_q)
    begin
        unique case (i_acl_27_i_sobel_filter27_s)
            1'b0 : i_acl_27_i_sobel_filter27_q = i_acl_26_i_sobel_filter26_q;
            1'b1 : i_acl_27_i_sobel_filter27_q = redist5_i_cond10_i_sobel_filter17_q_1_q;
            default : i_acl_27_i_sobel_filter27_q = 32'b0;
        endcase
    end

    // xMSB_uid168_i_shr24_i_sobel_filter0_shift_x(BITSELECT,167)@39
    assign xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b = $unsigned(i_acl_27_i_sobel_filter27_q[31:31]);

    // seMsb_to16_uid181(BITSELECT,180)@39
    assign seMsb_to16_uid181_in = $unsigned({{15{xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b[0]}}, xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b});
    assign seMsb_to16_uid181_b = $unsigned(seMsb_to16_uid181_in[15:0]);

    // rightShiftStage1Idx1Rng16_uid182_i_shr24_i_sobel_filter0_shift_x(BITSELECT,181)@39
    assign rightShiftStage1Idx1Rng16_uid182_i_shr24_i_sobel_filter0_shift_x_b = $unsigned(rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_q[31:16]);

    // rightShiftStage1Idx1_uid183_i_shr24_i_sobel_filter0_shift_x(BITJOIN,182)@39
    assign rightShiftStage1Idx1_uid183_i_shr24_i_sobel_filter0_shift_x_q = {seMsb_to16_uid181_b, rightShiftStage1Idx1Rng16_uid182_i_shr24_i_sobel_filter0_shift_x_b};

    // seMsb_to12_uid176(BITSELECT,175)@39
    assign seMsb_to12_uid176_in = $unsigned({{11{xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b[0]}}, xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b});
    assign seMsb_to12_uid176_b = $unsigned(seMsb_to12_uid176_in[11:0]);

    // rightShiftStage0Idx3Rng12_uid177_i_shr24_i_sobel_filter0_shift_x(BITSELECT,176)@39
    assign rightShiftStage0Idx3Rng12_uid177_i_shr24_i_sobel_filter0_shift_x_b = $unsigned(i_acl_27_i_sobel_filter27_q[31:12]);

    // rightShiftStage0Idx3_uid178_i_shr24_i_sobel_filter0_shift_x(BITJOIN,177)@39
    assign rightShiftStage0Idx3_uid178_i_shr24_i_sobel_filter0_shift_x_q = {seMsb_to12_uid176_b, rightShiftStage0Idx3Rng12_uid177_i_shr24_i_sobel_filter0_shift_x_b};

    // seMsb_to8_uid173(BITSELECT,172)@39
    assign seMsb_to8_uid173_in = $unsigned({{7{xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b[0]}}, xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b});
    assign seMsb_to8_uid173_b = $unsigned(seMsb_to8_uid173_in[7:0]);

    // rightShiftStage0Idx2Rng8_uid174_i_shr24_i_sobel_filter0_shift_x(BITSELECT,173)@39
    assign rightShiftStage0Idx2Rng8_uid174_i_shr24_i_sobel_filter0_shift_x_b = $unsigned(i_acl_27_i_sobel_filter27_q[31:8]);

    // rightShiftStage0Idx2_uid175_i_shr24_i_sobel_filter0_shift_x(BITJOIN,174)@39
    assign rightShiftStage0Idx2_uid175_i_shr24_i_sobel_filter0_shift_x_q = {seMsb_to8_uid173_b, rightShiftStage0Idx2Rng8_uid174_i_shr24_i_sobel_filter0_shift_x_b};

    // seMsb_to4_uid170(BITSELECT,169)@39
    assign seMsb_to4_uid170_in = $unsigned({{3{xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b[0]}}, xMSB_uid168_i_shr24_i_sobel_filter0_shift_x_b});
    assign seMsb_to4_uid170_b = $unsigned(seMsb_to4_uid170_in[3:0]);

    // rightShiftStage0Idx1Rng4_uid171_i_shr24_i_sobel_filter0_shift_x(BITSELECT,170)@39
    assign rightShiftStage0Idx1Rng4_uid171_i_shr24_i_sobel_filter0_shift_x_b = $unsigned(i_acl_27_i_sobel_filter27_q[31:4]);

    // rightShiftStage0Idx1_uid172_i_shr24_i_sobel_filter0_shift_x(BITJOIN,171)@39
    assign rightShiftStage0Idx1_uid172_i_shr24_i_sobel_filter0_shift_x_q = {seMsb_to4_uid170_b, rightShiftStage0Idx1Rng4_uid171_i_shr24_i_sobel_filter0_shift_x_b};

    // rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x(MUX,179)@39
    assign rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_s = rightShiftStageSel2Dto2_uid179_i_shr24_i_sobel_filter0_shift_x_merged_bit_select_b;
    always @(rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_s or i_acl_27_i_sobel_filter27_q or rightShiftStage0Idx1_uid172_i_shr24_i_sobel_filter0_shift_x_q or rightShiftStage0Idx2_uid175_i_shr24_i_sobel_filter0_shift_x_q or rightShiftStage0Idx3_uid178_i_shr24_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_s)
            2'b00 : rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_q = i_acl_27_i_sobel_filter27_q;
            2'b01 : rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid172_i_shr24_i_sobel_filter0_shift_x_q;
            2'b10 : rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_q = rightShiftStage0Idx2_uid175_i_shr24_i_sobel_filter0_shift_x_q;
            2'b11 : rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_q = rightShiftStage0Idx3_uid178_i_shr24_i_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // i_acl_24_i_sobel_filter24_vt_const_31(CONSTANT,23)
    assign i_acl_24_i_sobel_filter24_vt_const_31_q = $unsigned(27'b000000000000000000000000000);

    // i_unnamed_sobel_filter8_sel_x(BITSELECT,121)@38
    assign i_unnamed_sobel_filter8_sel_x_b = i_and1_i_sobel_filter5_vt_join_q[15:0];

    // i_unnamed_sobel_filter8_vt_select_11(BITSELECT,85)@38
    assign i_unnamed_sobel_filter8_vt_select_11_b = i_unnamed_sobel_filter8_sel_x_b[11:0];

    // i_unnamed_sobel_filter8_vt_join(BITJOIN,84)@38
    assign i_unnamed_sobel_filter8_vt_join_q = {i_unnamed_sobel_filter8_vt_const_15_q, i_unnamed_sobel_filter8_vt_select_11_b};

    // c_i16_2942(CONSTANT,6)
    assign c_i16_2942_q = $unsigned(16'b0000000000011101);

    // i_unnamed_sobel_filter9(SUB,86)@38
    assign i_unnamed_sobel_filter9_a = {1'b0, c_i16_2942_q};
    assign i_unnamed_sobel_filter9_b = {1'b0, i_unnamed_sobel_filter8_vt_join_q};
    assign i_unnamed_sobel_filter9_o = $unsigned(i_unnamed_sobel_filter9_a) - $unsigned(i_unnamed_sobel_filter9_b);
    assign i_unnamed_sobel_filter9_q = i_unnamed_sobel_filter9_o[16:0];

    // bgTrunc_i_unnamed_sobel_filter9_sel_x(BITSELECT,94)@38
    assign bgTrunc_i_unnamed_sobel_filter9_sel_x_b = $unsigned(i_unnamed_sobel_filter9_q[15:0]);

    // i_conv5_trunc_i_sobel_filter10_sel_x(BITSELECT,101)@38
    assign i_conv5_trunc_i_sobel_filter10_sel_x_b = bgTrunc_i_unnamed_sobel_filter9_sel_x_b[4:0];

    // i_unnamed_sobel_filter21_sel_x(BITSELECT,119)@38
    assign i_unnamed_sobel_filter21_sel_x_b = {27'b000000000000000000000000000, i_conv5_trunc_i_sobel_filter10_sel_x_b[4:0]};

    // i_unnamed_sobel_filter21_vt_select_4(BITSELECT,71)@38
    assign i_unnamed_sobel_filter21_vt_select_4_b = i_unnamed_sobel_filter21_sel_x_b[4:0];

    // redist4_i_unnamed_sobel_filter21_vt_select_4_b_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_sobel_filter21_vt_select_4_b_1_q <= '0;
        end
        else
        begin
            redist4_i_unnamed_sobel_filter21_vt_select_4_b_1_q <= $unsigned(i_unnamed_sobel_filter21_vt_select_4_b);
        end
    end

    // i_unnamed_sobel_filter21_vt_join(BITJOIN,70)@39
    assign i_unnamed_sobel_filter21_vt_join_q = {i_acl_24_i_sobel_filter24_vt_const_31_q, redist4_i_unnamed_sobel_filter21_vt_select_4_b_1_q};

    // c_i32_3151(CONSTANT,18)
    assign c_i32_3151_q = $unsigned(32'b00000000000000000000000000011111);

    // c_i32_102350(CONSTANT,10)
    assign c_i32_102350_q = $unsigned(32'b11111111111111111111110000000001);

    // i_off_i_sobel_filter22(ADD,55)@38
    assign i_off_i_sobel_filter22_a = {1'b0, i_unnamed_sobel_filter7_vt_join_q};
    assign i_off_i_sobel_filter22_b = {1'b0, c_i32_102350_q};
    assign i_off_i_sobel_filter22_o = $unsigned(i_off_i_sobel_filter22_a) + $unsigned(i_off_i_sobel_filter22_b);
    assign i_off_i_sobel_filter22_q = i_off_i_sobel_filter22_o[32:0];

    // bgTrunc_i_off_i_sobel_filter22_sel_x(BITSELECT,92)@38
    assign bgTrunc_i_off_i_sobel_filter22_sel_x_b = i_off_i_sobel_filter22_q[31:0];

    // i_unnamed_sobel_filter23(COMPARE,72)@38 + 1
    assign i_unnamed_sobel_filter23_a = {2'b00, bgTrunc_i_off_i_sobel_filter22_sel_x_b};
    assign i_unnamed_sobel_filter23_b = {2'b00, c_i32_3151_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_sobel_filter23_o <= 34'b0;
        end
        else
        begin
            i_unnamed_sobel_filter23_o <= $unsigned(i_unnamed_sobel_filter23_a) - $unsigned(i_unnamed_sobel_filter23_b);
        end
    end
    assign i_unnamed_sobel_filter23_c[0] = i_unnamed_sobel_filter23_o[33];

    // i_acl_24_i_sobel_filter24(MUX,22)@39
    assign i_acl_24_i_sobel_filter24_s = i_unnamed_sobel_filter23_c;
    always @(i_acl_24_i_sobel_filter24_s or c_i32_052_q or i_unnamed_sobel_filter21_vt_join_q)
    begin
        unique case (i_acl_24_i_sobel_filter24_s)
            1'b0 : i_acl_24_i_sobel_filter24_q = c_i32_052_q;
            1'b1 : i_acl_24_i_sobel_filter24_q = i_unnamed_sobel_filter21_vt_join_q;
            default : i_acl_24_i_sobel_filter24_q = 32'b0;
        endcase
    end

    // i_acl_24_i_sobel_filter24_vt_select_4(BITSELECT,25)@39
    assign i_acl_24_i_sobel_filter24_vt_select_4_b = i_acl_24_i_sobel_filter24_q[4:0];

    // i_acl_24_i_sobel_filter24_vt_join(BITJOIN,24)@39
    assign i_acl_24_i_sobel_filter24_vt_join_q = {i_acl_24_i_sobel_filter24_vt_const_31_q, i_acl_24_i_sobel_filter24_vt_select_4_b};

    // i_acl_25_i_sobel_filter25(MUX,26)@39
    assign i_acl_25_i_sobel_filter25_s = i_cmp_i_sobel_filter15_q;
    always @(i_acl_25_i_sobel_filter25_s or i_acl_24_i_sobel_filter24_vt_join_q or c_i32_052_q)
    begin
        unique case (i_acl_25_i_sobel_filter25_s)
            1'b0 : i_acl_25_i_sobel_filter25_q = i_acl_24_i_sobel_filter24_vt_join_q;
            1'b1 : i_acl_25_i_sobel_filter25_q = c_i32_052_q;
            default : i_acl_25_i_sobel_filter25_q = 32'b0;
        endcase
    end

    // i_acl_25_i_sobel_filter25_vt_select_4(BITSELECT,29)@39
    assign i_acl_25_i_sobel_filter25_vt_select_4_b = i_acl_25_i_sobel_filter25_q[4:0];

    // i_acl_25_i_sobel_filter25_vt_join(BITJOIN,28)@39
    assign i_acl_25_i_sobel_filter25_vt_join_q = {i_acl_24_i_sobel_filter24_vt_const_31_q, i_acl_25_i_sobel_filter25_vt_select_4_b};

    // i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select(BITSELECT,217)@39
    assign i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_in = i_acl_25_i_sobel_filter25_vt_join_q[4:0];
    assign i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_b = i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_in[4:2];
    assign i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_c = i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_in[1:0];

    // i_and23_i_sobel_filter28_join(BITJOIN,138)@39
    assign i_and23_i_sobel_filter28_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_b, GND_q, GND_q};

    // i_and23_i_sobel_filter28_vt_select_4(BITSELECT,40)@39
    assign i_and23_i_sobel_filter28_vt_select_4_b = i_and23_i_sobel_filter28_join_q[4:2];

    // i_and23_i_sobel_filter28_vt_join(BITJOIN,39)@39
    assign i_and23_i_sobel_filter28_vt_join_q = {i_acl_24_i_sobel_filter24_vt_const_31_q, i_and23_i_sobel_filter28_vt_select_4_b, i_and23_i_sobel_filter28_vt_const_1_q};

    // i_shr24_i_sobel_filter0_shift_narrow_x(BITSELECT,106)@39
    assign i_shr24_i_sobel_filter0_shift_narrow_x_b = i_and23_i_sobel_filter28_vt_join_q[4:0];

    // rightShiftStageSel2Dto2_uid179_i_shr24_i_sobel_filter0_shift_x_merged_bit_select(BITSELECT,218)@39
    assign rightShiftStageSel2Dto2_uid179_i_shr24_i_sobel_filter0_shift_x_merged_bit_select_b = i_shr24_i_sobel_filter0_shift_narrow_x_b[3:2];
    assign rightShiftStageSel2Dto2_uid179_i_shr24_i_sobel_filter0_shift_x_merged_bit_select_c = i_shr24_i_sobel_filter0_shift_narrow_x_b[4:4];

    // rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x(MUX,184)@39 + 1
    assign rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_s = rightShiftStageSel2Dto2_uid179_i_shr24_i_sobel_filter0_shift_x_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_s)
                1'b0 : rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q <= rightShiftStage0_uid180_i_shr24_i_sobel_filter0_shift_x_q;
                1'b1 : rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q <= rightShiftStage1Idx1_uid183_i_shr24_i_sobel_filter0_shift_x_q;
                default : rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_and26_i_sobel_filter30_vt_const_31(CONSTANT,42)
    assign i_and26_i_sobel_filter30_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // i_and26_i_sobel_filter30_join(BITJOIN,140)@39
    assign i_and26_i_sobel_filter30_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and23_i_sobel_filter28_BitSelect_for_a_merged_bit_select_c};

    // i_and26_i_sobel_filter30_vt_select_1(BITSELECT,44)@39
    assign i_and26_i_sobel_filter30_vt_select_1_b = i_and26_i_sobel_filter30_join_q[1:0];

    // i_and26_i_sobel_filter30_vt_join(BITJOIN,43)@39
    assign i_and26_i_sobel_filter30_vt_join_q = {i_and26_i_sobel_filter30_vt_const_31_q, i_and26_i_sobel_filter30_vt_select_1_b};

    // i_shr27_i_sobel_filter0_shift_narrow_x(BITSELECT,112)@39
    assign i_shr27_i_sobel_filter0_shift_narrow_x_b = i_and26_i_sobel_filter30_vt_join_q[4:0];

    // rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x(BITSELECT,196)@39
    assign rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_in = i_shr27_i_sobel_filter0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_b = rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_in[1:0];

    // redist0_rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_b_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist0_rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_b_1_q <= $unsigned(rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_b);
        end
    end

    // rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x(MUX,197)@40
    assign rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_s = redist0_rightShiftStageSel0Dto0_uid197_i_shr27_i_sobel_filter0_shift_x_b_1_q;
    always @(rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_s or rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q or rightShiftStage0Idx1_uid190_i_shr27_i_sobel_filter0_shift_x_q or rightShiftStage0Idx2_uid193_i_shr27_i_sobel_filter0_shift_x_q or rightShiftStage0Idx3_uid196_i_shr27_i_sobel_filter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_s)
            2'b00 : rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q = rightShiftStage1_uid185_i_shr24_i_sobel_filter0_shift_x_q;
            2'b01 : rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q = rightShiftStage0Idx1_uid190_i_shr27_i_sobel_filter0_shift_x_q;
            2'b10 : rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q = rightShiftStage0Idx2_uid193_i_shr27_i_sobel_filter0_shift_x_q;
            2'b11 : rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q = rightShiftStage0Idx3_uid196_i_shr27_i_sobel_filter0_shift_x_q;
            default : rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q = 32'b0;
        endcase
    end

    // redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3_delay_0 <= '0;
            redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3_q <= '0;
        end
        else
        begin
            redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3_delay_0 <= $unsigned(i_tobool_i_sobel_filter3_cmp_sign_q);
            redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3_q <= redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3_delay_0;
        end
    end

    // i_unnamed_sobel_filter33(MUX,73)@40
    assign i_unnamed_sobel_filter33_s = redist1_i_tobool_i_sobel_filter3_cmp_sign_q_3_q;
    always @(i_unnamed_sobel_filter33_s or rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q or bgTrunc_i_sub29_i_sobel_filter32_sel_x_b)
    begin
        unique case (i_unnamed_sobel_filter33_s)
            1'b0 : i_unnamed_sobel_filter33_q = rightShiftStage0_uid198_i_shr27_i_sobel_filter0_shift_x_q;
            1'b1 : i_unnamed_sobel_filter33_q = bgTrunc_i_sub29_i_sobel_filter32_sel_x_b;
            default : i_unnamed_sobel_filter33_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_sobel_filter1_sobel_filter34(BLACKBOX,54)@40
    // out out_intel_reserved_ffwd_0_0@20000000
    sobel_filter_i_llvm_fpga_ffwd_source_i32_unnamed_1_sobel_filter0 thei_llvm_fpga_ffwd_source_i32_unnamed_sobel_filter1_sobel_filter34 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_unnamed_sobel_filter33_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i32_unnamed_sobel_filter1_sobel_filter34_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,89)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i32_unnamed_sobel_filter1_sobel_filter34_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg0(REG,123)@39 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together55_in_i_valid_38_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,122)@40
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_sobel_filter2_0_tpl = GND_q;
    assign out_unnamed_sobel_filter3 = GND_q;

endmodule
