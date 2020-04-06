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

// SystemVerilog created from bubbleSort_B4_merge_reg
// SystemVerilog created on Mon Apr  6 10:17:13 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_B4_merge_reg (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [32:0] in_data_in_1_tpl,
    input wire [31:0] in_data_in_2_tpl,
    input wire [31:0] in_data_in_3_tpl,
    input wire [0:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [0:0] in_data_in_6_tpl,
    input wire [0:0] in_data_in_7_tpl,
    input wire [0:0] in_data_in_8_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0_tpl,
    output wire [32:0] out_data_out_1_tpl,
    output wire [31:0] out_data_out_2_tpl,
    output wire [31:0] out_data_out_3_tpl,
    output wire [0:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [0:0] out_data_out_6_tpl,
    output wire [0:0] out_data_out_7_tpl,
    output wire [0:0] out_data_out_8_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] bubbleSort_B4_merge_reg_valid_reg_q;
    wire [0:0] bubbleSort_B4_merge_reg_valid_reg_and_stall_in_q;
    wire [0:0] bubbleSort_B4_merge_reg_valid_reg_not_q;
    wire [0:0] stall_in_not_q;
    wire [0:0] stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q;
    reg [0:0] bubbleSort_B4_merge_reg_data_reg_0_x_q;
    reg [32:0] bubbleSort_B4_merge_reg_data_reg_1_x_q;
    reg [31:0] bubbleSort_B4_merge_reg_data_reg_2_x_q;
    reg [31:0] bubbleSort_B4_merge_reg_data_reg_3_x_q;
    reg [0:0] bubbleSort_B4_merge_reg_data_reg_4_x_q;
    reg [0:0] bubbleSort_B4_merge_reg_data_reg_5_x_q;
    reg [0:0] bubbleSort_B4_merge_reg_data_reg_6_x_q;
    reg [0:0] bubbleSort_B4_merge_reg_data_reg_7_x_q;
    reg [0:0] bubbleSort_B4_merge_reg_data_reg_8_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // stall_in_not(LOGICAL,6)
    assign stall_in_not_q = ~ (in_stall_in);

    // bubbleSort_B4_merge_reg_valid_reg_not(LOGICAL,4)
    assign bubbleSort_B4_merge_reg_valid_reg_not_q = ~ (bubbleSort_B4_merge_reg_valid_reg_q);

    // stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg(LOGICAL,7)
    assign stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q = bubbleSort_B4_merge_reg_valid_reg_not_q | stall_in_not_q;

    // bubbleSort_B4_merge_reg_valid_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_valid_reg_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_valid_reg_q <= in_valid_in;
        end
    end

    // bubbleSort_B4_merge_reg_valid_reg_and_stall_in(LOGICAL,3)
    assign bubbleSort_B4_merge_reg_valid_reg_and_stall_in_q = bubbleSort_B4_merge_reg_valid_reg_q & in_stall_in;

    // sync_out(GPOUT,8)@20000000
    assign out_stall_out = bubbleSort_B4_merge_reg_valid_reg_and_stall_in_q;

    // bubbleSort_B4_merge_reg_data_reg_8_x(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_8_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_8_x_q <= in_data_in_8_tpl;
        end
    end

    // bubbleSort_B4_merge_reg_data_reg_7_x(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_7_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_7_x_q <= in_data_in_7_tpl;
        end
    end

    // bubbleSort_B4_merge_reg_data_reg_6_x(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_6_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_6_x_q <= in_data_in_6_tpl;
        end
    end

    // bubbleSort_B4_merge_reg_data_reg_5_x(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_5_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_5_x_q <= in_data_in_5_tpl;
        end
    end

    // bubbleSort_B4_merge_reg_data_reg_4_x(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_4_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_4_x_q <= in_data_in_4_tpl;
        end
    end

    // bubbleSort_B4_merge_reg_data_reg_3_x(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_3_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_3_x_q <= in_data_in_3_tpl;
        end
    end

    // bubbleSort_B4_merge_reg_data_reg_2_x(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_2_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_2_x_q <= in_data_in_2_tpl;
        end
    end

    // bubbleSort_B4_merge_reg_data_reg_1_x(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_1_x_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_1_x_q <= in_data_in_1_tpl;
        end
    end

    // bubbleSort_B4_merge_reg_data_reg_0_x(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubbleSort_B4_merge_reg_data_reg_0_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_bubbleSort_B4_merge_reg_valid_reg_q == 1'b1)
        begin
            bubbleSort_B4_merge_reg_data_reg_0_x_q <= in_data_in_0_tpl;
        end
    end

    // dupName_0_sync_out_aunroll_x(GPOUT,19)@1
    assign out_data_out_0_tpl = bubbleSort_B4_merge_reg_data_reg_0_x_q;
    assign out_data_out_1_tpl = bubbleSort_B4_merge_reg_data_reg_1_x_q;
    assign out_data_out_2_tpl = bubbleSort_B4_merge_reg_data_reg_2_x_q;
    assign out_data_out_3_tpl = bubbleSort_B4_merge_reg_data_reg_3_x_q;
    assign out_data_out_4_tpl = bubbleSort_B4_merge_reg_data_reg_4_x_q;
    assign out_data_out_5_tpl = bubbleSort_B4_merge_reg_data_reg_5_x_q;
    assign out_data_out_6_tpl = bubbleSort_B4_merge_reg_data_reg_6_x_q;
    assign out_data_out_7_tpl = bubbleSort_B4_merge_reg_data_reg_7_x_q;
    assign out_data_out_8_tpl = bubbleSort_B4_merge_reg_data_reg_8_x_q;
    assign out_valid_out = bubbleSort_B4_merge_reg_valid_reg_q;

endmodule
