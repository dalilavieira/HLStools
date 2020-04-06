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

// SystemVerilog created from sobel_i_sfc_logic_s_c0_in_for_cond1_preheader_s_c0_enter435_sobel0
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_i_sfc_logic_s_c0_in_for_cond1_preheader_s_c0_enter435_sobel0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_sobel2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_sobel2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [31:0] out_c0_exi5_1_tpl,
    output wire [31:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sobel1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_121_q;
    wire [7:0] c_i8_124_q;
    wire [7:0] c_i8_9622_q;
    wire [32:0] i_add12_sobel4_a;
    wire [32:0] i_add12_sobel4_b;
    logic [32:0] i_add12_sobel4_o;
    wire [32:0] i_add12_sobel4_q;
    wire [8:0] i_fpga_indvars_iv_next10_sobel11_a;
    wire [8:0] i_fpga_indvars_iv_next10_sobel11_b;
    logic [8:0] i_fpga_indvars_iv_next10_sobel11_o;
    wire [8:0] i_fpga_indvars_iv_next10_sobel11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_sobel2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_sobel2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_sobel2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_sobel2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_083_pop9_sobel3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_083_pop9_sobel3_out_feedback_stall_out_9;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_sobel10_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_sobel10_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_j_083_push9_sobel8_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_j_083_push9_sobel8_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv9_push8_sobel12_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv9_push8_sobel12_out_feedback_valid_out_8;
    wire [0:0] i_notcmp20_sobel9_q;
    wire [31:0] bgTrunc_i_add12_sobel4_sel_x_b;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next10_sobel11_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] i_exitcond11_sobel6_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond11_sobel6_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together35_aunroll_x_in_c0_eni1_1_tpl_1_q;


    // c_i8_124(CONSTANT,14)
    assign c_i8_124_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next10_sobel11(ADD,19)@1
    assign i_fpga_indvars_iv_next10_sobel11_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5_out_data_out};
    assign i_fpga_indvars_iv_next10_sobel11_b = {1'b0, c_i8_124_q};
    assign i_fpga_indvars_iv_next10_sobel11_o = $unsigned(i_fpga_indvars_iv_next10_sobel11_a) + $unsigned(i_fpga_indvars_iv_next10_sobel11_b);
    assign i_fpga_indvars_iv_next10_sobel11_q = i_fpga_indvars_iv_next10_sobel11_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next10_sobel11_sel_x(BITSELECT,32)@1
    assign bgTrunc_i_fpga_indvars_iv_next10_sobel11_sel_x_b = i_fpga_indvars_iv_next10_sobel11_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv9_push8_sobel12(BLACKBOX,25)@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    sobel_i_llvm_fpga_push_i8_fpga_indvars_iv9_push8_0 thei_llvm_fpga_push_i8_fpga_indvars_iv9_push8_sobel12 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next10_sobel11_sel_x_b),
        .in_exitcond11(i_exitcond11_sobel6_cmp_nsign_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i8_fpga_indvars_iv9_push8_sobel12_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i8_fpga_indvars_iv9_push8_sobel12_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9622(CONSTANT,15)
    assign c_i8_9622_q = $unsigned(8'b01100000);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5(BLACKBOX,22)@1
    // out out_feedback_stall_out_8@20000000
    sobel_i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5 (
        .in_data_in(c_i8_9622_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_8(i_llvm_fpga_push_i8_fpga_indvars_iv9_push8_sobel12_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i8_fpga_indvars_iv9_push8_sobel12_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond11_sobel6_cmp_nsign(LOGICAL,42)@1
    assign i_exitcond11_sobel6_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv9_pop8_sobel5_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond23_sobel10(BLACKBOX,23)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    sobel_i_llvm_fpga_push_i1_notexitcond23_0 thei_llvm_fpga_push_i1_notexitcond23_sobel10 (
        .in_data_in(i_exitcond11_sobel6_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going22_sobel2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond23_sobel10_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond23_sobel10_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going22_sobel2(BLACKBOX,20)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    sobel_i_llvm_fpga_pipeline_keep_going22_0 thei_llvm_fpga_pipeline_keep_going22_sobel2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond23_sobel10_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond23_sobel10_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going22_sobel2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going22_sobel2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going22_sobel2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going22_sobel2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_sobel2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going22_sobel2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_sobel2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going22_sobel2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,29)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going22_sobel2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,36)@1 + 1
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

    // redist1_sync_together35_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together35_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together35_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // i_notcmp20_sobel9(LOGICAL,26)@2
    assign i_notcmp20_sobel9_q = redist0_i_exitcond11_sobel6_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond11_sobel6_cmp_nsign_q_1(DELAY,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond11_sobel6_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond11_sobel6_cmp_nsign_q_1_q <= $unsigned(i_exitcond11_sobel6_cmp_nsign_q);
        end
    end

    // c_i32_121(CONSTANT,13)
    assign c_i32_121_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add12_sobel4(ADD,17)@2
    assign i_add12_sobel4_a = {1'b0, i_llvm_fpga_pop_i32_j_083_pop9_sobel3_out_data_out};
    assign i_add12_sobel4_b = {1'b0, c_i32_121_q};
    assign i_add12_sobel4_o = $unsigned(i_add12_sobel4_a) + $unsigned(i_add12_sobel4_b);
    assign i_add12_sobel4_q = i_add12_sobel4_o[32:0];

    // bgTrunc_i_add12_sobel4_sel_x(BITSELECT,31)@2
    assign bgTrunc_i_add12_sobel4_sel_x_b = i_add12_sobel4_q[31:0];

    // valid_fanout_reg1(REG,37)@1 + 1
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

    // valid_fanout_reg2(REG,38)@1 + 1
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

    // i_llvm_fpga_push_i32_j_083_push9_sobel8(BLACKBOX,24)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    sobel_i_llvm_fpga_push_i32_j_083_push9_0 thei_llvm_fpga_push_i32_j_083_push9_sobel8 (
        .in_data_in(bgTrunc_i_add12_sobel4_sel_x_b),
        .in_exitcond11(redist0_i_exitcond11_sobel6_cmp_nsign_q_1_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_j_083_pop9_sobel3_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_j_083_push9_sobel8_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_j_083_push9_sobel8_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_083_pop9_sobel3(BLACKBOX,21)@2
    // out out_feedback_stall_out_9@20000000
    sobel_i_llvm_fpga_pop_i32_j_083_pop9_0 thei_llvm_fpga_pop_i32_j_083_pop9_sobel3 (
        .in_data_in(c_i32_121_q),
        .in_dir(redist1_sync_together35_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_j_083_push9_sobel8_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_j_083_push9_sobel8_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_083_pop9_sobel3_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_j_083_pop9_sobel3_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,34)@2
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = i_llvm_fpga_pop_i32_j_083_pop9_sobel3_out_data_out;
    assign out_c0_exi5_2_tpl = bgTrunc_i_add12_sobel4_sel_x_b;
    assign out_c0_exi5_3_tpl = redist0_i_exitcond11_sobel6_cmp_nsign_q_1_q;
    assign out_c0_exi5_4_tpl = i_notcmp20_sobel9_q;
    assign out_c0_exi5_5_tpl = redist1_sync_together35_aunroll_x_in_c0_eni1_1_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_sobel1 = GND_q;

endmodule
