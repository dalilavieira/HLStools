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

// SystemVerilog created from dijkstra_B8_branch
// SystemVerilog created on Mon Apr  6 12:54:17 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_B8_branch (
    input wire [31:0] in_c0_exe32042,
    input wire [0:0] in_cmp664,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe32042,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [31:0] c0_exe32042_reg_q;
    wire [0:0] cmp664_cmp_q;
    wire [0:0] dijkstra_B8_branch_enable_q;
    wire [0:0] dijkstra_B8_branch_enable_not_q;
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

    // not_stall_in_1(LOGICAL,12)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // cmp664_cmp(LOGICAL,3)
    assign cmp664_cmp_q = ~ (in_cmp664);

    // valid_out_1_and(LOGICAL,24)
    assign valid_out_1_and_q = in_valid_in & cmp664_cmp_q;

    // valid_1_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (dijkstra_B8_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,14)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,16)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,11)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,23)
    assign valid_out_0_and_q = in_valid_in & in_cmp664;

    // valid_0_reg(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (dijkstra_B8_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,13)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,15)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // dijkstra_B8_branch_enable(LOGICAL,4)
    assign dijkstra_B8_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe32042_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe32042_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dijkstra_B8_branch_enable_q == 1'b1)
        begin
            c0_exe32042_reg_q <= in_c0_exe32042;
        end
    end

    // out_c0_exe32042(GPOUT,17)
    assign out_c0_exe32042 = c0_exe32042_reg_q;

    // dijkstra_B8_branch_enable_not(LOGICAL,5)
    assign dijkstra_B8_branch_enable_not_q = ~ (dijkstra_B8_branch_enable_q);

    // out_stall_out(GPOUT,18)
    assign out_stall_out = dijkstra_B8_branch_enable_not_q;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,20)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
