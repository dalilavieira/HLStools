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

// SystemVerilog created from zlaswp_i_sfc_logic_s_c0_in_for_cond62_s_c0_enter26810_zlaswp0
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_i_sfc_logic_s_c0_in_for_cond62_s_c0_enter26810_zlaswp0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_zlaswp2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_zlaswp2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [0:0] in_intel_reserved_ffwd_27_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [31:0] out_c0_exi5_1_tpl,
    output wire [0:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zlaswp13,
    input wire [0:0] in_c0_eni1267_0_tpl,
    input wire [0:0] in_c0_eni1267_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_undef33_q;
    wire [32:0] i_add116_zlaswp19_a;
    wire [32:0] i_add116_zlaswp19_b;
    logic [32:0] i_add116_zlaswp19_o;
    wire [32:0] i_add116_zlaswp19_q;
    wire [33:0] i_cmp65_zlaswp7_a;
    wire [33:0] i_cmp65_zlaswp7_b;
    logic [33:0] i_cmp65_zlaswp7_o;
    wire [0:0] i_cmp65_zlaswp7_n;
    wire [33:0] i_cmp67_zlaswp10_a;
    wire [33:0] i_cmp67_zlaswp10_b;
    logic [33:0] i_cmp67_zlaswp10_o;
    wire [0:0] i_cmp67_zlaswp10_n;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp147_zlaswp12_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor185_zlaswp14_out_dest_data_out_27_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_select100174_zlaswp18_out_dest_data_out_22_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3154_zlaswp3_out_dest_data_out_9_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4157_zlaswp6_out_dest_data_out_10_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4158_zlaswp9_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond195_zlaswp17_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond195_zlaswp17_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_storemerge67_push9_zlaswp20_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_storemerge67_push9_zlaswp20_out_feedback_valid_out_9;
    wire [0:0] i_notcmp193_zlaswp16_q;
    wire [0:0] i_phi_decision209_xor_and_i0_zlaswp15_q;
    wire [0:0] i_storemerge67_replace_phi_zlaswp5_s;
    reg [31:0] i_storemerge67_replace_phi_zlaswp5_q;
    wire [0:0] i_unnamed_zlaswp13_s;
    reg [0:0] i_unnamed_zlaswp13_q;
    wire [31:0] bgTrunc_i_add116_zlaswp19_sel_x_b;


    // i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3154_zlaswp3(BLACKBOX,24)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3154_0 thei_llvm_fpga_ffwd_dest_i32_storemerge1_lm3154_zlaswp3 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3154_zlaswp3_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_select100174_zlaswp18(BLACKBOX,23)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i32_select100174_0 thei_llvm_fpga_ffwd_dest_i32_select100174_zlaswp18 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i32_select100174_zlaswp18_out_dest_data_out_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add116_zlaswp19(ADD,18)@1
    assign i_add116_zlaswp19_a = {1'b0, i_storemerge67_replace_phi_zlaswp5_q};
    assign i_add116_zlaswp19_b = {1'b0, i_llvm_fpga_ffwd_dest_i32_select100174_zlaswp18_out_dest_data_out_22_0};
    assign i_add116_zlaswp19_o = $unsigned(i_add116_zlaswp19_a) + $unsigned(i_add116_zlaswp19_b);
    assign i_add116_zlaswp19_q = i_add116_zlaswp19_o[32:0];

    // bgTrunc_i_add116_zlaswp19_sel_x(BITSELECT,47)@1
    assign bgTrunc_i_add116_zlaswp19_sel_x_b = i_add116_zlaswp19_q[31:0];

    // i_llvm_fpga_push_i32_storemerge67_push9_zlaswp20(BLACKBOX,30)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    zlaswp_i_llvm_fpga_push_i32_storemerge67_push9_0 thei_llvm_fpga_push_i32_storemerge67_push9_zlaswp20 (
        .in_data_in(bgTrunc_i_add116_zlaswp19_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4_out_feedback_stall_out_9),
        .in_phi_decision209_xor_and_i0(i_phi_decision209_xor_and_i0_zlaswp15_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_storemerge67_push9_zlaswp20_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_storemerge67_push9_zlaswp20_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef33(CONSTANT,16)
    assign c_i32_undef33_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4(BLACKBOX,28)@1
    // out out_feedback_stall_out_9@20000000
    zlaswp_i_llvm_fpga_pop_i32_storemerge67_pop9_0 thei_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4 (
        .in_data_in(c_i32_undef33_q),
        .in_dir(in_c0_eni1267_1_tpl),
        .in_feedback_in_9(i_llvm_fpga_push_i32_storemerge67_push9_zlaswp20_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_storemerge67_push9_zlaswp20_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_storemerge67_replace_phi_zlaswp5(MUX,33)@1
    assign i_storemerge67_replace_phi_zlaswp5_s = in_c0_eni1267_1_tpl;
    always @(i_storemerge67_replace_phi_zlaswp5_s or i_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4_out_data_out or i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3154_zlaswp3_out_dest_data_out_9_0)
    begin
        unique case (i_storemerge67_replace_phi_zlaswp5_s)
            1'b0 : i_storemerge67_replace_phi_zlaswp5_q = i_llvm_fpga_pop_i32_storemerge67_pop9_zlaswp4_out_data_out;
            1'b1 : i_storemerge67_replace_phi_zlaswp5_q = i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3154_zlaswp3_out_dest_data_out_9_0;
            default : i_storemerge67_replace_phi_zlaswp5_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4158_zlaswp9(BLACKBOX,26)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4158_0 thei_llvm_fpga_ffwd_dest_i32_storemerge72_lm4158_zlaswp9 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4158_zlaswp9_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp67_zlaswp10(COMPARE,20)@1
    assign i_cmp67_zlaswp10_a = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4158_zlaswp9_out_dest_data_out_10_0[31]}}, i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4158_zlaswp9_out_dest_data_out_10_0});
    assign i_cmp67_zlaswp10_b = $unsigned({{2{i_storemerge67_replace_phi_zlaswp5_q[31]}}, i_storemerge67_replace_phi_zlaswp5_q});
    assign i_cmp67_zlaswp10_o = $unsigned($signed(i_cmp67_zlaswp10_a) - $signed(i_cmp67_zlaswp10_b));
    assign i_cmp67_zlaswp10_n[0] = ~ (i_cmp67_zlaswp10_o[33]);

    // i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4157_zlaswp6(BLACKBOX,25)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4157_0 thei_llvm_fpga_ffwd_dest_i32_storemerge72_lm4157_zlaswp6 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4157_zlaswp6_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp65_zlaswp7(COMPARE,19)@1
    assign i_cmp65_zlaswp7_a = $unsigned({{2{i_storemerge67_replace_phi_zlaswp5_q[31]}}, i_storemerge67_replace_phi_zlaswp5_q});
    assign i_cmp65_zlaswp7_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4157_zlaswp6_out_dest_data_out_10_0[31]}}, i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4157_zlaswp6_out_dest_data_out_10_0});
    assign i_cmp65_zlaswp7_o = $unsigned($signed(i_cmp65_zlaswp7_a) - $signed(i_cmp65_zlaswp7_b));
    assign i_cmp65_zlaswp7_n[0] = ~ (i_cmp65_zlaswp7_o[33]);

    // i_llvm_fpga_ffwd_dest_i1_cmp147_zlaswp12(BLACKBOX,21)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i1_cmp147_0 thei_llvm_fpga_ffwd_dest_i1_cmp147_zlaswp12 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i1_cmp147_zlaswp12_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_zlaswp13(MUX,34)@1
    assign i_unnamed_zlaswp13_s = i_llvm_fpga_ffwd_dest_i1_cmp147_zlaswp12_out_dest_data_out_5_0;
    always @(i_unnamed_zlaswp13_s or i_cmp65_zlaswp7_n or i_cmp67_zlaswp10_n)
    begin
        unique case (i_unnamed_zlaswp13_s)
            1'b0 : i_unnamed_zlaswp13_q = i_cmp65_zlaswp7_n;
            1'b1 : i_unnamed_zlaswp13_q = i_cmp67_zlaswp10_n;
            default : i_unnamed_zlaswp13_q = 1'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor185_zlaswp14(BLACKBOX,22)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor185_0 thei_llvm_fpga_ffwd_dest_i1_phi_decision209_xor185_zlaswp14 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor185_zlaswp14_out_dest_data_out_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision209_xor_and_i0_zlaswp15(LOGICAL,32)@1
    assign i_phi_decision209_xor_and_i0_zlaswp15_q = i_llvm_fpga_ffwd_dest_i1_phi_decision209_xor185_zlaswp14_out_dest_data_out_27_0 & i_unnamed_zlaswp13_q;

    // i_llvm_fpga_push_i1_notexitcond195_zlaswp17(BLACKBOX,29)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    zlaswp_i_llvm_fpga_push_i1_notexitcond195_0 thei_llvm_fpga_push_i1_notexitcond195_zlaswp17 (
        .in_data_in(i_phi_decision209_xor_and_i0_zlaswp15_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond195_zlaswp17_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond195_zlaswp17_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going194_zlaswp2(BLACKBOX,27)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    zlaswp_i_llvm_fpga_pipeline_keep_going194_0 thei_llvm_fpga_pipeline_keep_going194_zlaswp2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond195_zlaswp17_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond195_zlaswp17_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_zlaswp2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going194_zlaswp2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,38)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going194_zlaswp2_out_pipeline_valid_out;

    // i_notcmp193_zlaswp16(LOGICAL,31)@1
    assign i_notcmp193_zlaswp16_q = i_phi_decision209_xor_and_i0_zlaswp15_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,48)@1
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = i_storemerge67_replace_phi_zlaswp5_q;
    assign out_c0_exi5_2_tpl = i_unnamed_zlaswp13_q;
    assign out_c0_exi5_3_tpl = i_phi_decision209_xor_and_i0_zlaswp15_q;
    assign out_c0_exi5_4_tpl = i_notcmp193_zlaswp16_q;
    assign out_c0_exi5_5_tpl = in_c0_eni1267_1_tpl;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_zlaswp13 = GND_q;

endmodule
