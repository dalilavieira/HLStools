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

// SystemVerilog created from fir_bb_B4_stall_region
// SystemVerilog created on Sun Apr 19 22:13:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_bb_B4_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_valid_out,
    output wire [32:0] out_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_114_q;
    wire [31:0] c_i32_115_q;
    wire [32:0] c_i33_116_q;
    wire [33:0] i_cmp2424_fir2_a;
    wire [33:0] i_cmp2424_fir2_b;
    logic [33:0] i_cmp2424_fir2_o;
    wire [0:0] i_cmp2424_fir2_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_valid_out;
    wire [0:0] i_smax_fir6_s;
    reg [31:0] i_smax_fir6_q;
    wire [31:0] i_smax_fir6_vt_join_q;
    wire [30:0] i_smax_fir6_vt_select_30_b;
    wire [33:0] i_unnamed_fir4_a;
    wire [33:0] i_unnamed_fir4_b;
    logic [33:0] i_unnamed_fir4_o;
    wire [0:0] i_unnamed_fir4_c;
    wire [32:0] i_unnamed_fir7_a;
    wire [32:0] i_unnamed_fir7_b;
    logic [32:0] i_unnamed_fir7_o;
    wire [32:0] i_unnamed_fir7_q;
    wire [32:0] i_unnamed_fir8_vt_join_q;
    wire [31:0] i_unnamed_fir8_vt_select_31_b;
    wire [33:0] i_unnamed_fir9_a;
    wire [33:0] i_unnamed_fir9_b;
    logic [33:0] i_unnamed_fir9_o;
    wire [33:0] i_unnamed_fir9_q;
    wire [31:0] bgTrunc_i_unnamed_fir7_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_fir9_sel_x_b;
    wire [31:0] c_i32_013_recast_x_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [32:0] i_unnamed_fir8_sel_x_b;
    reg [30:0] redist0_i_smax_fir6_vt_select_30_b_1_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b;
    reg [0:0] SE_i_cmp2424_fir2_R_v_0;
    reg [0:0] SE_i_cmp2424_fir2_R_v_1;
    wire [0:0] SE_i_cmp2424_fir2_v_s_0;
    wire [0:0] SE_i_cmp2424_fir2_s_tv_0;
    wire [0:0] SE_i_cmp2424_fir2_s_tv_1;
    wire [0:0] SE_i_cmp2424_fir2_backEN;
    wire [0:0] SE_i_cmp2424_fir2_or0;
    wire [0:0] SE_i_cmp2424_fir2_backStall;
    wire [0:0] SE_i_cmp2424_fir2_V0;
    wire [0:0] SE_i_cmp2424_fir2_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_V1;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_V0;


    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg(STALLENABLE,98)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12(STALLENABLE,69)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_and0 = i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_and1 = i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_and1;

    // c_i33_116(CONSTANT,7)
    assign c_i33_116_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_115(CONSTANT,6)
    assign c_i32_115_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_114(CONSTANT,5)
    assign c_i32_114_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_fir4(COMPARE,18)@0
    assign i_unnamed_fir4_a = $unsigned({{2{c_i32_114_q[31]}}, c_i32_114_q});
    assign i_unnamed_fir4_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b});
    assign i_unnamed_fir4_o = $unsigned($signed(i_unnamed_fir4_a) - $signed(i_unnamed_fir4_b));
    assign i_unnamed_fir4_c[0] = i_unnamed_fir4_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_fir6(MUX,14)@0
    assign i_smax_fir6_s = i_unnamed_fir4_c;
    always @(i_smax_fir6_s or c_i32_114_q or bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b)
    begin
        unique case (i_smax_fir6_s)
            1'b0 : i_smax_fir6_q = c_i32_114_q;
            1'b1 : i_smax_fir6_q = bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b;
            default : i_smax_fir6_q = 32'b0;
        endcase
    end

    // i_smax_fir6_vt_select_30(BITSELECT,17)@0
    assign i_smax_fir6_vt_select_30_b = i_smax_fir6_q[30:0];

    // redist0_i_smax_fir6_vt_select_30_b_1_0(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_smax_fir6_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_i_cmp2424_fir2_backEN == 1'b1)
        begin
            redist0_i_smax_fir6_vt_select_30_b_1_0_q <= $unsigned(i_smax_fir6_vt_select_30_b);
        end
    end

    // i_smax_fir6_vt_join(BITJOIN,16)@1
    assign i_smax_fir6_vt_join_q = {GND_q, redist0_i_smax_fir6_vt_select_30_b_1_0_q};

    // i_unnamed_fir7(ADD,19)@1
    assign i_unnamed_fir7_a = {1'b0, i_smax_fir6_vt_join_q};
    assign i_unnamed_fir7_b = {1'b0, c_i32_115_q};
    assign i_unnamed_fir7_o = $unsigned(i_unnamed_fir7_a) + $unsigned(i_unnamed_fir7_b);
    assign i_unnamed_fir7_q = i_unnamed_fir7_o[32:0];

    // bgTrunc_i_unnamed_fir7_sel_x(BITSELECT,41)@1
    assign bgTrunc_i_unnamed_fir7_sel_x_b = i_unnamed_fir7_q[31:0];

    // i_unnamed_fir8_sel_x(BITSELECT,49)@1
    assign i_unnamed_fir8_sel_x_b = {1'b0, bgTrunc_i_unnamed_fir7_sel_x_b[31:0]};

    // i_unnamed_fir8_vt_select_31(BITSELECT,23)@1
    assign i_unnamed_fir8_vt_select_31_b = i_unnamed_fir8_sel_x_b[31:0];

    // i_unnamed_fir8_vt_join(BITJOIN,22)@1
    assign i_unnamed_fir8_vt_join_q = {GND_q, i_unnamed_fir8_vt_select_31_b};

    // i_unnamed_fir9(ADD,24)@1
    assign i_unnamed_fir9_a = {1'b0, i_unnamed_fir8_vt_join_q};
    assign i_unnamed_fir9_b = {1'b0, c_i33_116_q};
    assign i_unnamed_fir9_o = $unsigned(i_unnamed_fir9_a) + $unsigned(i_unnamed_fir9_b);
    assign i_unnamed_fir9_q = i_unnamed_fir9_o[33:0];

    // bgTrunc_i_unnamed_fir9_sel_x(BITSELECT,42)@1
    assign bgTrunc_i_unnamed_fir9_sel_x_b = i_unnamed_fir9_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    fir_i_llvm_fpga_ffwd_source_i33_unnamed_8_fir0 thei_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_fir9_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_backStall),
        .in_valid_in(SE_i_cmp2424_fir2_V1),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_013_recast_x(CONSTANT,43)
    assign c_i32_013_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp2424_fir2(COMPARE,10)@0 + 1
    assign i_cmp2424_fir2_a = $unsigned({{2{c_i32_013_recast_x_q[31]}}, c_i32_013_recast_x_q});
    assign i_cmp2424_fir2_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp2424_fir2_o <= 34'b0;
        end
        else if (SE_i_cmp2424_fir2_backEN == 1'b1)
        begin
            i_cmp2424_fir2_o <= $unsigned($signed(i_cmp2424_fir2_a) - $signed(i_cmp2424_fir2_b));
        end
    end
    assign i_cmp2424_fir2_c[0] = i_cmp2424_fir2_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    fir_i_llvm_fpga_ffwd_source_i1_unnamed_7_fir0 thei_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_cmp2424_fir2_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_backStall),
        .in_valid_in(SE_i_cmp2424_fir2_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp2424_fir2(STALLENABLE,63)
    // Valid signal propagation
    assign SE_i_cmp2424_fir2_V0 = SE_i_cmp2424_fir2_R_v_0;
    assign SE_i_cmp2424_fir2_V1 = SE_i_cmp2424_fir2_R_v_1;
    // Stall signal propagation
    assign SE_i_cmp2424_fir2_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_stall_out & SE_i_cmp2424_fir2_R_v_0;
    assign SE_i_cmp2424_fir2_s_tv_1 = i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_stall_out & SE_i_cmp2424_fir2_R_v_1;
    // Backward Enable generation
    assign SE_i_cmp2424_fir2_or0 = SE_i_cmp2424_fir2_s_tv_0;
    assign SE_i_cmp2424_fir2_backEN = ~ (SE_i_cmp2424_fir2_s_tv_1 | SE_i_cmp2424_fir2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp2424_fir2_v_s_0 = SE_i_cmp2424_fir2_backEN & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_cmp2424_fir2_backStall = ~ (SE_i_cmp2424_fir2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp2424_fir2_R_v_0 <= 1'b0;
            SE_i_cmp2424_fir2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp2424_fir2_backEN == 1'b0)
            begin
                SE_i_cmp2424_fir2_R_v_0 <= SE_i_cmp2424_fir2_R_v_0 & SE_i_cmp2424_fir2_s_tv_0;
            end
            else
            begin
                SE_i_cmp2424_fir2_R_v_0 <= SE_i_cmp2424_fir2_v_s_0;
            end

            if (SE_i_cmp2424_fir2_backEN == 1'b0)
            begin
                SE_i_cmp2424_fir2_R_v_1 <= SE_i_cmp2424_fir2_R_v_1 & SE_i_cmp2424_fir2_s_tv_1;
            end
            else
            begin
                SE_i_cmp2424_fir2_R_v_1 <= SE_i_cmp2424_fir2_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,78)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x(BLACKBOX,48)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    fir_i_llvm_fpga_ffwd_dest_s_struct_z3ii_inputss_unnamed_fir5_fir0 thei_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x (
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_valid_out),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x(STALLENABLE,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_consumed0 = (~ (SE_i_cmp2424_fir2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10(STALLENABLE,67)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x(BITJOIN,61)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_out_dest_data_out_0_0_1_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x(BITSELECT,62)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    fir_i_llvm_fpga_ffwd_source_i32_unnamed_6_fir0 thei_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z3firii_inputss_unnamed_fir5_fir0_aunroll_x_V1),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,35)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_fir6_fir10_out_intel_reserved_ffwd_2_0;

    // sync_out(GPOUT,39)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i1_unnamed_fir7_fir11_out_intel_reserved_ffwd_3_0;

    // dupName_0_sync_out_x(GPOUT,46)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_V0;

    // dupName_1_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i33_unnamed_fir8_fir12_out_intel_reserved_ffwd_4_0;

endmodule
