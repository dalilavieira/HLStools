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

// SystemVerilog created from fir_B11_branch
// SystemVerilog created on Mon Apr 27 09:47:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_B11_branch (
    input wire [31:0] in_c0_exe2133,
    input wire [15:0] in_c0_exe3134,
    input wire [0:0] in_c0_exe4135,
    input wire [0:0] in_c0_exe5136,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe2133,
    output wire [15:0] out_c0_exe3134,
    output wire [0:0] out_c0_exe5136,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] c0_exe2133_reg_q;
    reg [15:0] c0_exe3134_reg_q;
    wire [0:0] c0_exe4135_cmp_q;
    reg [0:0] c0_exe5136_reg_q;
    reg [0:0] c0_exe6_reg_q;
    wire [0:0] fir_B11_branch_enable_q;
    wire [0:0] fir_B11_branch_enable_not_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,18)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe4135_cmp(LOGICAL,4)
    assign c0_exe4135_cmp_q = ~ (in_c0_exe4135);

    // valid_out_1_and(LOGICAL,33)
    assign valid_out_1_and_q = in_valid_in & c0_exe4135_cmp_q;

    // valid_1_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (fir_B11_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,20)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,22)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,17)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,32)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe4135;

    // valid_0_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (fir_B11_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,19)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,21)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // fir_B11_branch_enable(LOGICAL,7)
    assign fir_B11_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe2133_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe2133_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (fir_B11_branch_enable_q == 1'b1)
        begin
            c0_exe2133_reg_q <= in_c0_exe2133;
        end
    end

    // out_c0_exe2133(GPOUT,23)
    assign out_c0_exe2133 = c0_exe2133_reg_q;

    // c0_exe3134_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3134_reg_q <= $unsigned(16'b0000000000000000);
        end
        else if (fir_B11_branch_enable_q == 1'b1)
        begin
            c0_exe3134_reg_q <= in_c0_exe3134;
        end
    end

    // out_c0_exe3134(GPOUT,24)
    assign out_c0_exe3134 = c0_exe3134_reg_q;

    // c0_exe5136_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5136_reg_q <= $unsigned(1'b0);
        end
        else if (fir_B11_branch_enable_q == 1'b1)
        begin
            c0_exe5136_reg_q <= in_c0_exe5136;
        end
    end

    // out_c0_exe5136(GPOUT,25)
    assign out_c0_exe5136 = c0_exe5136_reg_q;

    // c0_exe6_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6_reg_q <= $unsigned(1'b0);
        end
        else if (fir_B11_branch_enable_q == 1'b1)
        begin
            c0_exe6_reg_q <= in_c0_exe6;
        end
    end

    // out_c0_exe6(GPOUT,26)
    assign out_c0_exe6 = c0_exe6_reg_q;

    // fir_B11_branch_enable_not(LOGICAL,8)
    assign fir_B11_branch_enable_not_q = ~ (fir_B11_branch_enable_q);

    // out_stall_out(GPOUT,27)
    assign out_stall_out = fir_B11_branch_enable_not_q;

    // out_valid_out_0(GPOUT,28)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,29)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
