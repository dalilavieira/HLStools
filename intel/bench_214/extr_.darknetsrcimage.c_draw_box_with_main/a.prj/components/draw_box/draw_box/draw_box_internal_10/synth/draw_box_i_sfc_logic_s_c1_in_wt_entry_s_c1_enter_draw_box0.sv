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

// SystemVerilog created from draw_box_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_draw_box0
// SystemVerilog created on Sun May 24 22:30:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module draw_box_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_draw_box0 (
    output wire [0:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [32:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_intel_reserved_ffwd_9_0,
    output wire [31:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_draw_box1,
    output wire [0:0] out_unnamed_draw_box17_0_tpl,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [31:0] in_c1_eni1_1_tpl,
    input wire [31:0] in_c1_eni1_2_tpl,
    input wire [63:0] in_c1_eni1_3_tpl,
    input wire [31:0] in_c1_eni1_4_tpl,
    input wire [31:0] in_c1_eni1_5_tpl,
    input wire [31:0] in_c1_eni1_6_tpl,
    input wire [31:0] in_c1_eni1_7_tpl,
    input wire [31:0] in_c1_eni1_8_tpl,
    input wire [31:0] in_c1_eni1_9_tpl,
    input wire [31:0] in_c1_eni1_10_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_057_q;
    wire [31:0] c_i32_158_q;
    wire [32:0] c_i33_160_q;
    wire [33:0] i_cmp1_draw_box7_a;
    wire [33:0] i_cmp1_draw_box7_b;
    logic [33:0] i_cmp1_draw_box7_o;
    wire [0:0] i_cmp1_draw_box7_c;
    wire [33:0] i_cmp31104_draw_box21_a;
    wire [33:0] i_cmp31104_draw_box21_b;
    logic [33:0] i_cmp31104_draw_box21_o;
    wire [0:0] i_cmp31104_draw_box21_c;
    wire [33:0] i_cmp9_draw_box14_a;
    wire [33:0] i_cmp9_draw_box14_b;
    logic [33:0] i_cmp9_draw_box14_o;
    wire [0:0] i_cmp9_draw_box14_c;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_draw_box6_draw_box31_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_draw_box7_draw_box32_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_draw_box8_draw_box33_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box12_draw_box37_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box13_draw_box38_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box14_draw_box39_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_draw_box15_draw_box40_out_intel_reserved_ffwd_12_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_draw_box10_draw_box35_out_intel_reserved_ffwd_7_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_draw_box11_draw_box36_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_draw_box4_draw_box29_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_draw_box5_draw_box30_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_draw_box9_draw_box34_out_intel_reserved_ffwd_6_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_draw_box16_draw_box41_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_smax_draw_box24_s;
    reg [31:0] i_smax_draw_box24_q;
    wire [0:0] i_spec_select99_draw_box13_s;
    reg [31:0] i_spec_select99_draw_box13_q;
    wire [31:0] i_spec_select99_draw_box13_vt_join_q;
    wire [30:0] i_spec_select99_draw_box13_vt_select_30_b;
    wire [0:0] i_spec_select_draw_box6_s;
    reg [31:0] i_spec_select_draw_box6_q;
    wire [31:0] i_spec_select_draw_box6_vt_join_q;
    wire [30:0] i_spec_select_draw_box6_vt_select_30_b;
    wire [32:0] i_sub_draw_box9_a;
    wire [32:0] i_sub_draw_box9_b;
    logic [32:0] i_sub_draw_box9_o;
    wire [32:0] i_sub_draw_box9_q;
    wire [0:0] i_unnamed_draw_box10_s;
    reg [31:0] i_unnamed_draw_box10_q;
    wire [33:0] i_unnamed_draw_box11_a;
    wire [33:0] i_unnamed_draw_box11_b;
    logic [33:0] i_unnamed_draw_box11_o;
    wire [0:0] i_unnamed_draw_box11_c;
    wire [0:0] i_unnamed_draw_box16_s;
    reg [31:0] i_unnamed_draw_box16_q;
    wire [33:0] i_unnamed_draw_box17_a;
    wire [33:0] i_unnamed_draw_box17_b;
    logic [33:0] i_unnamed_draw_box17_o;
    wire [0:0] i_unnamed_draw_box17_c;
    wire [33:0] i_unnamed_draw_box19_a;
    wire [33:0] i_unnamed_draw_box19_b;
    logic [33:0] i_unnamed_draw_box19_o;
    wire [0:0] i_unnamed_draw_box19_c;
    wire [0:0] i_unnamed_draw_box23_q;
    wire [32:0] i_unnamed_draw_box25_a;
    wire [32:0] i_unnamed_draw_box25_b;
    logic [32:0] i_unnamed_draw_box25_o;
    wire [32:0] i_unnamed_draw_box25_q;
    wire [32:0] i_unnamed_draw_box26_vt_join_q;
    wire [31:0] i_unnamed_draw_box26_vt_select_31_b;
    wire [33:0] i_unnamed_draw_box27_a;
    wire [33:0] i_unnamed_draw_box27_b;
    logic [33:0] i_unnamed_draw_box27_o;
    wire [33:0] i_unnamed_draw_box27_q;
    wire [33:0] i_unnamed_draw_box4_a;
    wire [33:0] i_unnamed_draw_box4_b;
    logic [33:0] i_unnamed_draw_box4_o;
    wire [0:0] i_unnamed_draw_box4_c;
    wire [31:0] bgTrunc_i_sub_draw_box9_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_draw_box25_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_draw_box27_sel_x_b;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [32:0] i_unnamed_draw_box26_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    reg [31:0] redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [31:0] redist1_sync_together61_aunroll_x_in_c1_eni1_2_tpl_1_q;
    reg [63:0] redist2_sync_together61_aunroll_x_in_c1_eni1_3_tpl_1_q;
    reg [31:0] redist3_sync_together61_aunroll_x_in_c1_eni1_5_tpl_1_q;
    reg [31:0] redist4_sync_together61_aunroll_x_in_c1_eni1_7_tpl_1_q;
    reg [31:0] redist5_sync_together61_aunroll_x_in_c1_eni1_8_tpl_1_q;
    reg [31:0] redist6_sync_together61_aunroll_x_in_c1_eni1_9_tpl_1_q;
    reg [31:0] redist7_sync_together61_aunroll_x_in_c1_eni1_10_tpl_1_q;
    reg [0:0] redist8_sync_together61_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist9_sync_together61_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist10_i_unnamed_draw_box16_q_1_q;
    reg [31:0] redist11_i_unnamed_draw_box10_q_1_q;
    reg [31:0] redist12_i_unnamed_draw_box10_q_2_q;
    reg [30:0] redist13_i_spec_select_draw_box6_vt_select_30_b_1_q;
    reg [30:0] redist14_i_spec_select99_draw_box13_vt_select_30_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg11(REG,109)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // redist4_sync_together61_aunroll_x_in_c1_eni1_7_tpl_1(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together61_aunroll_x_in_c1_eni1_7_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together61_aunroll_x_in_c1_eni1_7_tpl_1_q <= $unsigned(in_c1_eni1_7_tpl);
        end
    end

    // c_i32_057(CONSTANT,20)
    assign c_i32_057_q = $unsigned(32'b00000000000000000000000000000000);

    // i_unnamed_draw_box19(COMPARE,53)@3
    assign i_unnamed_draw_box19_a = $unsigned({{2{c_i32_057_q[31]}}, c_i32_057_q});
    assign i_unnamed_draw_box19_b = $unsigned({{2{redist4_sync_together61_aunroll_x_in_c1_eni1_7_tpl_1_q[31]}}, redist4_sync_together61_aunroll_x_in_c1_eni1_7_tpl_1_q});
    assign i_unnamed_draw_box19_o = $unsigned($signed(i_unnamed_draw_box19_a) - $signed(i_unnamed_draw_box19_b));
    assign i_unnamed_draw_box19_c[0] = i_unnamed_draw_box19_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_draw_box13_draw_box38(BLACKBOX,30)@3
    // out out_intel_reserved_ffwd_10_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i1_unnamed_13_draw_box0 thei_llvm_fpga_ffwd_source_i1_unnamed_draw_box13_draw_box38 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(i_unnamed_draw_box19_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box13_draw_box38_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,77)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box13_draw_box38_out_intel_reserved_ffwd_10_0;

    // redist8_sync_together61_aunroll_x_in_i_valid_1(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together61_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist8_sync_together61_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,110)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist8_sync_together61_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_unnamed_draw_box4(COMPARE,61)@2
    assign i_unnamed_draw_box4_a = $unsigned({{2{c_i32_057_q[31]}}, c_i32_057_q});
    assign i_unnamed_draw_box4_b = $unsigned({{2{in_c1_eni1_4_tpl[31]}}, in_c1_eni1_4_tpl});
    assign i_unnamed_draw_box4_o = $unsigned($signed(i_unnamed_draw_box4_a) - $signed(i_unnamed_draw_box4_b));
    assign i_unnamed_draw_box4_c[0] = i_unnamed_draw_box4_o[33];

    // i_spec_select_draw_box6(MUX,44)@2
    assign i_spec_select_draw_box6_s = i_unnamed_draw_box4_c;
    always @(i_spec_select_draw_box6_s or c_i32_057_q or in_c1_eni1_4_tpl)
    begin
        unique case (i_spec_select_draw_box6_s)
            1'b0 : i_spec_select_draw_box6_q = c_i32_057_q;
            1'b1 : i_spec_select_draw_box6_q = in_c1_eni1_4_tpl;
            default : i_spec_select_draw_box6_q = 32'b0;
        endcase
    end

    // i_spec_select_draw_box6_vt_select_30(BITSELECT,47)@2
    assign i_spec_select_draw_box6_vt_select_30_b = i_spec_select_draw_box6_q[30:0];

    // redist13_i_spec_select_draw_box6_vt_select_30_b_1(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_spec_select_draw_box6_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist13_i_spec_select_draw_box6_vt_select_30_b_1_q <= $unsigned(i_spec_select_draw_box6_vt_select_30_b);
        end
    end

    // i_spec_select_draw_box6_vt_join(BITJOIN,46)@3
    assign i_spec_select_draw_box6_vt_join_q = {GND_q, redist13_i_spec_select_draw_box6_vt_select_30_b_1_q};

    // c_i32_158(CONSTANT,21)
    assign c_i32_158_q = $unsigned(32'b11111111111111111111111111111111);

    // redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_sub_draw_box9(ADD,48)@3
    assign i_sub_draw_box9_a = {1'b0, redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q};
    assign i_sub_draw_box9_b = {1'b0, c_i32_158_q};
    assign i_sub_draw_box9_o = $unsigned(i_sub_draw_box9_a) + $unsigned(i_sub_draw_box9_b);
    assign i_sub_draw_box9_q = i_sub_draw_box9_o[32:0];

    // bgTrunc_i_sub_draw_box9_sel_x(BITSELECT,73)@3
    assign bgTrunc_i_sub_draw_box9_sel_x_b = i_sub_draw_box9_q[31:0];

    // i_cmp1_draw_box7(COMPARE,23)@3
    assign i_cmp1_draw_box7_a = $unsigned({{2{i_spec_select_draw_box6_vt_join_q[31]}}, i_spec_select_draw_box6_vt_join_q});
    assign i_cmp1_draw_box7_b = $unsigned({{2{redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_cmp1_draw_box7_o = $unsigned($signed(i_cmp1_draw_box7_a) - $signed(i_cmp1_draw_box7_b));
    assign i_cmp1_draw_box7_c[0] = i_cmp1_draw_box7_o[33];

    // i_unnamed_draw_box10(MUX,49)@3
    assign i_unnamed_draw_box10_s = i_cmp1_draw_box7_c;
    always @(i_unnamed_draw_box10_s or bgTrunc_i_sub_draw_box9_sel_x_b or i_spec_select_draw_box6_vt_join_q)
    begin
        unique case (i_unnamed_draw_box10_s)
            1'b0 : i_unnamed_draw_box10_q = bgTrunc_i_sub_draw_box9_sel_x_b;
            1'b1 : i_unnamed_draw_box10_q = i_spec_select_draw_box6_vt_join_q;
            default : i_unnamed_draw_box10_q = 32'b0;
        endcase
    end

    // redist11_i_unnamed_draw_box10_q_1(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_unnamed_draw_box10_q_1_q <= '0;
        end
        else
        begin
            redist11_i_unnamed_draw_box10_q_1_q <= $unsigned(i_unnamed_draw_box10_q);
        end
    end

    // i_unnamed_draw_box11(COMPARE,50)@2
    assign i_unnamed_draw_box11_a = $unsigned({{2{c_i32_057_q[31]}}, c_i32_057_q});
    assign i_unnamed_draw_box11_b = $unsigned({{2{in_c1_eni1_6_tpl[31]}}, in_c1_eni1_6_tpl});
    assign i_unnamed_draw_box11_o = $unsigned($signed(i_unnamed_draw_box11_a) - $signed(i_unnamed_draw_box11_b));
    assign i_unnamed_draw_box11_c[0] = i_unnamed_draw_box11_o[33];

    // i_spec_select99_draw_box13(MUX,40)@2
    assign i_spec_select99_draw_box13_s = i_unnamed_draw_box11_c;
    always @(i_spec_select99_draw_box13_s or c_i32_057_q or in_c1_eni1_6_tpl)
    begin
        unique case (i_spec_select99_draw_box13_s)
            1'b0 : i_spec_select99_draw_box13_q = c_i32_057_q;
            1'b1 : i_spec_select99_draw_box13_q = in_c1_eni1_6_tpl;
            default : i_spec_select99_draw_box13_q = 32'b0;
        endcase
    end

    // i_spec_select99_draw_box13_vt_select_30(BITSELECT,43)@2
    assign i_spec_select99_draw_box13_vt_select_30_b = i_spec_select99_draw_box13_q[30:0];

    // redist14_i_spec_select99_draw_box13_vt_select_30_b_1(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_spec_select99_draw_box13_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist14_i_spec_select99_draw_box13_vt_select_30_b_1_q <= $unsigned(i_spec_select99_draw_box13_vt_select_30_b);
        end
    end

    // i_spec_select99_draw_box13_vt_join(BITJOIN,42)@3
    assign i_spec_select99_draw_box13_vt_join_q = {GND_q, redist14_i_spec_select99_draw_box13_vt_select_30_b_1_q};

    // i_cmp9_draw_box14(COMPARE,25)@3
    assign i_cmp9_draw_box14_a = $unsigned({{2{i_spec_select99_draw_box13_vt_join_q[31]}}, i_spec_select99_draw_box13_vt_join_q});
    assign i_cmp9_draw_box14_b = $unsigned({{2{redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q[31]}}, redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q});
    assign i_cmp9_draw_box14_o = $unsigned($signed(i_cmp9_draw_box14_a) - $signed(i_cmp9_draw_box14_b));
    assign i_cmp9_draw_box14_c[0] = i_cmp9_draw_box14_o[33];

    // i_unnamed_draw_box16(MUX,51)@3
    assign i_unnamed_draw_box16_s = i_cmp9_draw_box14_c;
    always @(i_unnamed_draw_box16_s or bgTrunc_i_sub_draw_box9_sel_x_b or i_spec_select99_draw_box13_vt_join_q)
    begin
        unique case (i_unnamed_draw_box16_s)
            1'b0 : i_unnamed_draw_box16_q = bgTrunc_i_sub_draw_box9_sel_x_b;
            1'b1 : i_unnamed_draw_box16_q = i_spec_select99_draw_box13_vt_join_q;
            default : i_unnamed_draw_box16_q = 32'b0;
        endcase
    end

    // redist10_i_unnamed_draw_box16_q_1(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_unnamed_draw_box16_q_1_q <= '0;
        end
        else
        begin
            redist10_i_unnamed_draw_box16_q_1_q <= $unsigned(i_unnamed_draw_box16_q);
        end
    end

    // i_cmp31104_draw_box21(COMPARE,24)@4
    assign i_cmp31104_draw_box21_a = $unsigned({{2{redist10_i_unnamed_draw_box16_q_1_q[31]}}, redist10_i_unnamed_draw_box16_q_1_q});
    assign i_cmp31104_draw_box21_b = $unsigned({{2{redist11_i_unnamed_draw_box10_q_1_q[31]}}, redist11_i_unnamed_draw_box10_q_1_q});
    assign i_cmp31104_draw_box21_o = $unsigned($signed(i_cmp31104_draw_box21_a) - $signed(i_cmp31104_draw_box21_b));
    assign i_cmp31104_draw_box21_c[0] = i_cmp31104_draw_box21_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_draw_box14_draw_box39(BLACKBOX,31)@4
    // out out_intel_reserved_ffwd_11_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i1_unnamed_14_draw_box0 thei_llvm_fpga_ffwd_source_i1_unnamed_draw_box14_draw_box39 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(i_cmp31104_draw_box21_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box14_draw_box39_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,79)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box14_draw_box39_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg13(REG,111)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist8_sync_together61_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_unnamed_draw_box23(LOGICAL,54)@4
    assign i_unnamed_draw_box23_q = i_cmp31104_draw_box21_c ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_draw_box15_draw_box40(BLACKBOX,32)@4
    // out out_intel_reserved_ffwd_12_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i1_unnamed_15_draw_box0 thei_llvm_fpga_ffwd_source_i1_unnamed_draw_box15_draw_box40 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(i_unnamed_draw_box23_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box15_draw_box40_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,81)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box15_draw_box40_out_intel_reserved_ffwd_12_0;

    // redist9_sync_together61_aunroll_x_in_i_valid_2(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together61_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist9_sync_together61_aunroll_x_in_i_valid_2_q <= $unsigned(redist8_sync_together61_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,112)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist9_sync_together61_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i33_160(CONSTANT,22)
    assign c_i33_160_q = $unsigned(33'b111111111111111111111111111111111);

    // redist12_i_unnamed_draw_box10_q_2(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_unnamed_draw_box10_q_2_q <= '0;
        end
        else
        begin
            redist12_i_unnamed_draw_box10_q_2_q <= $unsigned(redist11_i_unnamed_draw_box10_q_1_q);
        end
    end

    // i_smax_draw_box24(MUX,39)@4 + 1
    assign i_smax_draw_box24_s = i_cmp31104_draw_box21_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_smax_draw_box24_q <= 32'b0;
        end
        else
        begin
            unique case (i_smax_draw_box24_s)
                1'b0 : i_smax_draw_box24_q <= redist10_i_unnamed_draw_box16_q_1_q;
                1'b1 : i_smax_draw_box24_q <= redist11_i_unnamed_draw_box10_q_1_q;
                default : i_smax_draw_box24_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_draw_box25(SUB,55)@5
    assign i_unnamed_draw_box25_a = {1'b0, i_smax_draw_box24_q};
    assign i_unnamed_draw_box25_b = {1'b0, redist12_i_unnamed_draw_box10_q_2_q};
    assign i_unnamed_draw_box25_o = $unsigned(i_unnamed_draw_box25_a) - $unsigned(i_unnamed_draw_box25_b);
    assign i_unnamed_draw_box25_q = i_unnamed_draw_box25_o[32:0];

    // bgTrunc_i_unnamed_draw_box25_sel_x(BITSELECT,74)@5
    assign bgTrunc_i_unnamed_draw_box25_sel_x_b = $unsigned(i_unnamed_draw_box25_q[31:0]);

    // i_unnamed_draw_box26_sel_x(BITSELECT,94)@5
    assign i_unnamed_draw_box26_sel_x_b = {1'b0, bgTrunc_i_unnamed_draw_box25_sel_x_b[31:0]};

    // i_unnamed_draw_box26_vt_select_31(BITSELECT,59)@5
    assign i_unnamed_draw_box26_vt_select_31_b = i_unnamed_draw_box26_sel_x_b[31:0];

    // i_unnamed_draw_box26_vt_join(BITJOIN,58)@5
    assign i_unnamed_draw_box26_vt_join_q = {GND_q, i_unnamed_draw_box26_vt_select_31_b};

    // i_unnamed_draw_box27(ADD,60)@5
    assign i_unnamed_draw_box27_a = {1'b0, i_unnamed_draw_box26_vt_join_q};
    assign i_unnamed_draw_box27_b = {1'b0, c_i33_160_q};
    assign i_unnamed_draw_box27_o = $unsigned(i_unnamed_draw_box27_a) + $unsigned(i_unnamed_draw_box27_b);
    assign i_unnamed_draw_box27_q = i_unnamed_draw_box27_o[33:0];

    // bgTrunc_i_unnamed_draw_box27_sel_x(BITSELECT,75)@5
    assign bgTrunc_i_unnamed_draw_box27_sel_x_b = i_unnamed_draw_box27_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_draw_box16_draw_box41(BLACKBOX,38)@5
    // out out_intel_reserved_ffwd_13_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i33_unnamed_16_draw_box0 thei_llvm_fpga_ffwd_source_i33_unnamed_draw_box16_draw_box41 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(bgTrunc_i_unnamed_draw_box27_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i33_unnamed_draw_box16_draw_box41_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,83)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i33_unnamed_draw_box16_draw_box41_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg2(REG,100)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together61_aunroll_x_in_c1_eni1_5_tpl_1(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together61_aunroll_x_in_c1_eni1_5_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together61_aunroll_x_in_c1_eni1_5_tpl_1_q <= $unsigned(in_c1_eni1_5_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_draw_box4_draw_box29(BLACKBOX,35)@3
    // out out_intel_reserved_ffwd_1_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i32_unnamed_4_draw_box0 thei_llvm_fpga_ffwd_source_i32_unnamed_draw_box4_draw_box29 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(redist3_sync_together61_aunroll_x_in_c1_eni1_5_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_draw_box4_draw_box29_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,84)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_draw_box4_draw_box29_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg3(REG,101)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_draw_box5_draw_box30(BLACKBOX,36)@3
    // out out_intel_reserved_ffwd_2_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i32_unnamed_5_draw_box0 thei_llvm_fpga_ffwd_source_i32_unnamed_draw_box5_draw_box30 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist4_sync_together61_aunroll_x_in_c1_eni1_7_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_draw_box5_draw_box30_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,85)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_draw_box5_draw_box30_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg4(REG,102)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // redist5_sync_together61_aunroll_x_in_c1_eni1_8_tpl_1(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together61_aunroll_x_in_c1_eni1_8_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together61_aunroll_x_in_c1_eni1_8_tpl_1_q <= $unsigned(in_c1_eni1_8_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_draw_box6_draw_box31(BLACKBOX,26)@3
    // out out_intel_reserved_ffwd_3_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_f32_unnamed_6_draw_box0 thei_llvm_fpga_ffwd_source_f32_unnamed_draw_box6_draw_box31 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(redist5_sync_together61_aunroll_x_in_c1_eni1_8_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_f32_unnamed_draw_box6_draw_box31_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,86)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_f32_unnamed_draw_box6_draw_box31_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg5(REG,103)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_sync_together61_aunroll_x_in_c1_eni1_9_tpl_1(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together61_aunroll_x_in_c1_eni1_9_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together61_aunroll_x_in_c1_eni1_9_tpl_1_q <= $unsigned(in_c1_eni1_9_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_draw_box7_draw_box32(BLACKBOX,27)@3
    // out out_intel_reserved_ffwd_4_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_f32_unnamed_7_draw_box0 thei_llvm_fpga_ffwd_source_f32_unnamed_draw_box7_draw_box32 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(redist6_sync_together61_aunroll_x_in_c1_eni1_9_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_f32_unnamed_draw_box7_draw_box32_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,87)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_f32_unnamed_draw_box7_draw_box32_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg6(REG,104)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // redist7_sync_together61_aunroll_x_in_c1_eni1_10_tpl_1(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together61_aunroll_x_in_c1_eni1_10_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together61_aunroll_x_in_c1_eni1_10_tpl_1_q <= $unsigned(in_c1_eni1_10_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_draw_box8_draw_box33(BLACKBOX,28)@3
    // out out_intel_reserved_ffwd_5_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_f32_unnamed_8_draw_box0 thei_llvm_fpga_ffwd_source_f32_unnamed_draw_box8_draw_box33 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(redist7_sync_together61_aunroll_x_in_c1_eni1_10_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_f32_unnamed_draw_box8_draw_box33_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,88)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_f32_unnamed_draw_box8_draw_box33_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg7(REG,105)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_draw_box9_draw_box34(BLACKBOX,37)@3
    // out out_intel_reserved_ffwd_6_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i32_unnamed_9_draw_box0 thei_llvm_fpga_ffwd_source_i32_unnamed_draw_box9_draw_box34 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_draw_box9_draw_box34_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,89)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_draw_box9_draw_box34_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg8(REG,106)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_draw_box10_draw_box35(BLACKBOX,33)@3
    // out out_intel_reserved_ffwd_7_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i32_unnamed_10_draw_box0 thei_llvm_fpga_ffwd_source_i32_unnamed_draw_box10_draw_box35 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_unnamed_draw_box10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_draw_box10_draw_box35_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,90)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_draw_box10_draw_box35_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg9(REG,107)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_draw_box11_draw_box36(BLACKBOX,34)@3
    // out out_intel_reserved_ffwd_8_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i32_unnamed_11_draw_box0 thei_llvm_fpga_ffwd_source_i32_unnamed_draw_box11_draw_box36 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_unnamed_draw_box16_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i32_unnamed_draw_box11_draw_box36_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,91)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i32_unnamed_draw_box11_draw_box36_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg10(REG,108)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_unnamed_draw_box17(COMPARE,52)@3
    assign i_unnamed_draw_box17_a = $unsigned({{2{c_i32_057_q[31]}}, c_i32_057_q});
    assign i_unnamed_draw_box17_b = $unsigned({{2{redist3_sync_together61_aunroll_x_in_c1_eni1_5_tpl_1_q[31]}}, redist3_sync_together61_aunroll_x_in_c1_eni1_5_tpl_1_q});
    assign i_unnamed_draw_box17_o = $unsigned($signed(i_unnamed_draw_box17_a) - $signed(i_unnamed_draw_box17_b));
    assign i_unnamed_draw_box17_c[0] = i_unnamed_draw_box17_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_draw_box12_draw_box37(BLACKBOX,29)@3
    // out out_intel_reserved_ffwd_9_0@20000000
    draw_box_i_llvm_fpga_ffwd_source_i1_unnamed_12_draw_box0 thei_llvm_fpga_ffwd_source_i1_unnamed_draw_box12_draw_box37 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_unnamed_draw_box17_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i1_unnamed_draw_box12_draw_box37_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,92)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i1_unnamed_draw_box12_draw_box37_out_intel_reserved_ffwd_9_0;

    // redist2_sync_together61_aunroll_x_in_c1_eni1_3_tpl_1(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together61_aunroll_x_in_c1_eni1_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together61_aunroll_x_in_c1_eni1_3_tpl_1_q <= $unsigned(in_c1_eni1_3_tpl);
        end
    end

    // redist1_sync_together61_aunroll_x_in_c1_eni1_2_tpl_1(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together61_aunroll_x_in_c1_eni1_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together61_aunroll_x_in_c1_eni1_2_tpl_1_q <= $unsigned(in_c1_eni1_2_tpl);
        end
    end

    // valid_fanout_reg1(REG,99)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x(BLACKBOX,93)@3
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    draw_box_i_llvm_fpga_ffwd_source_s_strucA000000Z_unnamed_3_draw_box0 thei_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .in_src_data_in_0_0_0_tpl(redist0_sync_together61_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_src_data_in_0_0_1_tpl(redist1_sync_together61_aunroll_x_in_c1_eni1_2_tpl_1_q),
        .in_src_data_in_0_0_2_tpl(redist2_sync_together61_aunroll_x_in_c1_eni1_3_tpl_1_q),
        .out_stall_out(),
        .out_valid_out(),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync_aunroll_x(GPOUT,95)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_type_3_0s_unnamed_draw_box3_draw_box28_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;

    // valid_fanout_reg0(REG,98)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together61_aunroll_x_in_i_valid_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,96)@5
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_draw_box1 = GND_q;
    assign out_unnamed_draw_box17_0_tpl = GND_q;

endmodule
