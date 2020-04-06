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

// SystemVerilog created from prod_matrix_B4_merge
// SystemVerilog created on Mon Apr  6 11:18:08 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_B4_merge (
    input wire [0:0] in_forked18_0,
    input wire [0:0] in_forked18_1,
    input wire [31:0] in_i_021_pop1136_pop1857_0,
    input wire [31:0] in_i_021_pop1136_pop1857_1,
    input wire [31:0] in_j_018_pop1453_0,
    input wire [31:0] in_j_018_pop1453_1,
    input wire [0:0] in_memdep_phi3_pop1554_0,
    input wire [0:0] in_memdep_phi3_pop1554_1,
    input wire [0:0] in_memdep_phi4_pop1238_pop1958_0,
    input wire [0:0] in_memdep_phi4_pop1238_pop1958_1,
    input wire [0:0] in_notcmp2252_0,
    input wire [0:0] in_notcmp2252_1,
    input wire [0:0] in_notcmp2634_pop1756_0,
    input wire [0:0] in_notcmp2634_pop1756_1,
    input wire [0:0] in_pop1655_0,
    input wire [0:0] in_pop1655_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_prod_matrix13_0,
    input wire [0:0] in_unnamed_prod_matrix13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked18,
    output wire [31:0] out_i_021_pop1136_pop1857,
    output wire [31:0] out_j_018_pop1453,
    output wire [0:0] out_memdep_phi3_pop1554,
    output wire [0:0] out_memdep_phi4_pop1238_pop1958,
    output wire [0:0] out_notcmp2252,
    output wire [0:0] out_notcmp2634_pop1756,
    output wire [0:0] out_pop1655,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_prod_matrix13,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked18_mux_s;
    reg [0:0] forked18_mux_q;
    wire [0:0] i_021_pop1136_pop1857_mux_s;
    reg [31:0] i_021_pop1136_pop1857_mux_q;
    wire [0:0] j_018_pop1453_mux_s;
    reg [31:0] j_018_pop1453_mux_q;
    wire [0:0] memdep_phi3_pop1554_mux_s;
    reg [0:0] memdep_phi3_pop1554_mux_q;
    wire [0:0] memdep_phi4_pop1238_pop1958_mux_s;
    reg [0:0] memdep_phi4_pop1238_pop1958_mux_q;
    wire [0:0] notcmp2252_mux_s;
    reg [0:0] notcmp2252_mux_q;
    wire [0:0] notcmp2634_pop1756_mux_s;
    reg [0:0] notcmp2634_pop1756_mux_q;
    wire [0:0] pop1655_mux_s;
    reg [0:0] pop1655_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_prod_matrix13_mux_s;
    reg [0:0] unnamed_prod_matrix13_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked18_mux(MUX,2)
    assign forked18_mux_s = in_valid_in_0;
    always @(forked18_mux_s or in_forked18_1 or in_forked18_0)
    begin
        unique case (forked18_mux_s)
            1'b0 : forked18_mux_q = in_forked18_1;
            1'b1 : forked18_mux_q = in_forked18_0;
            default : forked18_mux_q = 1'b0;
        endcase
    end

    // out_forked18(GPOUT,30)
    assign out_forked18 = forked18_mux_q;

    // i_021_pop1136_pop1857_mux(MUX,3)
    assign i_021_pop1136_pop1857_mux_s = in_valid_in_0;
    always @(i_021_pop1136_pop1857_mux_s or in_i_021_pop1136_pop1857_1 or in_i_021_pop1136_pop1857_0)
    begin
        unique case (i_021_pop1136_pop1857_mux_s)
            1'b0 : i_021_pop1136_pop1857_mux_q = in_i_021_pop1136_pop1857_1;
            1'b1 : i_021_pop1136_pop1857_mux_q = in_i_021_pop1136_pop1857_0;
            default : i_021_pop1136_pop1857_mux_q = 32'b0;
        endcase
    end

    // out_i_021_pop1136_pop1857(GPOUT,31)
    assign out_i_021_pop1136_pop1857 = i_021_pop1136_pop1857_mux_q;

    // j_018_pop1453_mux(MUX,25)
    assign j_018_pop1453_mux_s = in_valid_in_0;
    always @(j_018_pop1453_mux_s or in_j_018_pop1453_1 or in_j_018_pop1453_0)
    begin
        unique case (j_018_pop1453_mux_s)
            1'b0 : j_018_pop1453_mux_q = in_j_018_pop1453_1;
            1'b1 : j_018_pop1453_mux_q = in_j_018_pop1453_0;
            default : j_018_pop1453_mux_q = 32'b0;
        endcase
    end

    // out_j_018_pop1453(GPOUT,32)
    assign out_j_018_pop1453 = j_018_pop1453_mux_q;

    // memdep_phi3_pop1554_mux(MUX,26)
    assign memdep_phi3_pop1554_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1554_mux_s or in_memdep_phi3_pop1554_1 or in_memdep_phi3_pop1554_0)
    begin
        unique case (memdep_phi3_pop1554_mux_s)
            1'b0 : memdep_phi3_pop1554_mux_q = in_memdep_phi3_pop1554_1;
            1'b1 : memdep_phi3_pop1554_mux_q = in_memdep_phi3_pop1554_0;
            default : memdep_phi3_pop1554_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1554(GPOUT,33)
    assign out_memdep_phi3_pop1554 = memdep_phi3_pop1554_mux_q;

    // memdep_phi4_pop1238_pop1958_mux(MUX,27)
    assign memdep_phi4_pop1238_pop1958_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1238_pop1958_mux_s or in_memdep_phi4_pop1238_pop1958_1 or in_memdep_phi4_pop1238_pop1958_0)
    begin
        unique case (memdep_phi4_pop1238_pop1958_mux_s)
            1'b0 : memdep_phi4_pop1238_pop1958_mux_q = in_memdep_phi4_pop1238_pop1958_1;
            1'b1 : memdep_phi4_pop1238_pop1958_mux_q = in_memdep_phi4_pop1238_pop1958_0;
            default : memdep_phi4_pop1238_pop1958_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1238_pop1958(GPOUT,34)
    assign out_memdep_phi4_pop1238_pop1958 = memdep_phi4_pop1238_pop1958_mux_q;

    // notcmp2252_mux(MUX,28)
    assign notcmp2252_mux_s = in_valid_in_0;
    always @(notcmp2252_mux_s or in_notcmp2252_1 or in_notcmp2252_0)
    begin
        unique case (notcmp2252_mux_s)
            1'b0 : notcmp2252_mux_q = in_notcmp2252_1;
            1'b1 : notcmp2252_mux_q = in_notcmp2252_0;
            default : notcmp2252_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2252(GPOUT,35)
    assign out_notcmp2252 = notcmp2252_mux_q;

    // notcmp2634_pop1756_mux(MUX,29)
    assign notcmp2634_pop1756_mux_s = in_valid_in_0;
    always @(notcmp2634_pop1756_mux_s or in_notcmp2634_pop1756_1 or in_notcmp2634_pop1756_0)
    begin
        unique case (notcmp2634_pop1756_mux_s)
            1'b0 : notcmp2634_pop1756_mux_q = in_notcmp2634_pop1756_1;
            1'b1 : notcmp2634_pop1756_mux_q = in_notcmp2634_pop1756_0;
            default : notcmp2634_pop1756_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2634_pop1756(GPOUT,36)
    assign out_notcmp2634_pop1756 = notcmp2634_pop1756_mux_q;

    // pop1655_mux(MUX,42)
    assign pop1655_mux_s = in_valid_in_0;
    always @(pop1655_mux_s or in_pop1655_1 or in_pop1655_0)
    begin
        unique case (pop1655_mux_s)
            1'b0 : pop1655_mux_q = in_pop1655_1;
            1'b1 : pop1655_mux_q = in_pop1655_0;
            default : pop1655_mux_q = 1'b0;
        endcase
    end

    // out_pop1655(GPOUT,37)
    assign out_pop1655 = pop1655_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,43)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,38)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,44)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,39)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_prod_matrix13_mux(MUX,45)
    assign unnamed_prod_matrix13_mux_s = in_valid_in_0;
    always @(unnamed_prod_matrix13_mux_s or in_unnamed_prod_matrix13_1 or in_unnamed_prod_matrix13_0)
    begin
        unique case (unnamed_prod_matrix13_mux_s)
            1'b0 : unnamed_prod_matrix13_mux_q = in_unnamed_prod_matrix13_1;
            1'b1 : unnamed_prod_matrix13_mux_q = in_unnamed_prod_matrix13_0;
            default : unnamed_prod_matrix13_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_prod_matrix13(GPOUT,40)
    assign out_unnamed_prod_matrix13 = unnamed_prod_matrix13_mux_q;

    // out_valid_out(GPOUT,41)
    assign out_valid_out = valid_or_q;

endmodule
