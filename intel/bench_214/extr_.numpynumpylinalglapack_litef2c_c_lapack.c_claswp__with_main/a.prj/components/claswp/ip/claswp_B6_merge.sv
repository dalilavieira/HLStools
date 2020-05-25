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

// SystemVerilog created from claswp_B6_merge
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_B6_merge (
    input wire [31:0] in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_0,
    input wire [31:0] in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_1,
    input wire [0:0] in_forked181_0,
    input wire [0:0] in_forked181_1,
    input wire [31:0] in_lm18611245_0,
    input wire [31:0] in_lm18611245_1,
    input wire [31:0] in_lm19012246_0,
    input wire [31:0] in_lm19012246_1,
    input wire [0:0] in_memdep_phi103_pop16242_0,
    input wire [0:0] in_memdep_phi103_pop16242_1,
    input wire [0:0] in_memdep_phi120_pop17243_0,
    input wire [0:0] in_memdep_phi120_pop17243_1,
    input wire [0:0] in_memdep_phi136_pop18251_0,
    input wire [0:0] in_memdep_phi136_pop18251_1,
    input wire [0:0] in_memdep_phi57_pop10247_0,
    input wire [0:0] in_memdep_phi57_pop10247_1,
    input wire [0:0] in_memdep_phi61_pop11248_0,
    input wire [0:0] in_memdep_phi61_pop11248_1,
    input wire [0:0] in_memdep_phi66_pop12249_0,
    input wire [0:0] in_memdep_phi66_pop12249_1,
    input wire [0:0] in_memdep_phi72_pop13240_0,
    input wire [0:0] in_memdep_phi72_pop13240_1,
    input wire [0:0] in_memdep_phi82_pop14250_0,
    input wire [0:0] in_memdep_phi82_pop14250_1,
    input wire [0:0] in_memdep_phi88_pop15241_0,
    input wire [0:0] in_memdep_phi88_pop15241_1,
    input wire [0:0] in_notcmp193239_0,
    input wire [0:0] in_notcmp193239_1,
    input wire [0:0] in_phi_decision209_xor_and_i0238_0,
    input wire [0:0] in_phi_decision209_xor_and_i0238_1,
    input wire [0:0] in_reduction_claswp_33244_0,
    input wire [0:0] in_reduction_claswp_33244_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_storemerge67_replace_phi236_0,
    input wire [31:0] in_storemerge67_replace_phi236_1,
    input wire [0:0] in_unnamed_claswp36_0,
    input wire [0:0] in_unnamed_claswp36_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237,
    output wire [0:0] out_forked181,
    output wire [31:0] out_lm18611245,
    output wire [31:0] out_lm19012246,
    output wire [0:0] out_memdep_phi103_pop16242,
    output wire [0:0] out_memdep_phi120_pop17243,
    output wire [0:0] out_memdep_phi136_pop18251,
    output wire [0:0] out_memdep_phi57_pop10247,
    output wire [0:0] out_memdep_phi61_pop11248,
    output wire [0:0] out_memdep_phi66_pop12249,
    output wire [0:0] out_memdep_phi72_pop13240,
    output wire [0:0] out_memdep_phi82_pop14250,
    output wire [0:0] out_memdep_phi88_pop15241,
    output wire [0:0] out_notcmp193239,
    output wire [0:0] out_phi_decision209_xor_and_i0238,
    output wire [0:0] out_reduction_claswp_33244,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_storemerge67_replace_phi236,
    output wire [0:0] out_unnamed_claswp36,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_s;
    reg [31:0] ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_q;
    wire [0:0] forked181_mux_s;
    reg [0:0] forked181_mux_q;
    wire [0:0] lm18611245_mux_s;
    reg [31:0] lm18611245_mux_q;
    wire [0:0] lm19012246_mux_s;
    reg [31:0] lm19012246_mux_q;
    wire [0:0] memdep_phi103_pop16242_mux_s;
    reg [0:0] memdep_phi103_pop16242_mux_q;
    wire [0:0] memdep_phi120_pop17243_mux_s;
    reg [0:0] memdep_phi120_pop17243_mux_q;
    wire [0:0] memdep_phi136_pop18251_mux_s;
    reg [0:0] memdep_phi136_pop18251_mux_q;
    wire [0:0] memdep_phi57_pop10247_mux_s;
    reg [0:0] memdep_phi57_pop10247_mux_q;
    wire [0:0] memdep_phi61_pop11248_mux_s;
    reg [0:0] memdep_phi61_pop11248_mux_q;
    wire [0:0] memdep_phi66_pop12249_mux_s;
    reg [0:0] memdep_phi66_pop12249_mux_q;
    wire [0:0] memdep_phi72_pop13240_mux_s;
    reg [0:0] memdep_phi72_pop13240_mux_q;
    wire [0:0] memdep_phi82_pop14250_mux_s;
    reg [0:0] memdep_phi82_pop14250_mux_q;
    wire [0:0] memdep_phi88_pop15241_mux_s;
    reg [0:0] memdep_phi88_pop15241_mux_q;
    wire [0:0] notcmp193239_mux_s;
    reg [0:0] notcmp193239_mux_q;
    wire [0:0] phi_decision209_xor_and_i0238_mux_s;
    reg [0:0] phi_decision209_xor_and_i0238_mux_q;
    wire [0:0] reduction_claswp_33244_mux_s;
    reg [0:0] reduction_claswp_33244_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] storemerge67_replace_phi236_mux_s;
    reg [31:0] storemerge67_replace_phi236_mux_q;
    wire [0:0] unnamed_claswp36_mux_s;
    reg [0:0] unnamed_claswp36_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux(MUX,2)
    assign ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_s = in_valid_in_0;
    always @(ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_s or in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_1 or in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_0)
    begin
        unique case (ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_s)
            1'b0 : ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_q = in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_1;
            1'b1 : ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_q = in_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_0;
            default : ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_q = 32'b0;
        endcase
    end

    // out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237(GPOUT,55)
    assign out_ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237 = ZZ7claswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi237_mux_q;

    // forked181_mux(MUX,3)
    assign forked181_mux_s = in_valid_in_0;
    always @(forked181_mux_s or in_forked181_1 or in_forked181_0)
    begin
        unique case (forked181_mux_s)
            1'b0 : forked181_mux_q = in_forked181_1;
            1'b1 : forked181_mux_q = in_forked181_0;
            default : forked181_mux_q = 1'b0;
        endcase
    end

    // out_forked181(GPOUT,56)
    assign out_forked181 = forked181_mux_q;

    // lm18611245_mux(MUX,43)
    assign lm18611245_mux_s = in_valid_in_0;
    always @(lm18611245_mux_s or in_lm18611245_1 or in_lm18611245_0)
    begin
        unique case (lm18611245_mux_s)
            1'b0 : lm18611245_mux_q = in_lm18611245_1;
            1'b1 : lm18611245_mux_q = in_lm18611245_0;
            default : lm18611245_mux_q = 32'b0;
        endcase
    end

    // out_lm18611245(GPOUT,57)
    assign out_lm18611245 = lm18611245_mux_q;

    // lm19012246_mux(MUX,44)
    assign lm19012246_mux_s = in_valid_in_0;
    always @(lm19012246_mux_s or in_lm19012246_1 or in_lm19012246_0)
    begin
        unique case (lm19012246_mux_s)
            1'b0 : lm19012246_mux_q = in_lm19012246_1;
            1'b1 : lm19012246_mux_q = in_lm19012246_0;
            default : lm19012246_mux_q = 32'b0;
        endcase
    end

    // out_lm19012246(GPOUT,58)
    assign out_lm19012246 = lm19012246_mux_q;

    // memdep_phi103_pop16242_mux(MUX,45)
    assign memdep_phi103_pop16242_mux_s = in_valid_in_0;
    always @(memdep_phi103_pop16242_mux_s or in_memdep_phi103_pop16242_1 or in_memdep_phi103_pop16242_0)
    begin
        unique case (memdep_phi103_pop16242_mux_s)
            1'b0 : memdep_phi103_pop16242_mux_q = in_memdep_phi103_pop16242_1;
            1'b1 : memdep_phi103_pop16242_mux_q = in_memdep_phi103_pop16242_0;
            default : memdep_phi103_pop16242_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi103_pop16242(GPOUT,59)
    assign out_memdep_phi103_pop16242 = memdep_phi103_pop16242_mux_q;

    // memdep_phi120_pop17243_mux(MUX,46)
    assign memdep_phi120_pop17243_mux_s = in_valid_in_0;
    always @(memdep_phi120_pop17243_mux_s or in_memdep_phi120_pop17243_1 or in_memdep_phi120_pop17243_0)
    begin
        unique case (memdep_phi120_pop17243_mux_s)
            1'b0 : memdep_phi120_pop17243_mux_q = in_memdep_phi120_pop17243_1;
            1'b1 : memdep_phi120_pop17243_mux_q = in_memdep_phi120_pop17243_0;
            default : memdep_phi120_pop17243_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi120_pop17243(GPOUT,60)
    assign out_memdep_phi120_pop17243 = memdep_phi120_pop17243_mux_q;

    // memdep_phi136_pop18251_mux(MUX,47)
    assign memdep_phi136_pop18251_mux_s = in_valid_in_0;
    always @(memdep_phi136_pop18251_mux_s or in_memdep_phi136_pop18251_1 or in_memdep_phi136_pop18251_0)
    begin
        unique case (memdep_phi136_pop18251_mux_s)
            1'b0 : memdep_phi136_pop18251_mux_q = in_memdep_phi136_pop18251_1;
            1'b1 : memdep_phi136_pop18251_mux_q = in_memdep_phi136_pop18251_0;
            default : memdep_phi136_pop18251_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi136_pop18251(GPOUT,61)
    assign out_memdep_phi136_pop18251 = memdep_phi136_pop18251_mux_q;

    // memdep_phi57_pop10247_mux(MUX,48)
    assign memdep_phi57_pop10247_mux_s = in_valid_in_0;
    always @(memdep_phi57_pop10247_mux_s or in_memdep_phi57_pop10247_1 or in_memdep_phi57_pop10247_0)
    begin
        unique case (memdep_phi57_pop10247_mux_s)
            1'b0 : memdep_phi57_pop10247_mux_q = in_memdep_phi57_pop10247_1;
            1'b1 : memdep_phi57_pop10247_mux_q = in_memdep_phi57_pop10247_0;
            default : memdep_phi57_pop10247_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi57_pop10247(GPOUT,62)
    assign out_memdep_phi57_pop10247 = memdep_phi57_pop10247_mux_q;

    // memdep_phi61_pop11248_mux(MUX,49)
    assign memdep_phi61_pop11248_mux_s = in_valid_in_0;
    always @(memdep_phi61_pop11248_mux_s or in_memdep_phi61_pop11248_1 or in_memdep_phi61_pop11248_0)
    begin
        unique case (memdep_phi61_pop11248_mux_s)
            1'b0 : memdep_phi61_pop11248_mux_q = in_memdep_phi61_pop11248_1;
            1'b1 : memdep_phi61_pop11248_mux_q = in_memdep_phi61_pop11248_0;
            default : memdep_phi61_pop11248_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi61_pop11248(GPOUT,63)
    assign out_memdep_phi61_pop11248 = memdep_phi61_pop11248_mux_q;

    // memdep_phi66_pop12249_mux(MUX,50)
    assign memdep_phi66_pop12249_mux_s = in_valid_in_0;
    always @(memdep_phi66_pop12249_mux_s or in_memdep_phi66_pop12249_1 or in_memdep_phi66_pop12249_0)
    begin
        unique case (memdep_phi66_pop12249_mux_s)
            1'b0 : memdep_phi66_pop12249_mux_q = in_memdep_phi66_pop12249_1;
            1'b1 : memdep_phi66_pop12249_mux_q = in_memdep_phi66_pop12249_0;
            default : memdep_phi66_pop12249_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi66_pop12249(GPOUT,64)
    assign out_memdep_phi66_pop12249 = memdep_phi66_pop12249_mux_q;

    // memdep_phi72_pop13240_mux(MUX,51)
    assign memdep_phi72_pop13240_mux_s = in_valid_in_0;
    always @(memdep_phi72_pop13240_mux_s or in_memdep_phi72_pop13240_1 or in_memdep_phi72_pop13240_0)
    begin
        unique case (memdep_phi72_pop13240_mux_s)
            1'b0 : memdep_phi72_pop13240_mux_q = in_memdep_phi72_pop13240_1;
            1'b1 : memdep_phi72_pop13240_mux_q = in_memdep_phi72_pop13240_0;
            default : memdep_phi72_pop13240_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi72_pop13240(GPOUT,65)
    assign out_memdep_phi72_pop13240 = memdep_phi72_pop13240_mux_q;

    // memdep_phi82_pop14250_mux(MUX,52)
    assign memdep_phi82_pop14250_mux_s = in_valid_in_0;
    always @(memdep_phi82_pop14250_mux_s or in_memdep_phi82_pop14250_1 or in_memdep_phi82_pop14250_0)
    begin
        unique case (memdep_phi82_pop14250_mux_s)
            1'b0 : memdep_phi82_pop14250_mux_q = in_memdep_phi82_pop14250_1;
            1'b1 : memdep_phi82_pop14250_mux_q = in_memdep_phi82_pop14250_0;
            default : memdep_phi82_pop14250_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi82_pop14250(GPOUT,66)
    assign out_memdep_phi82_pop14250 = memdep_phi82_pop14250_mux_q;

    // memdep_phi88_pop15241_mux(MUX,53)
    assign memdep_phi88_pop15241_mux_s = in_valid_in_0;
    always @(memdep_phi88_pop15241_mux_s or in_memdep_phi88_pop15241_1 or in_memdep_phi88_pop15241_0)
    begin
        unique case (memdep_phi88_pop15241_mux_s)
            1'b0 : memdep_phi88_pop15241_mux_q = in_memdep_phi88_pop15241_1;
            1'b1 : memdep_phi88_pop15241_mux_q = in_memdep_phi88_pop15241_0;
            default : memdep_phi88_pop15241_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi88_pop15241(GPOUT,67)
    assign out_memdep_phi88_pop15241 = memdep_phi88_pop15241_mux_q;

    // notcmp193239_mux(MUX,54)
    assign notcmp193239_mux_s = in_valid_in_0;
    always @(notcmp193239_mux_s or in_notcmp193239_1 or in_notcmp193239_0)
    begin
        unique case (notcmp193239_mux_s)
            1'b0 : notcmp193239_mux_q = in_notcmp193239_1;
            1'b1 : notcmp193239_mux_q = in_notcmp193239_0;
            default : notcmp193239_mux_q = 1'b0;
        endcase
    end

    // out_notcmp193239(GPOUT,68)
    assign out_notcmp193239 = notcmp193239_mux_q;

    // phi_decision209_xor_and_i0238_mux(MUX,76)
    assign phi_decision209_xor_and_i0238_mux_s = in_valid_in_0;
    always @(phi_decision209_xor_and_i0238_mux_s or in_phi_decision209_xor_and_i0238_1 or in_phi_decision209_xor_and_i0238_0)
    begin
        unique case (phi_decision209_xor_and_i0238_mux_s)
            1'b0 : phi_decision209_xor_and_i0238_mux_q = in_phi_decision209_xor_and_i0238_1;
            1'b1 : phi_decision209_xor_and_i0238_mux_q = in_phi_decision209_xor_and_i0238_0;
            default : phi_decision209_xor_and_i0238_mux_q = 1'b0;
        endcase
    end

    // out_phi_decision209_xor_and_i0238(GPOUT,69)
    assign out_phi_decision209_xor_and_i0238 = phi_decision209_xor_and_i0238_mux_q;

    // reduction_claswp_33244_mux(MUX,77)
    assign reduction_claswp_33244_mux_s = in_valid_in_0;
    always @(reduction_claswp_33244_mux_s or in_reduction_claswp_33244_1 or in_reduction_claswp_33244_0)
    begin
        unique case (reduction_claswp_33244_mux_s)
            1'b0 : reduction_claswp_33244_mux_q = in_reduction_claswp_33244_1;
            1'b1 : reduction_claswp_33244_mux_q = in_reduction_claswp_33244_0;
            default : reduction_claswp_33244_mux_q = 1'b0;
        endcase
    end

    // out_reduction_claswp_33244(GPOUT,70)
    assign out_reduction_claswp_33244 = reduction_claswp_33244_mux_q;

    // valid_or(LOGICAL,82)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,78)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,71)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,79)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,72)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // storemerge67_replace_phi236_mux(MUX,80)
    assign storemerge67_replace_phi236_mux_s = in_valid_in_0;
    always @(storemerge67_replace_phi236_mux_s or in_storemerge67_replace_phi236_1 or in_storemerge67_replace_phi236_0)
    begin
        unique case (storemerge67_replace_phi236_mux_s)
            1'b0 : storemerge67_replace_phi236_mux_q = in_storemerge67_replace_phi236_1;
            1'b1 : storemerge67_replace_phi236_mux_q = in_storemerge67_replace_phi236_0;
            default : storemerge67_replace_phi236_mux_q = 32'b0;
        endcase
    end

    // out_storemerge67_replace_phi236(GPOUT,73)
    assign out_storemerge67_replace_phi236 = storemerge67_replace_phi236_mux_q;

    // unnamed_claswp36_mux(MUX,81)
    assign unnamed_claswp36_mux_s = in_valid_in_0;
    always @(unnamed_claswp36_mux_s or in_unnamed_claswp36_1 or in_unnamed_claswp36_0)
    begin
        unique case (unnamed_claswp36_mux_s)
            1'b0 : unnamed_claswp36_mux_q = in_unnamed_claswp36_1;
            1'b1 : unnamed_claswp36_mux_q = in_unnamed_claswp36_0;
            default : unnamed_claswp36_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_claswp36(GPOUT,74)
    assign out_unnamed_claswp36 = unnamed_claswp36_mux_q;

    // out_valid_out(GPOUT,75)
    assign out_valid_out = valid_or_q;

endmodule
