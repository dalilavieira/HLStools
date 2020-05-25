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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B4_stall_region
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B4_stall_region (
    output wire [0:0] out_feedback_out_26,
    input wire [0:0] in_feedback_stall_in_26,
    output wire [0:0] out_feedback_valid_out_26,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_add_ptr309_pop6014,
    input wire [63:0] in_add_ptr73307_pop5913,
    input wire [0:0] in_cmp75304_pop5610,
    input wire [0:0] in_lm1_toi1_intcast174,
    input wire [0:0] in_memdep_phi126_pop27323_pop735,
    input wire [0:0] in_memdep_phi133_pop28325_pop746,
    input wire [0:0] in_memdep_phi140_pop29327_pop757,
    input wire [0:0] in_memdep_phi147_pop30329_pop768,
    input wire [0:0] in_memdep_phi155_pop31331_pop771,
    input wire [0:0] in_memdep_phi202_pop36337_pop822,
    input wire [0:0] in_notcmp292305_pop5812,
    input wire [0:0] in_pop5711,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_23,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_539,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add_ptr309_pop6014,
    output wire [63:0] out_add_ptr73307_pop5913,
    output wire [0:0] out_memdep_phi126_pop27323_pop735,
    output wire [0:0] out_memdep_phi133_pop28325_pop746,
    output wire [0:0] out_memdep_phi140_pop29327_pop757,
    output wire [0:0] out_memdep_phi147_pop30329_pop768,
    output wire [0:0] out_memdep_phi155_pop31331_pop771,
    output wire [0:0] out_memdep_phi202_pop36337_pop822,
    output wire [0:0] out_notcmp292305_pop5812,
    output wire [0:0] out_pop5711,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_23,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_539,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c61,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_valid_out;
    wire [0:0] i_notlhs_ff_rgb24toyv12_c1_q;
    wire [0:0] i_unnamed_ff_rgb24toyv12_c3_q;
    wire [0:0] i_unnamed_ff_rgb24toyv12_c5_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_b;
    wire [139:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;


    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_and0 = i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_and1 = i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_wireValid = SE_stall_entry_V2 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_and1;

    // i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_i1_cmp106246_0 thei_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    ff_rgb24toyv12_c_i_llvm_fpga_ffwd_dest_i1_cmp10102254_0 thei_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed3 & SE_stall_entry_or2);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0(STALLENABLE,47)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_wireValid = i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,37)
    assign bubble_join_stall_entry_q = {in_reduction_ff_rgb24toyv12_c_539, in_reduction_ff_rgb24toyv12_c_23, in_pop5711, in_notcmp292305_pop5812, in_memdep_phi202_pop36337_pop822, in_memdep_phi155_pop31331_pop771, in_memdep_phi147_pop30329_pop768, in_memdep_phi140_pop29327_pop757, in_memdep_phi133_pop28325_pop746, in_memdep_phi126_pop27323_pop735, in_lm1_toi1_intcast174, in_cmp75304_pop5610, in_add_ptr73307_pop5913, in_add_ptr309_pop6014};

    // bubble_select_stall_entry(BITSELECT,38)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[127:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[128:128]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[129:129]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[132:132]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[133:133]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[134:134]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[135:135]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[136:136]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[137:137]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[138:138]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[139:139]);

    // i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    ff_rgb24toyv12_c_i_llvm_fpga_push_i1_memdep_phi18_push15_0 thei_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0 (
        .in_data_in(bubble_select_stall_entry_e),
        .in_feedback_stall_in_26(in_feedback_stall_in_26),
        .in_pop5711(bubble_select_stall_entry_m),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_26_sync(GPOUT,5)
    assign out_feedback_out_26 = i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_feedback_out_26;

    // feedback_valid_out_26_sync(GPOUT,7)
    assign out_feedback_valid_out_26 = i_llvm_fpga_push_i1_memdep_phi18_push15_ff_rgb24toyv12_c0_out_feedback_valid_out_26;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4(BITJOIN,29)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_q = i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4(BITSELECT,30)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_notlhs_ff_rgb24toyv12_c1(LOGICAL,11)@0
    assign i_notlhs_ff_rgb24toyv12_c1_q = bubble_select_stall_entry_d ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2(BITJOIN,33)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_q = i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2(BITSELECT,34)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_q[0:0]);

    // i_unnamed_ff_rgb24toyv12_c3(LOGICAL,12)@0
    assign i_unnamed_ff_rgb24toyv12_c3_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_b & i_notlhs_ff_rgb24toyv12_c1_q;

    // i_unnamed_ff_rgb24toyv12_c5(LOGICAL,13)@0
    assign i_unnamed_ff_rgb24toyv12_c5_q = i_unnamed_ff_rgb24toyv12_c3_q & bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp10102254_ff_rgb24toyv12_c4_b;

    // dupName_0_sync_out_x(GPOUT,27)@0
    assign out_add_ptr309_pop6014 = bubble_select_stall_entry_b;
    assign out_add_ptr73307_pop5913 = bubble_select_stall_entry_c;
    assign out_memdep_phi126_pop27323_pop735 = bubble_select_stall_entry_f;
    assign out_memdep_phi133_pop28325_pop746 = bubble_select_stall_entry_g;
    assign out_memdep_phi140_pop29327_pop757 = bubble_select_stall_entry_h;
    assign out_memdep_phi147_pop30329_pop768 = bubble_select_stall_entry_i;
    assign out_memdep_phi155_pop31331_pop771 = bubble_select_stall_entry_j;
    assign out_memdep_phi202_pop36337_pop822 = bubble_select_stall_entry_k;
    assign out_notcmp292305_pop5812 = bubble_select_stall_entry_l;
    assign out_pop5711 = bubble_select_stall_entry_m;
    assign out_reduction_ff_rgb24toyv12_c_23 = bubble_select_stall_entry_n;
    assign out_reduction_ff_rgb24toyv12_c_539 = bubble_select_stall_entry_o;
    assign out_unnamed_ff_rgb24toyv12_c61 = i_unnamed_ff_rgb24toyv12_c5_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp106246_ff_rgb24toyv12_c2_V0;

endmodule
