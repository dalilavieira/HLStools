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

// SystemVerilog created from kmeans_i_sfc_logic_s_c0_in_for_cond_cleaA000000Z_c0_enter218_kmeans0
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_sfc_logic_s_c0_in_for_cond_cleaA000000Z_c0_enter218_kmeans0 (
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    output wire [0:0] out_c0_exi1223_0_tpl,
    output wire [15:0] out_c0_exi1223_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kmeans1,
    input wire [0:0] in_c0_eni4217_0_tpl,
    input wire [0:0] in_c0_eni4217_1_tpl,
    input wire [15:0] in_c0_eni4217_2_tpl,
    input wire [0:0] in_c0_eni4217_3_tpl,
    input wire [15:0] in_c0_eni4217_4_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_015_q;
    wire [15:0] c_i16_114_q;
    wire [17:0] i_cmp59_kmeans3_a;
    wire [17:0] i_cmp59_kmeans3_b;
    logic [17:0] i_cmp59_kmeans3_o;
    wire [0:0] i_cmp59_kmeans3_c;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp344138_kmeans9_out_dest_data_out_8_0;
    wire [15:0] i_llvm_fpga_pop_i16_min_042_pop37_kmeans2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_min_042_pop37_kmeans2_out_feedback_stall_out_37;
    wire [15:0] i_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6_out_feedback_stall_out_36;
    wire [15:0] i_llvm_fpga_push_i16_min_042_push37_kmeans5_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i16_min_042_push37_kmeans5_out_feedback_valid_out_37;
    wire [15:0] i_llvm_fpga_push_i16_min_id_043_push36_kmeans8_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i16_min_id_043_push36_kmeans8_out_feedback_valid_out_36;
    wire [0:0] i_select9_kmeans10_s;
    reg [15:0] i_select9_kmeans10_q;
    wire [0:0] i_spec_select37_kmeans7_s;
    reg [15:0] i_spec_select37_kmeans7_q;
    wire [0:0] i_spec_select_kmeans4_s;
    reg [15:0] i_spec_select_kmeans4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    reg [0:0] redist0_sync_together22_aunroll_x_in_c0_eni4217_1_tpl_1_q;
    reg [15:0] redist1_sync_together22_aunroll_x_in_c0_eni4217_2_tpl_1_q;
    reg [0:0] redist2_sync_together22_aunroll_x_in_c0_eni4217_3_tpl_1_q;
    reg [15:0] redist3_sync_together22_aunroll_x_in_c0_eni4217_4_tpl_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // valid_fanout_reg0(REG,24)@0 + 1
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

    // valid_fanout_reg3(REG,27)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // enable_stall_connector_not_enable(LOGICAL,34)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg4(REG,28)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together22_aunroll_x_in_c0_eni4217_3_tpl_1(DELAY,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together22_aunroll_x_in_c0_eni4217_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together22_aunroll_x_in_c0_eni4217_3_tpl_1_q <= $unsigned(in_c0_eni4217_3_tpl);
        end
    end

    // i_llvm_fpga_push_i16_min_id_043_push36_kmeans8(BLACKBOX,12)@1
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    kmeans_i_llvm_fpga_push_i16_min_id_043_push36_0 thei_llvm_fpga_push_i16_min_id_043_push36_kmeans8 (
        .in_c0_ene3221(redist2_sync_together22_aunroll_x_in_c0_eni4217_3_tpl_1_q),
        .in_data_in(i_spec_select37_kmeans7_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6_out_feedback_stall_out_36),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i16_min_id_043_push36_kmeans8_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i16_min_id_043_push36_kmeans8_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together22_aunroll_x_in_c0_eni4217_1_tpl_1(DELAY,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together22_aunroll_x_in_c0_eni4217_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together22_aunroll_x_in_c0_eni4217_1_tpl_1_q <= $unsigned(in_c0_eni4217_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6(BLACKBOX,10)@1
    // out out_feedback_stall_out_36@20000000
    kmeans_i_llvm_fpga_pop_i16_min_id_043_pop36_0 thei_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6 (
        .in_data_in(c_i16_015_q),
        .in_dir(redist0_sync_together22_aunroll_x_in_c0_eni4217_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i16_min_id_043_push36_kmeans8_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i16_min_id_043_push36_kmeans8_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together22_aunroll_x_in_c0_eni4217_4_tpl_1(DELAY,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together22_aunroll_x_in_c0_eni4217_4_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together22_aunroll_x_in_c0_eni4217_4_tpl_1_q <= $unsigned(in_c0_eni4217_4_tpl);
        end
    end

    // redist1_sync_together22_aunroll_x_in_c0_eni4217_2_tpl_1(DELAY,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together22_aunroll_x_in_c0_eni4217_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together22_aunroll_x_in_c0_eni4217_2_tpl_1_q <= $unsigned(in_c0_eni4217_2_tpl);
        end
    end

    // valid_fanout_reg1(REG,25)@0 + 1
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

    // valid_fanout_reg2(REG,26)@0 + 1
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

    // i_spec_select_kmeans4(MUX,15)@1
    assign i_spec_select_kmeans4_s = i_cmp59_kmeans3_c;
    always @(i_spec_select_kmeans4_s or redist1_sync_together22_aunroll_x_in_c0_eni4217_2_tpl_1_q or i_llvm_fpga_pop_i16_min_042_pop37_kmeans2_out_data_out)
    begin
        unique case (i_spec_select_kmeans4_s)
            1'b0 : i_spec_select_kmeans4_q = redist1_sync_together22_aunroll_x_in_c0_eni4217_2_tpl_1_q;
            1'b1 : i_spec_select_kmeans4_q = i_llvm_fpga_pop_i16_min_042_pop37_kmeans2_out_data_out;
            default : i_spec_select_kmeans4_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_push_i16_min_042_push37_kmeans5(BLACKBOX,11)@1
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    kmeans_i_llvm_fpga_push_i16_min_042_push37_0 thei_llvm_fpga_push_i16_min_042_push37_kmeans5 (
        .in_c0_ene3221(redist2_sync_together22_aunroll_x_in_c0_eni4217_3_tpl_1_q),
        .in_data_in(i_spec_select_kmeans4_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i16_min_042_pop37_kmeans2_out_feedback_stall_out_37),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i16_min_042_push37_kmeans5_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i16_min_042_push37_kmeans5_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i16_114(CONSTANT,3)
    assign c_i16_114_q = $unsigned(16'b1111111111111111);

    // i_llvm_fpga_pop_i16_min_042_pop37_kmeans2(BLACKBOX,9)@1
    // out out_feedback_stall_out_37@20000000
    kmeans_i_llvm_fpga_pop_i16_min_042_pop37_0 thei_llvm_fpga_pop_i16_min_042_pop37_kmeans2 (
        .in_data_in(c_i16_114_q),
        .in_dir(redist0_sync_together22_aunroll_x_in_c0_eni4217_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i16_min_042_push37_kmeans5_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i16_min_042_push37_kmeans5_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i16_min_042_pop37_kmeans2_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i16_min_042_pop37_kmeans2_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp59_kmeans3(COMPARE,7)@1
    assign i_cmp59_kmeans3_a = {2'b00, i_llvm_fpga_pop_i16_min_042_pop37_kmeans2_out_data_out};
    assign i_cmp59_kmeans3_b = {2'b00, redist1_sync_together22_aunroll_x_in_c0_eni4217_2_tpl_1_q};
    assign i_cmp59_kmeans3_o = $unsigned(i_cmp59_kmeans3_a) - $unsigned(i_cmp59_kmeans3_b);
    assign i_cmp59_kmeans3_c[0] = i_cmp59_kmeans3_o[17];

    // i_spec_select37_kmeans7(MUX,14)@1
    assign i_spec_select37_kmeans7_s = i_cmp59_kmeans3_c;
    always @(i_spec_select37_kmeans7_s or redist3_sync_together22_aunroll_x_in_c0_eni4217_4_tpl_1_q or i_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6_out_data_out)
    begin
        unique case (i_spec_select37_kmeans7_s)
            1'b0 : i_spec_select37_kmeans7_q = redist3_sync_together22_aunroll_x_in_c0_eni4217_4_tpl_1_q;
            1'b1 : i_spec_select37_kmeans7_q = i_llvm_fpga_pop_i16_min_id_043_pop36_kmeans6_out_data_out;
            default : i_spec_select37_kmeans7_q = 16'b0;
        endcase
    end

    // c_i16_015(CONSTANT,2)
    assign c_i16_015_q = $unsigned(16'b0000000000000000);

    // valid_fanout_reg5(REG,29)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp344138_kmeans9(BLACKBOX,8)@1
    kmeans_i_llvm_fpga_ffwd_dest_i1_cmp344138_0 thei_llvm_fpga_ffwd_dest_i1_cmp344138_kmeans9 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp344138_kmeans9_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_select9_kmeans10(MUX,13)@1
    assign i_select9_kmeans10_s = i_llvm_fpga_ffwd_dest_i1_cmp344138_kmeans9_out_dest_data_out_8_0;
    always @(i_select9_kmeans10_s or c_i16_015_q or i_spec_select37_kmeans7_q)
    begin
        unique case (i_select9_kmeans10_s)
            1'b0 : i_select9_kmeans10_q = c_i16_015_q;
            1'b1 : i_select9_kmeans10_q = i_spec_select37_kmeans7_q;
            default : i_select9_kmeans10_q = 16'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,22)@1
    assign out_c0_exi1223_0_tpl = GND_q;
    assign out_c0_exi1223_1_tpl = i_select9_kmeans10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kmeans1 = GND_q;

endmodule
