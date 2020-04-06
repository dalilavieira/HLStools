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

// SystemVerilog created from prod_matrix_B4_branch
// SystemVerilog created on Mon Apr  6 12:55:33 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_B4_branch (
    input wire [0:0] in_masked,
    input wire [0:0] in_memdep,
    input wire [0:0] in_notcmp2240_pop29,
    input wire [0:0] in_notcmp2635_pop25,
    input wire [0:0] in_pop24,
    input wire [0:0] in_pop28,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp2240_pop29,
    output wire [0:0] out_notcmp2635_pop25,
    output wire [0:0] out_pop24,
    output wire [0:0] out_pop28,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] masked_cmp_q;
    reg [0:0] memdep_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] notcmp2240_pop29_reg_q;
    reg [0:0] notcmp2635_pop25_reg_q;
    reg [0:0] pop24_reg_q;
    reg [0:0] pop28_reg_q;
    wire [0:0] prod_matrix_B4_branch_enable_q;
    wire [0:0] prod_matrix_B4_branch_enable_not_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,14)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // masked_cmp(LOGICAL,11)
    assign masked_cmp_q = ~ (in_masked);

    // valid_out_1_and(LOGICAL,36)
    assign valid_out_1_and_q = in_valid_in & masked_cmp_q;

    // valid_1_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (prod_matrix_B4_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,16)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,18)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,13)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,35)
    assign valid_out_0_and_q = in_valid_in & in_masked;

    // valid_0_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (prod_matrix_B4_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,15)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,17)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // prod_matrix_B4_branch_enable(LOGICAL,31)
    assign prod_matrix_B4_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // memdep_reg(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_reg_q <= $unsigned(1'b0);
        end
        else if (prod_matrix_B4_branch_enable_q == 1'b1)
        begin
            memdep_reg_q <= in_memdep;
        end
    end

    // out_memdep(GPOUT,21)
    assign out_memdep = memdep_reg_q;

    // notcmp2240_pop29_reg(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp2240_pop29_reg_q <= $unsigned(1'b0);
        end
        else if (prod_matrix_B4_branch_enable_q == 1'b1)
        begin
            notcmp2240_pop29_reg_q <= in_notcmp2240_pop29;
        end
    end

    // out_notcmp2240_pop29(GPOUT,22)
    assign out_notcmp2240_pop29 = notcmp2240_pop29_reg_q;

    // notcmp2635_pop25_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp2635_pop25_reg_q <= $unsigned(1'b0);
        end
        else if (prod_matrix_B4_branch_enable_q == 1'b1)
        begin
            notcmp2635_pop25_reg_q <= in_notcmp2635_pop25;
        end
    end

    // out_notcmp2635_pop25(GPOUT,23)
    assign out_notcmp2635_pop25 = notcmp2635_pop25_reg_q;

    // pop24_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            pop24_reg_q <= $unsigned(1'b0);
        end
        else if (prod_matrix_B4_branch_enable_q == 1'b1)
        begin
            pop24_reg_q <= in_pop24;
        end
    end

    // out_pop24(GPOUT,24)
    assign out_pop24 = pop24_reg_q;

    // pop28_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            pop28_reg_q <= $unsigned(1'b0);
        end
        else if (prod_matrix_B4_branch_enable_q == 1'b1)
        begin
            pop28_reg_q <= in_pop28;
        end
    end

    // out_pop28(GPOUT,25)
    assign out_pop28 = pop28_reg_q;

    // prod_matrix_B4_branch_enable_not(LOGICAL,32)
    assign prod_matrix_B4_branch_enable_not_q = ~ (prod_matrix_B4_branch_enable_q);

    // out_stall_out(GPOUT,26)
    assign out_stall_out = prod_matrix_B4_branch_enable_not_q;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,28)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
