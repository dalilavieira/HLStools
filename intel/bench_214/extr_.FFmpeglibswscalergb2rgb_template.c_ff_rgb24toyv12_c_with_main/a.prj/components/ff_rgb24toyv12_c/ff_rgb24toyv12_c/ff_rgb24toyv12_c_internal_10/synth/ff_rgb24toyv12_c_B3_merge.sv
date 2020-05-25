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

// SystemVerilog created from ff_rgb24toyv12_c_B3_merge
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_B3_merge (
    input wire [63:0] in_add_ptr348_0,
    input wire [63:0] in_add_ptr348_1,
    input wire [63:0] in_add_ptr73347_0,
    input wire [63:0] in_add_ptr73347_1,
    input wire [0:0] in_cmp75345_0,
    input wire [0:0] in_cmp75345_1,
    input wire [0:0] in_forked256_0,
    input wire [0:0] in_forked256_1,
    input wire [0:0] in_memdep_phi106_pop26360_0,
    input wire [0:0] in_memdep_phi106_pop26360_1,
    input wire [0:0] in_memdep_phi126_pop27361_0,
    input wire [0:0] in_memdep_phi126_pop27361_1,
    input wire [0:0] in_memdep_phi133_pop28362_0,
    input wire [0:0] in_memdep_phi133_pop28362_1,
    input wire [0:0] in_memdep_phi140_pop29363_0,
    input wire [0:0] in_memdep_phi140_pop29363_1,
    input wire [0:0] in_memdep_phi147_pop30364_0,
    input wire [0:0] in_memdep_phi147_pop30364_1,
    input wire [0:0] in_memdep_phi155_pop31365_0,
    input wire [0:0] in_memdep_phi155_pop31365_1,
    input wire [0:0] in_memdep_phi173_pop32366_0,
    input wire [0:0] in_memdep_phi173_pop32366_1,
    input wire [0:0] in_memdep_phi180_pop33367_0,
    input wire [0:0] in_memdep_phi180_pop33367_1,
    input wire [0:0] in_memdep_phi187_pop34368_0,
    input wire [0:0] in_memdep_phi187_pop34368_1,
    input wire [0:0] in_memdep_phi18_pop15349_0,
    input wire [0:0] in_memdep_phi18_pop15349_1,
    input wire [0:0] in_memdep_phi194_pop35369_0,
    input wire [0:0] in_memdep_phi194_pop35369_1,
    input wire [0:0] in_memdep_phi202_pop36370_0,
    input wire [0:0] in_memdep_phi202_pop36370_1,
    input wire [0:0] in_memdep_phi21_pop16350_0,
    input wire [0:0] in_memdep_phi21_pop16350_1,
    input wire [0:0] in_memdep_phi24_pop17351_0,
    input wire [0:0] in_memdep_phi24_pop17351_1,
    input wire [0:0] in_memdep_phi27_pop18352_0,
    input wire [0:0] in_memdep_phi27_pop18352_1,
    input wire [0:0] in_memdep_phi29_pop19353_0,
    input wire [0:0] in_memdep_phi29_pop19353_1,
    input wire [0:0] in_memdep_phi41_pop20354_0,
    input wire [0:0] in_memdep_phi41_pop20354_1,
    input wire [0:0] in_memdep_phi61_pop21355_0,
    input wire [0:0] in_memdep_phi61_pop21355_1,
    input wire [0:0] in_memdep_phi78_pop22356_0,
    input wire [0:0] in_memdep_phi78_pop22356_1,
    input wire [0:0] in_memdep_phi85_pop23357_0,
    input wire [0:0] in_memdep_phi85_pop23357_1,
    input wire [0:0] in_memdep_phi92_pop24358_0,
    input wire [0:0] in_memdep_phi92_pop24358_1,
    input wire [0:0] in_memdep_phi99_pop25359_0,
    input wire [0:0] in_memdep_phi99_pop25359_1,
    input wire [0:0] in_notcmp292346_0,
    input wire [0:0] in_notcmp292346_1,
    input wire [63:0] in_src_addr_0111_replace_phi341_0,
    input wire [63:0] in_src_addr_0111_replace_phi341_1,
    input wire [0:0] in_stall_in,
    input wire [63:0] in_udst_addr_0109_replace_phi343_0,
    input wire [63:0] in_udst_addr_0109_replace_phi343_1,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c45_0,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c45_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_vdst_addr_0108_replace_phi344_0,
    input wire [63:0] in_vdst_addr_0108_replace_phi344_1,
    input wire [63:0] in_ydst_addr_0110_replace_phi342_0,
    input wire [63:0] in_ydst_addr_0110_replace_phi342_1,
    output wire [63:0] out_add_ptr348,
    output wire [63:0] out_add_ptr73347,
    output wire [0:0] out_cmp75345,
    output wire [0:0] out_forked256,
    output wire [0:0] out_memdep_phi106_pop26360,
    output wire [0:0] out_memdep_phi126_pop27361,
    output wire [0:0] out_memdep_phi133_pop28362,
    output wire [0:0] out_memdep_phi140_pop29363,
    output wire [0:0] out_memdep_phi147_pop30364,
    output wire [0:0] out_memdep_phi155_pop31365,
    output wire [0:0] out_memdep_phi173_pop32366,
    output wire [0:0] out_memdep_phi180_pop33367,
    output wire [0:0] out_memdep_phi187_pop34368,
    output wire [0:0] out_memdep_phi18_pop15349,
    output wire [0:0] out_memdep_phi194_pop35369,
    output wire [0:0] out_memdep_phi202_pop36370,
    output wire [0:0] out_memdep_phi21_pop16350,
    output wire [0:0] out_memdep_phi24_pop17351,
    output wire [0:0] out_memdep_phi27_pop18352,
    output wire [0:0] out_memdep_phi29_pop19353,
    output wire [0:0] out_memdep_phi41_pop20354,
    output wire [0:0] out_memdep_phi61_pop21355,
    output wire [0:0] out_memdep_phi78_pop22356,
    output wire [0:0] out_memdep_phi85_pop23357,
    output wire [0:0] out_memdep_phi92_pop24358,
    output wire [0:0] out_memdep_phi99_pop25359,
    output wire [0:0] out_notcmp292346,
    output wire [63:0] out_src_addr_0111_replace_phi341,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_udst_addr_0109_replace_phi343,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c45,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_vdst_addr_0108_replace_phi344,
    output wire [63:0] out_ydst_addr_0110_replace_phi342,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add_ptr348_mux_s;
    reg [63:0] add_ptr348_mux_q;
    wire [0:0] add_ptr73347_mux_s;
    reg [63:0] add_ptr73347_mux_q;
    wire [0:0] cmp75345_mux_s;
    reg [0:0] cmp75345_mux_q;
    wire [0:0] forked256_mux_s;
    reg [0:0] forked256_mux_q;
    wire [0:0] memdep_phi106_pop26360_mux_s;
    reg [0:0] memdep_phi106_pop26360_mux_q;
    wire [0:0] memdep_phi126_pop27361_mux_s;
    reg [0:0] memdep_phi126_pop27361_mux_q;
    wire [0:0] memdep_phi133_pop28362_mux_s;
    reg [0:0] memdep_phi133_pop28362_mux_q;
    wire [0:0] memdep_phi140_pop29363_mux_s;
    reg [0:0] memdep_phi140_pop29363_mux_q;
    wire [0:0] memdep_phi147_pop30364_mux_s;
    reg [0:0] memdep_phi147_pop30364_mux_q;
    wire [0:0] memdep_phi155_pop31365_mux_s;
    reg [0:0] memdep_phi155_pop31365_mux_q;
    wire [0:0] memdep_phi173_pop32366_mux_s;
    reg [0:0] memdep_phi173_pop32366_mux_q;
    wire [0:0] memdep_phi180_pop33367_mux_s;
    reg [0:0] memdep_phi180_pop33367_mux_q;
    wire [0:0] memdep_phi187_pop34368_mux_s;
    reg [0:0] memdep_phi187_pop34368_mux_q;
    wire [0:0] memdep_phi18_pop15349_mux_s;
    reg [0:0] memdep_phi18_pop15349_mux_q;
    wire [0:0] memdep_phi194_pop35369_mux_s;
    reg [0:0] memdep_phi194_pop35369_mux_q;
    wire [0:0] memdep_phi202_pop36370_mux_s;
    reg [0:0] memdep_phi202_pop36370_mux_q;
    wire [0:0] memdep_phi21_pop16350_mux_s;
    reg [0:0] memdep_phi21_pop16350_mux_q;
    wire [0:0] memdep_phi24_pop17351_mux_s;
    reg [0:0] memdep_phi24_pop17351_mux_q;
    wire [0:0] memdep_phi27_pop18352_mux_s;
    reg [0:0] memdep_phi27_pop18352_mux_q;
    wire [0:0] memdep_phi29_pop19353_mux_s;
    reg [0:0] memdep_phi29_pop19353_mux_q;
    wire [0:0] memdep_phi41_pop20354_mux_s;
    reg [0:0] memdep_phi41_pop20354_mux_q;
    wire [0:0] memdep_phi61_pop21355_mux_s;
    reg [0:0] memdep_phi61_pop21355_mux_q;
    wire [0:0] memdep_phi78_pop22356_mux_s;
    reg [0:0] memdep_phi78_pop22356_mux_q;
    wire [0:0] memdep_phi85_pop23357_mux_s;
    reg [0:0] memdep_phi85_pop23357_mux_q;
    wire [0:0] memdep_phi92_pop24358_mux_s;
    reg [0:0] memdep_phi92_pop24358_mux_q;
    wire [0:0] memdep_phi99_pop25359_mux_s;
    reg [0:0] memdep_phi99_pop25359_mux_q;
    wire [0:0] notcmp292346_mux_s;
    reg [0:0] notcmp292346_mux_q;
    wire [0:0] src_addr_0111_replace_phi341_mux_s;
    reg [63:0] src_addr_0111_replace_phi341_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] udst_addr_0109_replace_phi343_mux_s;
    reg [63:0] udst_addr_0109_replace_phi343_mux_q;
    wire [0:0] unnamed_ff_rgb24toyv12_c45_mux_s;
    reg [0:0] unnamed_ff_rgb24toyv12_c45_mux_q;
    wire [0:0] valid_or_q;
    wire [0:0] vdst_addr_0108_replace_phi344_mux_s;
    reg [63:0] vdst_addr_0108_replace_phi344_mux_q;
    wire [0:0] ydst_addr_0110_replace_phi342_mux_s;
    reg [63:0] ydst_addr_0110_replace_phi342_mux_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add_ptr348_mux(MUX,2)
    assign add_ptr348_mux_s = in_valid_in_0;
    always @(add_ptr348_mux_s or in_add_ptr348_1 or in_add_ptr348_0)
    begin
        unique case (add_ptr348_mux_s)
            1'b0 : add_ptr348_mux_q = in_add_ptr348_1;
            1'b1 : add_ptr348_mux_q = in_add_ptr348_0;
            default : add_ptr348_mux_q = 64'b0;
        endcase
    end

    // out_add_ptr348(GPOUT,96)
    assign out_add_ptr348 = add_ptr348_mux_q;

    // add_ptr73347_mux(MUX,3)
    assign add_ptr73347_mux_s = in_valid_in_0;
    always @(add_ptr73347_mux_s or in_add_ptr73347_1 or in_add_ptr73347_0)
    begin
        unique case (add_ptr73347_mux_s)
            1'b0 : add_ptr73347_mux_q = in_add_ptr73347_1;
            1'b1 : add_ptr73347_mux_q = in_add_ptr73347_0;
            default : add_ptr73347_mux_q = 64'b0;
        endcase
    end

    // out_add_ptr73347(GPOUT,97)
    assign out_add_ptr73347 = add_ptr73347_mux_q;

    // cmp75345_mux(MUX,4)
    assign cmp75345_mux_s = in_valid_in_0;
    always @(cmp75345_mux_s or in_cmp75345_1 or in_cmp75345_0)
    begin
        unique case (cmp75345_mux_s)
            1'b0 : cmp75345_mux_q = in_cmp75345_1;
            1'b1 : cmp75345_mux_q = in_cmp75345_0;
            default : cmp75345_mux_q = 1'b0;
        endcase
    end

    // out_cmp75345(GPOUT,98)
    assign out_cmp75345 = cmp75345_mux_q;

    // forked256_mux(MUX,5)
    assign forked256_mux_s = in_valid_in_0;
    always @(forked256_mux_s or in_forked256_1 or in_forked256_0)
    begin
        unique case (forked256_mux_s)
            1'b0 : forked256_mux_q = in_forked256_1;
            1'b1 : forked256_mux_q = in_forked256_0;
            default : forked256_mux_q = 1'b0;
        endcase
    end

    // out_forked256(GPOUT,99)
    assign out_forked256 = forked256_mux_q;

    // memdep_phi106_pop26360_mux(MUX,73)
    assign memdep_phi106_pop26360_mux_s = in_valid_in_0;
    always @(memdep_phi106_pop26360_mux_s or in_memdep_phi106_pop26360_1 or in_memdep_phi106_pop26360_0)
    begin
        unique case (memdep_phi106_pop26360_mux_s)
            1'b0 : memdep_phi106_pop26360_mux_q = in_memdep_phi106_pop26360_1;
            1'b1 : memdep_phi106_pop26360_mux_q = in_memdep_phi106_pop26360_0;
            default : memdep_phi106_pop26360_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi106_pop26360(GPOUT,100)
    assign out_memdep_phi106_pop26360 = memdep_phi106_pop26360_mux_q;

    // memdep_phi126_pop27361_mux(MUX,74)
    assign memdep_phi126_pop27361_mux_s = in_valid_in_0;
    always @(memdep_phi126_pop27361_mux_s or in_memdep_phi126_pop27361_1 or in_memdep_phi126_pop27361_0)
    begin
        unique case (memdep_phi126_pop27361_mux_s)
            1'b0 : memdep_phi126_pop27361_mux_q = in_memdep_phi126_pop27361_1;
            1'b1 : memdep_phi126_pop27361_mux_q = in_memdep_phi126_pop27361_0;
            default : memdep_phi126_pop27361_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi126_pop27361(GPOUT,101)
    assign out_memdep_phi126_pop27361 = memdep_phi126_pop27361_mux_q;

    // memdep_phi133_pop28362_mux(MUX,75)
    assign memdep_phi133_pop28362_mux_s = in_valid_in_0;
    always @(memdep_phi133_pop28362_mux_s or in_memdep_phi133_pop28362_1 or in_memdep_phi133_pop28362_0)
    begin
        unique case (memdep_phi133_pop28362_mux_s)
            1'b0 : memdep_phi133_pop28362_mux_q = in_memdep_phi133_pop28362_1;
            1'b1 : memdep_phi133_pop28362_mux_q = in_memdep_phi133_pop28362_0;
            default : memdep_phi133_pop28362_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi133_pop28362(GPOUT,102)
    assign out_memdep_phi133_pop28362 = memdep_phi133_pop28362_mux_q;

    // memdep_phi140_pop29363_mux(MUX,76)
    assign memdep_phi140_pop29363_mux_s = in_valid_in_0;
    always @(memdep_phi140_pop29363_mux_s or in_memdep_phi140_pop29363_1 or in_memdep_phi140_pop29363_0)
    begin
        unique case (memdep_phi140_pop29363_mux_s)
            1'b0 : memdep_phi140_pop29363_mux_q = in_memdep_phi140_pop29363_1;
            1'b1 : memdep_phi140_pop29363_mux_q = in_memdep_phi140_pop29363_0;
            default : memdep_phi140_pop29363_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi140_pop29363(GPOUT,103)
    assign out_memdep_phi140_pop29363 = memdep_phi140_pop29363_mux_q;

    // memdep_phi147_pop30364_mux(MUX,77)
    assign memdep_phi147_pop30364_mux_s = in_valid_in_0;
    always @(memdep_phi147_pop30364_mux_s or in_memdep_phi147_pop30364_1 or in_memdep_phi147_pop30364_0)
    begin
        unique case (memdep_phi147_pop30364_mux_s)
            1'b0 : memdep_phi147_pop30364_mux_q = in_memdep_phi147_pop30364_1;
            1'b1 : memdep_phi147_pop30364_mux_q = in_memdep_phi147_pop30364_0;
            default : memdep_phi147_pop30364_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi147_pop30364(GPOUT,104)
    assign out_memdep_phi147_pop30364 = memdep_phi147_pop30364_mux_q;

    // memdep_phi155_pop31365_mux(MUX,78)
    assign memdep_phi155_pop31365_mux_s = in_valid_in_0;
    always @(memdep_phi155_pop31365_mux_s or in_memdep_phi155_pop31365_1 or in_memdep_phi155_pop31365_0)
    begin
        unique case (memdep_phi155_pop31365_mux_s)
            1'b0 : memdep_phi155_pop31365_mux_q = in_memdep_phi155_pop31365_1;
            1'b1 : memdep_phi155_pop31365_mux_q = in_memdep_phi155_pop31365_0;
            default : memdep_phi155_pop31365_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi155_pop31365(GPOUT,105)
    assign out_memdep_phi155_pop31365 = memdep_phi155_pop31365_mux_q;

    // memdep_phi173_pop32366_mux(MUX,79)
    assign memdep_phi173_pop32366_mux_s = in_valid_in_0;
    always @(memdep_phi173_pop32366_mux_s or in_memdep_phi173_pop32366_1 or in_memdep_phi173_pop32366_0)
    begin
        unique case (memdep_phi173_pop32366_mux_s)
            1'b0 : memdep_phi173_pop32366_mux_q = in_memdep_phi173_pop32366_1;
            1'b1 : memdep_phi173_pop32366_mux_q = in_memdep_phi173_pop32366_0;
            default : memdep_phi173_pop32366_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi173_pop32366(GPOUT,106)
    assign out_memdep_phi173_pop32366 = memdep_phi173_pop32366_mux_q;

    // memdep_phi180_pop33367_mux(MUX,80)
    assign memdep_phi180_pop33367_mux_s = in_valid_in_0;
    always @(memdep_phi180_pop33367_mux_s or in_memdep_phi180_pop33367_1 or in_memdep_phi180_pop33367_0)
    begin
        unique case (memdep_phi180_pop33367_mux_s)
            1'b0 : memdep_phi180_pop33367_mux_q = in_memdep_phi180_pop33367_1;
            1'b1 : memdep_phi180_pop33367_mux_q = in_memdep_phi180_pop33367_0;
            default : memdep_phi180_pop33367_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi180_pop33367(GPOUT,107)
    assign out_memdep_phi180_pop33367 = memdep_phi180_pop33367_mux_q;

    // memdep_phi187_pop34368_mux(MUX,81)
    assign memdep_phi187_pop34368_mux_s = in_valid_in_0;
    always @(memdep_phi187_pop34368_mux_s or in_memdep_phi187_pop34368_1 or in_memdep_phi187_pop34368_0)
    begin
        unique case (memdep_phi187_pop34368_mux_s)
            1'b0 : memdep_phi187_pop34368_mux_q = in_memdep_phi187_pop34368_1;
            1'b1 : memdep_phi187_pop34368_mux_q = in_memdep_phi187_pop34368_0;
            default : memdep_phi187_pop34368_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi187_pop34368(GPOUT,108)
    assign out_memdep_phi187_pop34368 = memdep_phi187_pop34368_mux_q;

    // memdep_phi18_pop15349_mux(MUX,82)
    assign memdep_phi18_pop15349_mux_s = in_valid_in_0;
    always @(memdep_phi18_pop15349_mux_s or in_memdep_phi18_pop15349_1 or in_memdep_phi18_pop15349_0)
    begin
        unique case (memdep_phi18_pop15349_mux_s)
            1'b0 : memdep_phi18_pop15349_mux_q = in_memdep_phi18_pop15349_1;
            1'b1 : memdep_phi18_pop15349_mux_q = in_memdep_phi18_pop15349_0;
            default : memdep_phi18_pop15349_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi18_pop15349(GPOUT,109)
    assign out_memdep_phi18_pop15349 = memdep_phi18_pop15349_mux_q;

    // memdep_phi194_pop35369_mux(MUX,83)
    assign memdep_phi194_pop35369_mux_s = in_valid_in_0;
    always @(memdep_phi194_pop35369_mux_s or in_memdep_phi194_pop35369_1 or in_memdep_phi194_pop35369_0)
    begin
        unique case (memdep_phi194_pop35369_mux_s)
            1'b0 : memdep_phi194_pop35369_mux_q = in_memdep_phi194_pop35369_1;
            1'b1 : memdep_phi194_pop35369_mux_q = in_memdep_phi194_pop35369_0;
            default : memdep_phi194_pop35369_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi194_pop35369(GPOUT,110)
    assign out_memdep_phi194_pop35369 = memdep_phi194_pop35369_mux_q;

    // memdep_phi202_pop36370_mux(MUX,84)
    assign memdep_phi202_pop36370_mux_s = in_valid_in_0;
    always @(memdep_phi202_pop36370_mux_s or in_memdep_phi202_pop36370_1 or in_memdep_phi202_pop36370_0)
    begin
        unique case (memdep_phi202_pop36370_mux_s)
            1'b0 : memdep_phi202_pop36370_mux_q = in_memdep_phi202_pop36370_1;
            1'b1 : memdep_phi202_pop36370_mux_q = in_memdep_phi202_pop36370_0;
            default : memdep_phi202_pop36370_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi202_pop36370(GPOUT,111)
    assign out_memdep_phi202_pop36370 = memdep_phi202_pop36370_mux_q;

    // memdep_phi21_pop16350_mux(MUX,85)
    assign memdep_phi21_pop16350_mux_s = in_valid_in_0;
    always @(memdep_phi21_pop16350_mux_s or in_memdep_phi21_pop16350_1 or in_memdep_phi21_pop16350_0)
    begin
        unique case (memdep_phi21_pop16350_mux_s)
            1'b0 : memdep_phi21_pop16350_mux_q = in_memdep_phi21_pop16350_1;
            1'b1 : memdep_phi21_pop16350_mux_q = in_memdep_phi21_pop16350_0;
            default : memdep_phi21_pop16350_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi21_pop16350(GPOUT,112)
    assign out_memdep_phi21_pop16350 = memdep_phi21_pop16350_mux_q;

    // memdep_phi24_pop17351_mux(MUX,86)
    assign memdep_phi24_pop17351_mux_s = in_valid_in_0;
    always @(memdep_phi24_pop17351_mux_s or in_memdep_phi24_pop17351_1 or in_memdep_phi24_pop17351_0)
    begin
        unique case (memdep_phi24_pop17351_mux_s)
            1'b0 : memdep_phi24_pop17351_mux_q = in_memdep_phi24_pop17351_1;
            1'b1 : memdep_phi24_pop17351_mux_q = in_memdep_phi24_pop17351_0;
            default : memdep_phi24_pop17351_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi24_pop17351(GPOUT,113)
    assign out_memdep_phi24_pop17351 = memdep_phi24_pop17351_mux_q;

    // memdep_phi27_pop18352_mux(MUX,87)
    assign memdep_phi27_pop18352_mux_s = in_valid_in_0;
    always @(memdep_phi27_pop18352_mux_s or in_memdep_phi27_pop18352_1 or in_memdep_phi27_pop18352_0)
    begin
        unique case (memdep_phi27_pop18352_mux_s)
            1'b0 : memdep_phi27_pop18352_mux_q = in_memdep_phi27_pop18352_1;
            1'b1 : memdep_phi27_pop18352_mux_q = in_memdep_phi27_pop18352_0;
            default : memdep_phi27_pop18352_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi27_pop18352(GPOUT,114)
    assign out_memdep_phi27_pop18352 = memdep_phi27_pop18352_mux_q;

    // memdep_phi29_pop19353_mux(MUX,88)
    assign memdep_phi29_pop19353_mux_s = in_valid_in_0;
    always @(memdep_phi29_pop19353_mux_s or in_memdep_phi29_pop19353_1 or in_memdep_phi29_pop19353_0)
    begin
        unique case (memdep_phi29_pop19353_mux_s)
            1'b0 : memdep_phi29_pop19353_mux_q = in_memdep_phi29_pop19353_1;
            1'b1 : memdep_phi29_pop19353_mux_q = in_memdep_phi29_pop19353_0;
            default : memdep_phi29_pop19353_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi29_pop19353(GPOUT,115)
    assign out_memdep_phi29_pop19353 = memdep_phi29_pop19353_mux_q;

    // memdep_phi41_pop20354_mux(MUX,89)
    assign memdep_phi41_pop20354_mux_s = in_valid_in_0;
    always @(memdep_phi41_pop20354_mux_s or in_memdep_phi41_pop20354_1 or in_memdep_phi41_pop20354_0)
    begin
        unique case (memdep_phi41_pop20354_mux_s)
            1'b0 : memdep_phi41_pop20354_mux_q = in_memdep_phi41_pop20354_1;
            1'b1 : memdep_phi41_pop20354_mux_q = in_memdep_phi41_pop20354_0;
            default : memdep_phi41_pop20354_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi41_pop20354(GPOUT,116)
    assign out_memdep_phi41_pop20354 = memdep_phi41_pop20354_mux_q;

    // memdep_phi61_pop21355_mux(MUX,90)
    assign memdep_phi61_pop21355_mux_s = in_valid_in_0;
    always @(memdep_phi61_pop21355_mux_s or in_memdep_phi61_pop21355_1 or in_memdep_phi61_pop21355_0)
    begin
        unique case (memdep_phi61_pop21355_mux_s)
            1'b0 : memdep_phi61_pop21355_mux_q = in_memdep_phi61_pop21355_1;
            1'b1 : memdep_phi61_pop21355_mux_q = in_memdep_phi61_pop21355_0;
            default : memdep_phi61_pop21355_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi61_pop21355(GPOUT,117)
    assign out_memdep_phi61_pop21355 = memdep_phi61_pop21355_mux_q;

    // memdep_phi78_pop22356_mux(MUX,91)
    assign memdep_phi78_pop22356_mux_s = in_valid_in_0;
    always @(memdep_phi78_pop22356_mux_s or in_memdep_phi78_pop22356_1 or in_memdep_phi78_pop22356_0)
    begin
        unique case (memdep_phi78_pop22356_mux_s)
            1'b0 : memdep_phi78_pop22356_mux_q = in_memdep_phi78_pop22356_1;
            1'b1 : memdep_phi78_pop22356_mux_q = in_memdep_phi78_pop22356_0;
            default : memdep_phi78_pop22356_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi78_pop22356(GPOUT,118)
    assign out_memdep_phi78_pop22356 = memdep_phi78_pop22356_mux_q;

    // memdep_phi85_pop23357_mux(MUX,92)
    assign memdep_phi85_pop23357_mux_s = in_valid_in_0;
    always @(memdep_phi85_pop23357_mux_s or in_memdep_phi85_pop23357_1 or in_memdep_phi85_pop23357_0)
    begin
        unique case (memdep_phi85_pop23357_mux_s)
            1'b0 : memdep_phi85_pop23357_mux_q = in_memdep_phi85_pop23357_1;
            1'b1 : memdep_phi85_pop23357_mux_q = in_memdep_phi85_pop23357_0;
            default : memdep_phi85_pop23357_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi85_pop23357(GPOUT,119)
    assign out_memdep_phi85_pop23357 = memdep_phi85_pop23357_mux_q;

    // memdep_phi92_pop24358_mux(MUX,93)
    assign memdep_phi92_pop24358_mux_s = in_valid_in_0;
    always @(memdep_phi92_pop24358_mux_s or in_memdep_phi92_pop24358_1 or in_memdep_phi92_pop24358_0)
    begin
        unique case (memdep_phi92_pop24358_mux_s)
            1'b0 : memdep_phi92_pop24358_mux_q = in_memdep_phi92_pop24358_1;
            1'b1 : memdep_phi92_pop24358_mux_q = in_memdep_phi92_pop24358_0;
            default : memdep_phi92_pop24358_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi92_pop24358(GPOUT,120)
    assign out_memdep_phi92_pop24358 = memdep_phi92_pop24358_mux_q;

    // memdep_phi99_pop25359_mux(MUX,94)
    assign memdep_phi99_pop25359_mux_s = in_valid_in_0;
    always @(memdep_phi99_pop25359_mux_s or in_memdep_phi99_pop25359_1 or in_memdep_phi99_pop25359_0)
    begin
        unique case (memdep_phi99_pop25359_mux_s)
            1'b0 : memdep_phi99_pop25359_mux_q = in_memdep_phi99_pop25359_1;
            1'b1 : memdep_phi99_pop25359_mux_q = in_memdep_phi99_pop25359_0;
            default : memdep_phi99_pop25359_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi99_pop25359(GPOUT,121)
    assign out_memdep_phi99_pop25359 = memdep_phi99_pop25359_mux_q;

    // notcmp292346_mux(MUX,95)
    assign notcmp292346_mux_s = in_valid_in_0;
    always @(notcmp292346_mux_s or in_notcmp292346_1 or in_notcmp292346_0)
    begin
        unique case (notcmp292346_mux_s)
            1'b0 : notcmp292346_mux_q = in_notcmp292346_1;
            1'b1 : notcmp292346_mux_q = in_notcmp292346_0;
            default : notcmp292346_mux_q = 1'b0;
        endcase
    end

    // out_notcmp292346(GPOUT,122)
    assign out_notcmp292346 = notcmp292346_mux_q;

    // src_addr_0111_replace_phi341_mux(MUX,131)
    assign src_addr_0111_replace_phi341_mux_s = in_valid_in_0;
    always @(src_addr_0111_replace_phi341_mux_s or in_src_addr_0111_replace_phi341_1 or in_src_addr_0111_replace_phi341_0)
    begin
        unique case (src_addr_0111_replace_phi341_mux_s)
            1'b0 : src_addr_0111_replace_phi341_mux_q = in_src_addr_0111_replace_phi341_1;
            1'b1 : src_addr_0111_replace_phi341_mux_q = in_src_addr_0111_replace_phi341_0;
            default : src_addr_0111_replace_phi341_mux_q = 64'b0;
        endcase
    end

    // out_src_addr_0111_replace_phi341(GPOUT,123)
    assign out_src_addr_0111_replace_phi341 = src_addr_0111_replace_phi341_mux_q;

    // valid_or(LOGICAL,136)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,132)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,124)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,133)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,125)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // udst_addr_0109_replace_phi343_mux(MUX,134)
    assign udst_addr_0109_replace_phi343_mux_s = in_valid_in_0;
    always @(udst_addr_0109_replace_phi343_mux_s or in_udst_addr_0109_replace_phi343_1 or in_udst_addr_0109_replace_phi343_0)
    begin
        unique case (udst_addr_0109_replace_phi343_mux_s)
            1'b0 : udst_addr_0109_replace_phi343_mux_q = in_udst_addr_0109_replace_phi343_1;
            1'b1 : udst_addr_0109_replace_phi343_mux_q = in_udst_addr_0109_replace_phi343_0;
            default : udst_addr_0109_replace_phi343_mux_q = 64'b0;
        endcase
    end

    // out_udst_addr_0109_replace_phi343(GPOUT,126)
    assign out_udst_addr_0109_replace_phi343 = udst_addr_0109_replace_phi343_mux_q;

    // unnamed_ff_rgb24toyv12_c45_mux(MUX,135)
    assign unnamed_ff_rgb24toyv12_c45_mux_s = in_valid_in_0;
    always @(unnamed_ff_rgb24toyv12_c45_mux_s or in_unnamed_ff_rgb24toyv12_c45_1 or in_unnamed_ff_rgb24toyv12_c45_0)
    begin
        unique case (unnamed_ff_rgb24toyv12_c45_mux_s)
            1'b0 : unnamed_ff_rgb24toyv12_c45_mux_q = in_unnamed_ff_rgb24toyv12_c45_1;
            1'b1 : unnamed_ff_rgb24toyv12_c45_mux_q = in_unnamed_ff_rgb24toyv12_c45_0;
            default : unnamed_ff_rgb24toyv12_c45_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_ff_rgb24toyv12_c45(GPOUT,127)
    assign out_unnamed_ff_rgb24toyv12_c45 = unnamed_ff_rgb24toyv12_c45_mux_q;

    // out_valid_out(GPOUT,128)
    assign out_valid_out = valid_or_q;

    // vdst_addr_0108_replace_phi344_mux(MUX,137)
    assign vdst_addr_0108_replace_phi344_mux_s = in_valid_in_0;
    always @(vdst_addr_0108_replace_phi344_mux_s or in_vdst_addr_0108_replace_phi344_1 or in_vdst_addr_0108_replace_phi344_0)
    begin
        unique case (vdst_addr_0108_replace_phi344_mux_s)
            1'b0 : vdst_addr_0108_replace_phi344_mux_q = in_vdst_addr_0108_replace_phi344_1;
            1'b1 : vdst_addr_0108_replace_phi344_mux_q = in_vdst_addr_0108_replace_phi344_0;
            default : vdst_addr_0108_replace_phi344_mux_q = 64'b0;
        endcase
    end

    // out_vdst_addr_0108_replace_phi344(GPOUT,129)
    assign out_vdst_addr_0108_replace_phi344 = vdst_addr_0108_replace_phi344_mux_q;

    // ydst_addr_0110_replace_phi342_mux(MUX,138)
    assign ydst_addr_0110_replace_phi342_mux_s = in_valid_in_0;
    always @(ydst_addr_0110_replace_phi342_mux_s or in_ydst_addr_0110_replace_phi342_1 or in_ydst_addr_0110_replace_phi342_0)
    begin
        unique case (ydst_addr_0110_replace_phi342_mux_s)
            1'b0 : ydst_addr_0110_replace_phi342_mux_q = in_ydst_addr_0110_replace_phi342_1;
            1'b1 : ydst_addr_0110_replace_phi342_mux_q = in_ydst_addr_0110_replace_phi342_0;
            default : ydst_addr_0110_replace_phi342_mux_q = 64'b0;
        endcase
    end

    // out_ydst_addr_0110_replace_phi342(GPOUT,130)
    assign out_ydst_addr_0110_replace_phi342 = ydst_addr_0110_replace_phi342_mux_q;

endmodule
