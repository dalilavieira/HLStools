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

// SystemVerilog created from claswp_B6_branch
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_B6_branch (
    input wire [31:0] in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31,
    input wire [0:0] in_lm3213_toi1_intcast56,
    input wire [0:0] in_masked,
    input wire [0:0] in_memdep_102,
    input wire [0:0] in_memdep_119,
    input wire [0:0] in_memdep_71,
    input wire [0:0] in_memdep_87,
    input wire [0:0] in_notcmp193223_pop33,
    input wire [0:0] in_phi_decision209_xor_and_i0222_pop32,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31,
    output wire [0:0] out_lm3213_toi1_intcast56,
    output wire [0:0] out_memdep_102,
    output wire [0:0] out_memdep_119,
    output wire [0:0] out_memdep_71,
    output wire [0:0] out_memdep_87,
    output wire [0:0] out_notcmp193223_pop33,
    output wire [0:0] out_phi_decision209_xor_and_i0222_pop32,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31_reg_q;
    wire [0:0] claswp_B6_branch_enable_q;
    wire [0:0] claswp_B6_branch_enable_not_q;
    reg [0:0] lm3213_toi1_intcast56_reg_q;
    wire [0:0] masked_cmp_q;
    reg [0:0] memdep_102_reg_q;
    reg [0:0] memdep_119_reg_q;
    reg [0:0] memdep_71_reg_q;
    reg [0:0] memdep_87_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] notcmp193223_pop33_reg_q;
    reg [0:0] phi_decision209_xor_and_i0222_pop32_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,24)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // masked_cmp(LOGICAL,18)
    assign masked_cmp_q = ~ (in_masked);

    // valid_out_1_and(LOGICAL,45)
    assign valid_out_1_and_q = in_valid_in & masked_cmp_q;

    // valid_1_reg(REG,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,26)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,28)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,23)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,44)
    assign valid_out_0_and_q = in_valid_in & in_masked;

    // valid_0_reg(REG,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,25)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,27)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // claswp_B6_branch_enable(LOGICAL,3)
    assign claswp_B6_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31_reg_q <= in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31;
        end
    end

    // out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31(GPOUT,30)
    assign out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31 = ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop31_reg_q;

    // lm3213_toi1_intcast56_reg(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lm3213_toi1_intcast56_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            lm3213_toi1_intcast56_reg_q <= in_lm3213_toi1_intcast56;
        end
    end

    // out_lm3213_toi1_intcast56(GPOUT,31)
    assign out_lm3213_toi1_intcast56 = lm3213_toi1_intcast56_reg_q;

    // memdep_102_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_102_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            memdep_102_reg_q <= in_memdep_102;
        end
    end

    // out_memdep_102(GPOUT,32)
    assign out_memdep_102 = memdep_102_reg_q;

    // memdep_119_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_119_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            memdep_119_reg_q <= in_memdep_119;
        end
    end

    // out_memdep_119(GPOUT,33)
    assign out_memdep_119 = memdep_119_reg_q;

    // memdep_71_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_71_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            memdep_71_reg_q <= in_memdep_71;
        end
    end

    // out_memdep_71(GPOUT,34)
    assign out_memdep_71 = memdep_71_reg_q;

    // memdep_87_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_87_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            memdep_87_reg_q <= in_memdep_87;
        end
    end

    // out_memdep_87(GPOUT,35)
    assign out_memdep_87 = memdep_87_reg_q;

    // notcmp193223_pop33_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp193223_pop33_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            notcmp193223_pop33_reg_q <= in_notcmp193223_pop33;
        end
    end

    // out_notcmp193223_pop33(GPOUT,36)
    assign out_notcmp193223_pop33 = notcmp193223_pop33_reg_q;

    // phi_decision209_xor_and_i0222_pop32_reg(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            phi_decision209_xor_and_i0222_pop32_reg_q <= $unsigned(1'b0);
        end
        else if (claswp_B6_branch_enable_q == 1'b1)
        begin
            phi_decision209_xor_and_i0222_pop32_reg_q <= in_phi_decision209_xor_and_i0222_pop32;
        end
    end

    // out_phi_decision209_xor_and_i0222_pop32(GPOUT,37)
    assign out_phi_decision209_xor_and_i0222_pop32 = phi_decision209_xor_and_i0222_pop32_reg_q;

    // claswp_B6_branch_enable_not(LOGICAL,4)
    assign claswp_B6_branch_enable_not_q = ~ (claswp_B6_branch_enable_q);

    // out_stall_out(GPOUT,38)
    assign out_stall_out = claswp_B6_branch_enable_not_q;

    // out_valid_out_0(GPOUT,39)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,40)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
