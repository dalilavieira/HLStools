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

// SystemVerilog created from ff_rgb24toyv12_c_B3_branch
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_B3_branch (
    input wire [63:0] in_add_ptr309_pop60,
    input wire [63:0] in_add_ptr73307_pop59,
    input wire [0:0] in_cmp75304_pop56,
    input wire [0:0] in_lm1_toi1_intcast17,
    input wire [0:0] in_masked278,
    input wire [0:0] in_memdep_phi126_pop27323_pop73,
    input wire [0:0] in_memdep_phi133_pop28325_pop74,
    input wire [0:0] in_memdep_phi140_pop29327_pop75,
    input wire [0:0] in_memdep_phi147_pop30329_pop76,
    input wire [0:0] in_memdep_phi155_pop31331_pop77,
    input wire [0:0] in_memdep_phi202_pop36337_pop82,
    input wire [0:0] in_notcmp292305_pop58,
    input wire [0:0] in_pop57,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_2,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_53,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add_ptr309_pop60,
    output wire [63:0] out_add_ptr73307_pop59,
    output wire [0:0] out_cmp75304_pop56,
    output wire [0:0] out_lm1_toi1_intcast17,
    output wire [0:0] out_memdep_phi126_pop27323_pop73,
    output wire [0:0] out_memdep_phi133_pop28325_pop74,
    output wire [0:0] out_memdep_phi140_pop29327_pop75,
    output wire [0:0] out_memdep_phi147_pop30329_pop76,
    output wire [0:0] out_memdep_phi155_pop31331_pop77,
    output wire [0:0] out_memdep_phi202_pop36337_pop82,
    output wire [0:0] out_notcmp292305_pop58,
    output wire [0:0] out_pop57,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_2,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_53,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [63:0] add_ptr309_pop60_reg_q;
    reg [63:0] add_ptr73307_pop59_reg_q;
    reg [0:0] cmp75304_pop56_reg_q;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_enable_q;
    wire [0:0] ff_rgb24toyv12_c_B3_branch_enable_not_q;
    reg [0:0] lm1_toi1_intcast17_reg_q;
    wire [0:0] masked278_cmp_q;
    reg [0:0] memdep_phi126_pop27323_pop73_reg_q;
    reg [0:0] memdep_phi133_pop28325_pop74_reg_q;
    reg [0:0] memdep_phi140_pop29327_pop75_reg_q;
    reg [0:0] memdep_phi147_pop30329_pop76_reg_q;
    reg [0:0] memdep_phi155_pop31331_pop77_reg_q;
    reg [0:0] memdep_phi202_pop36337_pop82_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] notcmp292305_pop58_reg_q;
    reg [0:0] pop57_reg_q;
    reg [0:0] reduction_ff_rgb24toyv12_c_2_reg_q;
    reg [0:0] reduction_ff_rgb24toyv12_c_53_reg_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,34)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // masked278_cmp(LOGICAL,26)
    assign masked278_cmp_q = ~ (in_masked278);

    // valid_out_1_and(LOGICAL,63)
    assign valid_out_1_and_q = in_valid_in & masked278_cmp_q;

    // valid_1_reg(REG,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,36)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,38)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,33)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,62)
    assign valid_out_0_and_q = in_valid_in & in_masked278;

    // valid_0_reg(REG,60)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,35)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,37)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // ff_rgb24toyv12_c_B3_branch_enable(LOGICAL,5)
    assign ff_rgb24toyv12_c_B3_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // add_ptr309_pop60_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            add_ptr309_pop60_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            add_ptr309_pop60_reg_q <= in_add_ptr309_pop60;
        end
    end

    // out_add_ptr309_pop60(GPOUT,40)
    assign out_add_ptr309_pop60 = add_ptr309_pop60_reg_q;

    // add_ptr73307_pop59_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            add_ptr73307_pop59_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            add_ptr73307_pop59_reg_q <= in_add_ptr73307_pop59;
        end
    end

    // out_add_ptr73307_pop59(GPOUT,41)
    assign out_add_ptr73307_pop59 = add_ptr73307_pop59_reg_q;

    // cmp75304_pop56_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            cmp75304_pop56_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            cmp75304_pop56_reg_q <= in_cmp75304_pop56;
        end
    end

    // out_cmp75304_pop56(GPOUT,42)
    assign out_cmp75304_pop56 = cmp75304_pop56_reg_q;

    // lm1_toi1_intcast17_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lm1_toi1_intcast17_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            lm1_toi1_intcast17_reg_q <= in_lm1_toi1_intcast17;
        end
    end

    // out_lm1_toi1_intcast17(GPOUT,43)
    assign out_lm1_toi1_intcast17 = lm1_toi1_intcast17_reg_q;

    // memdep_phi126_pop27323_pop73_reg(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_phi126_pop27323_pop73_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            memdep_phi126_pop27323_pop73_reg_q <= in_memdep_phi126_pop27323_pop73;
        end
    end

    // out_memdep_phi126_pop27323_pop73(GPOUT,44)
    assign out_memdep_phi126_pop27323_pop73 = memdep_phi126_pop27323_pop73_reg_q;

    // memdep_phi133_pop28325_pop74_reg(REG,28)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_phi133_pop28325_pop74_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            memdep_phi133_pop28325_pop74_reg_q <= in_memdep_phi133_pop28325_pop74;
        end
    end

    // out_memdep_phi133_pop28325_pop74(GPOUT,45)
    assign out_memdep_phi133_pop28325_pop74 = memdep_phi133_pop28325_pop74_reg_q;

    // memdep_phi140_pop29327_pop75_reg(REG,29)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_phi140_pop29327_pop75_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            memdep_phi140_pop29327_pop75_reg_q <= in_memdep_phi140_pop29327_pop75;
        end
    end

    // out_memdep_phi140_pop29327_pop75(GPOUT,46)
    assign out_memdep_phi140_pop29327_pop75 = memdep_phi140_pop29327_pop75_reg_q;

    // memdep_phi147_pop30329_pop76_reg(REG,30)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_phi147_pop30329_pop76_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            memdep_phi147_pop30329_pop76_reg_q <= in_memdep_phi147_pop30329_pop76;
        end
    end

    // out_memdep_phi147_pop30329_pop76(GPOUT,47)
    assign out_memdep_phi147_pop30329_pop76 = memdep_phi147_pop30329_pop76_reg_q;

    // memdep_phi155_pop31331_pop77_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_phi155_pop31331_pop77_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            memdep_phi155_pop31331_pop77_reg_q <= in_memdep_phi155_pop31331_pop77;
        end
    end

    // out_memdep_phi155_pop31331_pop77(GPOUT,48)
    assign out_memdep_phi155_pop31331_pop77 = memdep_phi155_pop31331_pop77_reg_q;

    // memdep_phi202_pop36337_pop82_reg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_phi202_pop36337_pop82_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            memdep_phi202_pop36337_pop82_reg_q <= in_memdep_phi202_pop36337_pop82;
        end
    end

    // out_memdep_phi202_pop36337_pop82(GPOUT,49)
    assign out_memdep_phi202_pop36337_pop82 = memdep_phi202_pop36337_pop82_reg_q;

    // notcmp292305_pop58_reg(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            notcmp292305_pop58_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            notcmp292305_pop58_reg_q <= in_notcmp292305_pop58;
        end
    end

    // out_notcmp292305_pop58(GPOUT,50)
    assign out_notcmp292305_pop58 = notcmp292305_pop58_reg_q;

    // pop57_reg(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            pop57_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            pop57_reg_q <= in_pop57;
        end
    end

    // out_pop57(GPOUT,51)
    assign out_pop57 = pop57_reg_q;

    // reduction_ff_rgb24toyv12_c_2_reg(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            reduction_ff_rgb24toyv12_c_2_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            reduction_ff_rgb24toyv12_c_2_reg_q <= in_reduction_ff_rgb24toyv12_c_2;
        end
    end

    // out_reduction_ff_rgb24toyv12_c_2(GPOUT,52)
    assign out_reduction_ff_rgb24toyv12_c_2 = reduction_ff_rgb24toyv12_c_2_reg_q;

    // reduction_ff_rgb24toyv12_c_53_reg(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            reduction_ff_rgb24toyv12_c_53_reg_q <= $unsigned(1'b0);
        end
        else if (ff_rgb24toyv12_c_B3_branch_enable_q == 1'b1)
        begin
            reduction_ff_rgb24toyv12_c_53_reg_q <= in_reduction_ff_rgb24toyv12_c_53;
        end
    end

    // out_reduction_ff_rgb24toyv12_c_53(GPOUT,53)
    assign out_reduction_ff_rgb24toyv12_c_53 = reduction_ff_rgb24toyv12_c_53_reg_q;

    // ff_rgb24toyv12_c_B3_branch_enable_not(LOGICAL,6)
    assign ff_rgb24toyv12_c_B3_branch_enable_not_q = ~ (ff_rgb24toyv12_c_B3_branch_enable_q);

    // out_stall_out(GPOUT,54)
    assign out_stall_out = ff_rgb24toyv12_c_B3_branch_enable_not_q;

    // out_valid_out_0(GPOUT,55)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,56)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
