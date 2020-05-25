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

// SystemVerilog created from ff_rgb24toyv12_c_B3_merge_reg
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_B3_merge_reg (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [63:0] in_data_in_1_tpl,
    input wire [63:0] in_data_in_2_tpl,
    input wire [63:0] in_data_in_3_tpl,
    input wire [63:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [0:0] in_data_in_6_tpl,
    input wire [0:0] in_data_in_7_tpl,
    input wire [63:0] in_data_in_8_tpl,
    input wire [63:0] in_data_in_9_tpl,
    input wire [0:0] in_data_in_10_tpl,
    input wire [0:0] in_data_in_11_tpl,
    input wire [0:0] in_data_in_12_tpl,
    input wire [0:0] in_data_in_13_tpl,
    input wire [0:0] in_data_in_14_tpl,
    input wire [0:0] in_data_in_15_tpl,
    input wire [0:0] in_data_in_16_tpl,
    input wire [0:0] in_data_in_17_tpl,
    input wire [0:0] in_data_in_18_tpl,
    input wire [0:0] in_data_in_19_tpl,
    input wire [0:0] in_data_in_20_tpl,
    input wire [0:0] in_data_in_21_tpl,
    input wire [0:0] in_data_in_22_tpl,
    input wire [0:0] in_data_in_23_tpl,
    input wire [0:0] in_data_in_24_tpl,
    input wire [0:0] in_data_in_25_tpl,
    input wire [0:0] in_data_in_26_tpl,
    input wire [0:0] in_data_in_27_tpl,
    input wire [0:0] in_data_in_28_tpl,
    input wire [0:0] in_data_in_29_tpl,
    input wire [0:0] in_data_in_30_tpl,
    input wire [0:0] in_data_in_31_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0_tpl,
    output wire [63:0] out_data_out_1_tpl,
    output wire [63:0] out_data_out_2_tpl,
    output wire [63:0] out_data_out_3_tpl,
    output wire [63:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [0:0] out_data_out_6_tpl,
    output wire [0:0] out_data_out_7_tpl,
    output wire [63:0] out_data_out_8_tpl,
    output wire [63:0] out_data_out_9_tpl,
    output wire [0:0] out_data_out_10_tpl,
    output wire [0:0] out_data_out_11_tpl,
    output wire [0:0] out_data_out_12_tpl,
    output wire [0:0] out_data_out_13_tpl,
    output wire [0:0] out_data_out_14_tpl,
    output wire [0:0] out_data_out_15_tpl,
    output wire [0:0] out_data_out_16_tpl,
    output wire [0:0] out_data_out_17_tpl,
    output wire [0:0] out_data_out_18_tpl,
    output wire [0:0] out_data_out_19_tpl,
    output wire [0:0] out_data_out_20_tpl,
    output wire [0:0] out_data_out_21_tpl,
    output wire [0:0] out_data_out_22_tpl,
    output wire [0:0] out_data_out_23_tpl,
    output wire [0:0] out_data_out_24_tpl,
    output wire [0:0] out_data_out_25_tpl,
    output wire [0:0] out_data_out_26_tpl,
    output wire [0:0] out_data_out_27_tpl,
    output wire [0:0] out_data_out_28_tpl,
    output wire [0:0] out_data_out_29_tpl,
    output wire [0:0] out_data_out_30_tpl,
    output wire [0:0] out_data_out_31_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_reg_valid_reg_and_stall_in_q;
    wire [0:0] ff_rgb24toyv12_c_B3_merge_reg_valid_reg_not_q;
    wire [0:0] stall_in_not_q;
    wire [0:0] stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_0_x_q;
    reg [63:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_1_x_q;
    reg [63:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_2_x_q;
    reg [63:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_3_x_q;
    reg [63:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_4_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_5_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_6_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_7_x_q;
    reg [63:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_8_x_q;
    reg [63:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_9_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_10_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_11_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_12_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_13_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_14_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_15_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_16_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_17_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_18_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_19_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_20_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_21_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_22_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_23_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_24_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_25_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_26_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_27_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_28_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_29_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_30_x_q;
    reg [0:0] ff_rgb24toyv12_c_B3_merge_reg_data_reg_31_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // stall_in_not(LOGICAL,6)
    assign stall_in_not_q = ~ (in_stall_in);

    // ff_rgb24toyv12_c_B3_merge_reg_valid_reg_not(LOGICAL,4)
    assign ff_rgb24toyv12_c_B3_merge_reg_valid_reg_not_q = ~ (ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q);

    // stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg(LOGICAL,7)
    assign stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q = ff_rgb24toyv12_c_B3_merge_reg_valid_reg_not_q | stall_in_not_q;

    // ff_rgb24toyv12_c_B3_merge_reg_valid_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q <= in_valid_in;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_valid_reg_and_stall_in(LOGICAL,3)
    assign ff_rgb24toyv12_c_B3_merge_reg_valid_reg_and_stall_in_q = ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q & in_stall_in;

    // sync_out(GPOUT,8)@20000000
    assign out_stall_out = ff_rgb24toyv12_c_B3_merge_reg_valid_reg_and_stall_in_q;

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_31_x(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_31_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_31_x_q <= in_data_in_31_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_30_x(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_30_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_30_x_q <= in_data_in_30_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_29_x(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_29_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_29_x_q <= in_data_in_29_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_28_x(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_28_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_28_x_q <= in_data_in_28_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_27_x(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_27_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_27_x_q <= in_data_in_27_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_26_x(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_26_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_26_x_q <= in_data_in_26_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_25_x(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_25_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_25_x_q <= in_data_in_25_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_24_x(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_24_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_24_x_q <= in_data_in_24_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_23_x(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_23_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_23_x_q <= in_data_in_23_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_22_x(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_22_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_22_x_q <= in_data_in_22_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_21_x(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_21_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_21_x_q <= in_data_in_21_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_20_x(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_20_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_20_x_q <= in_data_in_20_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_19_x(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_19_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_19_x_q <= in_data_in_19_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_18_x(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_18_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_18_x_q <= in_data_in_18_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_17_x(REG,26)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_17_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_17_x_q <= in_data_in_17_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_16_x(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_16_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_16_x_q <= in_data_in_16_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_15_x(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_15_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_15_x_q <= in_data_in_15_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_14_x(REG,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_14_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_14_x_q <= in_data_in_14_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_13_x(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_13_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_13_x_q <= in_data_in_13_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_12_x(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_12_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_12_x_q <= in_data_in_12_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_11_x(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_11_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_11_x_q <= in_data_in_11_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_10_x(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_10_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_10_x_q <= in_data_in_10_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_9_x(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_9_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_9_x_q <= in_data_in_9_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_8_x(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_8_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_8_x_q <= in_data_in_8_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_7_x(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_7_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_7_x_q <= in_data_in_7_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_6_x(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_6_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_6_x_q <= in_data_in_6_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_5_x(REG,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_5_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_5_x_q <= in_data_in_5_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_4_x(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_4_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_4_x_q <= in_data_in_4_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_3_x(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_3_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_3_x_q <= in_data_in_3_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_2_x(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_2_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_2_x_q <= in_data_in_2_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_1_x(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_1_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_1_x_q <= in_data_in_1_tpl;
        end
    end

    // ff_rgb24toyv12_c_B3_merge_reg_data_reg_0_x(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_0_x_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q == 1'b1)
        begin
            ff_rgb24toyv12_c_B3_merge_reg_data_reg_0_x_q <= in_data_in_0_tpl;
        end
    end

    // dupName_0_sync_out_aunroll_x(GPOUT,42)@1
    assign out_data_out_0_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_0_x_q;
    assign out_data_out_1_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_1_x_q;
    assign out_data_out_2_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_2_x_q;
    assign out_data_out_3_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_3_x_q;
    assign out_data_out_4_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_4_x_q;
    assign out_data_out_5_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_5_x_q;
    assign out_data_out_6_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_6_x_q;
    assign out_data_out_7_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_7_x_q;
    assign out_data_out_8_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_8_x_q;
    assign out_data_out_9_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_9_x_q;
    assign out_data_out_10_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_10_x_q;
    assign out_data_out_11_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_11_x_q;
    assign out_data_out_12_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_12_x_q;
    assign out_data_out_13_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_13_x_q;
    assign out_data_out_14_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_14_x_q;
    assign out_data_out_15_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_15_x_q;
    assign out_data_out_16_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_16_x_q;
    assign out_data_out_17_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_17_x_q;
    assign out_data_out_18_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_18_x_q;
    assign out_data_out_19_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_19_x_q;
    assign out_data_out_20_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_20_x_q;
    assign out_data_out_21_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_21_x_q;
    assign out_data_out_22_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_22_x_q;
    assign out_data_out_23_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_23_x_q;
    assign out_data_out_24_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_24_x_q;
    assign out_data_out_25_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_25_x_q;
    assign out_data_out_26_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_26_x_q;
    assign out_data_out_27_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_27_x_q;
    assign out_data_out_28_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_28_x_q;
    assign out_data_out_29_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_29_x_q;
    assign out_data_out_30_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_30_x_q;
    assign out_data_out_31_tpl = ff_rgb24toyv12_c_B3_merge_reg_data_reg_31_x_q;
    assign out_valid_out = ff_rgb24toyv12_c_B3_merge_reg_valid_reg_q;

endmodule
