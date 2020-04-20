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

// SystemVerilog created from kmeans_B12_merge
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_B12_merge (
    input wire [0:0] in_forked111_0,
    input wire [0:0] in_forked111_1,
    input wire [31:0] in_i27_047_pop32130_0,
    input wire [31:0] in_i27_047_pop32130_1,
    input wire [0:0] in_notcmp46127_0,
    input wire [0:0] in_notcmp46127_1,
    input wire [0:0] in_notcmp51108_pop33133_0,
    input wire [0:0] in_notcmp51108_pop33133_1,
    input wire [0:0] in_notcmp51126_0,
    input wire [0:0] in_notcmp51126_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked111,
    output wire [31:0] out_i27_047_pop32130,
    output wire [0:0] out_notcmp46127,
    output wire [0:0] out_notcmp51108_pop33133,
    output wire [0:0] out_notcmp51126,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked111_mux_s;
    reg [0:0] forked111_mux_q;
    wire [0:0] i27_047_pop32130_mux_s;
    reg [31:0] i27_047_pop32130_mux_q;
    wire [0:0] notcmp46127_mux_s;
    reg [0:0] notcmp46127_mux_q;
    wire [0:0] notcmp51108_pop33133_mux_s;
    reg [0:0] notcmp51108_pop33133_mux_q;
    wire [0:0] notcmp51126_mux_s;
    reg [0:0] notcmp51126_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked111_mux(MUX,2)
    assign forked111_mux_s = in_valid_in_0;
    always @(forked111_mux_s or in_forked111_1 or in_forked111_0)
    begin
        unique case (forked111_mux_s)
            1'b0 : forked111_mux_q = in_forked111_1;
            1'b1 : forked111_mux_q = in_forked111_0;
            default : forked111_mux_q = 1'b0;
        endcase
    end

    // out_forked111(GPOUT,20)
    assign out_forked111 = forked111_mux_q;

    // i27_047_pop32130_mux(MUX,3)
    assign i27_047_pop32130_mux_s = in_valid_in_0;
    always @(i27_047_pop32130_mux_s or in_i27_047_pop32130_1 or in_i27_047_pop32130_0)
    begin
        unique case (i27_047_pop32130_mux_s)
            1'b0 : i27_047_pop32130_mux_q = in_i27_047_pop32130_1;
            1'b1 : i27_047_pop32130_mux_q = in_i27_047_pop32130_0;
            default : i27_047_pop32130_mux_q = 32'b0;
        endcase
    end

    // out_i27_047_pop32130(GPOUT,21)
    assign out_i27_047_pop32130 = i27_047_pop32130_mux_q;

    // notcmp46127_mux(MUX,17)
    assign notcmp46127_mux_s = in_valid_in_0;
    always @(notcmp46127_mux_s or in_notcmp46127_1 or in_notcmp46127_0)
    begin
        unique case (notcmp46127_mux_s)
            1'b0 : notcmp46127_mux_q = in_notcmp46127_1;
            1'b1 : notcmp46127_mux_q = in_notcmp46127_0;
            default : notcmp46127_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46127(GPOUT,22)
    assign out_notcmp46127 = notcmp46127_mux_q;

    // notcmp51108_pop33133_mux(MUX,18)
    assign notcmp51108_pop33133_mux_s = in_valid_in_0;
    always @(notcmp51108_pop33133_mux_s or in_notcmp51108_pop33133_1 or in_notcmp51108_pop33133_0)
    begin
        unique case (notcmp51108_pop33133_mux_s)
            1'b0 : notcmp51108_pop33133_mux_q = in_notcmp51108_pop33133_1;
            1'b1 : notcmp51108_pop33133_mux_q = in_notcmp51108_pop33133_0;
            default : notcmp51108_pop33133_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51108_pop33133(GPOUT,23)
    assign out_notcmp51108_pop33133 = notcmp51108_pop33133_mux_q;

    // notcmp51126_mux(MUX,19)
    assign notcmp51126_mux_s = in_valid_in_0;
    always @(notcmp51126_mux_s or in_notcmp51126_1 or in_notcmp51126_0)
    begin
        unique case (notcmp51126_mux_s)
            1'b0 : notcmp51126_mux_q = in_notcmp51126_1;
            1'b1 : notcmp51126_mux_q = in_notcmp51126_0;
            default : notcmp51126_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51126(GPOUT,24)
    assign out_notcmp51126 = notcmp51126_mux_q;

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
