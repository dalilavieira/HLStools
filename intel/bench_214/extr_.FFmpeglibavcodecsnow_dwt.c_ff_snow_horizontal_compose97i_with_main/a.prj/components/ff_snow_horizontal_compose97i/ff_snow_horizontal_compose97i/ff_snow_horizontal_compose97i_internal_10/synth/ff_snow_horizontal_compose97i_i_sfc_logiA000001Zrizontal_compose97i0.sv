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

// SystemVerilog created from ff_snow_horizontal_compose97i_i_sfc_logiA000001Zrizontal_compose97i0
// SystemVerilog created on Sun May 24 22:32:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_snow_horizontal_compose97i_i_sfc_logiA000001Zrizontal_compose97i0 (
    input wire [63:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest,
    input wire [0:0] in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid,
    output wire [63:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_address,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_enable,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_read,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_write,
    output wire [63:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata,
    output wire [7:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable,
    output wire [0:0] out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [0:0] out_lsu_memdep_34_o_active,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i1,
    output wire [0:0] out_unnamed_ff_snow_horizontal_compose97i17_0_tpl,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [31:0] in_c0_eni2_0_1_tpl,
    input wire [31:0] in_c0_eni2_0_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_417_q;
    wire [32:0] i_add88_ff_snow_horizontal_compose97i5_a;
    wire [32:0] i_add88_ff_snow_horizontal_compose97i5_b;
    logic [32:0] i_add88_ff_snow_horizontal_compose97i5_o;
    wire [32:0] i_add88_ff_snow_horizontal_compose97i5_q;
    wire [32:0] i_add89_ff_snow_horizontal_compose97i6_a;
    wire [32:0] i_add89_ff_snow_horizontal_compose97i6_b;
    logic [32:0] i_add89_ff_snow_horizontal_compose97i6_o;
    wire [32:0] i_add89_ff_snow_horizontal_compose97i6_q;
    wire [32:0] i_add91_ff_snow_horizontal_compose97i8_a;
    wire [32:0] i_add91_ff_snow_horizontal_compose97i8_b;
    logic [32:0] i_add91_ff_snow_horizontal_compose97i8_o;
    wire [32:0] i_add91_ff_snow_horizontal_compose97i8_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b9964_ff_snow_horizontal_compose97i10_out_dest_data_out_0_0;
    wire [31:0] i_mul86_ff_snow_horizontal_compose97i3_vt_join_q;
    wire [30:0] i_mul86_ff_snow_horizontal_compose97i3_vt_select_31_b;
    wire [31:0] bgTrunc_i_add88_ff_snow_horizontal_compose97i5_sel_x_b;
    wire [31:0] bgTrunc_i_add89_ff_snow_horizontal_compose97i6_sel_x_b;
    wire [31:0] bgTrunc_i_add91_ff_snow_horizontal_compose97i8_sel_x_b;
    wire [0:0] i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_lsu_memdep_34_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid51_i_mul86_ff_snow_horizontal_compose97i0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid51_i_mul86_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid52_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] xMSB_uid56_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid58_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid59_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [1:0] seMsb_to2_uid62_in;
    wire [1:0] seMsb_to2_uid62_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid63_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid64_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q;
    wire [0:0] rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_s;
    reg [31:0] rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q;
    reg [0:0] redist0_valid_fanout_reg0_q_5_q;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_2;
    reg [0:0] redist0_valid_fanout_reg0_q_5_delay_3;
    reg [31:0] redist1_sync_together21_aunroll_vunroll_x_in_c0_eni2_0_1_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together21_aunroll_vunroll_x_in_c0_eni2_0_1_tpl_1(DELAY,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together21_aunroll_vunroll_x_in_c0_eni2_0_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together21_aunroll_vunroll_x_in_c0_eni2_0_1_tpl_1_q <= $unsigned(in_c0_eni2_0_1_tpl);
        end
    end

    // leftShiftStage0Idx1Rng1_uid51_i_mul86_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,50)@109
    assign leftShiftStage0Idx1Rng1_uid51_i_mul86_ff_snow_horizontal_compose97i0_shift_x_in = in_c0_eni2_0_1_tpl[30:0];
    assign leftShiftStage0Idx1Rng1_uid51_i_mul86_ff_snow_horizontal_compose97i0_shift_x_b = leftShiftStage0Idx1Rng1_uid51_i_mul86_ff_snow_horizontal_compose97i0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid52_i_mul86_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,51)@109
    assign leftShiftStage0Idx1_uid52_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q = {leftShiftStage0Idx1Rng1_uid51_i_mul86_ff_snow_horizontal_compose97i0_shift_x_b, GND_q};

    // leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x(MUX,53)@109
    assign leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_s or in_c0_eni2_0_1_tpl or leftShiftStage0Idx1_uid52_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q = in_c0_eni2_0_1_tpl;
            1'b1 : leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q = leftShiftStage0Idx1_uid52_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q;
            default : leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul86_ff_snow_horizontal_compose97i3_vt_select_31(BITSELECT,18)@109
    assign i_mul86_ff_snow_horizontal_compose97i3_vt_select_31_b = leftShiftStage0_uid54_i_mul86_ff_snow_horizontal_compose97i0_shift_x_q[31:1];

    // i_mul86_ff_snow_horizontal_compose97i3_vt_join(BITJOIN,17)@109
    assign i_mul86_ff_snow_horizontal_compose97i3_vt_join_q = {i_mul86_ff_snow_horizontal_compose97i3_vt_select_31_b, GND_q};

    // c_i32_417(CONSTANT,9)
    assign c_i32_417_q = $unsigned(32'b00000000000000000000000000000100);

    // i_add88_ff_snow_horizontal_compose97i5(ADD,12)@109
    assign i_add88_ff_snow_horizontal_compose97i5_a = {1'b0, in_c0_eni2_0_2_tpl};
    assign i_add88_ff_snow_horizontal_compose97i5_b = {1'b0, c_i32_417_q};
    assign i_add88_ff_snow_horizontal_compose97i5_o = $unsigned(i_add88_ff_snow_horizontal_compose97i5_a) + $unsigned(i_add88_ff_snow_horizontal_compose97i5_b);
    assign i_add88_ff_snow_horizontal_compose97i5_q = i_add88_ff_snow_horizontal_compose97i5_o[32:0];

    // bgTrunc_i_add88_ff_snow_horizontal_compose97i5_sel_x(BITSELECT,22)@109
    assign bgTrunc_i_add88_ff_snow_horizontal_compose97i5_sel_x_b = i_add88_ff_snow_horizontal_compose97i5_q[31:0];

    // i_add89_ff_snow_horizontal_compose97i6(ADD,13)@109
    assign i_add89_ff_snow_horizontal_compose97i6_a = {1'b0, bgTrunc_i_add88_ff_snow_horizontal_compose97i5_sel_x_b};
    assign i_add89_ff_snow_horizontal_compose97i6_b = {1'b0, i_mul86_ff_snow_horizontal_compose97i3_vt_join_q};
    assign i_add89_ff_snow_horizontal_compose97i6_o = $unsigned(i_add89_ff_snow_horizontal_compose97i6_a) + $unsigned(i_add89_ff_snow_horizontal_compose97i6_b);
    assign i_add89_ff_snow_horizontal_compose97i6_q = i_add89_ff_snow_horizontal_compose97i6_o[32:0];

    // bgTrunc_i_add89_ff_snow_horizontal_compose97i6_sel_x(BITSELECT,23)@109
    assign bgTrunc_i_add89_ff_snow_horizontal_compose97i6_sel_x_b = i_add89_ff_snow_horizontal_compose97i6_q[31:0];

    // xMSB_uid56_i_shr90_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,55)@109
    assign xMSB_uid56_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add89_ff_snow_horizontal_compose97i6_sel_x_b[31:31]);

    // seMsb_to2_uid62(BITSELECT,61)@109
    assign seMsb_to2_uid62_in = $unsigned({{1{xMSB_uid56_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b[0]}}, xMSB_uid56_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b});
    assign seMsb_to2_uid62_b = $unsigned(seMsb_to2_uid62_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid63_i_shr90_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,62)@109
    assign rightShiftStage1Idx1Rng2_uid63_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid64_i_shr90_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,63)@109
    assign rightShiftStage1Idx1_uid64_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q = {seMsb_to2_uid62_b, rightShiftStage1Idx1Rng2_uid63_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid58_i_shr90_ff_snow_horizontal_compose97i0_shift_x(BITSELECT,57)@109
    assign rightShiftStage0Idx1Rng1_uid58_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b = $unsigned(bgTrunc_i_add89_ff_snow_horizontal_compose97i6_sel_x_b[31:1]);

    // rightShiftStage0Idx1_uid59_i_shr90_ff_snow_horizontal_compose97i0_shift_x(BITJOIN,58)@109
    assign rightShiftStage0Idx1_uid59_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q = {xMSB_uid56_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b, rightShiftStage0Idx1Rng1_uid58_i_shr90_ff_snow_horizontal_compose97i0_shift_x_b};

    // rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x(MUX,60)@109
    assign rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_s or bgTrunc_i_add89_ff_snow_horizontal_compose97i6_sel_x_b or rightShiftStage0Idx1_uid59_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_s)
            1'b0 : rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q = bgTrunc_i_add89_ff_snow_horizontal_compose97i6_sel_x_b;
            1'b1 : rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q = rightShiftStage0Idx1_uid59_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q;
            default : rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x(MUX,65)@109 + 1
    assign rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_s = VCC_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_s)
                1'b0 : rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q <= rightShiftStage0_uid61_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q;
                1'b1 : rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q <= rightShiftStage1Idx1_uid64_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q;
                default : rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_add91_ff_snow_horizontal_compose97i8(ADD,14)@110
    assign i_add91_ff_snow_horizontal_compose97i8_a = {1'b0, rightShiftStage1_uid66_i_shr90_ff_snow_horizontal_compose97i0_shift_x_q};
    assign i_add91_ff_snow_horizontal_compose97i8_b = {1'b0, redist1_sync_together21_aunroll_vunroll_x_in_c0_eni2_0_1_tpl_1_q};
    assign i_add91_ff_snow_horizontal_compose97i8_o = $unsigned(i_add91_ff_snow_horizontal_compose97i8_a) + $unsigned(i_add91_ff_snow_horizontal_compose97i8_b);
    assign i_add91_ff_snow_horizontal_compose97i8_q = i_add91_ff_snow_horizontal_compose97i8_o[32:0];

    // bgTrunc_i_add91_ff_snow_horizontal_compose97i8_sel_x(BITSELECT,24)@110
    assign bgTrunc_i_add91_ff_snow_horizontal_compose97i8_sel_x_b = i_add91_ff_snow_horizontal_compose97i8_q[31:0];

    // valid_fanout_reg2(REG,41)@109 + 1
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

    // valid_fanout_reg1(REG,40)@109 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024i32_b9964_ff_snow_horizontal_compose97i10(BLACKBOX,15)@110
    ff_snow_horizontal_compose97i_i_llvm_fpga_ffwd_dest_p1024i32_b9964_0 thei_llvm_fpga_ffwd_dest_p1024i32_b9964_ff_snow_horizontal_compose97i10 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_b9964_ff_snow_horizontal_compose97i10_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x(BLACKBOX,26)@110
    // out out_lsu_memdep_34_o_active@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_address@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_enable@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_read@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_write@20000000
    // out out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata@20000000
    // out out_o_stall@115
    // out out_o_valid@115
    // out out_o_writeack@115
    ff_snow_horizontal_compose97i_i_llvm_fpga_mem_memdep_34_0 thei_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_llvm_fpga_ffwd_dest_p1024i32_b9964_ff_snow_horizontal_compose97i10_out_dest_data_out_0_0),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata(in_memdep_34_ff_snow_horizontal_compose97i_avm_readdata),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid(in_memdep_34_ff_snow_horizontal_compose97i_avm_readdatavalid),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest(in_memdep_34_ff_snow_horizontal_compose97i_avm_waitrequest),
        .in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack(in_memdep_34_ff_snow_horizontal_compose97i_avm_writeack),
        .in_i_writedata_0_tpl(bgTrunc_i_add91_ff_snow_horizontal_compose97i8_sel_x_b),
        .out_lsu_memdep_34_o_active(i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_lsu_memdep_34_o_active),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_address(i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_address),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount(i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable(i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_enable(i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_read(i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_read),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_write(i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_write),
        .out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata(i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,11)
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_address = i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_address;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_enable = i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_enable;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_read = i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_read;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_write = i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_write;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata = i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_writedata;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable = i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_byteenable;
    assign out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount = i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_memdep_34_ff_snow_horizontal_compose97i_avm_burstcount;

    // dupName_0_ext_sig_sync_out_x(GPOUT,25)
    assign out_lsu_memdep_34_o_active = i_llvm_fpga_mem_memdep_34_ff_snow_horizontal_compose97i12_vunroll_x_out_lsu_memdep_34_o_active;

    // valid_fanout_reg0(REG,39)@109 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_valid_fanout_reg0_q_5(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_5_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_2 <= '0;
            redist0_valid_fanout_reg0_q_5_delay_3 <= '0;
            redist0_valid_fanout_reg0_q_5_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_5_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_5_delay_1 <= redist0_valid_fanout_reg0_q_5_delay_0;
            redist0_valid_fanout_reg0_q_5_delay_2 <= redist0_valid_fanout_reg0_q_5_delay_1;
            redist0_valid_fanout_reg0_q_5_delay_3 <= redist0_valid_fanout_reg0_q_5_delay_2;
            redist0_valid_fanout_reg0_q_5_q <= redist0_valid_fanout_reg0_q_5_delay_3;
        end
    end

    // sync_out_aunroll_x(GPOUT,37)@115
    assign out_o_valid = redist0_valid_fanout_reg0_q_5_q;
    assign out_unnamed_ff_snow_horizontal_compose97i1 = GND_q;
    assign out_unnamed_ff_snow_horizontal_compose97i17_0_tpl = GND_q;

endmodule
