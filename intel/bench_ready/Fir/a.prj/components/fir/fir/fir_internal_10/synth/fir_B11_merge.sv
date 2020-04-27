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

// SystemVerilog created from fir_B11_merge
// SystemVerilog created on Mon Apr 27 09:47:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_B11_merge (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_j_027_pop2482_0,
    input wire [31:0] in_j_027_pop2482_1,
    input wire [0:0] in_notcmp2481_0,
    input wire [0:0] in_notcmp2481_1,
    input wire [0:0] in_notcmp2973_pop2583_0,
    input wire [0:0] in_notcmp2973_pop2583_1,
    input wire [0:0] in_notcmp2980_0,
    input wire [0:0] in_notcmp2980_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked,
    output wire [31:0] out_j_027_pop2482,
    output wire [0:0] out_notcmp2481,
    output wire [0:0] out_notcmp2973_pop2583,
    output wire [0:0] out_notcmp2980,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] j_027_pop2482_mux_s;
    reg [31:0] j_027_pop2482_mux_q;
    wire [0:0] notcmp2481_mux_s;
    reg [0:0] notcmp2481_mux_q;
    wire [0:0] notcmp2973_pop2583_mux_s;
    reg [0:0] notcmp2973_pop2583_mux_q;
    wire [0:0] notcmp2980_mux_s;
    reg [0:0] notcmp2980_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked_mux(MUX,2)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,20)
    assign out_forked = forked_mux_q;

    // j_027_pop2482_mux(MUX,16)
    assign j_027_pop2482_mux_s = in_valid_in_0;
    always @(j_027_pop2482_mux_s or in_j_027_pop2482_1 or in_j_027_pop2482_0)
    begin
        unique case (j_027_pop2482_mux_s)
            1'b0 : j_027_pop2482_mux_q = in_j_027_pop2482_1;
            1'b1 : j_027_pop2482_mux_q = in_j_027_pop2482_0;
            default : j_027_pop2482_mux_q = 32'b0;
        endcase
    end

    // out_j_027_pop2482(GPOUT,21)
    assign out_j_027_pop2482 = j_027_pop2482_mux_q;

    // notcmp2481_mux(MUX,17)
    assign notcmp2481_mux_s = in_valid_in_0;
    always @(notcmp2481_mux_s or in_notcmp2481_1 or in_notcmp2481_0)
    begin
        unique case (notcmp2481_mux_s)
            1'b0 : notcmp2481_mux_q = in_notcmp2481_1;
            1'b1 : notcmp2481_mux_q = in_notcmp2481_0;
            default : notcmp2481_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2481(GPOUT,22)
    assign out_notcmp2481 = notcmp2481_mux_q;

    // notcmp2973_pop2583_mux(MUX,18)
    assign notcmp2973_pop2583_mux_s = in_valid_in_0;
    always @(notcmp2973_pop2583_mux_s or in_notcmp2973_pop2583_1 or in_notcmp2973_pop2583_0)
    begin
        unique case (notcmp2973_pop2583_mux_s)
            1'b0 : notcmp2973_pop2583_mux_q = in_notcmp2973_pop2583_1;
            1'b1 : notcmp2973_pop2583_mux_q = in_notcmp2973_pop2583_0;
            default : notcmp2973_pop2583_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2973_pop2583(GPOUT,23)
    assign out_notcmp2973_pop2583 = notcmp2973_pop2583_mux_q;

    // notcmp2980_mux(MUX,19)
    assign notcmp2980_mux_s = in_valid_in_0;
    always @(notcmp2980_mux_s or in_notcmp2980_1 or in_notcmp2980_0)
    begin
        unique case (notcmp2980_mux_s)
            1'b0 : notcmp2980_mux_q = in_notcmp2980_1;
            1'b1 : notcmp2980_mux_q = in_notcmp2980_0;
            default : notcmp2980_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2980(GPOUT,24)
    assign out_notcmp2980 = notcmp2980_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = valid_or_q;

endmodule
