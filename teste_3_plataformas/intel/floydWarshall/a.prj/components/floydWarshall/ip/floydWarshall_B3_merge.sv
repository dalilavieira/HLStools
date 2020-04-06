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

// SystemVerilog created from floydWarshall_B3_merge
// SystemVerilog created on Mon Apr  6 12:54:49 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_B3_merge (
    input wire [0:0] in_exitcond3184_0,
    input wire [0:0] in_exitcond3184_1,
    input wire [0:0] in_forked102_0,
    input wire [0:0] in_forked102_1,
    input wire [0:0] in_forked141183_0,
    input wire [0:0] in_forked141183_1,
    input wire [31:0] in_i_030_pop13186_0,
    input wire [31:0] in_i_030_pop13186_1,
    input wire [0:0] in_notcmp133185_0,
    input wire [0:0] in_notcmp133185_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond3184,
    output wire [0:0] out_forked102,
    output wire [0:0] out_forked141183,
    output wire [31:0] out_i_030_pop13186,
    output wire [0:0] out_notcmp133185,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond3184_mux_s;
    reg [0:0] exitcond3184_mux_q;
    wire [0:0] forked102_mux_s;
    reg [0:0] forked102_mux_q;
    wire [0:0] forked141183_mux_s;
    reg [0:0] forked141183_mux_q;
    wire [0:0] i_030_pop13186_mux_s;
    reg [31:0] i_030_pop13186_mux_q;
    wire [0:0] notcmp133185_mux_s;
    reg [0:0] notcmp133185_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond3184_mux(MUX,2)
    assign exitcond3184_mux_s = in_valid_in_0;
    always @(exitcond3184_mux_s or in_exitcond3184_1 or in_exitcond3184_0)
    begin
        unique case (exitcond3184_mux_s)
            1'b0 : exitcond3184_mux_q = in_exitcond3184_1;
            1'b1 : exitcond3184_mux_q = in_exitcond3184_0;
            default : exitcond3184_mux_q = 1'b0;
        endcase
    end

    // out_exitcond3184(GPOUT,20)
    assign out_exitcond3184 = exitcond3184_mux_q;

    // forked102_mux(MUX,3)
    assign forked102_mux_s = in_valid_in_0;
    always @(forked102_mux_s or in_forked102_1 or in_forked102_0)
    begin
        unique case (forked102_mux_s)
            1'b0 : forked102_mux_q = in_forked102_1;
            1'b1 : forked102_mux_q = in_forked102_0;
            default : forked102_mux_q = 1'b0;
        endcase
    end

    // out_forked102(GPOUT,21)
    assign out_forked102 = forked102_mux_q;

    // forked141183_mux(MUX,4)
    assign forked141183_mux_s = in_valid_in_0;
    always @(forked141183_mux_s or in_forked141183_1 or in_forked141183_0)
    begin
        unique case (forked141183_mux_s)
            1'b0 : forked141183_mux_q = in_forked141183_1;
            1'b1 : forked141183_mux_q = in_forked141183_0;
            default : forked141183_mux_q = 1'b0;
        endcase
    end

    // out_forked141183(GPOUT,22)
    assign out_forked141183 = forked141183_mux_q;

    // i_030_pop13186_mux(MUX,5)
    assign i_030_pop13186_mux_s = in_valid_in_0;
    always @(i_030_pop13186_mux_s or in_i_030_pop13186_1 or in_i_030_pop13186_0)
    begin
        unique case (i_030_pop13186_mux_s)
            1'b0 : i_030_pop13186_mux_q = in_i_030_pop13186_1;
            1'b1 : i_030_pop13186_mux_q = in_i_030_pop13186_0;
            default : i_030_pop13186_mux_q = 32'b0;
        endcase
    end

    // out_i_030_pop13186(GPOUT,23)
    assign out_i_030_pop13186 = i_030_pop13186_mux_q;

    // notcmp133185_mux(MUX,19)
    assign notcmp133185_mux_s = in_valid_in_0;
    always @(notcmp133185_mux_s or in_notcmp133185_1 or in_notcmp133185_0)
    begin
        unique case (notcmp133185_mux_s)
            1'b0 : notcmp133185_mux_q = in_notcmp133185_1;
            1'b1 : notcmp133185_mux_q = in_notcmp133185_0;
            default : notcmp133185_mux_q = 1'b0;
        endcase
    end

    // out_notcmp133185(GPOUT,24)
    assign out_notcmp133185 = notcmp133185_mux_q;

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
