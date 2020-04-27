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

// SystemVerilog created from sobel_filter_B12_branch
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B12_branch (
    input wire [0:0] in_c0_exe2367,
    input wire [0:0] in_c0_exe3368,
    input wire [0:0] in_c0_exe4369,
    input wire [0:0] in_c0_exe5370,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe3368,
    output wire [0:0] out_c0_exe4369,
    output wire [0:0] out_c0_exe5370,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe2367_cmp_q;
    reg [0:0] c0_exe3368_reg_q;
    reg [0:0] c0_exe4369_reg_q;
    reg [0:0] c0_exe5370_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    wire [0:0] sobel_filter_B12_branch_enable_q;
    wire [0:0] sobel_filter_B12_branch_enable_not_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,14)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe2367_cmp(LOGICAL,2)
    assign c0_exe2367_cmp_q = ~ (in_c0_exe2367);

    // valid_out_1_and(LOGICAL,30)
    assign valid_out_1_and_q = in_valid_in & c0_exe2367_cmp_q;

    // valid_1_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (sobel_filter_B12_branch_enable_q == 1'b1)
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

    // valid_out_0_and(LOGICAL,29)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe2367;

    // valid_0_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (sobel_filter_B12_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,15)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,17)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // sobel_filter_B12_branch_enable(LOGICAL,25)
    assign sobel_filter_B12_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe3368_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3368_reg_q <= $unsigned(1'b0);
        end
        else if (sobel_filter_B12_branch_enable_q == 1'b1)
        begin
            c0_exe3368_reg_q <= in_c0_exe3368;
        end
    end

    // out_c0_exe3368(GPOUT,19)
    assign out_c0_exe3368 = c0_exe3368_reg_q;

    // c0_exe4369_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4369_reg_q <= $unsigned(1'b0);
        end
        else if (sobel_filter_B12_branch_enable_q == 1'b1)
        begin
            c0_exe4369_reg_q <= in_c0_exe4369;
        end
    end

    // out_c0_exe4369(GPOUT,20)
    assign out_c0_exe4369 = c0_exe4369_reg_q;

    // c0_exe5370_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe5370_reg_q <= $unsigned(1'b0);
        end
        else if (sobel_filter_B12_branch_enable_q == 1'b1)
        begin
            c0_exe5370_reg_q <= in_c0_exe5370;
        end
    end

    // out_c0_exe5370(GPOUT,21)
    assign out_c0_exe5370 = c0_exe5370_reg_q;

    // sobel_filter_B12_branch_enable_not(LOGICAL,26)
    assign sobel_filter_B12_branch_enable_not_q = ~ (sobel_filter_B12_branch_enable_q);

    // out_stall_out(GPOUT,22)
    assign out_stall_out = sobel_filter_B12_branch_enable_not_q;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,24)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
