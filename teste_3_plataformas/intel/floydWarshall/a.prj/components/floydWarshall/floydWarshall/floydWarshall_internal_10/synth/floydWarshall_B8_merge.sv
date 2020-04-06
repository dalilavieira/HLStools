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

// SystemVerilog created from floydWarshall_B8_merge
// SystemVerilog created on Mon Apr  6 12:54:49 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_B8_merge (
    input wire [31:0] in_A_sroa_0_4_replace_phi191_0,
    input wire [31:0] in_A_sroa_0_4_replace_phi191_1,
    input wire [31:0] in_A_sroa_12_4_replace_phi193_0,
    input wire [31:0] in_A_sroa_12_4_replace_phi193_1,
    input wire [31:0] in_A_sroa_17_4_replace_phi194_0,
    input wire [31:0] in_A_sroa_17_4_replace_phi194_1,
    input wire [31:0] in_A_sroa_22_4_replace_phi195_0,
    input wire [31:0] in_A_sroa_22_4_replace_phi195_1,
    input wire [31:0] in_A_sroa_27_4_replace_phi198_0,
    input wire [31:0] in_A_sroa_27_4_replace_phi198_1,
    input wire [31:0] in_A_sroa_32_4_replace_phi201_0,
    input wire [31:0] in_A_sroa_32_4_replace_phi201_1,
    input wire [31:0] in_A_sroa_37_4_replace_phi204_0,
    input wire [31:0] in_A_sroa_37_4_replace_phi204_1,
    input wire [31:0] in_A_sroa_42_4_replace_phi196_0,
    input wire [31:0] in_A_sroa_42_4_replace_phi196_1,
    input wire [31:0] in_A_sroa_47_4_replace_phi199_0,
    input wire [31:0] in_A_sroa_47_4_replace_phi199_1,
    input wire [31:0] in_A_sroa_52_4_replace_phi202_0,
    input wire [31:0] in_A_sroa_52_4_replace_phi202_1,
    input wire [31:0] in_A_sroa_57_4_replace_phi205_0,
    input wire [31:0] in_A_sroa_57_4_replace_phi205_1,
    input wire [31:0] in_A_sroa_62_4_replace_phi197_0,
    input wire [31:0] in_A_sroa_62_4_replace_phi197_1,
    input wire [31:0] in_A_sroa_67_4_replace_phi200_0,
    input wire [31:0] in_A_sroa_67_4_replace_phi200_1,
    input wire [31:0] in_A_sroa_72_4_replace_phi203_0,
    input wire [31:0] in_A_sroa_72_4_replace_phi203_1,
    input wire [31:0] in_A_sroa_77_4_replace_phi206_0,
    input wire [31:0] in_A_sroa_77_4_replace_phi206_1,
    input wire [31:0] in_A_sroa_7_4_replace_phi192_0,
    input wire [31:0] in_A_sroa_7_4_replace_phi192_1,
    input wire [0:0] in_exitcond9207_0,
    input wire [0:0] in_exitcond9207_1,
    input wire [0:0] in_forked81_0,
    input wire [0:0] in_forked81_1,
    input wire [31:0] in_i_127_pop54209_0,
    input wire [31:0] in_i_127_pop54209_1,
    input wire [31:0] in_inc55178_pop55210_0,
    input wire [31:0] in_inc55178_pop55210_1,
    input wire [31:0] in_inc55190_0,
    input wire [31:0] in_inc55190_1,
    input wire [0:0] in_notcmp97208_0,
    input wire [0:0] in_notcmp97208_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_A_sroa_0_4_replace_phi191,
    output wire [31:0] out_A_sroa_12_4_replace_phi193,
    output wire [31:0] out_A_sroa_17_4_replace_phi194,
    output wire [31:0] out_A_sroa_22_4_replace_phi195,
    output wire [31:0] out_A_sroa_27_4_replace_phi198,
    output wire [31:0] out_A_sroa_32_4_replace_phi201,
    output wire [31:0] out_A_sroa_37_4_replace_phi204,
    output wire [31:0] out_A_sroa_42_4_replace_phi196,
    output wire [31:0] out_A_sroa_47_4_replace_phi199,
    output wire [31:0] out_A_sroa_52_4_replace_phi202,
    output wire [31:0] out_A_sroa_57_4_replace_phi205,
    output wire [31:0] out_A_sroa_62_4_replace_phi197,
    output wire [31:0] out_A_sroa_67_4_replace_phi200,
    output wire [31:0] out_A_sroa_72_4_replace_phi203,
    output wire [31:0] out_A_sroa_77_4_replace_phi206,
    output wire [31:0] out_A_sroa_7_4_replace_phi192,
    output wire [0:0] out_exitcond9207,
    output wire [0:0] out_forked81,
    output wire [31:0] out_i_127_pop54209,
    output wire [31:0] out_inc55178_pop55210,
    output wire [31:0] out_inc55190,
    output wire [0:0] out_notcmp97208,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] A_sroa_0_4_replace_phi191_mux_s;
    reg [31:0] A_sroa_0_4_replace_phi191_mux_q;
    wire [0:0] A_sroa_12_4_replace_phi193_mux_s;
    reg [31:0] A_sroa_12_4_replace_phi193_mux_q;
    wire [0:0] A_sroa_17_4_replace_phi194_mux_s;
    reg [31:0] A_sroa_17_4_replace_phi194_mux_q;
    wire [0:0] A_sroa_22_4_replace_phi195_mux_s;
    reg [31:0] A_sroa_22_4_replace_phi195_mux_q;
    wire [0:0] A_sroa_27_4_replace_phi198_mux_s;
    reg [31:0] A_sroa_27_4_replace_phi198_mux_q;
    wire [0:0] A_sroa_32_4_replace_phi201_mux_s;
    reg [31:0] A_sroa_32_4_replace_phi201_mux_q;
    wire [0:0] A_sroa_37_4_replace_phi204_mux_s;
    reg [31:0] A_sroa_37_4_replace_phi204_mux_q;
    wire [0:0] A_sroa_42_4_replace_phi196_mux_s;
    reg [31:0] A_sroa_42_4_replace_phi196_mux_q;
    wire [0:0] A_sroa_47_4_replace_phi199_mux_s;
    reg [31:0] A_sroa_47_4_replace_phi199_mux_q;
    wire [0:0] A_sroa_52_4_replace_phi202_mux_s;
    reg [31:0] A_sroa_52_4_replace_phi202_mux_q;
    wire [0:0] A_sroa_57_4_replace_phi205_mux_s;
    reg [31:0] A_sroa_57_4_replace_phi205_mux_q;
    wire [0:0] A_sroa_62_4_replace_phi197_mux_s;
    reg [31:0] A_sroa_62_4_replace_phi197_mux_q;
    wire [0:0] A_sroa_67_4_replace_phi200_mux_s;
    reg [31:0] A_sroa_67_4_replace_phi200_mux_q;
    wire [0:0] A_sroa_72_4_replace_phi203_mux_s;
    reg [31:0] A_sroa_72_4_replace_phi203_mux_q;
    wire [0:0] A_sroa_77_4_replace_phi206_mux_s;
    reg [31:0] A_sroa_77_4_replace_phi206_mux_q;
    wire [0:0] A_sroa_7_4_replace_phi192_mux_s;
    reg [31:0] A_sroa_7_4_replace_phi192_mux_q;
    wire [0:0] exitcond9207_mux_s;
    reg [0:0] exitcond9207_mux_q;
    wire [0:0] forked81_mux_s;
    reg [0:0] forked81_mux_q;
    wire [0:0] i_127_pop54209_mux_s;
    reg [31:0] i_127_pop54209_mux_q;
    wire [0:0] inc55178_pop55210_mux_s;
    reg [31:0] inc55178_pop55210_mux_q;
    wire [0:0] inc55190_mux_s;
    reg [31:0] inc55190_mux_q;
    wire [0:0] notcmp97208_mux_s;
    reg [0:0] notcmp97208_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // A_sroa_0_4_replace_phi191_mux(MUX,2)
    assign A_sroa_0_4_replace_phi191_mux_s = in_valid_in_0;
    always @(A_sroa_0_4_replace_phi191_mux_s or in_A_sroa_0_4_replace_phi191_1 or in_A_sroa_0_4_replace_phi191_0)
    begin
        unique case (A_sroa_0_4_replace_phi191_mux_s)
            1'b0 : A_sroa_0_4_replace_phi191_mux_q = in_A_sroa_0_4_replace_phi191_1;
            1'b1 : A_sroa_0_4_replace_phi191_mux_q = in_A_sroa_0_4_replace_phi191_0;
            default : A_sroa_0_4_replace_phi191_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_0_4_replace_phi191(GPOUT,71)
    assign out_A_sroa_0_4_replace_phi191 = A_sroa_0_4_replace_phi191_mux_q;

    // A_sroa_12_4_replace_phi193_mux(MUX,3)
    assign A_sroa_12_4_replace_phi193_mux_s = in_valid_in_0;
    always @(A_sroa_12_4_replace_phi193_mux_s or in_A_sroa_12_4_replace_phi193_1 or in_A_sroa_12_4_replace_phi193_0)
    begin
        unique case (A_sroa_12_4_replace_phi193_mux_s)
            1'b0 : A_sroa_12_4_replace_phi193_mux_q = in_A_sroa_12_4_replace_phi193_1;
            1'b1 : A_sroa_12_4_replace_phi193_mux_q = in_A_sroa_12_4_replace_phi193_0;
            default : A_sroa_12_4_replace_phi193_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_12_4_replace_phi193(GPOUT,72)
    assign out_A_sroa_12_4_replace_phi193 = A_sroa_12_4_replace_phi193_mux_q;

    // A_sroa_17_4_replace_phi194_mux(MUX,4)
    assign A_sroa_17_4_replace_phi194_mux_s = in_valid_in_0;
    always @(A_sroa_17_4_replace_phi194_mux_s or in_A_sroa_17_4_replace_phi194_1 or in_A_sroa_17_4_replace_phi194_0)
    begin
        unique case (A_sroa_17_4_replace_phi194_mux_s)
            1'b0 : A_sroa_17_4_replace_phi194_mux_q = in_A_sroa_17_4_replace_phi194_1;
            1'b1 : A_sroa_17_4_replace_phi194_mux_q = in_A_sroa_17_4_replace_phi194_0;
            default : A_sroa_17_4_replace_phi194_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_17_4_replace_phi194(GPOUT,73)
    assign out_A_sroa_17_4_replace_phi194 = A_sroa_17_4_replace_phi194_mux_q;

    // A_sroa_22_4_replace_phi195_mux(MUX,5)
    assign A_sroa_22_4_replace_phi195_mux_s = in_valid_in_0;
    always @(A_sroa_22_4_replace_phi195_mux_s or in_A_sroa_22_4_replace_phi195_1 or in_A_sroa_22_4_replace_phi195_0)
    begin
        unique case (A_sroa_22_4_replace_phi195_mux_s)
            1'b0 : A_sroa_22_4_replace_phi195_mux_q = in_A_sroa_22_4_replace_phi195_1;
            1'b1 : A_sroa_22_4_replace_phi195_mux_q = in_A_sroa_22_4_replace_phi195_0;
            default : A_sroa_22_4_replace_phi195_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_22_4_replace_phi195(GPOUT,74)
    assign out_A_sroa_22_4_replace_phi195 = A_sroa_22_4_replace_phi195_mux_q;

    // A_sroa_27_4_replace_phi198_mux(MUX,6)
    assign A_sroa_27_4_replace_phi198_mux_s = in_valid_in_0;
    always @(A_sroa_27_4_replace_phi198_mux_s or in_A_sroa_27_4_replace_phi198_1 or in_A_sroa_27_4_replace_phi198_0)
    begin
        unique case (A_sroa_27_4_replace_phi198_mux_s)
            1'b0 : A_sroa_27_4_replace_phi198_mux_q = in_A_sroa_27_4_replace_phi198_1;
            1'b1 : A_sroa_27_4_replace_phi198_mux_q = in_A_sroa_27_4_replace_phi198_0;
            default : A_sroa_27_4_replace_phi198_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_27_4_replace_phi198(GPOUT,75)
    assign out_A_sroa_27_4_replace_phi198 = A_sroa_27_4_replace_phi198_mux_q;

    // A_sroa_32_4_replace_phi201_mux(MUX,7)
    assign A_sroa_32_4_replace_phi201_mux_s = in_valid_in_0;
    always @(A_sroa_32_4_replace_phi201_mux_s or in_A_sroa_32_4_replace_phi201_1 or in_A_sroa_32_4_replace_phi201_0)
    begin
        unique case (A_sroa_32_4_replace_phi201_mux_s)
            1'b0 : A_sroa_32_4_replace_phi201_mux_q = in_A_sroa_32_4_replace_phi201_1;
            1'b1 : A_sroa_32_4_replace_phi201_mux_q = in_A_sroa_32_4_replace_phi201_0;
            default : A_sroa_32_4_replace_phi201_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_32_4_replace_phi201(GPOUT,76)
    assign out_A_sroa_32_4_replace_phi201 = A_sroa_32_4_replace_phi201_mux_q;

    // A_sroa_37_4_replace_phi204_mux(MUX,8)
    assign A_sroa_37_4_replace_phi204_mux_s = in_valid_in_0;
    always @(A_sroa_37_4_replace_phi204_mux_s or in_A_sroa_37_4_replace_phi204_1 or in_A_sroa_37_4_replace_phi204_0)
    begin
        unique case (A_sroa_37_4_replace_phi204_mux_s)
            1'b0 : A_sroa_37_4_replace_phi204_mux_q = in_A_sroa_37_4_replace_phi204_1;
            1'b1 : A_sroa_37_4_replace_phi204_mux_q = in_A_sroa_37_4_replace_phi204_0;
            default : A_sroa_37_4_replace_phi204_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_37_4_replace_phi204(GPOUT,77)
    assign out_A_sroa_37_4_replace_phi204 = A_sroa_37_4_replace_phi204_mux_q;

    // A_sroa_42_4_replace_phi196_mux(MUX,9)
    assign A_sroa_42_4_replace_phi196_mux_s = in_valid_in_0;
    always @(A_sroa_42_4_replace_phi196_mux_s or in_A_sroa_42_4_replace_phi196_1 or in_A_sroa_42_4_replace_phi196_0)
    begin
        unique case (A_sroa_42_4_replace_phi196_mux_s)
            1'b0 : A_sroa_42_4_replace_phi196_mux_q = in_A_sroa_42_4_replace_phi196_1;
            1'b1 : A_sroa_42_4_replace_phi196_mux_q = in_A_sroa_42_4_replace_phi196_0;
            default : A_sroa_42_4_replace_phi196_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_42_4_replace_phi196(GPOUT,78)
    assign out_A_sroa_42_4_replace_phi196 = A_sroa_42_4_replace_phi196_mux_q;

    // A_sroa_47_4_replace_phi199_mux(MUX,10)
    assign A_sroa_47_4_replace_phi199_mux_s = in_valid_in_0;
    always @(A_sroa_47_4_replace_phi199_mux_s or in_A_sroa_47_4_replace_phi199_1 or in_A_sroa_47_4_replace_phi199_0)
    begin
        unique case (A_sroa_47_4_replace_phi199_mux_s)
            1'b0 : A_sroa_47_4_replace_phi199_mux_q = in_A_sroa_47_4_replace_phi199_1;
            1'b1 : A_sroa_47_4_replace_phi199_mux_q = in_A_sroa_47_4_replace_phi199_0;
            default : A_sroa_47_4_replace_phi199_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_47_4_replace_phi199(GPOUT,79)
    assign out_A_sroa_47_4_replace_phi199 = A_sroa_47_4_replace_phi199_mux_q;

    // A_sroa_52_4_replace_phi202_mux(MUX,11)
    assign A_sroa_52_4_replace_phi202_mux_s = in_valid_in_0;
    always @(A_sroa_52_4_replace_phi202_mux_s or in_A_sroa_52_4_replace_phi202_1 or in_A_sroa_52_4_replace_phi202_0)
    begin
        unique case (A_sroa_52_4_replace_phi202_mux_s)
            1'b0 : A_sroa_52_4_replace_phi202_mux_q = in_A_sroa_52_4_replace_phi202_1;
            1'b1 : A_sroa_52_4_replace_phi202_mux_q = in_A_sroa_52_4_replace_phi202_0;
            default : A_sroa_52_4_replace_phi202_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_52_4_replace_phi202(GPOUT,80)
    assign out_A_sroa_52_4_replace_phi202 = A_sroa_52_4_replace_phi202_mux_q;

    // A_sroa_57_4_replace_phi205_mux(MUX,12)
    assign A_sroa_57_4_replace_phi205_mux_s = in_valid_in_0;
    always @(A_sroa_57_4_replace_phi205_mux_s or in_A_sroa_57_4_replace_phi205_1 or in_A_sroa_57_4_replace_phi205_0)
    begin
        unique case (A_sroa_57_4_replace_phi205_mux_s)
            1'b0 : A_sroa_57_4_replace_phi205_mux_q = in_A_sroa_57_4_replace_phi205_1;
            1'b1 : A_sroa_57_4_replace_phi205_mux_q = in_A_sroa_57_4_replace_phi205_0;
            default : A_sroa_57_4_replace_phi205_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_57_4_replace_phi205(GPOUT,81)
    assign out_A_sroa_57_4_replace_phi205 = A_sroa_57_4_replace_phi205_mux_q;

    // A_sroa_62_4_replace_phi197_mux(MUX,13)
    assign A_sroa_62_4_replace_phi197_mux_s = in_valid_in_0;
    always @(A_sroa_62_4_replace_phi197_mux_s or in_A_sroa_62_4_replace_phi197_1 or in_A_sroa_62_4_replace_phi197_0)
    begin
        unique case (A_sroa_62_4_replace_phi197_mux_s)
            1'b0 : A_sroa_62_4_replace_phi197_mux_q = in_A_sroa_62_4_replace_phi197_1;
            1'b1 : A_sroa_62_4_replace_phi197_mux_q = in_A_sroa_62_4_replace_phi197_0;
            default : A_sroa_62_4_replace_phi197_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_62_4_replace_phi197(GPOUT,82)
    assign out_A_sroa_62_4_replace_phi197 = A_sroa_62_4_replace_phi197_mux_q;

    // A_sroa_67_4_replace_phi200_mux(MUX,14)
    assign A_sroa_67_4_replace_phi200_mux_s = in_valid_in_0;
    always @(A_sroa_67_4_replace_phi200_mux_s or in_A_sroa_67_4_replace_phi200_1 or in_A_sroa_67_4_replace_phi200_0)
    begin
        unique case (A_sroa_67_4_replace_phi200_mux_s)
            1'b0 : A_sroa_67_4_replace_phi200_mux_q = in_A_sroa_67_4_replace_phi200_1;
            1'b1 : A_sroa_67_4_replace_phi200_mux_q = in_A_sroa_67_4_replace_phi200_0;
            default : A_sroa_67_4_replace_phi200_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_67_4_replace_phi200(GPOUT,83)
    assign out_A_sroa_67_4_replace_phi200 = A_sroa_67_4_replace_phi200_mux_q;

    // A_sroa_72_4_replace_phi203_mux(MUX,15)
    assign A_sroa_72_4_replace_phi203_mux_s = in_valid_in_0;
    always @(A_sroa_72_4_replace_phi203_mux_s or in_A_sroa_72_4_replace_phi203_1 or in_A_sroa_72_4_replace_phi203_0)
    begin
        unique case (A_sroa_72_4_replace_phi203_mux_s)
            1'b0 : A_sroa_72_4_replace_phi203_mux_q = in_A_sroa_72_4_replace_phi203_1;
            1'b1 : A_sroa_72_4_replace_phi203_mux_q = in_A_sroa_72_4_replace_phi203_0;
            default : A_sroa_72_4_replace_phi203_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_72_4_replace_phi203(GPOUT,84)
    assign out_A_sroa_72_4_replace_phi203 = A_sroa_72_4_replace_phi203_mux_q;

    // A_sroa_77_4_replace_phi206_mux(MUX,16)
    assign A_sroa_77_4_replace_phi206_mux_s = in_valid_in_0;
    always @(A_sroa_77_4_replace_phi206_mux_s or in_A_sroa_77_4_replace_phi206_1 or in_A_sroa_77_4_replace_phi206_0)
    begin
        unique case (A_sroa_77_4_replace_phi206_mux_s)
            1'b0 : A_sroa_77_4_replace_phi206_mux_q = in_A_sroa_77_4_replace_phi206_1;
            1'b1 : A_sroa_77_4_replace_phi206_mux_q = in_A_sroa_77_4_replace_phi206_0;
            default : A_sroa_77_4_replace_phi206_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_77_4_replace_phi206(GPOUT,85)
    assign out_A_sroa_77_4_replace_phi206 = A_sroa_77_4_replace_phi206_mux_q;

    // A_sroa_7_4_replace_phi192_mux(MUX,17)
    assign A_sroa_7_4_replace_phi192_mux_s = in_valid_in_0;
    always @(A_sroa_7_4_replace_phi192_mux_s or in_A_sroa_7_4_replace_phi192_1 or in_A_sroa_7_4_replace_phi192_0)
    begin
        unique case (A_sroa_7_4_replace_phi192_mux_s)
            1'b0 : A_sroa_7_4_replace_phi192_mux_q = in_A_sroa_7_4_replace_phi192_1;
            1'b1 : A_sroa_7_4_replace_phi192_mux_q = in_A_sroa_7_4_replace_phi192_0;
            default : A_sroa_7_4_replace_phi192_mux_q = 32'b0;
        endcase
    end

    // out_A_sroa_7_4_replace_phi192(GPOUT,86)
    assign out_A_sroa_7_4_replace_phi192 = A_sroa_7_4_replace_phi192_mux_q;

    // exitcond9207_mux(MUX,18)
    assign exitcond9207_mux_s = in_valid_in_0;
    always @(exitcond9207_mux_s or in_exitcond9207_1 or in_exitcond9207_0)
    begin
        unique case (exitcond9207_mux_s)
            1'b0 : exitcond9207_mux_q = in_exitcond9207_1;
            1'b1 : exitcond9207_mux_q = in_exitcond9207_0;
            default : exitcond9207_mux_q = 1'b0;
        endcase
    end

    // out_exitcond9207(GPOUT,87)
    assign out_exitcond9207 = exitcond9207_mux_q;

    // forked81_mux(MUX,19)
    assign forked81_mux_s = in_valid_in_0;
    always @(forked81_mux_s or in_forked81_1 or in_forked81_0)
    begin
        unique case (forked81_mux_s)
            1'b0 : forked81_mux_q = in_forked81_1;
            1'b1 : forked81_mux_q = in_forked81_0;
            default : forked81_mux_q = 1'b0;
        endcase
    end

    // out_forked81(GPOUT,88)
    assign out_forked81 = forked81_mux_q;

    // i_127_pop54209_mux(MUX,20)
    assign i_127_pop54209_mux_s = in_valid_in_0;
    always @(i_127_pop54209_mux_s or in_i_127_pop54209_1 or in_i_127_pop54209_0)
    begin
        unique case (i_127_pop54209_mux_s)
            1'b0 : i_127_pop54209_mux_q = in_i_127_pop54209_1;
            1'b1 : i_127_pop54209_mux_q = in_i_127_pop54209_0;
            default : i_127_pop54209_mux_q = 32'b0;
        endcase
    end

    // out_i_127_pop54209(GPOUT,89)
    assign out_i_127_pop54209 = i_127_pop54209_mux_q;

    // inc55178_pop55210_mux(MUX,21)
    assign inc55178_pop55210_mux_s = in_valid_in_0;
    always @(inc55178_pop55210_mux_s or in_inc55178_pop55210_1 or in_inc55178_pop55210_0)
    begin
        unique case (inc55178_pop55210_mux_s)
            1'b0 : inc55178_pop55210_mux_q = in_inc55178_pop55210_1;
            1'b1 : inc55178_pop55210_mux_q = in_inc55178_pop55210_0;
            default : inc55178_pop55210_mux_q = 32'b0;
        endcase
    end

    // out_inc55178_pop55210(GPOUT,90)
    assign out_inc55178_pop55210 = inc55178_pop55210_mux_q;

    // inc55190_mux(MUX,22)
    assign inc55190_mux_s = in_valid_in_0;
    always @(inc55190_mux_s or in_inc55190_1 or in_inc55190_0)
    begin
        unique case (inc55190_mux_s)
            1'b0 : inc55190_mux_q = in_inc55190_1;
            1'b1 : inc55190_mux_q = in_inc55190_0;
            default : inc55190_mux_q = 32'b0;
        endcase
    end

    // out_inc55190(GPOUT,91)
    assign out_inc55190 = inc55190_mux_q;

    // notcmp97208_mux(MUX,70)
    assign notcmp97208_mux_s = in_valid_in_0;
    always @(notcmp97208_mux_s or in_notcmp97208_1 or in_notcmp97208_0)
    begin
        unique case (notcmp97208_mux_s)
            1'b0 : notcmp97208_mux_q = in_notcmp97208_1;
            1'b1 : notcmp97208_mux_q = in_notcmp97208_0;
            default : notcmp97208_mux_q = 1'b0;
        endcase
    end

    // out_notcmp97208(GPOUT,92)
    assign out_notcmp97208 = notcmp97208_mux_q;

    // valid_or(LOGICAL,98)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,96)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,93)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,97)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,94)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,95)
    assign out_valid_out = valid_or_q;

endmodule
