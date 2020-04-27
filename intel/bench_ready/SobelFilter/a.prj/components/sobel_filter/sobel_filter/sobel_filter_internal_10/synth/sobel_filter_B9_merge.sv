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

// SystemVerilog created from sobel_filter_B9_merge
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B9_merge (
    input wire [31:0] in_acl_113208_0,
    input wire [31:0] in_acl_113208_1,
    input wire [31:0] in_acl_114209_0,
    input wire [31:0] in_acl_114209_1,
    input wire [31:0] in_acl_207_0,
    input wire [31:0] in_acl_207_1,
    input wire [0:0] in_exitcond45161_pop32201_0,
    input wire [0:0] in_exitcond45161_pop32201_1,
    input wire [0:0] in_exitcond45162_pop37214_0,
    input wire [0:0] in_exitcond45162_pop37214_1,
    input wire [0:0] in_forked156157_pop31197_0,
    input wire [0:0] in_forked156157_pop31197_1,
    input wire [0:0] in_forked156158_pop36213_0,
    input wire [0:0] in_forked156158_pop36213_1,
    input wire [0:0] in_forked95_0,
    input wire [0:0] in_forked95_1,
    input wire [63:0] in_idxprom43_i_i210_0,
    input wire [63:0] in_idxprom43_i_i210_1,
    input wire [0:0] in_memdep_phi_pop27176_pop39216_0,
    input wire [0:0] in_memdep_phi_pop27176_pop39216_1,
    input wire [0:0] in_memdep_phi_pop27194_0,
    input wire [0:0] in_memdep_phi_pop27194_1,
    input wire [0:0] in_notcmp110212_0,
    input wire [0:0] in_notcmp110212_1,
    input wire [0:0] in_notcmp131168_pop33205_0,
    input wire [0:0] in_notcmp131168_pop33205_1,
    input wire [0:0] in_notcmp131169_pop38215_0,
    input wire [0:0] in_notcmp131169_pop38215_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_case_assign172211_0_0_tpl,
    input wire [31:0] in_case_assign172211_0_1_tpl,
    input wire [31:0] in_case_assign172211_0_2_tpl,
    input wire [31:0] in_case_assign172211_0_3_tpl,
    input wire [31:0] in_case_assign172211_0_4_tpl,
    input wire [31:0] in_case_assign172211_0_5_tpl,
    input wire [31:0] in_case_assign172211_1_0_tpl,
    input wire [31:0] in_case_assign172211_1_1_tpl,
    input wire [31:0] in_case_assign172211_1_2_tpl,
    input wire [31:0] in_case_assign172211_1_3_tpl,
    input wire [31:0] in_case_assign172211_1_4_tpl,
    input wire [31:0] in_case_assign172211_1_5_tpl,
    output wire [31:0] out_acl_113208,
    output wire [31:0] out_acl_114209,
    output wire [31:0] out_acl_207,
    output wire [0:0] out_exitcond45161_pop32201,
    output wire [0:0] out_exitcond45162_pop37214,
    output wire [0:0] out_forked156157_pop31197,
    output wire [0:0] out_forked156158_pop36213,
    output wire [0:0] out_forked95,
    output wire [63:0] out_idxprom43_i_i210,
    output wire [0:0] out_memdep_phi_pop27176_pop39216,
    output wire [0:0] out_memdep_phi_pop27194,
    output wire [0:0] out_notcmp110212,
    output wire [0:0] out_notcmp131168_pop33205,
    output wire [0:0] out_notcmp131169_pop38215,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_case_assign172211_0_tpl,
    output wire [31:0] out_case_assign172211_1_tpl,
    output wire [31:0] out_case_assign172211_2_tpl,
    output wire [31:0] out_case_assign172211_3_tpl,
    output wire [31:0] out_case_assign172211_4_tpl,
    output wire [31:0] out_case_assign172211_5_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] acl_113208_mux_s;
    reg [31:0] acl_113208_mux_q;
    wire [0:0] acl_114209_mux_s;
    reg [31:0] acl_114209_mux_q;
    wire [0:0] acl_207_mux_s;
    reg [31:0] acl_207_mux_q;
    wire [0:0] exitcond45161_pop32201_mux_s;
    reg [0:0] exitcond45161_pop32201_mux_q;
    wire [0:0] exitcond45162_pop37214_mux_s;
    reg [0:0] exitcond45162_pop37214_mux_q;
    wire [0:0] forked156157_pop31197_mux_s;
    reg [0:0] forked156157_pop31197_mux_q;
    wire [0:0] forked156158_pop36213_mux_s;
    reg [0:0] forked156158_pop36213_mux_q;
    wire [0:0] forked95_mux_s;
    reg [0:0] forked95_mux_q;
    wire [0:0] idxprom43_i_i210_mux_s;
    reg [63:0] idxprom43_i_i210_mux_q;
    wire [0:0] memdep_phi_pop27176_pop39216_mux_s;
    reg [0:0] memdep_phi_pop27176_pop39216_mux_q;
    wire [0:0] memdep_phi_pop27194_mux_s;
    reg [0:0] memdep_phi_pop27194_mux_q;
    wire [0:0] notcmp110212_mux_s;
    reg [0:0] notcmp110212_mux_q;
    wire [0:0] notcmp131168_pop33205_mux_s;
    reg [0:0] notcmp131168_pop33205_mux_q;
    wire [0:0] notcmp131169_pop38215_mux_s;
    reg [0:0] notcmp131169_pop38215_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    wire [0:0] case_assign172211_mux_0_x_s;
    reg [31:0] case_assign172211_mux_0_x_q;
    wire [0:0] case_assign172211_mux_1_x_s;
    reg [31:0] case_assign172211_mux_1_x_q;
    wire [0:0] case_assign172211_mux_2_x_s;
    reg [31:0] case_assign172211_mux_2_x_q;
    wire [0:0] case_assign172211_mux_3_x_s;
    reg [31:0] case_assign172211_mux_3_x_q;
    wire [0:0] case_assign172211_mux_4_x_s;
    reg [31:0] case_assign172211_mux_4_x_q;
    wire [0:0] case_assign172211_mux_5_x_s;
    reg [31:0] case_assign172211_mux_5_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // acl_113208_mux(MUX,2)
    assign acl_113208_mux_s = in_valid_in_0;
    always @(acl_113208_mux_s or in_acl_113208_1 or in_acl_113208_0)
    begin
        unique case (acl_113208_mux_s)
            1'b0 : acl_113208_mux_q = in_acl_113208_1;
            1'b1 : acl_113208_mux_q = in_acl_113208_0;
            default : acl_113208_mux_q = 32'b0;
        endcase
    end

    // out_acl_113208(GPOUT,68)
    assign out_acl_113208 = acl_113208_mux_q;

    // acl_114209_mux(MUX,3)
    assign acl_114209_mux_s = in_valid_in_0;
    always @(acl_114209_mux_s or in_acl_114209_1 or in_acl_114209_0)
    begin
        unique case (acl_114209_mux_s)
            1'b0 : acl_114209_mux_q = in_acl_114209_1;
            1'b1 : acl_114209_mux_q = in_acl_114209_0;
            default : acl_114209_mux_q = 32'b0;
        endcase
    end

    // out_acl_114209(GPOUT,69)
    assign out_acl_114209 = acl_114209_mux_q;

    // acl_207_mux(MUX,4)
    assign acl_207_mux_s = in_valid_in_0;
    always @(acl_207_mux_s or in_acl_207_1 or in_acl_207_0)
    begin
        unique case (acl_207_mux_s)
            1'b0 : acl_207_mux_q = in_acl_207_1;
            1'b1 : acl_207_mux_q = in_acl_207_0;
            default : acl_207_mux_q = 32'b0;
        endcase
    end

    // out_acl_207(GPOUT,70)
    assign out_acl_207 = acl_207_mux_q;

    // exitcond45161_pop32201_mux(MUX,5)
    assign exitcond45161_pop32201_mux_s = in_valid_in_0;
    always @(exitcond45161_pop32201_mux_s or in_exitcond45161_pop32201_1 or in_exitcond45161_pop32201_0)
    begin
        unique case (exitcond45161_pop32201_mux_s)
            1'b0 : exitcond45161_pop32201_mux_q = in_exitcond45161_pop32201_1;
            1'b1 : exitcond45161_pop32201_mux_q = in_exitcond45161_pop32201_0;
            default : exitcond45161_pop32201_mux_q = 1'b0;
        endcase
    end

    // out_exitcond45161_pop32201(GPOUT,71)
    assign out_exitcond45161_pop32201 = exitcond45161_pop32201_mux_q;

    // exitcond45162_pop37214_mux(MUX,6)
    assign exitcond45162_pop37214_mux_s = in_valid_in_0;
    always @(exitcond45162_pop37214_mux_s or in_exitcond45162_pop37214_1 or in_exitcond45162_pop37214_0)
    begin
        unique case (exitcond45162_pop37214_mux_s)
            1'b0 : exitcond45162_pop37214_mux_q = in_exitcond45162_pop37214_1;
            1'b1 : exitcond45162_pop37214_mux_q = in_exitcond45162_pop37214_0;
            default : exitcond45162_pop37214_mux_q = 1'b0;
        endcase
    end

    // out_exitcond45162_pop37214(GPOUT,72)
    assign out_exitcond45162_pop37214 = exitcond45162_pop37214_mux_q;

    // forked156157_pop31197_mux(MUX,7)
    assign forked156157_pop31197_mux_s = in_valid_in_0;
    always @(forked156157_pop31197_mux_s or in_forked156157_pop31197_1 or in_forked156157_pop31197_0)
    begin
        unique case (forked156157_pop31197_mux_s)
            1'b0 : forked156157_pop31197_mux_q = in_forked156157_pop31197_1;
            1'b1 : forked156157_pop31197_mux_q = in_forked156157_pop31197_0;
            default : forked156157_pop31197_mux_q = 1'b0;
        endcase
    end

    // out_forked156157_pop31197(GPOUT,73)
    assign out_forked156157_pop31197 = forked156157_pop31197_mux_q;

    // forked156158_pop36213_mux(MUX,8)
    assign forked156158_pop36213_mux_s = in_valid_in_0;
    always @(forked156158_pop36213_mux_s or in_forked156158_pop36213_1 or in_forked156158_pop36213_0)
    begin
        unique case (forked156158_pop36213_mux_s)
            1'b0 : forked156158_pop36213_mux_q = in_forked156158_pop36213_1;
            1'b1 : forked156158_pop36213_mux_q = in_forked156158_pop36213_0;
            default : forked156158_pop36213_mux_q = 1'b0;
        endcase
    end

    // out_forked156158_pop36213(GPOUT,74)
    assign out_forked156158_pop36213 = forked156158_pop36213_mux_q;

    // forked95_mux(MUX,9)
    assign forked95_mux_s = in_valid_in_0;
    always @(forked95_mux_s or in_forked95_1 or in_forked95_0)
    begin
        unique case (forked95_mux_s)
            1'b0 : forked95_mux_q = in_forked95_1;
            1'b1 : forked95_mux_q = in_forked95_0;
            default : forked95_mux_q = 1'b0;
        endcase
    end

    // out_forked95(GPOUT,75)
    assign out_forked95 = forked95_mux_q;

    // idxprom43_i_i210_mux(MUX,10)
    assign idxprom43_i_i210_mux_s = in_valid_in_0;
    always @(idxprom43_i_i210_mux_s or in_idxprom43_i_i210_1 or in_idxprom43_i_i210_0)
    begin
        unique case (idxprom43_i_i210_mux_s)
            1'b0 : idxprom43_i_i210_mux_q = in_idxprom43_i_i210_1;
            1'b1 : idxprom43_i_i210_mux_q = in_idxprom43_i_i210_0;
            default : idxprom43_i_i210_mux_q = 64'b0;
        endcase
    end

    // out_idxprom43_i_i210(GPOUT,76)
    assign out_idxprom43_i_i210 = idxprom43_i_i210_mux_q;

    // memdep_phi_pop27176_pop39216_mux(MUX,11)
    assign memdep_phi_pop27176_pop39216_mux_s = in_valid_in_0;
    always @(memdep_phi_pop27176_pop39216_mux_s or in_memdep_phi_pop27176_pop39216_1 or in_memdep_phi_pop27176_pop39216_0)
    begin
        unique case (memdep_phi_pop27176_pop39216_mux_s)
            1'b0 : memdep_phi_pop27176_pop39216_mux_q = in_memdep_phi_pop27176_pop39216_1;
            1'b1 : memdep_phi_pop27176_pop39216_mux_q = in_memdep_phi_pop27176_pop39216_0;
            default : memdep_phi_pop27176_pop39216_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop27176_pop39216(GPOUT,77)
    assign out_memdep_phi_pop27176_pop39216 = memdep_phi_pop27176_pop39216_mux_q;

    // memdep_phi_pop27194_mux(MUX,12)
    assign memdep_phi_pop27194_mux_s = in_valid_in_0;
    always @(memdep_phi_pop27194_mux_s or in_memdep_phi_pop27194_1 or in_memdep_phi_pop27194_0)
    begin
        unique case (memdep_phi_pop27194_mux_s)
            1'b0 : memdep_phi_pop27194_mux_q = in_memdep_phi_pop27194_1;
            1'b1 : memdep_phi_pop27194_mux_q = in_memdep_phi_pop27194_0;
            default : memdep_phi_pop27194_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop27194(GPOUT,78)
    assign out_memdep_phi_pop27194 = memdep_phi_pop27194_mux_q;

    // notcmp110212_mux(MUX,13)
    assign notcmp110212_mux_s = in_valid_in_0;
    always @(notcmp110212_mux_s or in_notcmp110212_1 or in_notcmp110212_0)
    begin
        unique case (notcmp110212_mux_s)
            1'b0 : notcmp110212_mux_q = in_notcmp110212_1;
            1'b1 : notcmp110212_mux_q = in_notcmp110212_0;
            default : notcmp110212_mux_q = 1'b0;
        endcase
    end

    // out_notcmp110212(GPOUT,79)
    assign out_notcmp110212 = notcmp110212_mux_q;

    // notcmp131168_pop33205_mux(MUX,14)
    assign notcmp131168_pop33205_mux_s = in_valid_in_0;
    always @(notcmp131168_pop33205_mux_s or in_notcmp131168_pop33205_1 or in_notcmp131168_pop33205_0)
    begin
        unique case (notcmp131168_pop33205_mux_s)
            1'b0 : notcmp131168_pop33205_mux_q = in_notcmp131168_pop33205_1;
            1'b1 : notcmp131168_pop33205_mux_q = in_notcmp131168_pop33205_0;
            default : notcmp131168_pop33205_mux_q = 1'b0;
        endcase
    end

    // out_notcmp131168_pop33205(GPOUT,80)
    assign out_notcmp131168_pop33205 = notcmp131168_pop33205_mux_q;

    // notcmp131169_pop38215_mux(MUX,15)
    assign notcmp131169_pop38215_mux_s = in_valid_in_0;
    always @(notcmp131169_pop38215_mux_s or in_notcmp131169_pop38215_1 or in_notcmp131169_pop38215_0)
    begin
        unique case (notcmp131169_pop38215_mux_s)
            1'b0 : notcmp131169_pop38215_mux_q = in_notcmp131169_pop38215_1;
            1'b1 : notcmp131169_pop38215_mux_q = in_notcmp131169_pop38215_0;
            default : notcmp131169_pop38215_mux_q = 1'b0;
        endcase
    end

    // out_notcmp131169_pop38215(GPOUT,81)
    assign out_notcmp131169_pop38215 = notcmp131169_pop38215_mux_q;

    // valid_or(LOGICAL,18)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,16)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,82)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,17)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,83)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,84)
    assign out_valid_out = valid_or_q;

    // case_assign172211_mux_0_x(MUX,19)
    assign case_assign172211_mux_0_x_s = in_valid_in_0;
    always @(case_assign172211_mux_0_x_s or in_case_assign172211_1_0_tpl or in_case_assign172211_0_0_tpl)
    begin
        unique case (case_assign172211_mux_0_x_s)
            1'b0 : case_assign172211_mux_0_x_q = in_case_assign172211_1_0_tpl;
            1'b1 : case_assign172211_mux_0_x_q = in_case_assign172211_0_0_tpl;
            default : case_assign172211_mux_0_x_q = 32'b0;
        endcase
    end

    // out_case_assign172211_0_tpl(GPOUT,85)
    assign out_case_assign172211_0_tpl = case_assign172211_mux_0_x_q;

    // case_assign172211_mux_1_x(MUX,20)
    assign case_assign172211_mux_1_x_s = in_valid_in_0;
    always @(case_assign172211_mux_1_x_s or in_case_assign172211_1_1_tpl or in_case_assign172211_0_1_tpl)
    begin
        unique case (case_assign172211_mux_1_x_s)
            1'b0 : case_assign172211_mux_1_x_q = in_case_assign172211_1_1_tpl;
            1'b1 : case_assign172211_mux_1_x_q = in_case_assign172211_0_1_tpl;
            default : case_assign172211_mux_1_x_q = 32'b0;
        endcase
    end

    // out_case_assign172211_1_tpl(GPOUT,86)
    assign out_case_assign172211_1_tpl = case_assign172211_mux_1_x_q;

    // case_assign172211_mux_2_x(MUX,21)
    assign case_assign172211_mux_2_x_s = in_valid_in_0;
    always @(case_assign172211_mux_2_x_s or in_case_assign172211_1_2_tpl or in_case_assign172211_0_2_tpl)
    begin
        unique case (case_assign172211_mux_2_x_s)
            1'b0 : case_assign172211_mux_2_x_q = in_case_assign172211_1_2_tpl;
            1'b1 : case_assign172211_mux_2_x_q = in_case_assign172211_0_2_tpl;
            default : case_assign172211_mux_2_x_q = 32'b0;
        endcase
    end

    // out_case_assign172211_2_tpl(GPOUT,87)
    assign out_case_assign172211_2_tpl = case_assign172211_mux_2_x_q;

    // case_assign172211_mux_3_x(MUX,22)
    assign case_assign172211_mux_3_x_s = in_valid_in_0;
    always @(case_assign172211_mux_3_x_s or in_case_assign172211_1_3_tpl or in_case_assign172211_0_3_tpl)
    begin
        unique case (case_assign172211_mux_3_x_s)
            1'b0 : case_assign172211_mux_3_x_q = in_case_assign172211_1_3_tpl;
            1'b1 : case_assign172211_mux_3_x_q = in_case_assign172211_0_3_tpl;
            default : case_assign172211_mux_3_x_q = 32'b0;
        endcase
    end

    // out_case_assign172211_3_tpl(GPOUT,88)
    assign out_case_assign172211_3_tpl = case_assign172211_mux_3_x_q;

    // case_assign172211_mux_4_x(MUX,23)
    assign case_assign172211_mux_4_x_s = in_valid_in_0;
    always @(case_assign172211_mux_4_x_s or in_case_assign172211_1_4_tpl or in_case_assign172211_0_4_tpl)
    begin
        unique case (case_assign172211_mux_4_x_s)
            1'b0 : case_assign172211_mux_4_x_q = in_case_assign172211_1_4_tpl;
            1'b1 : case_assign172211_mux_4_x_q = in_case_assign172211_0_4_tpl;
            default : case_assign172211_mux_4_x_q = 32'b0;
        endcase
    end

    // out_case_assign172211_4_tpl(GPOUT,89)
    assign out_case_assign172211_4_tpl = case_assign172211_mux_4_x_q;

    // case_assign172211_mux_5_x(MUX,24)
    assign case_assign172211_mux_5_x_s = in_valid_in_0;
    always @(case_assign172211_mux_5_x_s or in_case_assign172211_1_5_tpl or in_case_assign172211_0_5_tpl)
    begin
        unique case (case_assign172211_mux_5_x_s)
            1'b0 : case_assign172211_mux_5_x_q = in_case_assign172211_1_5_tpl;
            1'b1 : case_assign172211_mux_5_x_q = in_case_assign172211_0_5_tpl;
            default : case_assign172211_mux_5_x_q = 32'b0;
        endcase
    end

    // out_case_assign172211_5_tpl(GPOUT,90)
    assign out_case_assign172211_5_tpl = case_assign172211_mux_5_x_q;

endmodule
