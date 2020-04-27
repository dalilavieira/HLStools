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

// SystemVerilog created from sobel_filter_B16_merge
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B16_merge (
    input wire [0:0] in_exitcond45166_pop73252_0,
    input wire [0:0] in_exitcond45166_pop73252_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_notcmp131173_pop74255_0,
    input wire [0:0] in_notcmp131173_pop74255_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond45166_pop73252,
    output wire [0:0] out_forked,
    output wire [0:0] out_notcmp131173_pop74255,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond45166_pop73252_mux_s;
    reg [0:0] exitcond45166_pop73252_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] notcmp131173_pop74255_mux_s;
    reg [0:0] notcmp131173_pop74255_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond45166_pop73252_mux(MUX,2)
    assign exitcond45166_pop73252_mux_s = in_valid_in_0;
    always @(exitcond45166_pop73252_mux_s or in_exitcond45166_pop73252_1 or in_exitcond45166_pop73252_0)
    begin
        unique case (exitcond45166_pop73252_mux_s)
            1'b0 : exitcond45166_pop73252_mux_q = in_exitcond45166_pop73252_1;
            1'b1 : exitcond45166_pop73252_mux_q = in_exitcond45166_pop73252_0;
            default : exitcond45166_pop73252_mux_q = 1'b0;
        endcase
    end

    // out_exitcond45166_pop73252(GPOUT,14)
    assign out_exitcond45166_pop73252 = exitcond45166_pop73252_mux_q;

    // forked_mux(MUX,3)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,15)
    assign out_forked = forked_mux_q;

    // notcmp131173_pop74255_mux(MUX,13)
    assign notcmp131173_pop74255_mux_s = in_valid_in_0;
    always @(notcmp131173_pop74255_mux_s or in_notcmp131173_pop74255_1 or in_notcmp131173_pop74255_0)
    begin
        unique case (notcmp131173_pop74255_mux_s)
            1'b0 : notcmp131173_pop74255_mux_q = in_notcmp131173_pop74255_1;
            1'b1 : notcmp131173_pop74255_mux_q = in_notcmp131173_pop74255_0;
            default : notcmp131173_pop74255_mux_q = 1'b0;
        endcase
    end

    // out_notcmp131173_pop74255(GPOUT,16)
    assign out_notcmp131173_pop74255 = notcmp131173_pop74255_mux_q;

    // valid_or(LOGICAL,22)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,20)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,21)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,19)
    assign out_valid_out = valid_or_q;

endmodule
