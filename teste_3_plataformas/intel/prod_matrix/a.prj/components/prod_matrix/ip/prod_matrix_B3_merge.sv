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

// SystemVerilog created from prod_matrix_B3_merge
// SystemVerilog created on Mon Apr  6 12:55:33 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_B3_merge (
    input wire [0:0] in_forked19_0,
    input wire [0:0] in_forked19_1,
    input wire [31:0] in_i_021_pop1146_0,
    input wire [31:0] in_i_021_pop1146_1,
    input wire [0:0] in_memdep_phi4_pop1249_0,
    input wire [0:0] in_memdep_phi4_pop1249_1,
    input wire [0:0] in_notcmp2643_0,
    input wire [0:0] in_notcmp2643_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_prod_matrix10_0,
    input wire [0:0] in_unnamed_prod_matrix10_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked19,
    output wire [31:0] out_i_021_pop1146,
    output wire [0:0] out_memdep_phi4_pop1249,
    output wire [0:0] out_notcmp2643,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_prod_matrix10,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked19_mux_s;
    reg [0:0] forked19_mux_q;
    wire [0:0] i_021_pop1146_mux_s;
    reg [31:0] i_021_pop1146_mux_q;
    wire [0:0] memdep_phi4_pop1249_mux_s;
    reg [0:0] memdep_phi4_pop1249_mux_q;
    wire [0:0] notcmp2643_mux_s;
    reg [0:0] notcmp2643_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_prod_matrix10_mux_s;
    reg [0:0] unnamed_prod_matrix10_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked19_mux(MUX,2)
    assign forked19_mux_s = in_valid_in_0;
    always @(forked19_mux_s or in_forked19_1 or in_forked19_0)
    begin
        unique case (forked19_mux_s)
            1'b0 : forked19_mux_q = in_forked19_1;
            1'b1 : forked19_mux_q = in_forked19_0;
            default : forked19_mux_q = 1'b0;
        endcase
    end

    // out_forked19(GPOUT,19)
    assign out_forked19 = forked19_mux_q;

    // i_021_pop1146_mux(MUX,3)
    assign i_021_pop1146_mux_s = in_valid_in_0;
    always @(i_021_pop1146_mux_s or in_i_021_pop1146_1 or in_i_021_pop1146_0)
    begin
        unique case (i_021_pop1146_mux_s)
            1'b0 : i_021_pop1146_mux_q = in_i_021_pop1146_1;
            1'b1 : i_021_pop1146_mux_q = in_i_021_pop1146_0;
            default : i_021_pop1146_mux_q = 32'b0;
        endcase
    end

    // out_i_021_pop1146(GPOUT,20)
    assign out_i_021_pop1146 = i_021_pop1146_mux_q;

    // memdep_phi4_pop1249_mux(MUX,17)
    assign memdep_phi4_pop1249_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1249_mux_s or in_memdep_phi4_pop1249_1 or in_memdep_phi4_pop1249_0)
    begin
        unique case (memdep_phi4_pop1249_mux_s)
            1'b0 : memdep_phi4_pop1249_mux_q = in_memdep_phi4_pop1249_1;
            1'b1 : memdep_phi4_pop1249_mux_q = in_memdep_phi4_pop1249_0;
            default : memdep_phi4_pop1249_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1249(GPOUT,21)
    assign out_memdep_phi4_pop1249 = memdep_phi4_pop1249_mux_q;

    // notcmp2643_mux(MUX,18)
    assign notcmp2643_mux_s = in_valid_in_0;
    always @(notcmp2643_mux_s or in_notcmp2643_1 or in_notcmp2643_0)
    begin
        unique case (notcmp2643_mux_s)
            1'b0 : notcmp2643_mux_q = in_notcmp2643_1;
            1'b1 : notcmp2643_mux_q = in_notcmp2643_0;
            default : notcmp2643_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2643(GPOUT,22)
    assign out_notcmp2643 = notcmp2643_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,27)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,28)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_prod_matrix10_mux(MUX,29)
    assign unnamed_prod_matrix10_mux_s = in_valid_in_0;
    always @(unnamed_prod_matrix10_mux_s or in_unnamed_prod_matrix10_1 or in_unnamed_prod_matrix10_0)
    begin
        unique case (unnamed_prod_matrix10_mux_s)
            1'b0 : unnamed_prod_matrix10_mux_q = in_unnamed_prod_matrix10_1;
            1'b1 : unnamed_prod_matrix10_mux_q = in_unnamed_prod_matrix10_0;
            default : unnamed_prod_matrix10_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_prod_matrix10(GPOUT,25)
    assign out_unnamed_prod_matrix10 = unnamed_prod_matrix10_mux_q;

    // out_valid_out(GPOUT,26)
    assign out_valid_out = valid_or_q;

endmodule
