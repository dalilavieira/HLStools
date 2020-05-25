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

// SystemVerilog created from ff_rgb24toyv12_c_B5_merge
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_B5_merge (
    input wire [63:0] in_add_ptr309_pop60406_0,
    input wire [63:0] in_add_ptr309_pop60406_1,
    input wire [63:0] in_add_ptr73307_pop59404_0,
    input wire [63:0] in_add_ptr73307_pop59404_1,
    input wire [0:0] in_forked255_0,
    input wire [0:0] in_forked255_1,
    input wire [0:0] in_memdep_phi126_pop27323_pop73381_0,
    input wire [0:0] in_memdep_phi126_pop27323_pop73381_1,
    input wire [0:0] in_memdep_phi133_pop28325_pop74383_0,
    input wire [0:0] in_memdep_phi133_pop28325_pop74383_1,
    input wire [0:0] in_memdep_phi140_pop29327_pop75385_0,
    input wire [0:0] in_memdep_phi140_pop29327_pop75385_1,
    input wire [0:0] in_memdep_phi147_pop30329_pop76387_0,
    input wire [0:0] in_memdep_phi147_pop30329_pop76387_1,
    input wire [0:0] in_memdep_phi155_pop31331_pop77371_0,
    input wire [0:0] in_memdep_phi155_pop31331_pop77371_1,
    input wire [0:0] in_memdep_phi202_pop36337_pop82373_0,
    input wire [0:0] in_memdep_phi202_pop36337_pop82373_1,
    input wire [0:0] in_notcmp292305_pop58402_0,
    input wire [0:0] in_notcmp292305_pop58402_1,
    input wire [0:0] in_pop57400_0,
    input wire [0:0] in_pop57400_1,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_2375_0,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_2375_1,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_53389_0,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_53389_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c62_0,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c62_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_add_ptr309_pop60406,
    output wire [63:0] out_add_ptr73307_pop59404,
    output wire [0:0] out_forked255,
    output wire [0:0] out_memdep_phi126_pop27323_pop73381,
    output wire [0:0] out_memdep_phi133_pop28325_pop74383,
    output wire [0:0] out_memdep_phi140_pop29327_pop75385,
    output wire [0:0] out_memdep_phi147_pop30329_pop76387,
    output wire [0:0] out_memdep_phi155_pop31331_pop77371,
    output wire [0:0] out_memdep_phi202_pop36337_pop82373,
    output wire [0:0] out_notcmp292305_pop58402,
    output wire [0:0] out_pop57400,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_2375,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_53389,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c62,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add_ptr309_pop60406_mux_s;
    reg [63:0] add_ptr309_pop60406_mux_q;
    wire [0:0] add_ptr73307_pop59404_mux_s;
    reg [63:0] add_ptr73307_pop59404_mux_q;
    wire [0:0] forked255_mux_s;
    reg [0:0] forked255_mux_q;
    wire [0:0] memdep_phi126_pop27323_pop73381_mux_s;
    reg [0:0] memdep_phi126_pop27323_pop73381_mux_q;
    wire [0:0] memdep_phi133_pop28325_pop74383_mux_s;
    reg [0:0] memdep_phi133_pop28325_pop74383_mux_q;
    wire [0:0] memdep_phi140_pop29327_pop75385_mux_s;
    reg [0:0] memdep_phi140_pop29327_pop75385_mux_q;
    wire [0:0] memdep_phi147_pop30329_pop76387_mux_s;
    reg [0:0] memdep_phi147_pop30329_pop76387_mux_q;
    wire [0:0] memdep_phi155_pop31331_pop77371_mux_s;
    reg [0:0] memdep_phi155_pop31331_pop77371_mux_q;
    wire [0:0] memdep_phi202_pop36337_pop82373_mux_s;
    reg [0:0] memdep_phi202_pop36337_pop82373_mux_q;
    wire [0:0] notcmp292305_pop58402_mux_s;
    reg [0:0] notcmp292305_pop58402_mux_q;
    wire [0:0] pop57400_mux_s;
    reg [0:0] pop57400_mux_q;
    wire [0:0] reduction_ff_rgb24toyv12_c_2375_mux_s;
    reg [0:0] reduction_ff_rgb24toyv12_c_2375_mux_q;
    wire [0:0] reduction_ff_rgb24toyv12_c_53389_mux_s;
    reg [0:0] reduction_ff_rgb24toyv12_c_53389_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_ff_rgb24toyv12_c62_mux_s;
    reg [0:0] unnamed_ff_rgb24toyv12_c62_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add_ptr309_pop60406_mux(MUX,2)
    assign add_ptr309_pop60406_mux_s = in_valid_in_0;
    always @(add_ptr309_pop60406_mux_s or in_add_ptr309_pop60406_1 or in_add_ptr309_pop60406_0)
    begin
        unique case (add_ptr309_pop60406_mux_s)
            1'b0 : add_ptr309_pop60406_mux_q = in_add_ptr309_pop60406_1;
            1'b1 : add_ptr309_pop60406_mux_q = in_add_ptr309_pop60406_0;
            default : add_ptr309_pop60406_mux_q = 64'b0;
        endcase
    end

    // out_add_ptr309_pop60406(GPOUT,43)
    assign out_add_ptr309_pop60406 = add_ptr309_pop60406_mux_q;

    // add_ptr73307_pop59404_mux(MUX,3)
    assign add_ptr73307_pop59404_mux_s = in_valid_in_0;
    always @(add_ptr73307_pop59404_mux_s or in_add_ptr73307_pop59404_1 or in_add_ptr73307_pop59404_0)
    begin
        unique case (add_ptr73307_pop59404_mux_s)
            1'b0 : add_ptr73307_pop59404_mux_q = in_add_ptr73307_pop59404_1;
            1'b1 : add_ptr73307_pop59404_mux_q = in_add_ptr73307_pop59404_0;
            default : add_ptr73307_pop59404_mux_q = 64'b0;
        endcase
    end

    // out_add_ptr73307_pop59404(GPOUT,44)
    assign out_add_ptr73307_pop59404 = add_ptr73307_pop59404_mux_q;

    // forked255_mux(MUX,4)
    assign forked255_mux_s = in_valid_in_0;
    always @(forked255_mux_s or in_forked255_1 or in_forked255_0)
    begin
        unique case (forked255_mux_s)
            1'b0 : forked255_mux_q = in_forked255_1;
            1'b1 : forked255_mux_q = in_forked255_0;
            default : forked255_mux_q = 1'b0;
        endcase
    end

    // out_forked255(GPOUT,45)
    assign out_forked255 = forked255_mux_q;

    // memdep_phi126_pop27323_pop73381_mux(MUX,36)
    assign memdep_phi126_pop27323_pop73381_mux_s = in_valid_in_0;
    always @(memdep_phi126_pop27323_pop73381_mux_s or in_memdep_phi126_pop27323_pop73381_1 or in_memdep_phi126_pop27323_pop73381_0)
    begin
        unique case (memdep_phi126_pop27323_pop73381_mux_s)
            1'b0 : memdep_phi126_pop27323_pop73381_mux_q = in_memdep_phi126_pop27323_pop73381_1;
            1'b1 : memdep_phi126_pop27323_pop73381_mux_q = in_memdep_phi126_pop27323_pop73381_0;
            default : memdep_phi126_pop27323_pop73381_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi126_pop27323_pop73381(GPOUT,46)
    assign out_memdep_phi126_pop27323_pop73381 = memdep_phi126_pop27323_pop73381_mux_q;

    // memdep_phi133_pop28325_pop74383_mux(MUX,37)
    assign memdep_phi133_pop28325_pop74383_mux_s = in_valid_in_0;
    always @(memdep_phi133_pop28325_pop74383_mux_s or in_memdep_phi133_pop28325_pop74383_1 or in_memdep_phi133_pop28325_pop74383_0)
    begin
        unique case (memdep_phi133_pop28325_pop74383_mux_s)
            1'b0 : memdep_phi133_pop28325_pop74383_mux_q = in_memdep_phi133_pop28325_pop74383_1;
            1'b1 : memdep_phi133_pop28325_pop74383_mux_q = in_memdep_phi133_pop28325_pop74383_0;
            default : memdep_phi133_pop28325_pop74383_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi133_pop28325_pop74383(GPOUT,47)
    assign out_memdep_phi133_pop28325_pop74383 = memdep_phi133_pop28325_pop74383_mux_q;

    // memdep_phi140_pop29327_pop75385_mux(MUX,38)
    assign memdep_phi140_pop29327_pop75385_mux_s = in_valid_in_0;
    always @(memdep_phi140_pop29327_pop75385_mux_s or in_memdep_phi140_pop29327_pop75385_1 or in_memdep_phi140_pop29327_pop75385_0)
    begin
        unique case (memdep_phi140_pop29327_pop75385_mux_s)
            1'b0 : memdep_phi140_pop29327_pop75385_mux_q = in_memdep_phi140_pop29327_pop75385_1;
            1'b1 : memdep_phi140_pop29327_pop75385_mux_q = in_memdep_phi140_pop29327_pop75385_0;
            default : memdep_phi140_pop29327_pop75385_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi140_pop29327_pop75385(GPOUT,48)
    assign out_memdep_phi140_pop29327_pop75385 = memdep_phi140_pop29327_pop75385_mux_q;

    // memdep_phi147_pop30329_pop76387_mux(MUX,39)
    assign memdep_phi147_pop30329_pop76387_mux_s = in_valid_in_0;
    always @(memdep_phi147_pop30329_pop76387_mux_s or in_memdep_phi147_pop30329_pop76387_1 or in_memdep_phi147_pop30329_pop76387_0)
    begin
        unique case (memdep_phi147_pop30329_pop76387_mux_s)
            1'b0 : memdep_phi147_pop30329_pop76387_mux_q = in_memdep_phi147_pop30329_pop76387_1;
            1'b1 : memdep_phi147_pop30329_pop76387_mux_q = in_memdep_phi147_pop30329_pop76387_0;
            default : memdep_phi147_pop30329_pop76387_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi147_pop30329_pop76387(GPOUT,49)
    assign out_memdep_phi147_pop30329_pop76387 = memdep_phi147_pop30329_pop76387_mux_q;

    // memdep_phi155_pop31331_pop77371_mux(MUX,40)
    assign memdep_phi155_pop31331_pop77371_mux_s = in_valid_in_0;
    always @(memdep_phi155_pop31331_pop77371_mux_s or in_memdep_phi155_pop31331_pop77371_1 or in_memdep_phi155_pop31331_pop77371_0)
    begin
        unique case (memdep_phi155_pop31331_pop77371_mux_s)
            1'b0 : memdep_phi155_pop31331_pop77371_mux_q = in_memdep_phi155_pop31331_pop77371_1;
            1'b1 : memdep_phi155_pop31331_pop77371_mux_q = in_memdep_phi155_pop31331_pop77371_0;
            default : memdep_phi155_pop31331_pop77371_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi155_pop31331_pop77371(GPOUT,50)
    assign out_memdep_phi155_pop31331_pop77371 = memdep_phi155_pop31331_pop77371_mux_q;

    // memdep_phi202_pop36337_pop82373_mux(MUX,41)
    assign memdep_phi202_pop36337_pop82373_mux_s = in_valid_in_0;
    always @(memdep_phi202_pop36337_pop82373_mux_s or in_memdep_phi202_pop36337_pop82373_1 or in_memdep_phi202_pop36337_pop82373_0)
    begin
        unique case (memdep_phi202_pop36337_pop82373_mux_s)
            1'b0 : memdep_phi202_pop36337_pop82373_mux_q = in_memdep_phi202_pop36337_pop82373_1;
            1'b1 : memdep_phi202_pop36337_pop82373_mux_q = in_memdep_phi202_pop36337_pop82373_0;
            default : memdep_phi202_pop36337_pop82373_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi202_pop36337_pop82373(GPOUT,51)
    assign out_memdep_phi202_pop36337_pop82373 = memdep_phi202_pop36337_pop82373_mux_q;

    // notcmp292305_pop58402_mux(MUX,42)
    assign notcmp292305_pop58402_mux_s = in_valid_in_0;
    always @(notcmp292305_pop58402_mux_s or in_notcmp292305_pop58402_1 or in_notcmp292305_pop58402_0)
    begin
        unique case (notcmp292305_pop58402_mux_s)
            1'b0 : notcmp292305_pop58402_mux_q = in_notcmp292305_pop58402_1;
            1'b1 : notcmp292305_pop58402_mux_q = in_notcmp292305_pop58402_0;
            default : notcmp292305_pop58402_mux_q = 1'b0;
        endcase
    end

    // out_notcmp292305_pop58402(GPOUT,52)
    assign out_notcmp292305_pop58402 = notcmp292305_pop58402_mux_q;

    // pop57400_mux(MUX,60)
    assign pop57400_mux_s = in_valid_in_0;
    always @(pop57400_mux_s or in_pop57400_1 or in_pop57400_0)
    begin
        unique case (pop57400_mux_s)
            1'b0 : pop57400_mux_q = in_pop57400_1;
            1'b1 : pop57400_mux_q = in_pop57400_0;
            default : pop57400_mux_q = 1'b0;
        endcase
    end

    // out_pop57400(GPOUT,53)
    assign out_pop57400 = pop57400_mux_q;

    // reduction_ff_rgb24toyv12_c_2375_mux(MUX,61)
    assign reduction_ff_rgb24toyv12_c_2375_mux_s = in_valid_in_0;
    always @(reduction_ff_rgb24toyv12_c_2375_mux_s or in_reduction_ff_rgb24toyv12_c_2375_1 or in_reduction_ff_rgb24toyv12_c_2375_0)
    begin
        unique case (reduction_ff_rgb24toyv12_c_2375_mux_s)
            1'b0 : reduction_ff_rgb24toyv12_c_2375_mux_q = in_reduction_ff_rgb24toyv12_c_2375_1;
            1'b1 : reduction_ff_rgb24toyv12_c_2375_mux_q = in_reduction_ff_rgb24toyv12_c_2375_0;
            default : reduction_ff_rgb24toyv12_c_2375_mux_q = 1'b0;
        endcase
    end

    // out_reduction_ff_rgb24toyv12_c_2375(GPOUT,54)
    assign out_reduction_ff_rgb24toyv12_c_2375 = reduction_ff_rgb24toyv12_c_2375_mux_q;

    // reduction_ff_rgb24toyv12_c_53389_mux(MUX,62)
    assign reduction_ff_rgb24toyv12_c_53389_mux_s = in_valid_in_0;
    always @(reduction_ff_rgb24toyv12_c_53389_mux_s or in_reduction_ff_rgb24toyv12_c_53389_1 or in_reduction_ff_rgb24toyv12_c_53389_0)
    begin
        unique case (reduction_ff_rgb24toyv12_c_53389_mux_s)
            1'b0 : reduction_ff_rgb24toyv12_c_53389_mux_q = in_reduction_ff_rgb24toyv12_c_53389_1;
            1'b1 : reduction_ff_rgb24toyv12_c_53389_mux_q = in_reduction_ff_rgb24toyv12_c_53389_0;
            default : reduction_ff_rgb24toyv12_c_53389_mux_q = 1'b0;
        endcase
    end

    // out_reduction_ff_rgb24toyv12_c_53389(GPOUT,55)
    assign out_reduction_ff_rgb24toyv12_c_53389 = reduction_ff_rgb24toyv12_c_53389_mux_q;

    // valid_or(LOGICAL,66)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,63)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,64)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,57)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_ff_rgb24toyv12_c62_mux(MUX,65)
    assign unnamed_ff_rgb24toyv12_c62_mux_s = in_valid_in_0;
    always @(unnamed_ff_rgb24toyv12_c62_mux_s or in_unnamed_ff_rgb24toyv12_c62_1 or in_unnamed_ff_rgb24toyv12_c62_0)
    begin
        unique case (unnamed_ff_rgb24toyv12_c62_mux_s)
            1'b0 : unnamed_ff_rgb24toyv12_c62_mux_q = in_unnamed_ff_rgb24toyv12_c62_1;
            1'b1 : unnamed_ff_rgb24toyv12_c62_mux_q = in_unnamed_ff_rgb24toyv12_c62_0;
            default : unnamed_ff_rgb24toyv12_c62_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_ff_rgb24toyv12_c62(GPOUT,58)
    assign out_unnamed_ff_rgb24toyv12_c62 = unnamed_ff_rgb24toyv12_c62_mux_q;

    // out_valid_out(GPOUT,59)
    assign out_valid_out = valid_or_q;

endmodule
