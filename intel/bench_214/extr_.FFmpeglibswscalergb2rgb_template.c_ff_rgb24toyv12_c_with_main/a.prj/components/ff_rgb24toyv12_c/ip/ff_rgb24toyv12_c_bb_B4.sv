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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B4
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B4 (
    output wire [0:0] out_feedback_out_26,
    input wire [0:0] in_feedback_stall_in_26,
    output wire [0:0] out_feedback_valid_out_26,
    input wire [63:0] in_add_ptr309_pop6014_0,
    input wire [63:0] in_add_ptr73307_pop5913_0,
    input wire [0:0] in_cmp75304_pop5610_0,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_lm1_toi1_intcast174_0,
    input wire [0:0] in_memdep_phi126_pop27323_pop735_0,
    input wire [0:0] in_memdep_phi133_pop28325_pop746_0,
    input wire [0:0] in_memdep_phi140_pop29327_pop757_0,
    input wire [0:0] in_memdep_phi147_pop30329_pop768_0,
    input wire [0:0] in_memdep_phi155_pop31331_pop771_0,
    input wire [0:0] in_memdep_phi202_pop36337_pop822_0,
    input wire [0:0] in_notcmp292305_pop5812_0,
    input wire [0:0] in_pop5711_0,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_23_0,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_539_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_add_ptr309_pop6014,
    output wire [63:0] out_add_ptr73307_pop5913,
    output wire [0:0] out_memdep_phi126_pop27323_pop735,
    output wire [0:0] out_memdep_phi133_pop28325_pop746,
    output wire [0:0] out_memdep_phi140_pop29327_pop757,
    output wire [0:0] out_memdep_phi147_pop30329_pop768,
    output wire [0:0] out_memdep_phi155_pop31331_pop771,
    output wire [0:0] out_memdep_phi202_pop36337_pop822,
    output wire [0:0] out_notcmp292305_pop5812,
    output wire [0:0] out_pop5711,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_23,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_539,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c61,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_add_ptr309_pop6014;
    wire [63:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_add_ptr73307_pop5913;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_feedback_out_26;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_feedback_valid_out_26;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi126_pop27323_pop735;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi133_pop28325_pop746;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi140_pop29327_pop757;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi147_pop30329_pop768;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi155_pop31331_pop771;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi202_pop36337_pop822;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_notcmp292305_pop5812;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_pop5711;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_reduction_ff_rgb24toyv12_c_23;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_reduction_ff_rgb24toyv12_c_539;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_unnamed_ff_rgb24toyv12_c61;
    wire [0:0] bb_ff_rgb24toyv12_c_B4_stall_region_out_valid_out;
    wire [63:0] ff_rgb24toyv12_c_B4_branch_out_add_ptr309_pop6014;
    wire [63:0] ff_rgb24toyv12_c_B4_branch_out_add_ptr73307_pop5913;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_memdep_phi126_pop27323_pop735;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_memdep_phi133_pop28325_pop746;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_memdep_phi140_pop29327_pop757;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_memdep_phi147_pop30329_pop768;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_memdep_phi155_pop31331_pop771;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_memdep_phi202_pop36337_pop822;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_notcmp292305_pop5812;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_pop5711;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_reduction_ff_rgb24toyv12_c_23;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_reduction_ff_rgb24toyv12_c_539;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_stall_out;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_unnamed_ff_rgb24toyv12_c61;
    wire [0:0] ff_rgb24toyv12_c_B4_branch_out_valid_out_0;
    wire [63:0] ff_rgb24toyv12_c_B4_merge_out_add_ptr309_pop6014;
    wire [63:0] ff_rgb24toyv12_c_B4_merge_out_add_ptr73307_pop5913;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_cmp75304_pop5610;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_lm1_toi1_intcast174;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_memdep_phi126_pop27323_pop735;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_memdep_phi133_pop28325_pop746;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_memdep_phi140_pop29327_pop757;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_memdep_phi147_pop30329_pop768;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_memdep_phi155_pop31331_pop771;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_memdep_phi202_pop36337_pop822;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_notcmp292305_pop5812;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_pop5711;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_reduction_ff_rgb24toyv12_c_23;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_reduction_ff_rgb24toyv12_c_539;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_stall_out_0;
    wire [0:0] ff_rgb24toyv12_c_B4_merge_out_valid_out;


    // ff_rgb24toyv12_c_B4_branch(BLACKBOX,6)
    ff_rgb24toyv12_c_B4_branch theff_rgb24toyv12_c_B4_branch (
        .in_add_ptr309_pop6014(bb_ff_rgb24toyv12_c_B4_stall_region_out_add_ptr309_pop6014),
        .in_add_ptr73307_pop5913(bb_ff_rgb24toyv12_c_B4_stall_region_out_add_ptr73307_pop5913),
        .in_memdep_phi126_pop27323_pop735(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi126_pop27323_pop735),
        .in_memdep_phi133_pop28325_pop746(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi133_pop28325_pop746),
        .in_memdep_phi140_pop29327_pop757(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi140_pop29327_pop757),
        .in_memdep_phi147_pop30329_pop768(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi147_pop30329_pop768),
        .in_memdep_phi155_pop31331_pop771(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi155_pop31331_pop771),
        .in_memdep_phi202_pop36337_pop822(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi202_pop36337_pop822),
        .in_notcmp292305_pop5812(bb_ff_rgb24toyv12_c_B4_stall_region_out_notcmp292305_pop5812),
        .in_pop5711(bb_ff_rgb24toyv12_c_B4_stall_region_out_pop5711),
        .in_reduction_ff_rgb24toyv12_c_23(bb_ff_rgb24toyv12_c_B4_stall_region_out_reduction_ff_rgb24toyv12_c_23),
        .in_reduction_ff_rgb24toyv12_c_539(bb_ff_rgb24toyv12_c_B4_stall_region_out_reduction_ff_rgb24toyv12_c_539),
        .in_stall_in_0(in_stall_in_0),
        .in_unnamed_ff_rgb24toyv12_c61(bb_ff_rgb24toyv12_c_B4_stall_region_out_unnamed_ff_rgb24toyv12_c61),
        .in_valid_in(bb_ff_rgb24toyv12_c_B4_stall_region_out_valid_out),
        .out_add_ptr309_pop6014(ff_rgb24toyv12_c_B4_branch_out_add_ptr309_pop6014),
        .out_add_ptr73307_pop5913(ff_rgb24toyv12_c_B4_branch_out_add_ptr73307_pop5913),
        .out_memdep_phi126_pop27323_pop735(ff_rgb24toyv12_c_B4_branch_out_memdep_phi126_pop27323_pop735),
        .out_memdep_phi133_pop28325_pop746(ff_rgb24toyv12_c_B4_branch_out_memdep_phi133_pop28325_pop746),
        .out_memdep_phi140_pop29327_pop757(ff_rgb24toyv12_c_B4_branch_out_memdep_phi140_pop29327_pop757),
        .out_memdep_phi147_pop30329_pop768(ff_rgb24toyv12_c_B4_branch_out_memdep_phi147_pop30329_pop768),
        .out_memdep_phi155_pop31331_pop771(ff_rgb24toyv12_c_B4_branch_out_memdep_phi155_pop31331_pop771),
        .out_memdep_phi202_pop36337_pop822(ff_rgb24toyv12_c_B4_branch_out_memdep_phi202_pop36337_pop822),
        .out_notcmp292305_pop5812(ff_rgb24toyv12_c_B4_branch_out_notcmp292305_pop5812),
        .out_pop5711(ff_rgb24toyv12_c_B4_branch_out_pop5711),
        .out_reduction_ff_rgb24toyv12_c_23(ff_rgb24toyv12_c_B4_branch_out_reduction_ff_rgb24toyv12_c_23),
        .out_reduction_ff_rgb24toyv12_c_539(ff_rgb24toyv12_c_B4_branch_out_reduction_ff_rgb24toyv12_c_539),
        .out_stall_out(ff_rgb24toyv12_c_B4_branch_out_stall_out),
        .out_unnamed_ff_rgb24toyv12_c61(ff_rgb24toyv12_c_B4_branch_out_unnamed_ff_rgb24toyv12_c61),
        .out_valid_out_0(ff_rgb24toyv12_c_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // ff_rgb24toyv12_c_B4_merge(BLACKBOX,7)
    ff_rgb24toyv12_c_B4_merge theff_rgb24toyv12_c_B4_merge (
        .in_add_ptr309_pop6014_0(in_add_ptr309_pop6014_0),
        .in_add_ptr73307_pop5913_0(in_add_ptr73307_pop5913_0),
        .in_cmp75304_pop5610_0(in_cmp75304_pop5610_0),
        .in_lm1_toi1_intcast174_0(in_lm1_toi1_intcast174_0),
        .in_memdep_phi126_pop27323_pop735_0(in_memdep_phi126_pop27323_pop735_0),
        .in_memdep_phi133_pop28325_pop746_0(in_memdep_phi133_pop28325_pop746_0),
        .in_memdep_phi140_pop29327_pop757_0(in_memdep_phi140_pop29327_pop757_0),
        .in_memdep_phi147_pop30329_pop768_0(in_memdep_phi147_pop30329_pop768_0),
        .in_memdep_phi155_pop31331_pop771_0(in_memdep_phi155_pop31331_pop771_0),
        .in_memdep_phi202_pop36337_pop822_0(in_memdep_phi202_pop36337_pop822_0),
        .in_notcmp292305_pop5812_0(in_notcmp292305_pop5812_0),
        .in_pop5711_0(in_pop5711_0),
        .in_reduction_ff_rgb24toyv12_c_23_0(in_reduction_ff_rgb24toyv12_c_23_0),
        .in_reduction_ff_rgb24toyv12_c_539_0(in_reduction_ff_rgb24toyv12_c_539_0),
        .in_stall_in(bb_ff_rgb24toyv12_c_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_add_ptr309_pop6014(ff_rgb24toyv12_c_B4_merge_out_add_ptr309_pop6014),
        .out_add_ptr73307_pop5913(ff_rgb24toyv12_c_B4_merge_out_add_ptr73307_pop5913),
        .out_cmp75304_pop5610(ff_rgb24toyv12_c_B4_merge_out_cmp75304_pop5610),
        .out_lm1_toi1_intcast174(ff_rgb24toyv12_c_B4_merge_out_lm1_toi1_intcast174),
        .out_memdep_phi126_pop27323_pop735(ff_rgb24toyv12_c_B4_merge_out_memdep_phi126_pop27323_pop735),
        .out_memdep_phi133_pop28325_pop746(ff_rgb24toyv12_c_B4_merge_out_memdep_phi133_pop28325_pop746),
        .out_memdep_phi140_pop29327_pop757(ff_rgb24toyv12_c_B4_merge_out_memdep_phi140_pop29327_pop757),
        .out_memdep_phi147_pop30329_pop768(ff_rgb24toyv12_c_B4_merge_out_memdep_phi147_pop30329_pop768),
        .out_memdep_phi155_pop31331_pop771(ff_rgb24toyv12_c_B4_merge_out_memdep_phi155_pop31331_pop771),
        .out_memdep_phi202_pop36337_pop822(ff_rgb24toyv12_c_B4_merge_out_memdep_phi202_pop36337_pop822),
        .out_notcmp292305_pop5812(ff_rgb24toyv12_c_B4_merge_out_notcmp292305_pop5812),
        .out_pop5711(ff_rgb24toyv12_c_B4_merge_out_pop5711),
        .out_reduction_ff_rgb24toyv12_c_23(ff_rgb24toyv12_c_B4_merge_out_reduction_ff_rgb24toyv12_c_23),
        .out_reduction_ff_rgb24toyv12_c_539(ff_rgb24toyv12_c_B4_merge_out_reduction_ff_rgb24toyv12_c_539),
        .out_stall_out_0(ff_rgb24toyv12_c_B4_merge_out_stall_out_0),
        .out_valid_out(ff_rgb24toyv12_c_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ff_rgb24toyv12_c_B4_stall_region(BLACKBOX,2)
    ff_rgb24toyv12_c_bb_B4_stall_region thebb_ff_rgb24toyv12_c_B4_stall_region (
        .in_add_ptr309_pop6014(ff_rgb24toyv12_c_B4_merge_out_add_ptr309_pop6014),
        .in_add_ptr73307_pop5913(ff_rgb24toyv12_c_B4_merge_out_add_ptr73307_pop5913),
        .in_cmp75304_pop5610(ff_rgb24toyv12_c_B4_merge_out_cmp75304_pop5610),
        .in_feedback_stall_in_26(in_feedback_stall_in_26),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_lm1_toi1_intcast174(ff_rgb24toyv12_c_B4_merge_out_lm1_toi1_intcast174),
        .in_memdep_phi126_pop27323_pop735(ff_rgb24toyv12_c_B4_merge_out_memdep_phi126_pop27323_pop735),
        .in_memdep_phi133_pop28325_pop746(ff_rgb24toyv12_c_B4_merge_out_memdep_phi133_pop28325_pop746),
        .in_memdep_phi140_pop29327_pop757(ff_rgb24toyv12_c_B4_merge_out_memdep_phi140_pop29327_pop757),
        .in_memdep_phi147_pop30329_pop768(ff_rgb24toyv12_c_B4_merge_out_memdep_phi147_pop30329_pop768),
        .in_memdep_phi155_pop31331_pop771(ff_rgb24toyv12_c_B4_merge_out_memdep_phi155_pop31331_pop771),
        .in_memdep_phi202_pop36337_pop822(ff_rgb24toyv12_c_B4_merge_out_memdep_phi202_pop36337_pop822),
        .in_notcmp292305_pop5812(ff_rgb24toyv12_c_B4_merge_out_notcmp292305_pop5812),
        .in_pop5711(ff_rgb24toyv12_c_B4_merge_out_pop5711),
        .in_reduction_ff_rgb24toyv12_c_23(ff_rgb24toyv12_c_B4_merge_out_reduction_ff_rgb24toyv12_c_23),
        .in_reduction_ff_rgb24toyv12_c_539(ff_rgb24toyv12_c_B4_merge_out_reduction_ff_rgb24toyv12_c_539),
        .in_stall_in(ff_rgb24toyv12_c_B4_branch_out_stall_out),
        .in_valid_in(ff_rgb24toyv12_c_B4_merge_out_valid_out),
        .out_add_ptr309_pop6014(bb_ff_rgb24toyv12_c_B4_stall_region_out_add_ptr309_pop6014),
        .out_add_ptr73307_pop5913(bb_ff_rgb24toyv12_c_B4_stall_region_out_add_ptr73307_pop5913),
        .out_feedback_out_26(bb_ff_rgb24toyv12_c_B4_stall_region_out_feedback_out_26),
        .out_feedback_valid_out_26(bb_ff_rgb24toyv12_c_B4_stall_region_out_feedback_valid_out_26),
        .out_memdep_phi126_pop27323_pop735(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi126_pop27323_pop735),
        .out_memdep_phi133_pop28325_pop746(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi133_pop28325_pop746),
        .out_memdep_phi140_pop29327_pop757(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi140_pop29327_pop757),
        .out_memdep_phi147_pop30329_pop768(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi147_pop30329_pop768),
        .out_memdep_phi155_pop31331_pop771(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi155_pop31331_pop771),
        .out_memdep_phi202_pop36337_pop822(bb_ff_rgb24toyv12_c_B4_stall_region_out_memdep_phi202_pop36337_pop822),
        .out_notcmp292305_pop5812(bb_ff_rgb24toyv12_c_B4_stall_region_out_notcmp292305_pop5812),
        .out_pop5711(bb_ff_rgb24toyv12_c_B4_stall_region_out_pop5711),
        .out_reduction_ff_rgb24toyv12_c_23(bb_ff_rgb24toyv12_c_B4_stall_region_out_reduction_ff_rgb24toyv12_c_23),
        .out_reduction_ff_rgb24toyv12_c_539(bb_ff_rgb24toyv12_c_B4_stall_region_out_reduction_ff_rgb24toyv12_c_539),
        .out_stall_out(bb_ff_rgb24toyv12_c_B4_stall_region_out_stall_out),
        .out_unnamed_ff_rgb24toyv12_c61(bb_ff_rgb24toyv12_c_B4_stall_region_out_unnamed_ff_rgb24toyv12_c61),
        .out_valid_out(bb_ff_rgb24toyv12_c_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_26_sync(GPOUT,3)
    assign out_feedback_out_26 = bb_ff_rgb24toyv12_c_B4_stall_region_out_feedback_out_26;

    // feedback_valid_out_26_sync(GPOUT,5)
    assign out_feedback_valid_out_26 = bb_ff_rgb24toyv12_c_B4_stall_region_out_feedback_valid_out_26;

    // out_add_ptr309_pop6014(GPOUT,26)
    assign out_add_ptr309_pop6014 = ff_rgb24toyv12_c_B4_branch_out_add_ptr309_pop6014;

    // out_add_ptr73307_pop5913(GPOUT,27)
    assign out_add_ptr73307_pop5913 = ff_rgb24toyv12_c_B4_branch_out_add_ptr73307_pop5913;

    // out_memdep_phi126_pop27323_pop735(GPOUT,28)
    assign out_memdep_phi126_pop27323_pop735 = ff_rgb24toyv12_c_B4_branch_out_memdep_phi126_pop27323_pop735;

    // out_memdep_phi133_pop28325_pop746(GPOUT,29)
    assign out_memdep_phi133_pop28325_pop746 = ff_rgb24toyv12_c_B4_branch_out_memdep_phi133_pop28325_pop746;

    // out_memdep_phi140_pop29327_pop757(GPOUT,30)
    assign out_memdep_phi140_pop29327_pop757 = ff_rgb24toyv12_c_B4_branch_out_memdep_phi140_pop29327_pop757;

    // out_memdep_phi147_pop30329_pop768(GPOUT,31)
    assign out_memdep_phi147_pop30329_pop768 = ff_rgb24toyv12_c_B4_branch_out_memdep_phi147_pop30329_pop768;

    // out_memdep_phi155_pop31331_pop771(GPOUT,32)
    assign out_memdep_phi155_pop31331_pop771 = ff_rgb24toyv12_c_B4_branch_out_memdep_phi155_pop31331_pop771;

    // out_memdep_phi202_pop36337_pop822(GPOUT,33)
    assign out_memdep_phi202_pop36337_pop822 = ff_rgb24toyv12_c_B4_branch_out_memdep_phi202_pop36337_pop822;

    // out_notcmp292305_pop5812(GPOUT,34)
    assign out_notcmp292305_pop5812 = ff_rgb24toyv12_c_B4_branch_out_notcmp292305_pop5812;

    // out_pop5711(GPOUT,35)
    assign out_pop5711 = ff_rgb24toyv12_c_B4_branch_out_pop5711;

    // out_reduction_ff_rgb24toyv12_c_23(GPOUT,36)
    assign out_reduction_ff_rgb24toyv12_c_23 = ff_rgb24toyv12_c_B4_branch_out_reduction_ff_rgb24toyv12_c_23;

    // out_reduction_ff_rgb24toyv12_c_539(GPOUT,37)
    assign out_reduction_ff_rgb24toyv12_c_539 = ff_rgb24toyv12_c_B4_branch_out_reduction_ff_rgb24toyv12_c_539;

    // out_stall_out_0(GPOUT,38)
    assign out_stall_out_0 = ff_rgb24toyv12_c_B4_merge_out_stall_out_0;

    // out_unnamed_ff_rgb24toyv12_c61(GPOUT,39)
    assign out_unnamed_ff_rgb24toyv12_c61 = ff_rgb24toyv12_c_B4_branch_out_unnamed_ff_rgb24toyv12_c61;

    // out_valid_out_0(GPOUT,40)
    assign out_valid_out_0 = ff_rgb24toyv12_c_B4_branch_out_valid_out_0;

endmodule
