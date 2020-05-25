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

// SystemVerilog created from xmlCheckLanguageID_B16_merge
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_B16_merge (
    input wire [0:0] in_cmp68_phi_decision1526_replace_phi_dir_0,
    input wire [0:0] in_cmp68_phi_decision1526_replace_phi_dir_1,
    input wire [0:0] in_cmp84_phi_decision63_replace_phi_dir_0,
    input wire [0:0] in_cmp84_phi_decision63_replace_phi_dir_1,
    input wire [0:0] in_cmp_phi_decision11_replace_phi_dir_0,
    input wire [0:0] in_cmp_phi_decision11_replace_phi_dir_1,
    input wire [0:0] in_phi_decision1025_replace_phi_dir_0,
    input wire [0:0] in_phi_decision1025_replace_phi_dir_1,
    input wire [0:0] in_phi_decision1226_replace_phi_dir_0,
    input wire [0:0] in_phi_decision1226_replace_phi_dir_1,
    input wire [0:0] in_phi_decision66_replace_phi_dir_0,
    input wire [0:0] in_phi_decision66_replace_phi_dir_1,
    input wire [0:0] in_retval_0_shrunk_replace_phi_dir_0,
    input wire [0:0] in_retval_0_shrunk_replace_phi_dir_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_cmp68_phi_decision1526_replace_phi_dir,
    output wire [0:0] out_cmp84_phi_decision63_replace_phi_dir,
    output wire [0:0] out_cmp_phi_decision11_replace_phi_dir,
    output wire [0:0] out_phi_decision1025_replace_phi_dir,
    output wire [0:0] out_phi_decision1226_replace_phi_dir,
    output wire [0:0] out_phi_decision66_replace_phi_dir,
    output wire [0:0] out_retval_0_shrunk_replace_phi_dir,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] cmp68_phi_decision1526_replace_phi_dir_mux_s;
    reg [0:0] cmp68_phi_decision1526_replace_phi_dir_mux_q;
    wire [0:0] cmp84_phi_decision63_replace_phi_dir_mux_s;
    reg [0:0] cmp84_phi_decision63_replace_phi_dir_mux_q;
    wire [0:0] cmp_phi_decision11_replace_phi_dir_mux_s;
    reg [0:0] cmp_phi_decision11_replace_phi_dir_mux_q;
    wire [0:0] phi_decision1025_replace_phi_dir_mux_s;
    reg [0:0] phi_decision1025_replace_phi_dir_mux_q;
    wire [0:0] phi_decision1226_replace_phi_dir_mux_s;
    reg [0:0] phi_decision1226_replace_phi_dir_mux_q;
    wire [0:0] phi_decision66_replace_phi_dir_mux_s;
    reg [0:0] phi_decision66_replace_phi_dir_mux_q;
    wire [0:0] retval_0_shrunk_replace_phi_dir_mux_s;
    reg [0:0] retval_0_shrunk_replace_phi_dir_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // cmp68_phi_decision1526_replace_phi_dir_mux(MUX,2)
    assign cmp68_phi_decision1526_replace_phi_dir_mux_s = in_valid_in_0;
    always @(cmp68_phi_decision1526_replace_phi_dir_mux_s or in_cmp68_phi_decision1526_replace_phi_dir_1 or in_cmp68_phi_decision1526_replace_phi_dir_0)
    begin
        unique case (cmp68_phi_decision1526_replace_phi_dir_mux_s)
            1'b0 : cmp68_phi_decision1526_replace_phi_dir_mux_q = in_cmp68_phi_decision1526_replace_phi_dir_1;
            1'b1 : cmp68_phi_decision1526_replace_phi_dir_mux_q = in_cmp68_phi_decision1526_replace_phi_dir_0;
            default : cmp68_phi_decision1526_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_cmp68_phi_decision1526_replace_phi_dir(GPOUT,22)
    assign out_cmp68_phi_decision1526_replace_phi_dir = cmp68_phi_decision1526_replace_phi_dir_mux_q;

    // cmp84_phi_decision63_replace_phi_dir_mux(MUX,3)
    assign cmp84_phi_decision63_replace_phi_dir_mux_s = in_valid_in_0;
    always @(cmp84_phi_decision63_replace_phi_dir_mux_s or in_cmp84_phi_decision63_replace_phi_dir_1 or in_cmp84_phi_decision63_replace_phi_dir_0)
    begin
        unique case (cmp84_phi_decision63_replace_phi_dir_mux_s)
            1'b0 : cmp84_phi_decision63_replace_phi_dir_mux_q = in_cmp84_phi_decision63_replace_phi_dir_1;
            1'b1 : cmp84_phi_decision63_replace_phi_dir_mux_q = in_cmp84_phi_decision63_replace_phi_dir_0;
            default : cmp84_phi_decision63_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_cmp84_phi_decision63_replace_phi_dir(GPOUT,23)
    assign out_cmp84_phi_decision63_replace_phi_dir = cmp84_phi_decision63_replace_phi_dir_mux_q;

    // cmp_phi_decision11_replace_phi_dir_mux(MUX,4)
    assign cmp_phi_decision11_replace_phi_dir_mux_s = in_valid_in_0;
    always @(cmp_phi_decision11_replace_phi_dir_mux_s or in_cmp_phi_decision11_replace_phi_dir_1 or in_cmp_phi_decision11_replace_phi_dir_0)
    begin
        unique case (cmp_phi_decision11_replace_phi_dir_mux_s)
            1'b0 : cmp_phi_decision11_replace_phi_dir_mux_q = in_cmp_phi_decision11_replace_phi_dir_1;
            1'b1 : cmp_phi_decision11_replace_phi_dir_mux_q = in_cmp_phi_decision11_replace_phi_dir_0;
            default : cmp_phi_decision11_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_cmp_phi_decision11_replace_phi_dir(GPOUT,24)
    assign out_cmp_phi_decision11_replace_phi_dir = cmp_phi_decision11_replace_phi_dir_mux_q;

    // phi_decision1025_replace_phi_dir_mux(MUX,32)
    assign phi_decision1025_replace_phi_dir_mux_s = in_valid_in_0;
    always @(phi_decision1025_replace_phi_dir_mux_s or in_phi_decision1025_replace_phi_dir_1 or in_phi_decision1025_replace_phi_dir_0)
    begin
        unique case (phi_decision1025_replace_phi_dir_mux_s)
            1'b0 : phi_decision1025_replace_phi_dir_mux_q = in_phi_decision1025_replace_phi_dir_1;
            1'b1 : phi_decision1025_replace_phi_dir_mux_q = in_phi_decision1025_replace_phi_dir_0;
            default : phi_decision1025_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_phi_decision1025_replace_phi_dir(GPOUT,25)
    assign out_phi_decision1025_replace_phi_dir = phi_decision1025_replace_phi_dir_mux_q;

    // phi_decision1226_replace_phi_dir_mux(MUX,33)
    assign phi_decision1226_replace_phi_dir_mux_s = in_valid_in_0;
    always @(phi_decision1226_replace_phi_dir_mux_s or in_phi_decision1226_replace_phi_dir_1 or in_phi_decision1226_replace_phi_dir_0)
    begin
        unique case (phi_decision1226_replace_phi_dir_mux_s)
            1'b0 : phi_decision1226_replace_phi_dir_mux_q = in_phi_decision1226_replace_phi_dir_1;
            1'b1 : phi_decision1226_replace_phi_dir_mux_q = in_phi_decision1226_replace_phi_dir_0;
            default : phi_decision1226_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_phi_decision1226_replace_phi_dir(GPOUT,26)
    assign out_phi_decision1226_replace_phi_dir = phi_decision1226_replace_phi_dir_mux_q;

    // phi_decision66_replace_phi_dir_mux(MUX,34)
    assign phi_decision66_replace_phi_dir_mux_s = in_valid_in_0;
    always @(phi_decision66_replace_phi_dir_mux_s or in_phi_decision66_replace_phi_dir_1 or in_phi_decision66_replace_phi_dir_0)
    begin
        unique case (phi_decision66_replace_phi_dir_mux_s)
            1'b0 : phi_decision66_replace_phi_dir_mux_q = in_phi_decision66_replace_phi_dir_1;
            1'b1 : phi_decision66_replace_phi_dir_mux_q = in_phi_decision66_replace_phi_dir_0;
            default : phi_decision66_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_phi_decision66_replace_phi_dir(GPOUT,27)
    assign out_phi_decision66_replace_phi_dir = phi_decision66_replace_phi_dir_mux_q;

    // retval_0_shrunk_replace_phi_dir_mux(MUX,35)
    assign retval_0_shrunk_replace_phi_dir_mux_s = in_valid_in_0;
    always @(retval_0_shrunk_replace_phi_dir_mux_s or in_retval_0_shrunk_replace_phi_dir_1 or in_retval_0_shrunk_replace_phi_dir_0)
    begin
        unique case (retval_0_shrunk_replace_phi_dir_mux_s)
            1'b0 : retval_0_shrunk_replace_phi_dir_mux_q = in_retval_0_shrunk_replace_phi_dir_1;
            1'b1 : retval_0_shrunk_replace_phi_dir_mux_q = in_retval_0_shrunk_replace_phi_dir_0;
            default : retval_0_shrunk_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_retval_0_shrunk_replace_phi_dir(GPOUT,28)
    assign out_retval_0_shrunk_replace_phi_dir = retval_0_shrunk_replace_phi_dir_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,31)
    assign out_valid_out = valid_or_q;

endmodule
