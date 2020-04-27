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

// SystemVerilog created from kmeans_B15_merge
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_B15_merge (
    input wire [15:0] in_c_044_pop35138_0,
    input wire [15:0] in_c_044_pop35138_1,
    input wire [0:0] in_forked111136_0,
    input wire [0:0] in_forked111136_1,
    input wire [0:0] in_forked39_0,
    input wire [0:0] in_forked39_1,
    input wire [31:0] in_i27_047_pop32114_pop40142_0,
    input wire [31:0] in_i27_047_pop32114_pop40142_1,
    input wire [31:0] in_i27_047_pop32132_0,
    input wire [31:0] in_i27_047_pop32132_1,
    input wire [31:0] in_mul46137_0,
    input wire [31:0] in_mul46137_1,
    input wire [0:0] in_notcmp41139_0,
    input wire [0:0] in_notcmp41139_1,
    input wire [0:0] in_notcmp46112_pop39141_0,
    input wire [0:0] in_notcmp46112_pop39141_1,
    input wire [0:0] in_notcmp46129_0,
    input wire [0:0] in_notcmp46129_1,
    input wire [0:0] in_notcmp51108_pop33135_0,
    input wire [0:0] in_notcmp51108_pop33135_1,
    input wire [0:0] in_notcmp51109_pop38140_0,
    input wire [0:0] in_notcmp51109_pop38140_1,
    input wire [0:0] in_notcmp51125_0,
    input wire [0:0] in_notcmp51125_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_kmeans22_0,
    input wire [0:0] in_unnamed_kmeans22_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [15:0] out_c_044_pop35138,
    output wire [0:0] out_forked111136,
    output wire [0:0] out_forked39,
    output wire [31:0] out_i27_047_pop32114_pop40142,
    output wire [31:0] out_i27_047_pop32132,
    output wire [31:0] out_mul46137,
    output wire [0:0] out_notcmp41139,
    output wire [0:0] out_notcmp46112_pop39141,
    output wire [0:0] out_notcmp46129,
    output wire [0:0] out_notcmp51108_pop33135,
    output wire [0:0] out_notcmp51109_pop38140,
    output wire [0:0] out_notcmp51125,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_kmeans22,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_044_pop35138_mux_s;
    reg [15:0] c_044_pop35138_mux_q;
    wire [0:0] forked111136_mux_s;
    reg [0:0] forked111136_mux_q;
    wire [0:0] forked39_mux_s;
    reg [0:0] forked39_mux_q;
    wire [0:0] i27_047_pop32114_pop40142_mux_s;
    reg [31:0] i27_047_pop32114_pop40142_mux_q;
    wire [0:0] i27_047_pop32132_mux_s;
    reg [31:0] i27_047_pop32132_mux_q;
    wire [0:0] mul46137_mux_s;
    reg [31:0] mul46137_mux_q;
    wire [0:0] notcmp41139_mux_s;
    reg [0:0] notcmp41139_mux_q;
    wire [0:0] notcmp46112_pop39141_mux_s;
    reg [0:0] notcmp46112_pop39141_mux_q;
    wire [0:0] notcmp46129_mux_s;
    reg [0:0] notcmp46129_mux_q;
    wire [0:0] notcmp51108_pop33135_mux_s;
    reg [0:0] notcmp51108_pop33135_mux_q;
    wire [0:0] notcmp51109_pop38140_mux_s;
    reg [0:0] notcmp51109_pop38140_mux_q;
    wire [0:0] notcmp51125_mux_s;
    reg [0:0] notcmp51125_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kmeans22_mux_s;
    reg [0:0] unnamed_kmeans22_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_044_pop35138_mux(MUX,2)
    assign c_044_pop35138_mux_s = in_valid_in_0;
    always @(c_044_pop35138_mux_s or in_c_044_pop35138_1 or in_c_044_pop35138_0)
    begin
        unique case (c_044_pop35138_mux_s)
            1'b0 : c_044_pop35138_mux_q = in_c_044_pop35138_1;
            1'b1 : c_044_pop35138_mux_q = in_c_044_pop35138_0;
            default : c_044_pop35138_mux_q = 16'b0;
        endcase
    end

    // out_c_044_pop35138(GPOUT,43)
    assign out_c_044_pop35138 = c_044_pop35138_mux_q;

    // forked111136_mux(MUX,3)
    assign forked111136_mux_s = in_valid_in_0;
    always @(forked111136_mux_s or in_forked111136_1 or in_forked111136_0)
    begin
        unique case (forked111136_mux_s)
            1'b0 : forked111136_mux_q = in_forked111136_1;
            1'b1 : forked111136_mux_q = in_forked111136_0;
            default : forked111136_mux_q = 1'b0;
        endcase
    end

    // out_forked111136(GPOUT,44)
    assign out_forked111136 = forked111136_mux_q;

    // forked39_mux(MUX,4)
    assign forked39_mux_s = in_valid_in_0;
    always @(forked39_mux_s or in_forked39_1 or in_forked39_0)
    begin
        unique case (forked39_mux_s)
            1'b0 : forked39_mux_q = in_forked39_1;
            1'b1 : forked39_mux_q = in_forked39_0;
            default : forked39_mux_q = 1'b0;
        endcase
    end

    // out_forked39(GPOUT,45)
    assign out_forked39 = forked39_mux_q;

    // i27_047_pop32114_pop40142_mux(MUX,5)
    assign i27_047_pop32114_pop40142_mux_s = in_valid_in_0;
    always @(i27_047_pop32114_pop40142_mux_s or in_i27_047_pop32114_pop40142_1 or in_i27_047_pop32114_pop40142_0)
    begin
        unique case (i27_047_pop32114_pop40142_mux_s)
            1'b0 : i27_047_pop32114_pop40142_mux_q = in_i27_047_pop32114_pop40142_1;
            1'b1 : i27_047_pop32114_pop40142_mux_q = in_i27_047_pop32114_pop40142_0;
            default : i27_047_pop32114_pop40142_mux_q = 32'b0;
        endcase
    end

    // out_i27_047_pop32114_pop40142(GPOUT,46)
    assign out_i27_047_pop32114_pop40142 = i27_047_pop32114_pop40142_mux_q;

    // i27_047_pop32132_mux(MUX,6)
    assign i27_047_pop32132_mux_s = in_valid_in_0;
    always @(i27_047_pop32132_mux_s or in_i27_047_pop32132_1 or in_i27_047_pop32132_0)
    begin
        unique case (i27_047_pop32132_mux_s)
            1'b0 : i27_047_pop32132_mux_q = in_i27_047_pop32132_1;
            1'b1 : i27_047_pop32132_mux_q = in_i27_047_pop32132_0;
            default : i27_047_pop32132_mux_q = 32'b0;
        endcase
    end

    // out_i27_047_pop32132(GPOUT,47)
    assign out_i27_047_pop32132 = i27_047_pop32132_mux_q;

    // mul46137_mux(MUX,36)
    assign mul46137_mux_s = in_valid_in_0;
    always @(mul46137_mux_s or in_mul46137_1 or in_mul46137_0)
    begin
        unique case (mul46137_mux_s)
            1'b0 : mul46137_mux_q = in_mul46137_1;
            1'b1 : mul46137_mux_q = in_mul46137_0;
            default : mul46137_mux_q = 32'b0;
        endcase
    end

    // out_mul46137(GPOUT,48)
    assign out_mul46137 = mul46137_mux_q;

    // notcmp41139_mux(MUX,37)
    assign notcmp41139_mux_s = in_valid_in_0;
    always @(notcmp41139_mux_s or in_notcmp41139_1 or in_notcmp41139_0)
    begin
        unique case (notcmp41139_mux_s)
            1'b0 : notcmp41139_mux_q = in_notcmp41139_1;
            1'b1 : notcmp41139_mux_q = in_notcmp41139_0;
            default : notcmp41139_mux_q = 1'b0;
        endcase
    end

    // out_notcmp41139(GPOUT,49)
    assign out_notcmp41139 = notcmp41139_mux_q;

    // notcmp46112_pop39141_mux(MUX,38)
    assign notcmp46112_pop39141_mux_s = in_valid_in_0;
    always @(notcmp46112_pop39141_mux_s or in_notcmp46112_pop39141_1 or in_notcmp46112_pop39141_0)
    begin
        unique case (notcmp46112_pop39141_mux_s)
            1'b0 : notcmp46112_pop39141_mux_q = in_notcmp46112_pop39141_1;
            1'b1 : notcmp46112_pop39141_mux_q = in_notcmp46112_pop39141_0;
            default : notcmp46112_pop39141_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46112_pop39141(GPOUT,50)
    assign out_notcmp46112_pop39141 = notcmp46112_pop39141_mux_q;

    // notcmp46129_mux(MUX,39)
    assign notcmp46129_mux_s = in_valid_in_0;
    always @(notcmp46129_mux_s or in_notcmp46129_1 or in_notcmp46129_0)
    begin
        unique case (notcmp46129_mux_s)
            1'b0 : notcmp46129_mux_q = in_notcmp46129_1;
            1'b1 : notcmp46129_mux_q = in_notcmp46129_0;
            default : notcmp46129_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46129(GPOUT,51)
    assign out_notcmp46129 = notcmp46129_mux_q;

    // notcmp51108_pop33135_mux(MUX,40)
    assign notcmp51108_pop33135_mux_s = in_valid_in_0;
    always @(notcmp51108_pop33135_mux_s or in_notcmp51108_pop33135_1 or in_notcmp51108_pop33135_0)
    begin
        unique case (notcmp51108_pop33135_mux_s)
            1'b0 : notcmp51108_pop33135_mux_q = in_notcmp51108_pop33135_1;
            1'b1 : notcmp51108_pop33135_mux_q = in_notcmp51108_pop33135_0;
            default : notcmp51108_pop33135_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51108_pop33135(GPOUT,52)
    assign out_notcmp51108_pop33135 = notcmp51108_pop33135_mux_q;

    // notcmp51109_pop38140_mux(MUX,41)
    assign notcmp51109_pop38140_mux_s = in_valid_in_0;
    always @(notcmp51109_pop38140_mux_s or in_notcmp51109_pop38140_1 or in_notcmp51109_pop38140_0)
    begin
        unique case (notcmp51109_pop38140_mux_s)
            1'b0 : notcmp51109_pop38140_mux_q = in_notcmp51109_pop38140_1;
            1'b1 : notcmp51109_pop38140_mux_q = in_notcmp51109_pop38140_0;
            default : notcmp51109_pop38140_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51109_pop38140(GPOUT,53)
    assign out_notcmp51109_pop38140 = notcmp51109_pop38140_mux_q;

    // notcmp51125_mux(MUX,42)
    assign notcmp51125_mux_s = in_valid_in_0;
    always @(notcmp51125_mux_s or in_notcmp51125_1 or in_notcmp51125_0)
    begin
        unique case (notcmp51125_mux_s)
            1'b0 : notcmp51125_mux_q = in_notcmp51125_1;
            1'b1 : notcmp51125_mux_q = in_notcmp51125_0;
            default : notcmp51125_mux_q = 1'b0;
        endcase
    end

    // out_notcmp51125(GPOUT,54)
    assign out_notcmp51125 = notcmp51125_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,59)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,55)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,60)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,56)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_kmeans22_mux(MUX,61)
    assign unnamed_kmeans22_mux_s = in_valid_in_0;
    always @(unnamed_kmeans22_mux_s or in_unnamed_kmeans22_1 or in_unnamed_kmeans22_0)
    begin
        unique case (unnamed_kmeans22_mux_s)
            1'b0 : unnamed_kmeans22_mux_q = in_unnamed_kmeans22_1;
            1'b1 : unnamed_kmeans22_mux_q = in_unnamed_kmeans22_0;
            default : unnamed_kmeans22_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_kmeans22(GPOUT,57)
    assign out_unnamed_kmeans22 = unnamed_kmeans22_mux_q;

    // out_valid_out(GPOUT,58)
    assign out_valid_out = valid_or_q;

endmodule
