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

// SystemVerilog created from bubbleSort_B4_merge
// SystemVerilog created on Mon Apr  6 12:53:46 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_B4_merge (
    input wire [31:0] in_add44_0,
    input wire [31:0] in_add44_1,
    input wire [0:0] in_demorgan46_0,
    input wire [0:0] in_demorgan46_1,
    input wire [0:0] in_forked26_0,
    input wire [0:0] in_forked26_1,
    input wire [31:0] in_i_023_pop1143_0,
    input wire [31:0] in_i_023_pop1143_1,
    input wire [0:0] in_memdep_phi3_pop1247_0,
    input wire [0:0] in_memdep_phi3_pop1247_1,
    input wire [0:0] in_memdep_phi7_pop1348_0,
    input wire [0:0] in_memdep_phi7_pop1348_1,
    input wire [0:0] in_notcmp3045_0,
    input wire [0:0] in_notcmp3045_1,
    input wire [0:0] in_stall_in,
    input wire [32:0] in_unnamed_bubbleSort8_0,
    input wire [32:0] in_unnamed_bubbleSort8_1,
    input wire [0:0] in_unnamed_bubbleSort9_0,
    input wire [0:0] in_unnamed_bubbleSort9_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add44,
    output wire [0:0] out_demorgan46,
    output wire [0:0] out_forked26,
    output wire [31:0] out_i_023_pop1143,
    output wire [0:0] out_memdep_phi3_pop1247,
    output wire [0:0] out_memdep_phi7_pop1348,
    output wire [0:0] out_notcmp3045,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [32:0] out_unnamed_bubbleSort8,
    output wire [0:0] out_unnamed_bubbleSort9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add44_mux_s;
    reg [31:0] add44_mux_q;
    wire [0:0] demorgan46_mux_s;
    reg [0:0] demorgan46_mux_q;
    wire [0:0] forked26_mux_s;
    reg [0:0] forked26_mux_q;
    wire [0:0] i_023_pop1143_mux_s;
    reg [31:0] i_023_pop1143_mux_q;
    wire [0:0] memdep_phi3_pop1247_mux_s;
    reg [0:0] memdep_phi3_pop1247_mux_q;
    wire [0:0] memdep_phi7_pop1348_mux_s;
    reg [0:0] memdep_phi7_pop1348_mux_q;
    wire [0:0] notcmp3045_mux_s;
    reg [0:0] notcmp3045_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_bubbleSort8_mux_s;
    reg [32:0] unnamed_bubbleSort8_mux_q;
    wire [0:0] unnamed_bubbleSort9_mux_s;
    reg [0:0] unnamed_bubbleSort9_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add44_mux(MUX,2)
    assign add44_mux_s = in_valid_in_0;
    always @(add44_mux_s or in_add44_1 or in_add44_0)
    begin
        unique case (add44_mux_s)
            1'b0 : add44_mux_q = in_add44_1;
            1'b1 : add44_mux_q = in_add44_0;
            default : add44_mux_q = 32'b0;
        endcase
    end

    // out_add44(GPOUT,30)
    assign out_add44 = add44_mux_q;

    // demorgan46_mux(MUX,3)
    assign demorgan46_mux_s = in_valid_in_0;
    always @(demorgan46_mux_s or in_demorgan46_1 or in_demorgan46_0)
    begin
        unique case (demorgan46_mux_s)
            1'b0 : demorgan46_mux_q = in_demorgan46_1;
            1'b1 : demorgan46_mux_q = in_demorgan46_0;
            default : demorgan46_mux_q = 1'b0;
        endcase
    end

    // out_demorgan46(GPOUT,31)
    assign out_demorgan46 = demorgan46_mux_q;

    // forked26_mux(MUX,4)
    assign forked26_mux_s = in_valid_in_0;
    always @(forked26_mux_s or in_forked26_1 or in_forked26_0)
    begin
        unique case (forked26_mux_s)
            1'b0 : forked26_mux_q = in_forked26_1;
            1'b1 : forked26_mux_q = in_forked26_0;
            default : forked26_mux_q = 1'b0;
        endcase
    end

    // out_forked26(GPOUT,32)
    assign out_forked26 = forked26_mux_q;

    // i_023_pop1143_mux(MUX,5)
    assign i_023_pop1143_mux_s = in_valid_in_0;
    always @(i_023_pop1143_mux_s or in_i_023_pop1143_1 or in_i_023_pop1143_0)
    begin
        unique case (i_023_pop1143_mux_s)
            1'b0 : i_023_pop1143_mux_q = in_i_023_pop1143_1;
            1'b1 : i_023_pop1143_mux_q = in_i_023_pop1143_0;
            default : i_023_pop1143_mux_q = 32'b0;
        endcase
    end

    // out_i_023_pop1143(GPOUT,33)
    assign out_i_023_pop1143 = i_023_pop1143_mux_q;

    // memdep_phi3_pop1247_mux(MUX,27)
    assign memdep_phi3_pop1247_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1247_mux_s or in_memdep_phi3_pop1247_1 or in_memdep_phi3_pop1247_0)
    begin
        unique case (memdep_phi3_pop1247_mux_s)
            1'b0 : memdep_phi3_pop1247_mux_q = in_memdep_phi3_pop1247_1;
            1'b1 : memdep_phi3_pop1247_mux_q = in_memdep_phi3_pop1247_0;
            default : memdep_phi3_pop1247_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1247(GPOUT,34)
    assign out_memdep_phi3_pop1247 = memdep_phi3_pop1247_mux_q;

    // memdep_phi7_pop1348_mux(MUX,28)
    assign memdep_phi7_pop1348_mux_s = in_valid_in_0;
    always @(memdep_phi7_pop1348_mux_s or in_memdep_phi7_pop1348_1 or in_memdep_phi7_pop1348_0)
    begin
        unique case (memdep_phi7_pop1348_mux_s)
            1'b0 : memdep_phi7_pop1348_mux_q = in_memdep_phi7_pop1348_1;
            1'b1 : memdep_phi7_pop1348_mux_q = in_memdep_phi7_pop1348_0;
            default : memdep_phi7_pop1348_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi7_pop1348(GPOUT,35)
    assign out_memdep_phi7_pop1348 = memdep_phi7_pop1348_mux_q;

    // notcmp3045_mux(MUX,29)
    assign notcmp3045_mux_s = in_valid_in_0;
    always @(notcmp3045_mux_s or in_notcmp3045_1 or in_notcmp3045_0)
    begin
        unique case (notcmp3045_mux_s)
            1'b0 : notcmp3045_mux_q = in_notcmp3045_1;
            1'b1 : notcmp3045_mux_q = in_notcmp3045_0;
            default : notcmp3045_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3045(GPOUT,36)
    assign out_notcmp3045 = notcmp3045_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,42)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,43)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,38)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_bubbleSort8_mux(MUX,44)
    assign unnamed_bubbleSort8_mux_s = in_valid_in_0;
    always @(unnamed_bubbleSort8_mux_s or in_unnamed_bubbleSort8_1 or in_unnamed_bubbleSort8_0)
    begin
        unique case (unnamed_bubbleSort8_mux_s)
            1'b0 : unnamed_bubbleSort8_mux_q = in_unnamed_bubbleSort8_1;
            1'b1 : unnamed_bubbleSort8_mux_q = in_unnamed_bubbleSort8_0;
            default : unnamed_bubbleSort8_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_bubbleSort8(GPOUT,39)
    assign out_unnamed_bubbleSort8 = unnamed_bubbleSort8_mux_q;

    // unnamed_bubbleSort9_mux(MUX,45)
    assign unnamed_bubbleSort9_mux_s = in_valid_in_0;
    always @(unnamed_bubbleSort9_mux_s or in_unnamed_bubbleSort9_1 or in_unnamed_bubbleSort9_0)
    begin
        unique case (unnamed_bubbleSort9_mux_s)
            1'b0 : unnamed_bubbleSort9_mux_q = in_unnamed_bubbleSort9_1;
            1'b1 : unnamed_bubbleSort9_mux_q = in_unnamed_bubbleSort9_0;
            default : unnamed_bubbleSort9_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_bubbleSort9(GPOUT,40)
    assign out_unnamed_bubbleSort9 = unnamed_bubbleSort9_mux_q;

    // out_valid_out(GPOUT,41)
    assign out_valid_out = valid_or_q;

endmodule
