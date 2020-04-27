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

// SystemVerilog created from sobel_filter_B12_merge
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B12_merge (
    input wire [0:0] in_exitcond45163_pop61221_0,
    input wire [0:0] in_exitcond45163_pop61221_1,
    input wire [0:0] in_forked156159_pop60218_0,
    input wire [0:0] in_forked156159_pop60218_1,
    input wire [0:0] in_forked79_0,
    input wire [0:0] in_forked79_1,
    input wire [0:0] in_notcmp131170_pop62224_0,
    input wire [0:0] in_notcmp131170_pop62224_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond45163_pop61221,
    output wire [0:0] out_forked156159_pop60218,
    output wire [0:0] out_forked79,
    output wire [0:0] out_notcmp131170_pop62224,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond45163_pop61221_mux_s;
    reg [0:0] exitcond45163_pop61221_mux_q;
    wire [0:0] forked156159_pop60218_mux_s;
    reg [0:0] forked156159_pop60218_mux_q;
    wire [0:0] forked79_mux_s;
    reg [0:0] forked79_mux_q;
    wire [0:0] notcmp131170_pop62224_mux_s;
    reg [0:0] notcmp131170_pop62224_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond45163_pop61221_mux(MUX,2)
    assign exitcond45163_pop61221_mux_s = in_valid_in_0;
    always @(exitcond45163_pop61221_mux_s or in_exitcond45163_pop61221_1 or in_exitcond45163_pop61221_0)
    begin
        unique case (exitcond45163_pop61221_mux_s)
            1'b0 : exitcond45163_pop61221_mux_q = in_exitcond45163_pop61221_1;
            1'b1 : exitcond45163_pop61221_mux_q = in_exitcond45163_pop61221_0;
            default : exitcond45163_pop61221_mux_q = 1'b0;
        endcase
    end

    // out_exitcond45163_pop61221(GPOUT,17)
    assign out_exitcond45163_pop61221 = exitcond45163_pop61221_mux_q;

    // forked156159_pop60218_mux(MUX,3)
    assign forked156159_pop60218_mux_s = in_valid_in_0;
    always @(forked156159_pop60218_mux_s or in_forked156159_pop60218_1 or in_forked156159_pop60218_0)
    begin
        unique case (forked156159_pop60218_mux_s)
            1'b0 : forked156159_pop60218_mux_q = in_forked156159_pop60218_1;
            1'b1 : forked156159_pop60218_mux_q = in_forked156159_pop60218_0;
            default : forked156159_pop60218_mux_q = 1'b0;
        endcase
    end

    // out_forked156159_pop60218(GPOUT,18)
    assign out_forked156159_pop60218 = forked156159_pop60218_mux_q;

    // forked79_mux(MUX,4)
    assign forked79_mux_s = in_valid_in_0;
    always @(forked79_mux_s or in_forked79_1 or in_forked79_0)
    begin
        unique case (forked79_mux_s)
            1'b0 : forked79_mux_q = in_forked79_1;
            1'b1 : forked79_mux_q = in_forked79_0;
            default : forked79_mux_q = 1'b0;
        endcase
    end

    // out_forked79(GPOUT,19)
    assign out_forked79 = forked79_mux_q;

    // notcmp131170_pop62224_mux(MUX,16)
    assign notcmp131170_pop62224_mux_s = in_valid_in_0;
    always @(notcmp131170_pop62224_mux_s or in_notcmp131170_pop62224_1 or in_notcmp131170_pop62224_0)
    begin
        unique case (notcmp131170_pop62224_mux_s)
            1'b0 : notcmp131170_pop62224_mux_q = in_notcmp131170_pop62224_1;
            1'b1 : notcmp131170_pop62224_mux_q = in_notcmp131170_pop62224_0;
            default : notcmp131170_pop62224_mux_q = 1'b0;
        endcase
    end

    // out_notcmp131170_pop62224(GPOUT,20)
    assign out_notcmp131170_pop62224 = notcmp131170_pop62224_mux_q;

    // valid_or(LOGICAL,26)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,24)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,25)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = valid_or_q;

endmodule
