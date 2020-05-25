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

// SystemVerilog created from draw_box_bb_B2_stall_region
// SystemVerilog created on Sun May 24 22:30:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module draw_box_bb_B2_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    output wire [0:0] out_intel_reserved_ffwd_14_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_15_0,
    output wire [0:0] out_valid_out,
    output wire [32:0] out_intel_reserved_ffwd_16_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] c_i33_116_q;
    wire [33:0] i_cmp94102_draw_box2_a;
    wire [33:0] i_cmp94102_draw_box2_b;
    logic [33:0] i_cmp94102_draw_box2_o;
    wire [0:0] i_cmp94102_draw_box2_c;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_intel_reserved_ffwd_16_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_valid_out;
    wire [0:0] i_smax53_draw_box7_s;
    reg [31:0] i_smax53_draw_box7_q;
    wire [32:0] i_unnamed_draw_box10_vt_join_q;
    wire [31:0] i_unnamed_draw_box10_vt_select_31_b;
    wire [33:0] i_unnamed_draw_box11_a;
    wire [33:0] i_unnamed_draw_box11_b;
    logic [33:0] i_unnamed_draw_box11_o;
    wire [33:0] i_unnamed_draw_box11_q;
    wire [0:0] i_unnamed_draw_box4_q;
    wire [32:0] i_unnamed_draw_box9_a;
    wire [32:0] i_unnamed_draw_box9_b;
    logic [32:0] i_unnamed_draw_box9_o;
    wire [32:0] i_unnamed_draw_box9_q;
    wire [32:0] bgTrunc_i_unnamed_draw_box11_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_draw_box9_sel_x_b;
    wire [32:0] i_unnamed_draw_box10_sel_x_b;
    reg [0:0] redist0_i_cmp94102_draw_box2_c_1_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_V0;
    reg [0:0] SE_i_smax53_draw_box7_R_v_0;
    wire [0:0] SE_i_smax53_draw_box7_v_s_0;
    wire [0:0] SE_i_smax53_draw_box7_s_tv_0;
    wire [0:0] SE_i_smax53_draw_box7_backEN;
    wire [0:0] SE_i_smax53_draw_box7_and0;
    wire [0:0] SE_i_smax53_draw_box7_and1;
    wire [0:0] SE_i_smax53_draw_box7_backStall;
    wire [0:0] SE_i_smax53_draw_box7_V0;
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
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    reg [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_0;
    reg [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_1;
    wire [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_backEN;
    wire [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_or0;
    wire [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_backStall;
    wire [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_V0;
    wire [0:0] SE_redist0_i_cmp94102_draw_box2_c_1_0_V1;
    reg [0:0] bubble_out_stall_entry_5_reg_R_v_0;
    wire [0:0] bubble_out_stall_entry_5_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_5_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_5_reg_backEN;
    wire [0:0] bubble_out_stall_entry_5_reg_backStall;
    wire [0:0] bubble_out_stall_entry_5_reg_V0;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_unnamed_draw_box4(LOGICAL,24)@1
    assign i_unnamed_draw_box4_q = redist0_i_cmp94102_draw_box2_c_1_0_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13(BLACKBOX,16)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_source_i1_unnamed_24_draw_box0 thei_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(i_unnamed_draw_box4_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_backStall),
        .in_valid_in(SE_redist0_i_cmp94102_draw_box2_c_1_0_V1),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_intel_reserved_ffwd_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_116(CONSTANT,6)
    assign c_i33_116_q = $unsigned(33'b111111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8(BITJOIN,76)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_q = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8(BITSELECT,77)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_q[31:0]);

    // bubble_out_stall_entry_5_reg(STALLENABLE,151)
    // Valid signal propagation
    assign bubble_out_stall_entry_5_reg_V0 = bubble_out_stall_entry_5_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_stall_entry_5_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_stall_out & bubble_out_stall_entry_5_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_stall_entry_5_reg_backEN = ~ (bubble_out_stall_entry_5_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_5_reg_v_s_0 = bubble_out_stall_entry_5_reg_backEN & SE_stall_entry_V4;
    // Backward Stall generation
    assign bubble_out_stall_entry_5_reg_backStall = ~ (bubble_out_stall_entry_5_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_5_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_5_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_5_reg_R_v_0 <= bubble_out_stall_entry_5_reg_R_v_0 & bubble_out_stall_entry_5_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_5_reg_R_v_0 <= bubble_out_stall_entry_5_reg_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_unnamed_21_draw_box0 thei_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
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
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (bubble_out_stall_entry_5_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed4 & SE_stall_entry_or3);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_unnamed_20_draw_box0 thei_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_q = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6(BITJOIN,73)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_q = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6(BITSELECT,74)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0(BITJOIN,64)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_q = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0(BITSELECT,65)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1(BITJOIN,67)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_q = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1(BITSELECT,68)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_q[31:0]);

    // i_cmp94102_draw_box2(COMPARE,9)@0
    assign i_cmp94102_draw_box2_a = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_b});
    assign i_cmp94102_draw_box2_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_b});
    assign i_cmp94102_draw_box2_o = $unsigned($signed(i_cmp94102_draw_box2_a) - $signed(i_cmp94102_draw_box2_b));
    assign i_cmp94102_draw_box2_c[0] = i_cmp94102_draw_box2_o[33];

    // i_smax53_draw_box7(MUX,18)@0 + 1
    assign i_smax53_draw_box7_s = i_cmp94102_draw_box2_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_smax53_draw_box7_q <= 32'b0;
        end
        else if (SE_i_smax53_draw_box7_backEN == 1'b1)
        begin
            unique case (i_smax53_draw_box7_s)
                1'b0 : i_smax53_draw_box7_q <= bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_b;
                1'b1 : i_smax53_draw_box7_q <= bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_b;
                default : i_smax53_draw_box7_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_draw_box9(SUB,25)@1
    assign i_unnamed_draw_box9_a = {1'b0, i_smax53_draw_box7_q};
    assign i_unnamed_draw_box9_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_b};
    assign i_unnamed_draw_box9_o = $unsigned(i_unnamed_draw_box9_a) - $unsigned(i_unnamed_draw_box9_b);
    assign i_unnamed_draw_box9_q = i_unnamed_draw_box9_o[32:0];

    // bgTrunc_i_unnamed_draw_box9_sel_x(BITSELECT,53)@1
    assign bgTrunc_i_unnamed_draw_box9_sel_x_b = $unsigned(i_unnamed_draw_box9_q[31:0]);

    // i_unnamed_draw_box10_sel_x(BITSELECT,57)@1
    assign i_unnamed_draw_box10_sel_x_b = {1'b0, bgTrunc_i_unnamed_draw_box9_sel_x_b[31:0]};

    // i_unnamed_draw_box10_vt_select_31(BITSELECT,22)@1
    assign i_unnamed_draw_box10_vt_select_31_b = i_unnamed_draw_box10_sel_x_b[31:0];

    // i_unnamed_draw_box10_vt_join(BITJOIN,21)@1
    assign i_unnamed_draw_box10_vt_join_q = {GND_q, i_unnamed_draw_box10_vt_select_31_b};

    // i_unnamed_draw_box11(ADD,23)@1
    assign i_unnamed_draw_box11_a = {1'b0, i_unnamed_draw_box10_vt_join_q};
    assign i_unnamed_draw_box11_b = {1'b0, c_i33_116_q};
    assign i_unnamed_draw_box11_o = $unsigned(i_unnamed_draw_box11_a) + $unsigned(i_unnamed_draw_box11_b);
    assign i_unnamed_draw_box11_q = i_unnamed_draw_box11_o[33:0];

    // bgTrunc_i_unnamed_draw_box11_sel_x(BITSELECT,52)@1
    assign bgTrunc_i_unnamed_draw_box11_sel_x_b = i_unnamed_draw_box11_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14(BLACKBOX,17)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_source_i33_unnamed_25_draw_box0 thei_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(bgTrunc_i_unnamed_draw_box11_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_V0),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_intel_reserved_ffwd_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_unnamed_22_draw_box0 thei_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_backStall),
        .in_valid_in(bubble_out_stall_entry_5_reg_V0),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8(STALLENABLE,96)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_wireValid = SE_i_smax53_draw_box7_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6(STALLENABLE,94)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_backStall = SE_i_smax53_draw_box7_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_wireValid = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5(STALLENABLE,92)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_backStall = SE_i_smax53_draw_box7_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_wireValid = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_out_valid_out;

    // SE_i_smax53_draw_box7(STALLENABLE,103)
    // Valid signal propagation
    assign SE_i_smax53_draw_box7_V0 = SE_i_smax53_draw_box7_R_v_0;
    // Stall signal propagation
    assign SE_i_smax53_draw_box7_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box22_draw_box8_backStall & SE_i_smax53_draw_box7_R_v_0;
    // Backward Enable generation
    assign SE_i_smax53_draw_box7_backEN = ~ (SE_i_smax53_draw_box7_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_smax53_draw_box7_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_V0 & SE_i_smax53_draw_box7_backEN;
    assign SE_i_smax53_draw_box7_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box20_draw_box5_V0 & SE_i_smax53_draw_box7_and0;
    assign SE_i_smax53_draw_box7_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box21_draw_box6_V0 & SE_i_smax53_draw_box7_and1;
    // Backward Stall generation
    assign SE_i_smax53_draw_box7_backStall = ~ (SE_i_smax53_draw_box7_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_smax53_draw_box7_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_smax53_draw_box7_backEN == 1'b0)
            begin
                SE_i_smax53_draw_box7_R_v_0 <= SE_i_smax53_draw_box7_R_v_0 & SE_i_smax53_draw_box7_s_tv_0;
            end
            else
            begin
                SE_i_smax53_draw_box7_R_v_0 <= SE_i_smax53_draw_box7_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_unnamed_18_draw_box0 thei_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_dest_i32_unnamed_19_draw_box0 thei_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1(STALLENABLE,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_consumed0 = (~ (SE_i_smax53_draw_box7_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_consumed1 = (~ (SE_redist0_i_cmp94102_draw_box2_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_wireValid = i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box18_draw_box0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_and0;

    // SE_redist0_i_cmp94102_draw_box2_c_1_0(STALLENABLE,114)
    // Valid signal propagation
    assign SE_redist0_i_cmp94102_draw_box2_c_1_0_V0 = SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_0;
    assign SE_redist0_i_cmp94102_draw_box2_c_1_0_V1 = SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_cmp94102_draw_box2_c_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_stall_out & SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_0;
    assign SE_redist0_i_cmp94102_draw_box2_c_1_0_s_tv_1 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_stall_out & SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_cmp94102_draw_box2_c_1_0_or0 = SE_redist0_i_cmp94102_draw_box2_c_1_0_s_tv_0;
    assign SE_redist0_i_cmp94102_draw_box2_c_1_0_backEN = ~ (SE_redist0_i_cmp94102_draw_box2_c_1_0_s_tv_1 | SE_redist0_i_cmp94102_draw_box2_c_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_cmp94102_draw_box2_c_1_0_v_s_0 = SE_redist0_i_cmp94102_draw_box2_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_draw_box19_draw_box1_V1;
    // Backward Stall generation
    assign SE_redist0_i_cmp94102_draw_box2_c_1_0_backStall = ~ (SE_redist0_i_cmp94102_draw_box2_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_cmp94102_draw_box2_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_0 <= SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_0 & SE_redist0_i_cmp94102_draw_box2_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_0 <= SE_redist0_i_cmp94102_draw_box2_c_1_0_v_s_0;
            end

            if (SE_redist0_i_cmp94102_draw_box2_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_1 <= SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_1 & SE_redist0_i_cmp94102_draw_box2_c_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_cmp94102_draw_box2_c_1_0_R_v_1 <= SE_redist0_i_cmp94102_draw_box2_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14(STALLENABLE,102)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_and0 = i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_and1 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_and1;

    // redist0_i_cmp94102_draw_box2_c_1_0(REG,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_cmp94102_draw_box2_c_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_cmp94102_draw_box2_c_1_0_backEN == 1'b1)
        begin
            redist0_i_cmp94102_draw_box2_c_1_0_q <= $unsigned(i_cmp94102_draw_box2_c);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12(BLACKBOX,15)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_stall_out@20000000
    draw_box_i_llvm_fpga_ffwd_source_i1_unnamed_23_draw_box0 thei_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(redist0_i_cmp94102_draw_box2_c_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_backStall),
        .in_valid_in(SE_redist0_i_cmp94102_draw_box2_c_1_0_V0),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_intel_reserved_ffwd_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,45)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box23_draw_box12_out_intel_reserved_ffwd_14_0;

    // sync_out(GPOUT,50)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box24_draw_box13_out_intel_reserved_ffwd_15_0;

    // dupName_0_sync_out_x(GPOUT,55)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_V0;

    // dupName_1_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i33_unnamed_draw_box25_draw_box14_out_intel_reserved_ffwd_16_0;

endmodule
