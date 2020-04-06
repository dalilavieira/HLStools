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

// SystemVerilog created from euler_B4_merge
// SystemVerilog created on Mon Apr  6 11:17:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_B4_merge (
    input wire [0:0] in_forked24_0,
    input wire [0:0] in_forked24_1,
    input wire [0:0] in_forked35_0,
    input wire [0:0] in_forked35_1,
    input wire [0:0] in_notcmp2536_0,
    input wire [0:0] in_notcmp2536_1,
    input wire [0:0] in_stall_in,
    input wire [32:0] in_unnamed_euler7_0,
    input wire [32:0] in_unnamed_euler7_1,
    input wire [0:0] in_unnamed_euler8_0,
    input wire [0:0] in_unnamed_euler8_1,
    input wire [0:0] in_unnamed_euler9_0,
    input wire [0:0] in_unnamed_euler9_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked24,
    output wire [0:0] out_forked35,
    output wire [0:0] out_notcmp2536,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [32:0] out_unnamed_euler7,
    output wire [0:0] out_unnamed_euler8,
    output wire [0:0] out_unnamed_euler9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked24_mux_s;
    reg [0:0] forked24_mux_q;
    wire [0:0] forked35_mux_s;
    reg [0:0] forked35_mux_q;
    wire [0:0] notcmp2536_mux_s;
    reg [0:0] notcmp2536_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_euler7_mux_s;
    reg [32:0] unnamed_euler7_mux_q;
    wire [0:0] unnamed_euler8_mux_s;
    reg [0:0] unnamed_euler8_mux_q;
    wire [0:0] unnamed_euler9_mux_s;
    reg [0:0] unnamed_euler9_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked24_mux(MUX,2)
    assign forked24_mux_s = in_valid_in_0;
    always @(forked24_mux_s or in_forked24_1 or in_forked24_0)
    begin
        unique case (forked24_mux_s)
            1'b0 : forked24_mux_q = in_forked24_1;
            1'b1 : forked24_mux_q = in_forked24_0;
            default : forked24_mux_q = 1'b0;
        endcase
    end

    // out_forked24(GPOUT,20)
    assign out_forked24 = forked24_mux_q;

    // forked35_mux(MUX,3)
    assign forked35_mux_s = in_valid_in_0;
    always @(forked35_mux_s or in_forked35_1 or in_forked35_0)
    begin
        unique case (forked35_mux_s)
            1'b0 : forked35_mux_q = in_forked35_1;
            1'b1 : forked35_mux_q = in_forked35_0;
            default : forked35_mux_q = 1'b0;
        endcase
    end

    // out_forked35(GPOUT,21)
    assign out_forked35 = forked35_mux_q;

    // notcmp2536_mux(MUX,19)
    assign notcmp2536_mux_s = in_valid_in_0;
    always @(notcmp2536_mux_s or in_notcmp2536_1 or in_notcmp2536_0)
    begin
        unique case (notcmp2536_mux_s)
            1'b0 : notcmp2536_mux_q = in_notcmp2536_1;
            1'b1 : notcmp2536_mux_q = in_notcmp2536_0;
            default : notcmp2536_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2536(GPOUT,22)
    assign out_notcmp2536 = notcmp2536_mux_q;

    // valid_or(LOGICAL,34)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,29)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,30)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_euler7_mux(MUX,31)
    assign unnamed_euler7_mux_s = in_valid_in_0;
    always @(unnamed_euler7_mux_s or in_unnamed_euler7_1 or in_unnamed_euler7_0)
    begin
        unique case (unnamed_euler7_mux_s)
            1'b0 : unnamed_euler7_mux_q = in_unnamed_euler7_1;
            1'b1 : unnamed_euler7_mux_q = in_unnamed_euler7_0;
            default : unnamed_euler7_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_euler7(GPOUT,25)
    assign out_unnamed_euler7 = unnamed_euler7_mux_q;

    // unnamed_euler8_mux(MUX,32)
    assign unnamed_euler8_mux_s = in_valid_in_0;
    always @(unnamed_euler8_mux_s or in_unnamed_euler8_1 or in_unnamed_euler8_0)
    begin
        unique case (unnamed_euler8_mux_s)
            1'b0 : unnamed_euler8_mux_q = in_unnamed_euler8_1;
            1'b1 : unnamed_euler8_mux_q = in_unnamed_euler8_0;
            default : unnamed_euler8_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_euler8(GPOUT,26)
    assign out_unnamed_euler8 = unnamed_euler8_mux_q;

    // unnamed_euler9_mux(MUX,33)
    assign unnamed_euler9_mux_s = in_valid_in_0;
    always @(unnamed_euler9_mux_s or in_unnamed_euler9_1 or in_unnamed_euler9_0)
    begin
        unique case (unnamed_euler9_mux_s)
            1'b0 : unnamed_euler9_mux_q = in_unnamed_euler9_1;
            1'b1 : unnamed_euler9_mux_q = in_unnamed_euler9_0;
            default : unnamed_euler9_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_euler9(GPOUT,27)
    assign out_unnamed_euler9 = unnamed_euler9_mux_q;

    // out_valid_out(GPOUT,28)
    assign out_valid_out = valid_or_q;

endmodule
