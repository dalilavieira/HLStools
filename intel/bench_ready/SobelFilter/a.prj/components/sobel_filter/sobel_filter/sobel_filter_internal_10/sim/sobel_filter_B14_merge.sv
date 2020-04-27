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

// SystemVerilog created from sobel_filter_B14_merge
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B14_merge (
    input wire [31:0] in_acl_140242_0,
    input wire [31:0] in_acl_140242_1,
    input wire [31:0] in_acl_141243_0,
    input wire [31:0] in_acl_141243_1,
    input wire [0:0] in_exitcond45164_pop43236_0,
    input wire [0:0] in_exitcond45164_pop43236_1,
    input wire [0:0] in_exitcond45165_pop47248_0,
    input wire [0:0] in_exitcond45165_pop47248_1,
    input wire [0:0] in_forked58_0,
    input wire [0:0] in_forked58_1,
    input wire [63:0] in_idxprom43_i_i78244_0,
    input wire [63:0] in_idxprom43_i_i78244_1,
    input wire [0:0] in_memdep_phi18_pop28179_pop49250_0,
    input wire [0:0] in_memdep_phi18_pop28179_pop49250_1,
    input wire [0:0] in_memdep_phi18_pop28232_0,
    input wire [0:0] in_memdep_phi18_pop28232_1,
    input wire [31:0] in_mul_i_i124149245_0,
    input wire [31:0] in_mul_i_i124149245_1,
    input wire [0:0] in_notcmp131171_pop44240_0,
    input wire [0:0] in_notcmp131171_pop44240_1,
    input wire [0:0] in_notcmp131172_pop48249_0,
    input wire [0:0] in_notcmp131172_pop48249_1,
    input wire [0:0] in_notcmp73247_0,
    input wire [0:0] in_notcmp73247_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_case_assign178246_0_0_tpl,
    input wire [31:0] in_case_assign178246_0_1_tpl,
    input wire [31:0] in_case_assign178246_0_2_tpl,
    input wire [31:0] in_case_assign178246_0_3_tpl,
    input wire [31:0] in_case_assign178246_0_4_tpl,
    input wire [31:0] in_case_assign178246_0_5_tpl,
    input wire [31:0] in_case_assign178246_1_0_tpl,
    input wire [31:0] in_case_assign178246_1_1_tpl,
    input wire [31:0] in_case_assign178246_1_2_tpl,
    input wire [31:0] in_case_assign178246_1_3_tpl,
    input wire [31:0] in_case_assign178246_1_4_tpl,
    input wire [31:0] in_case_assign178246_1_5_tpl,
    output wire [31:0] out_acl_140242,
    output wire [31:0] out_acl_141243,
    output wire [0:0] out_exitcond45164_pop43236,
    output wire [0:0] out_exitcond45165_pop47248,
    output wire [0:0] out_forked58,
    output wire [63:0] out_idxprom43_i_i78244,
    output wire [0:0] out_memdep_phi18_pop28179_pop49250,
    output wire [0:0] out_memdep_phi18_pop28232,
    output wire [31:0] out_mul_i_i124149245,
    output wire [0:0] out_notcmp131171_pop44240,
    output wire [0:0] out_notcmp131172_pop48249,
    output wire [0:0] out_notcmp73247,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_case_assign178246_0_tpl,
    output wire [31:0] out_case_assign178246_1_tpl,
    output wire [31:0] out_case_assign178246_2_tpl,
    output wire [31:0] out_case_assign178246_3_tpl,
    output wire [31:0] out_case_assign178246_4_tpl,
    output wire [31:0] out_case_assign178246_5_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_140242_mux_s;
    reg [31:0] acl_140242_mux_q;
    wire [0:0] acl_141243_mux_s;
    reg [31:0] acl_141243_mux_q;
    wire [0:0] exitcond45164_pop43236_mux_s;
    reg [0:0] exitcond45164_pop43236_mux_q;
    wire [0:0] exitcond45165_pop47248_mux_s;
    reg [0:0] exitcond45165_pop47248_mux_q;
    wire [0:0] forked58_mux_s;
    reg [0:0] forked58_mux_q;
    wire [0:0] idxprom43_i_i78244_mux_s;
    reg [63:0] idxprom43_i_i78244_mux_q;
    wire [0:0] memdep_phi18_pop28179_pop49250_mux_s;
    reg [0:0] memdep_phi18_pop28179_pop49250_mux_q;
    wire [0:0] memdep_phi18_pop28232_mux_s;
    reg [0:0] memdep_phi18_pop28232_mux_q;
    wire [0:0] mul_i_i124149245_mux_s;
    reg [31:0] mul_i_i124149245_mux_q;
    wire [0:0] notcmp131171_pop44240_mux_s;
    reg [0:0] notcmp131171_pop44240_mux_q;
    wire [0:0] notcmp131172_pop48249_mux_s;
    reg [0:0] notcmp131172_pop48249_mux_q;
    wire [0:0] notcmp73247_mux_s;
    reg [0:0] notcmp73247_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    wire [0:0] case_assign178246_mux_0_x_s;
    reg [31:0] case_assign178246_mux_0_x_q;
    wire [0:0] case_assign178246_mux_1_x_s;
    reg [31:0] case_assign178246_mux_1_x_q;
    wire [0:0] case_assign178246_mux_2_x_s;
    reg [31:0] case_assign178246_mux_2_x_q;
    wire [0:0] case_assign178246_mux_3_x_s;
    reg [31:0] case_assign178246_mux_3_x_q;
    wire [0:0] case_assign178246_mux_4_x_s;
    reg [31:0] case_assign178246_mux_4_x_q;
    wire [0:0] case_assign178246_mux_5_x_s;
    reg [31:0] case_assign178246_mux_5_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_140242_mux(MUX,2)
    assign acl_140242_mux_s = in_valid_in_0;
    always @(acl_140242_mux_s or in_acl_140242_1 or in_acl_140242_0)
    begin
        unique case (acl_140242_mux_s)
            1'b0 : acl_140242_mux_q = in_acl_140242_1;
            1'b1 : acl_140242_mux_q = in_acl_140242_0;
            default : acl_140242_mux_q = 32'b0;
        endcase
    end

    // out_acl_140242(GPOUT,62)
    assign out_acl_140242 = acl_140242_mux_q;

    // acl_141243_mux(MUX,3)
    assign acl_141243_mux_s = in_valid_in_0;
    always @(acl_141243_mux_s or in_acl_141243_1 or in_acl_141243_0)
    begin
        unique case (acl_141243_mux_s)
            1'b0 : acl_141243_mux_q = in_acl_141243_1;
            1'b1 : acl_141243_mux_q = in_acl_141243_0;
            default : acl_141243_mux_q = 32'b0;
        endcase
    end

    // out_acl_141243(GPOUT,63)
    assign out_acl_141243 = acl_141243_mux_q;

    // exitcond45164_pop43236_mux(MUX,4)
    assign exitcond45164_pop43236_mux_s = in_valid_in_0;
    always @(exitcond45164_pop43236_mux_s or in_exitcond45164_pop43236_1 or in_exitcond45164_pop43236_0)
    begin
        unique case (exitcond45164_pop43236_mux_s)
            1'b0 : exitcond45164_pop43236_mux_q = in_exitcond45164_pop43236_1;
            1'b1 : exitcond45164_pop43236_mux_q = in_exitcond45164_pop43236_0;
            default : exitcond45164_pop43236_mux_q = 1'b0;
        endcase
    end

    // out_exitcond45164_pop43236(GPOUT,64)
    assign out_exitcond45164_pop43236 = exitcond45164_pop43236_mux_q;

    // exitcond45165_pop47248_mux(MUX,5)
    assign exitcond45165_pop47248_mux_s = in_valid_in_0;
    always @(exitcond45165_pop47248_mux_s or in_exitcond45165_pop47248_1 or in_exitcond45165_pop47248_0)
    begin
        unique case (exitcond45165_pop47248_mux_s)
            1'b0 : exitcond45165_pop47248_mux_q = in_exitcond45165_pop47248_1;
            1'b1 : exitcond45165_pop47248_mux_q = in_exitcond45165_pop47248_0;
            default : exitcond45165_pop47248_mux_q = 1'b0;
        endcase
    end

    // out_exitcond45165_pop47248(GPOUT,65)
    assign out_exitcond45165_pop47248 = exitcond45165_pop47248_mux_q;

    // forked58_mux(MUX,6)
    assign forked58_mux_s = in_valid_in_0;
    always @(forked58_mux_s or in_forked58_1 or in_forked58_0)
    begin
        unique case (forked58_mux_s)
            1'b0 : forked58_mux_q = in_forked58_1;
            1'b1 : forked58_mux_q = in_forked58_0;
            default : forked58_mux_q = 1'b0;
        endcase
    end

    // out_forked58(GPOUT,66)
    assign out_forked58 = forked58_mux_q;

    // idxprom43_i_i78244_mux(MUX,7)
    assign idxprom43_i_i78244_mux_s = in_valid_in_0;
    always @(idxprom43_i_i78244_mux_s or in_idxprom43_i_i78244_1 or in_idxprom43_i_i78244_0)
    begin
        unique case (idxprom43_i_i78244_mux_s)
            1'b0 : idxprom43_i_i78244_mux_q = in_idxprom43_i_i78244_1;
            1'b1 : idxprom43_i_i78244_mux_q = in_idxprom43_i_i78244_0;
            default : idxprom43_i_i78244_mux_q = 64'b0;
        endcase
    end

    // out_idxprom43_i_i78244(GPOUT,67)
    assign out_idxprom43_i_i78244 = idxprom43_i_i78244_mux_q;

    // memdep_phi18_pop28179_pop49250_mux(MUX,8)
    assign memdep_phi18_pop28179_pop49250_mux_s = in_valid_in_0;
    always @(memdep_phi18_pop28179_pop49250_mux_s or in_memdep_phi18_pop28179_pop49250_1 or in_memdep_phi18_pop28179_pop49250_0)
    begin
        unique case (memdep_phi18_pop28179_pop49250_mux_s)
            1'b0 : memdep_phi18_pop28179_pop49250_mux_q = in_memdep_phi18_pop28179_pop49250_1;
            1'b1 : memdep_phi18_pop28179_pop49250_mux_q = in_memdep_phi18_pop28179_pop49250_0;
            default : memdep_phi18_pop28179_pop49250_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi18_pop28179_pop49250(GPOUT,68)
    assign out_memdep_phi18_pop28179_pop49250 = memdep_phi18_pop28179_pop49250_mux_q;

    // memdep_phi18_pop28232_mux(MUX,9)
    assign memdep_phi18_pop28232_mux_s = in_valid_in_0;
    always @(memdep_phi18_pop28232_mux_s or in_memdep_phi18_pop28232_1 or in_memdep_phi18_pop28232_0)
    begin
        unique case (memdep_phi18_pop28232_mux_s)
            1'b0 : memdep_phi18_pop28232_mux_q = in_memdep_phi18_pop28232_1;
            1'b1 : memdep_phi18_pop28232_mux_q = in_memdep_phi18_pop28232_0;
            default : memdep_phi18_pop28232_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi18_pop28232(GPOUT,69)
    assign out_memdep_phi18_pop28232 = memdep_phi18_pop28232_mux_q;

    // mul_i_i124149245_mux(MUX,10)
    assign mul_i_i124149245_mux_s = in_valid_in_0;
    always @(mul_i_i124149245_mux_s or in_mul_i_i124149245_1 or in_mul_i_i124149245_0)
    begin
        unique case (mul_i_i124149245_mux_s)
            1'b0 : mul_i_i124149245_mux_q = in_mul_i_i124149245_1;
            1'b1 : mul_i_i124149245_mux_q = in_mul_i_i124149245_0;
            default : mul_i_i124149245_mux_q = 32'b0;
        endcase
    end

    // out_mul_i_i124149245(GPOUT,70)
    assign out_mul_i_i124149245 = mul_i_i124149245_mux_q;

    // notcmp131171_pop44240_mux(MUX,11)
    assign notcmp131171_pop44240_mux_s = in_valid_in_0;
    always @(notcmp131171_pop44240_mux_s or in_notcmp131171_pop44240_1 or in_notcmp131171_pop44240_0)
    begin
        unique case (notcmp131171_pop44240_mux_s)
            1'b0 : notcmp131171_pop44240_mux_q = in_notcmp131171_pop44240_1;
            1'b1 : notcmp131171_pop44240_mux_q = in_notcmp131171_pop44240_0;
            default : notcmp131171_pop44240_mux_q = 1'b0;
        endcase
    end

    // out_notcmp131171_pop44240(GPOUT,71)
    assign out_notcmp131171_pop44240 = notcmp131171_pop44240_mux_q;

    // notcmp131172_pop48249_mux(MUX,12)
    assign notcmp131172_pop48249_mux_s = in_valid_in_0;
    always @(notcmp131172_pop48249_mux_s or in_notcmp131172_pop48249_1 or in_notcmp131172_pop48249_0)
    begin
        unique case (notcmp131172_pop48249_mux_s)
            1'b0 : notcmp131172_pop48249_mux_q = in_notcmp131172_pop48249_1;
            1'b1 : notcmp131172_pop48249_mux_q = in_notcmp131172_pop48249_0;
            default : notcmp131172_pop48249_mux_q = 1'b0;
        endcase
    end

    // out_notcmp131172_pop48249(GPOUT,72)
    assign out_notcmp131172_pop48249 = notcmp131172_pop48249_mux_q;

    // notcmp73247_mux(MUX,13)
    assign notcmp73247_mux_s = in_valid_in_0;
    always @(notcmp73247_mux_s or in_notcmp73247_1 or in_notcmp73247_0)
    begin
        unique case (notcmp73247_mux_s)
            1'b0 : notcmp73247_mux_q = in_notcmp73247_1;
            1'b1 : notcmp73247_mux_q = in_notcmp73247_0;
            default : notcmp73247_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73247(GPOUT,73)
    assign out_notcmp73247 = notcmp73247_mux_q;

    // valid_or(LOGICAL,16)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,14)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,74)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,15)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,75)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,76)
    assign out_valid_out = valid_or_q;

    // case_assign178246_mux_0_x(MUX,17)
    assign case_assign178246_mux_0_x_s = in_valid_in_0;
    always @(case_assign178246_mux_0_x_s or in_case_assign178246_1_0_tpl or in_case_assign178246_0_0_tpl)
    begin
        unique case (case_assign178246_mux_0_x_s)
            1'b0 : case_assign178246_mux_0_x_q = in_case_assign178246_1_0_tpl;
            1'b1 : case_assign178246_mux_0_x_q = in_case_assign178246_0_0_tpl;
            default : case_assign178246_mux_0_x_q = 32'b0;
        endcase
    end

    // out_case_assign178246_0_tpl(GPOUT,77)
    assign out_case_assign178246_0_tpl = case_assign178246_mux_0_x_q;

    // case_assign178246_mux_1_x(MUX,18)
    assign case_assign178246_mux_1_x_s = in_valid_in_0;
    always @(case_assign178246_mux_1_x_s or in_case_assign178246_1_1_tpl or in_case_assign178246_0_1_tpl)
    begin
        unique case (case_assign178246_mux_1_x_s)
            1'b0 : case_assign178246_mux_1_x_q = in_case_assign178246_1_1_tpl;
            1'b1 : case_assign178246_mux_1_x_q = in_case_assign178246_0_1_tpl;
            default : case_assign178246_mux_1_x_q = 32'b0;
        endcase
    end

    // out_case_assign178246_1_tpl(GPOUT,78)
    assign out_case_assign178246_1_tpl = case_assign178246_mux_1_x_q;

    // case_assign178246_mux_2_x(MUX,19)
    assign case_assign178246_mux_2_x_s = in_valid_in_0;
    always @(case_assign178246_mux_2_x_s or in_case_assign178246_1_2_tpl or in_case_assign178246_0_2_tpl)
    begin
        unique case (case_assign178246_mux_2_x_s)
            1'b0 : case_assign178246_mux_2_x_q = in_case_assign178246_1_2_tpl;
            1'b1 : case_assign178246_mux_2_x_q = in_case_assign178246_0_2_tpl;
            default : case_assign178246_mux_2_x_q = 32'b0;
        endcase
    end

    // out_case_assign178246_2_tpl(GPOUT,79)
    assign out_case_assign178246_2_tpl = case_assign178246_mux_2_x_q;

    // case_assign178246_mux_3_x(MUX,20)
    assign case_assign178246_mux_3_x_s = in_valid_in_0;
    always @(case_assign178246_mux_3_x_s or in_case_assign178246_1_3_tpl or in_case_assign178246_0_3_tpl)
    begin
        unique case (case_assign178246_mux_3_x_s)
            1'b0 : case_assign178246_mux_3_x_q = in_case_assign178246_1_3_tpl;
            1'b1 : case_assign178246_mux_3_x_q = in_case_assign178246_0_3_tpl;
            default : case_assign178246_mux_3_x_q = 32'b0;
        endcase
    end

    // out_case_assign178246_3_tpl(GPOUT,80)
    assign out_case_assign178246_3_tpl = case_assign178246_mux_3_x_q;

    // case_assign178246_mux_4_x(MUX,21)
    assign case_assign178246_mux_4_x_s = in_valid_in_0;
    always @(case_assign178246_mux_4_x_s or in_case_assign178246_1_4_tpl or in_case_assign178246_0_4_tpl)
    begin
        unique case (case_assign178246_mux_4_x_s)
            1'b0 : case_assign178246_mux_4_x_q = in_case_assign178246_1_4_tpl;
            1'b1 : case_assign178246_mux_4_x_q = in_case_assign178246_0_4_tpl;
            default : case_assign178246_mux_4_x_q = 32'b0;
        endcase
    end

    // out_case_assign178246_4_tpl(GPOUT,81)
    assign out_case_assign178246_4_tpl = case_assign178246_mux_4_x_q;

    // case_assign178246_mux_5_x(MUX,22)
    assign case_assign178246_mux_5_x_s = in_valid_in_0;
    always @(case_assign178246_mux_5_x_s or in_case_assign178246_1_5_tpl or in_case_assign178246_0_5_tpl)
    begin
        unique case (case_assign178246_mux_5_x_s)
            1'b0 : case_assign178246_mux_5_x_q = in_case_assign178246_1_5_tpl;
            1'b1 : case_assign178246_mux_5_x_q = in_case_assign178246_0_5_tpl;
            default : case_assign178246_mux_5_x_q = 32'b0;
        endcase
    end

    // out_case_assign178246_5_tpl(GPOUT,82)
    assign out_case_assign178246_5_tpl = case_assign178246_mux_5_x_q;

endmodule
