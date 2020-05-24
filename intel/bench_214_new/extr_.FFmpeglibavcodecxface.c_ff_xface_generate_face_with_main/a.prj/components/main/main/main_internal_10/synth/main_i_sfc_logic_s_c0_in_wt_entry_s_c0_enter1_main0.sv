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

// SystemVerilog created from main_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_main0
// SystemVerilog created on Sun May 24 19:38:34 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_main0 (
    output wire [0:0] out_c0_exi1_0_tpl,
    output wire [0:0] out_c0_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_main0,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_10239_q;
    wire [10:0] i_llvm_fpga_pop_i11_initerations_pop3_main2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_initerations_pop3_main2_out_feedback_stall_out_3;
    wire [15:0] i_llvm_fpga_push_i11_initerations_push3_main4_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i11_initerations_push3_main4_out_feedback_valid_out_3;
    wire [10:0] i_next_initerations_main3_vt_join_q;
    wire [9:0] i_next_initerations_main3_vt_select_9_b;
    wire [0:0] i_last_initeration_main5_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [9:0] rightShiftStage0Idx1Rng1_uid30_i_next_initerations_main0_shift_x_b;
    wire [10:0] rightShiftStage0Idx1_uid32_i_next_initerations_main0_shift_x_q;
    wire [0:0] rightShiftStage0_uid34_i_next_initerations_main0_shift_x_s;
    reg [10:0] rightShiftStage0_uid34_i_next_initerations_main0_shift_x_q;
    reg [0:0] redist0_sync_together14_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist1_sync_together14_aunroll_x_in_c0_eni2_2_tpl_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // valid_fanout_reg0(REG,22)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid30_i_next_initerations_main0_shift_x(BITSELECT,29)@11
    assign rightShiftStage0Idx1Rng1_uid30_i_next_initerations_main0_shift_x_b = i_llvm_fpga_pop_i11_initerations_pop3_main2_out_data_out[10:1];

    // rightShiftStage0Idx1_uid32_i_next_initerations_main0_shift_x(BITJOIN,31)@11
    assign rightShiftStage0Idx1_uid32_i_next_initerations_main0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid30_i_next_initerations_main0_shift_x_b};

    // valid_fanout_reg1(REG,23)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // enable_stall_connector_not_enable(LOGICAL,37)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg2(REG,24)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // redist1_sync_together14_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together14_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together14_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_push_i11_initerations_push3_main4(BLACKBOX,9)@11
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    main_i_llvm_fpga_push_i11_initerations_push3_0 thei_llvm_fpga_push_i11_initerations_push3_main4 (
        .in_c0_ene2(redist1_sync_together14_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_data_in(i_next_initerations_main3_vt_join_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i11_initerations_pop3_main2_out_feedback_stall_out_3),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i11_initerations_push3_main4_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i11_initerations_push3_main4_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together14_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together14_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together14_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i11_10239(CONSTANT,2)
    assign c_i11_10239_q = $unsigned(11'b01111111111);

    // i_llvm_fpga_pop_i11_initerations_pop3_main2(BLACKBOX,8)@11
    // out out_feedback_stall_out_3@20000000
    main_i_llvm_fpga_pop_i11_initerations_pop3_0 thei_llvm_fpga_pop_i11_initerations_pop3_main2 (
        .in_data_in(c_i11_10239_q),
        .in_dir(redist0_sync_together14_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_3(i_llvm_fpga_push_i11_initerations_push3_main4_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i11_initerations_push3_main4_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i11_initerations_pop3_main2_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i11_initerations_pop3_main2_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid34_i_next_initerations_main0_shift_x(MUX,33)@11
    assign rightShiftStage0_uid34_i_next_initerations_main0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid34_i_next_initerations_main0_shift_x_s or i_llvm_fpga_pop_i11_initerations_pop3_main2_out_data_out or rightShiftStage0Idx1_uid32_i_next_initerations_main0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid34_i_next_initerations_main0_shift_x_s)
            1'b0 : rightShiftStage0_uid34_i_next_initerations_main0_shift_x_q = i_llvm_fpga_pop_i11_initerations_pop3_main2_out_data_out;
            1'b1 : rightShiftStage0_uid34_i_next_initerations_main0_shift_x_q = rightShiftStage0Idx1_uid32_i_next_initerations_main0_shift_x_q;
            default : rightShiftStage0_uid34_i_next_initerations_main0_shift_x_q = 11'b0;
        endcase
    end

    // i_next_initerations_main3_vt_select_9(BITSELECT,12)@11
    assign i_next_initerations_main3_vt_select_9_b = rightShiftStage0_uid34_i_next_initerations_main0_shift_x_q[9:0];

    // i_next_initerations_main3_vt_join(BITJOIN,11)@11
    assign i_next_initerations_main3_vt_join_q = {GND_q, i_next_initerations_main3_vt_select_9_b};

    // i_last_initeration_main5_sel_x(BITSELECT,15)@11
    assign i_last_initeration_main5_sel_x_b = i_next_initerations_main3_vt_join_q[0:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,20)@11
    assign out_c0_exi1_0_tpl = GND_q;
    assign out_c0_exi1_1_tpl = i_last_initeration_main5_sel_x_b;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_main0 = GND_q;

endmodule
