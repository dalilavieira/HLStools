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

// SystemVerilog created from ff_snow_horizontal_compose97i_i_sfc_logiA000002Zrizontal_compose97i0
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_i_sfc_logiA000002Zrizontal_compose97i0 (
    input wire [63:0] in_memdep_2_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_2_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_2_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_2_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_7_0,
    output wire [0:0] out_lsu_memdep_2_o_active,
    output wire [0:0] out_c0_exi1138_0_tpl,
    output wire [0:0] out_c0_exi1138_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i1,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [31:0] in_c0_eni5_0_1_tpl,
    input wire [31:0] in_c0_eni5_0_2_tpl,
    input wire [31:0] in_c0_eni5_3_tpl,
    input wire [63:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] i_add158_ff_snow_horizontal_compose97i4_a;
    wire [32:0] i_add158_ff_snow_horizontal_compose97i4_b;
    logic [32:0] i_add158_ff_snow_horizontal_compose97i4_o;
    wire [32:0] i_add158_ff_snow_horizontal_compose97i4_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_tobool91_ff_snow_horizontal_compose97i10_out_dest_data_out_7_0;
    wire [0:0] i_memdep_148_or_ff_snow_horizontal_compose97i16_q;
    wire [32:0] i_mul159_add55_ff_snow_horizontal_compose97i6_a;
    wire [32:0] i_mul159_add55_ff_snow_horizontal_compose97i6_b;
    logic [32:0] i_mul159_add55_ff_snow_horizontal_compose97i6_o;
    wire [32:0] i_mul159_add55_ff_snow_horizontal_compose97i6_q;
    wire [32:0] i_mul172_add57_ff_snow_horizontal_compose97i9_a;
    wire [32:0] i_mul172_add57_ff_snow_horizontal_compose97i9_b;
    logic [32:0] i_mul172_add57_ff_snow_horizontal_compose97i9_o;
    wire [32:0] i_mul172_add57_ff_snow_horizontal_compose97i9_q;
    wire [31:0] i_unnamed_ff_snow_horizontal_compose97i5_vt_join_q;
    wire [30:0] i_unnamed_ff_snow_horizontal_compose97i5_vt_select_31_b;
    wire [31:0] i_unnamed_ff_snow_horizontal_compose97i8_vt_join_q;
    wire [30:0] i_unnamed_ff_snow_horizontal_compose97i8_vt_select_31_b;
    wire [32:0] i_val29_ff_snow_horizontal_compose97i12_a;
    wire [32:0] i_val29_ff_snow_horizontal_compose97i12_b;
    logic [32:0] i_val29_ff_snow_horizontal_compose97i12_o;
    wire [32:0] i_val29_ff_snow_horizontal_compose97i12_q;
    wire [0:0] i_val29_v_ff_snow_horizontal_compose97i11_s;
    reg [31:0] i_val29_v_ff_snow_horizontal_compose97i11_q;
    wire [31:0] bgTrunc_i_add158_ff_snow_horizontal_compose97i4_sel_x_b;
    wire [31:0] bgTrunc_i_mul159_add55_ff_snow_horizontal_compose97i6_sel_x_b;
    wire [31:0] bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b;
    wire [31:0] bgTrunc_i_val29_ff_snow_horizontal_compose97i12_sel_x_b;
    wire [0:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_lsu_memdep_2_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_o_writeack;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] xMSB_uid60_i_shr160_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid62_i_shr160_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid63_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid70_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid70_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid71_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid78_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid78_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid79_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
    reg [31:0] redist0_sync_together24_aunroll_vunroll_x_in_c0_eni5_0_1_tpl_1_q;
    reg [63:0] redist1_sync_together24_aunroll_vunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [0:0] redist2_sync_together24_aunroll_vunroll_x_in_c0_eni5_5_tpl_6_q;
    reg [0:0] redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_q;
    reg [0:0] redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_3;
    reg [31:0] redist4_bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together24_aunroll_vunroll_x_in_c0_eni5_0_1_tpl_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together24_aunroll_vunroll_x_in_c0_eni5_0_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together24_aunroll_vunroll_x_in_c0_eni5_0_1_tpl_1_q <= $unsigned(in_c0_eni5_0_1_tpl);
        end
    end

    // xMSB_uid60_i_shr160_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,59)@71
    assign xMSB_uid60_i_shr160_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_mul159_add55_ff_snow_horizontal_compose97i6_sel_x_b[31:31]);

    // rightShiftStage0Idx1Rng1_uid62_i_shr160_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,61)@71
    assign rightShiftStage0Idx1Rng1_uid62_i_shr160_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_mul159_add55_ff_snow_horizontal_compose97i6_sel_x_b[31:1]);

    // rightShiftStage0Idx1_uid63_i_shr160_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,62)@71
    assign rightShiftStage0Idx1_uid63_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q = {xMSB_uid60_i_shr160_ff_snow_horizontal_compose97i0_shift_x_b, rightShiftStage0Idx1Rng1_uid62_i_shr160_ff_snow_horizontal_compose97i0_shift_x_b};

    // leftShiftStage0Idx1Rng1_uid70_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,69)@71
    assign leftShiftStage0Idx1Rng1_uid70_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in = bgTrunc_i_add158_ff_snow_horizontal_compose97i4_sel_x_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid70_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid70_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid71_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,70)@71
    assign leftShiftStage0Idx1_uid71_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid70_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(MUX,72)@71
    assign leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s or bgTrunc_i_add158_ff_snow_horizontal_compose97i4_sel_x_b or leftShiftStage0Idx1_uid71_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = bgTrunc_i_add158_ff_snow_horizontal_compose97i4_sel_x_b;
            1'b1 : leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid71_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_ff_snow_horizontal_compose97i5_vt_select_31(BITSELECT,18)@71
    assign i_unnamed_ff_snow_horizontal_compose97i5_vt_select_31_b = leftShiftStage0_uid73_dupName_3_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_unnamed_ff_snow_horizontal_compose97i5_vt_join(BITJOIN,17)@71
    assign i_unnamed_ff_snow_horizontal_compose97i5_vt_join_q = {i_unnamed_ff_snow_horizontal_compose97i5_vt_select_31_b, GND_q};

    // i_add158_ff_snow_horizontal_compose97i4(ADD,11)@71
    assign i_add158_ff_snow_horizontal_compose97i4_a = {1'b0, in_c0_eni5_3_tpl};
    assign i_add158_ff_snow_horizontal_compose97i4_b = {1'b0, in_c0_eni5_0_2_tpl};
    assign i_add158_ff_snow_horizontal_compose97i4_o = $unsigned(i_add158_ff_snow_horizontal_compose97i4_a) + $unsigned(i_add158_ff_snow_horizontal_compose97i4_b);
    assign i_add158_ff_snow_horizontal_compose97i4_q = i_add158_ff_snow_horizontal_compose97i4_o[32:0];

    // bgTrunc_i_add158_ff_snow_horizontal_compose97i4_sel_x(BITSELECT,27)@71
    assign bgTrunc_i_add158_ff_snow_horizontal_compose97i4_sel_x_b = i_add158_ff_snow_horizontal_compose97i4_q[31:0];

    // i_mul159_add55_ff_snow_horizontal_compose97i6(ADD,14)@71
    assign i_mul159_add55_ff_snow_horizontal_compose97i6_a = {1'b0, bgTrunc_i_add158_ff_snow_horizontal_compose97i4_sel_x_b};
    assign i_mul159_add55_ff_snow_horizontal_compose97i6_b = {1'b0, i_unnamed_ff_snow_horizontal_compose97i5_vt_join_q};
    assign i_mul159_add55_ff_snow_horizontal_compose97i6_o = $unsigned(i_mul159_add55_ff_snow_horizontal_compose97i6_a) + $unsigned(i_mul159_add55_ff_snow_horizontal_compose97i6_b);
    assign i_mul159_add55_ff_snow_horizontal_compose97i6_q = i_mul159_add55_ff_snow_horizontal_compose97i6_o[32:0];

    // bgTrunc_i_mul159_add55_ff_snow_horizontal_compose97i6_sel_x(BITSELECT,28)@71
    assign bgTrunc_i_mul159_add55_ff_snow_horizontal_compose97i6_sel_x_b = i_mul159_add55_ff_snow_horizontal_compose97i6_q[31:0];

    // rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x(MUX,64)@71 + 1
    assign rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_s)
                1'b0 : rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q <= bgTrunc_i_mul159_add55_ff_snow_horizontal_compose97i6_sel_x_b;
                1'b1 : rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q <= rightShiftStage0Idx1_uid63_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q;
                default : rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // leftShiftStage0Idx1Rng1_uid78_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,77)@71
    assign leftShiftStage0Idx1Rng1_uid78_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in = in_c0_eni5_0_2_tpl[30:0];
    assign leftShiftStage0Idx1Rng1_uid78_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid78_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid79_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,78)@71
    assign leftShiftStage0Idx1_uid79_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid78_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x(MUX,80)@71
    assign leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s or in_c0_eni5_0_2_tpl or leftShiftStage0Idx1_uid79_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = in_c0_eni5_0_2_tpl;
            1'b1 : leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid79_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_ff_snow_horizontal_compose97i8_vt_select_31(BITSELECT,21)@71
    assign i_unnamed_ff_snow_horizontal_compose97i8_vt_select_31_b = leftShiftStage0_uid81_dupName_4_i_unnamed_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_unnamed_ff_snow_horizontal_compose97i8_vt_join(BITJOIN,20)@71
    assign i_unnamed_ff_snow_horizontal_compose97i8_vt_join_q = {i_unnamed_ff_snow_horizontal_compose97i8_vt_select_31_b, GND_q};

    // i_mul172_add57_ff_snow_horizontal_compose97i9(ADD,15)@71
    assign i_mul172_add57_ff_snow_horizontal_compose97i9_a = {1'b0, in_c0_eni5_0_2_tpl};
    assign i_mul172_add57_ff_snow_horizontal_compose97i9_b = {1'b0, i_unnamed_ff_snow_horizontal_compose97i8_vt_join_q};
    assign i_mul172_add57_ff_snow_horizontal_compose97i9_o = $unsigned(i_mul172_add57_ff_snow_horizontal_compose97i9_a) + $unsigned(i_mul172_add57_ff_snow_horizontal_compose97i9_b);
    assign i_mul172_add57_ff_snow_horizontal_compose97i9_q = i_mul172_add57_ff_snow_horizontal_compose97i9_o[32:0];

    // bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x(BITSELECT,29)@71
    assign bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b = i_mul172_add57_ff_snow_horizontal_compose97i9_q[31:0];

    // redist4_bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b_1(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b);
        end
    end

    // valid_fanout_reg1(REG,50)@71 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_tobool91_ff_snow_horizontal_compose97i10(BLACKBOX,12)@72
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_i1_tobool91_0 thei_llvm_fpga_ffwd_dest_i1_tobool91_ff_snow_horizontal_compose97i10 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i1_tobool91_ff_snow_horizontal_compose97i10_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_val29_v_ff_snow_horizontal_compose97i11(MUX,23)@72
    assign i_val29_v_ff_snow_horizontal_compose97i11_s = i_llvm_fpga_ffwd_dest_i1_tobool91_ff_snow_horizontal_compose97i10_out_dest_data_out_7_0;
    always @(i_val29_v_ff_snow_horizontal_compose97i11_s or redist4_bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b_1_q or rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (i_val29_v_ff_snow_horizontal_compose97i11_s)
            1'b0 : i_val29_v_ff_snow_horizontal_compose97i11_q = redist4_bgTrunc_i_mul172_add57_ff_snow_horizontal_compose97i9_sel_x_b_1_q;
            1'b1 : i_val29_v_ff_snow_horizontal_compose97i11_q = rightShiftStage0_uid65_i_shr160_ff_snow_horizontal_compose97i0_shift_x_q;
            default : i_val29_v_ff_snow_horizontal_compose97i11_q = 32'b0;
        endcase
    end

    // i_val29_ff_snow_horizontal_compose97i12(ADD,22)@72
    assign i_val29_ff_snow_horizontal_compose97i12_a = {1'b0, i_val29_v_ff_snow_horizontal_compose97i11_q};
    assign i_val29_ff_snow_horizontal_compose97i12_b = {1'b0, redist0_sync_together24_aunroll_vunroll_x_in_c0_eni5_0_1_tpl_1_q};
    assign i_val29_ff_snow_horizontal_compose97i12_o = $unsigned(i_val29_ff_snow_horizontal_compose97i12_a) + $unsigned(i_val29_ff_snow_horizontal_compose97i12_b);
    assign i_val29_ff_snow_horizontal_compose97i12_q = i_val29_ff_snow_horizontal_compose97i12_o[32:0];

    // bgTrunc_i_val29_ff_snow_horizontal_compose97i12_sel_x(BITSELECT,30)@72
    assign bgTrunc_i_val29_ff_snow_horizontal_compose97i12_sel_x_b = i_val29_ff_snow_horizontal_compose97i12_q[31:0];

    // valid_fanout_reg2(REG,51)@71 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist1_sync_together24_aunroll_vunroll_x_in_c0_eni5_4_tpl_1(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together24_aunroll_vunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together24_aunroll_vunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x(BLACKBOX,32)@72
    // out out_lsu_memdep_2_o_active@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@77
    // out out_o_valid@77
    // out out_o_writeack@77
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(redist1_sync_together24_aunroll_vunroll_x_in_c0_eni5_4_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_memdep_2_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_2_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_2_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_2_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_2_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_2_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_2_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_2_ff_snow_horizontal_compose97i_avm_writeack),
        .in_i_writedata_0_tpl(bgTrunc_i_val29_ff_snow_horizontal_compose97i12_sel_x_b),
        .out_lsu_memdep_2_o_active(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_lsu_memdep_2_o_active),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_memdep_2_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_lsu_memdep_2_o_active = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_lsu_memdep_2_o_active;

    // redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_0 <= '0;
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_1 <= '0;
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_2 <= '0;
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_3 <= '0;
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_1 <= redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_0;
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_2 <= redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_1;
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_3 <= redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_2;
            redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_q <= redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg0(REG,49)@76 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together24_aunroll_vunroll_x_in_i_valid_5_q);
        end
    end

    // redist2_sync_together24_aunroll_vunroll_x_in_c0_eni5_5_tpl_6(DELAY,84)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together24_aunroll_vunroll_x_in_c0_eni5_5_tpl_6 ( .xin(in_c0_eni5_5_tpl), .xout(redist2_sync_together24_aunroll_vunroll_x_in_c0_eni5_5_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_memdep_148_or_ff_snow_horizontal_compose97i16(LOGICAL,13)@77
    assign i_memdep_148_or_ff_snow_horizontal_compose97i16_q = i_llvm_fpga_mem_memdep_2_ff_snow_horizontal_compose97i15_vunroll_x_out_o_writeack | redist2_sync_together24_aunroll_vunroll_x_in_c0_eni5_5_tpl_6_q;

    // sync_out_aunroll_x(GPOUT,39)@77
    assign out_c0_exi1138_0_tpl = GND_q;
    assign out_c0_exi1138_1_tpl = i_memdep_148_or_ff_snow_horizontal_compose97i16_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_ff_snow_horizontal_compose97i1 = GND_q;

endmodule
