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

// SystemVerilog created from sobel_B3_merge
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_B3_merge (
    input wire [31:0] in_add1236_0,
    input wire [31:0] in_add1236_1,
    input wire [0:0] in_exitcond1137_0,
    input wire [0:0] in_exitcond1137_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_j_083_pop935_0,
    input wire [31:0] in_j_083_pop935_1,
    input wire [0:0] in_memdep_phi1_pop1039_0,
    input wire [0:0] in_memdep_phi1_pop1039_1,
    input wire [0:0] in_notcmp2038_0,
    input wire [0:0] in_notcmp2038_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add1236,
    output wire [0:0] out_exitcond1137,
    output wire [0:0] out_forked,
    output wire [31:0] out_j_083_pop935,
    output wire [0:0] out_memdep_phi1_pop1039,
    output wire [0:0] out_notcmp2038,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add1236_mux_s;
    reg [31:0] add1236_mux_q;
    wire [0:0] exitcond1137_mux_s;
    reg [0:0] exitcond1137_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] j_083_pop935_mux_s;
    reg [31:0] j_083_pop935_mux_q;
    wire [0:0] memdep_phi1_pop1039_mux_s;
    reg [0:0] memdep_phi1_pop1039_mux_q;
    wire [0:0] notcmp2038_mux_s;
    reg [0:0] notcmp2038_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add1236_mux(MUX,2)
    assign add1236_mux_s = in_valid_in_0;
    always @(add1236_mux_s or in_add1236_1 or in_add1236_0)
    begin
        unique case (add1236_mux_s)
            1'b0 : add1236_mux_q = in_add1236_1;
            1'b1 : add1236_mux_q = in_add1236_0;
            default : add1236_mux_q = 32'b0;
        endcase
    end

    // out_add1236(GPOUT,23)
    assign out_add1236 = add1236_mux_q;

    // exitcond1137_mux(MUX,3)
    assign exitcond1137_mux_s = in_valid_in_0;
    always @(exitcond1137_mux_s or in_exitcond1137_1 or in_exitcond1137_0)
    begin
        unique case (exitcond1137_mux_s)
            1'b0 : exitcond1137_mux_q = in_exitcond1137_1;
            1'b1 : exitcond1137_mux_q = in_exitcond1137_0;
            default : exitcond1137_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1137(GPOUT,24)
    assign out_exitcond1137 = exitcond1137_mux_q;

    // forked_mux(MUX,4)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,25)
    assign out_forked = forked_mux_q;

    // j_083_pop935_mux(MUX,20)
    assign j_083_pop935_mux_s = in_valid_in_0;
    always @(j_083_pop935_mux_s or in_j_083_pop935_1 or in_j_083_pop935_0)
    begin
        unique case (j_083_pop935_mux_s)
            1'b0 : j_083_pop935_mux_q = in_j_083_pop935_1;
            1'b1 : j_083_pop935_mux_q = in_j_083_pop935_0;
            default : j_083_pop935_mux_q = 32'b0;
        endcase
    end

    // out_j_083_pop935(GPOUT,26)
    assign out_j_083_pop935 = j_083_pop935_mux_q;

    // memdep_phi1_pop1039_mux(MUX,21)
    assign memdep_phi1_pop1039_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1039_mux_s or in_memdep_phi1_pop1039_1 or in_memdep_phi1_pop1039_0)
    begin
        unique case (memdep_phi1_pop1039_mux_s)
            1'b0 : memdep_phi1_pop1039_mux_q = in_memdep_phi1_pop1039_1;
            1'b1 : memdep_phi1_pop1039_mux_q = in_memdep_phi1_pop1039_0;
            default : memdep_phi1_pop1039_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1039(GPOUT,27)
    assign out_memdep_phi1_pop1039 = memdep_phi1_pop1039_mux_q;

    // notcmp2038_mux(MUX,22)
    assign notcmp2038_mux_s = in_valid_in_0;
    always @(notcmp2038_mux_s or in_notcmp2038_1 or in_notcmp2038_0)
    begin
        unique case (notcmp2038_mux_s)
            1'b0 : notcmp2038_mux_q = in_notcmp2038_1;
            1'b1 : notcmp2038_mux_q = in_notcmp2038_0;
            default : notcmp2038_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2038(GPOUT,28)
    assign out_notcmp2038 = notcmp2038_mux_q;

    // valid_or(LOGICAL,34)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,32)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,33)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,31)
    assign out_valid_out = valid_or_q;

endmodule
