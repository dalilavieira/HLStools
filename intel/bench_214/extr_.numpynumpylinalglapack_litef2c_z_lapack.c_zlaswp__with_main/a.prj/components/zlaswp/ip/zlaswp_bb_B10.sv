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

// SystemVerilog created from zlaswp_bb_B10
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_bb_B10 (
    output wire [0:0] out_feedback_out_13,
    output wire [0:0] out_feedback_out_14,
    output wire [0:0] out_feedback_out_15,
    output wire [0:0] out_feedback_out_16,
    output wire [0:0] out_feedback_out_17,
    output wire [0:0] out_feedback_out_18,
    output wire [31:0] out_feedback_out_8,
    input wire [0:0] in_feedback_stall_in_13,
    input wire [0:0] in_feedback_stall_in_14,
    input wire [0:0] in_feedback_stall_in_15,
    input wire [0:0] in_feedback_stall_in_16,
    input wire [0:0] in_feedback_stall_in_17,
    input wire [0:0] in_feedback_stall_in_18,
    input wire [0:0] in_feedback_stall_in_8,
    output wire [0:0] out_feedback_valid_out_13,
    output wire [0:0] out_feedback_valid_out_14,
    output wire [0:0] out_feedback_valid_out_15,
    output wire [0:0] out_feedback_valid_out_16,
    output wire [0:0] out_feedback_valid_out_17,
    output wire [0:0] out_feedback_valid_out_18,
    output wire [0:0] out_feedback_valid_out_8,
    input wire [31:0] in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_lm3213_toi1_intcast561_0,
    input wire [63:0] in_lm5619_zlaswp_avm_readdata,
    input wire [0:0] in_lm5619_zlaswp_avm_readdatavalid,
    input wire [0:0] in_lm5619_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm5619_zlaswp_avm_writeack,
    input wire [0:0] in_memdep_1024_0,
    input wire [0:0] in_memdep_1195_0,
    input wire [0:0] in_memdep_712_0,
    input wire [0:0] in_memdep_873_0,
    input wire [0:0] in_notcmp193223_pop338_0,
    input wire [0:0] in_phi_decision209_xor_and_i0222_pop327_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_lm5619_zlaswp_avm_address,
    output wire [0:0] out_lm5619_zlaswp_avm_burstcount,
    output wire [7:0] out_lm5619_zlaswp_avm_byteenable,
    output wire [0:0] out_lm5619_zlaswp_avm_enable,
    output wire [0:0] out_lm5619_zlaswp_avm_read,
    output wire [0:0] out_lm5619_zlaswp_avm_write,
    output wire [63:0] out_lm5619_zlaswp_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_out_13;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_out_14;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_out_15;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_out_16;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_out_17;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_out_18;
    wire [31:0] bb_zlaswp_B10_stall_region_out_feedback_out_8;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_valid_out_13;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_valid_out_14;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_valid_out_15;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_valid_out_16;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_valid_out_17;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_valid_out_18;
    wire [0:0] bb_zlaswp_B10_stall_region_out_feedback_valid_out_8;
    wire [63:0] bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_address;
    wire [0:0] bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_burstcount;
    wire [7:0] bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_byteenable;
    wire [0:0] bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_enable;
    wire [0:0] bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_read;
    wire [0:0] bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_write;
    wire [63:0] bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_writedata;
    wire [0:0] bb_zlaswp_B10_stall_region_out_notcmp193223_pop338;
    wire [0:0] bb_zlaswp_B10_stall_region_out_stall_out;
    wire [0:0] bb_zlaswp_B10_stall_region_out_valid_out;
    wire [0:0] zlaswp_B10_branch_out_stall_out;
    wire [0:0] zlaswp_B10_branch_out_valid_out_0;
    wire [0:0] zlaswp_B10_branch_out_valid_out_1;
    wire [31:0] zlaswp_B10_merge_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316;
    wire [0:0] zlaswp_B10_merge_out_lm3213_toi1_intcast561;
    wire [0:0] zlaswp_B10_merge_out_memdep_1024;
    wire [0:0] zlaswp_B10_merge_out_memdep_1195;
    wire [0:0] zlaswp_B10_merge_out_memdep_712;
    wire [0:0] zlaswp_B10_merge_out_memdep_873;
    wire [0:0] zlaswp_B10_merge_out_notcmp193223_pop338;
    wire [0:0] zlaswp_B10_merge_out_phi_decision209_xor_and_i0222_pop327;
    wire [0:0] zlaswp_B10_merge_out_stall_out_0;
    wire [0:0] zlaswp_B10_merge_out_valid_out;


    // zlaswp_B10_branch(BLACKBOX,51)
    zlaswp_B10_branch thezlaswp_B10_branch (
        .in_notcmp193223_pop338(bb_zlaswp_B10_stall_region_out_notcmp193223_pop338),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_zlaswp_B10_stall_region_out_valid_out),
        .out_stall_out(zlaswp_B10_branch_out_stall_out),
        .out_valid_out_0(zlaswp_B10_branch_out_valid_out_0),
        .out_valid_out_1(zlaswp_B10_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // zlaswp_B10_merge(BLACKBOX,52)
    zlaswp_B10_merge thezlaswp_B10_merge (
        .in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316_0(in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316_0),
        .in_lm3213_toi1_intcast561_0(in_lm3213_toi1_intcast561_0),
        .in_memdep_1024_0(in_memdep_1024_0),
        .in_memdep_1195_0(in_memdep_1195_0),
        .in_memdep_712_0(in_memdep_712_0),
        .in_memdep_873_0(in_memdep_873_0),
        .in_notcmp193223_pop338_0(in_notcmp193223_pop338_0),
        .in_phi_decision209_xor_and_i0222_pop327_0(in_phi_decision209_xor_and_i0222_pop327_0),
        .in_stall_in(bb_zlaswp_B10_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316(zlaswp_B10_merge_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316),
        .out_lm3213_toi1_intcast561(zlaswp_B10_merge_out_lm3213_toi1_intcast561),
        .out_memdep_1024(zlaswp_B10_merge_out_memdep_1024),
        .out_memdep_1195(zlaswp_B10_merge_out_memdep_1195),
        .out_memdep_712(zlaswp_B10_merge_out_memdep_712),
        .out_memdep_873(zlaswp_B10_merge_out_memdep_873),
        .out_notcmp193223_pop338(zlaswp_B10_merge_out_notcmp193223_pop338),
        .out_phi_decision209_xor_and_i0222_pop327(zlaswp_B10_merge_out_phi_decision209_xor_and_i0222_pop327),
        .out_stall_out_0(zlaswp_B10_merge_out_stall_out_0),
        .out_valid_out(zlaswp_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_zlaswp_B10_stall_region(BLACKBOX,2)
    zlaswp_bb_B10_stall_region thebb_zlaswp_B10_stall_region (
        .in_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316(zlaswp_B10_merge_out_ZZ7zlaswp_PiP8TYPE_3_S_S_S_S_S_E2ix_static_1_replace_phi221_pop316),
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_feedback_stall_in_14(in_feedback_stall_in_14),
        .in_feedback_stall_in_15(in_feedback_stall_in_15),
        .in_feedback_stall_in_16(in_feedback_stall_in_16),
        .in_feedback_stall_in_17(in_feedback_stall_in_17),
        .in_feedback_stall_in_18(in_feedback_stall_in_18),
        .in_feedback_stall_in_8(in_feedback_stall_in_8),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_lm3213_toi1_intcast561(zlaswp_B10_merge_out_lm3213_toi1_intcast561),
        .in_lm5619_zlaswp_avm_readdata(in_lm5619_zlaswp_avm_readdata),
        .in_lm5619_zlaswp_avm_readdatavalid(in_lm5619_zlaswp_avm_readdatavalid),
        .in_lm5619_zlaswp_avm_waitrequest(in_lm5619_zlaswp_avm_waitrequest),
        .in_lm5619_zlaswp_avm_writeack(in_lm5619_zlaswp_avm_writeack),
        .in_memdep_1024(zlaswp_B10_merge_out_memdep_1024),
        .in_memdep_1195(zlaswp_B10_merge_out_memdep_1195),
        .in_memdep_712(zlaswp_B10_merge_out_memdep_712),
        .in_memdep_873(zlaswp_B10_merge_out_memdep_873),
        .in_notcmp193223_pop338(zlaswp_B10_merge_out_notcmp193223_pop338),
        .in_phi_decision209_xor_and_i0222_pop327(zlaswp_B10_merge_out_phi_decision209_xor_and_i0222_pop327),
        .in_stall_in(zlaswp_B10_branch_out_stall_out),
        .in_valid_in(zlaswp_B10_merge_out_valid_out),
        .out_feedback_out_13(bb_zlaswp_B10_stall_region_out_feedback_out_13),
        .out_feedback_out_14(bb_zlaswp_B10_stall_region_out_feedback_out_14),
        .out_feedback_out_15(bb_zlaswp_B10_stall_region_out_feedback_out_15),
        .out_feedback_out_16(bb_zlaswp_B10_stall_region_out_feedback_out_16),
        .out_feedback_out_17(bb_zlaswp_B10_stall_region_out_feedback_out_17),
        .out_feedback_out_18(bb_zlaswp_B10_stall_region_out_feedback_out_18),
        .out_feedback_out_8(bb_zlaswp_B10_stall_region_out_feedback_out_8),
        .out_feedback_valid_out_13(bb_zlaswp_B10_stall_region_out_feedback_valid_out_13),
        .out_feedback_valid_out_14(bb_zlaswp_B10_stall_region_out_feedback_valid_out_14),
        .out_feedback_valid_out_15(bb_zlaswp_B10_stall_region_out_feedback_valid_out_15),
        .out_feedback_valid_out_16(bb_zlaswp_B10_stall_region_out_feedback_valid_out_16),
        .out_feedback_valid_out_17(bb_zlaswp_B10_stall_region_out_feedback_valid_out_17),
        .out_feedback_valid_out_18(bb_zlaswp_B10_stall_region_out_feedback_valid_out_18),
        .out_feedback_valid_out_8(bb_zlaswp_B10_stall_region_out_feedback_valid_out_8),
        .out_lm5619_zlaswp_avm_address(bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_address),
        .out_lm5619_zlaswp_avm_burstcount(bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_burstcount),
        .out_lm5619_zlaswp_avm_byteenable(bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_byteenable),
        .out_lm5619_zlaswp_avm_enable(bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_enable),
        .out_lm5619_zlaswp_avm_read(bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_read),
        .out_lm5619_zlaswp_avm_write(bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_write),
        .out_lm5619_zlaswp_avm_writedata(bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_writedata),
        .out_notcmp193223_pop338(bb_zlaswp_B10_stall_region_out_notcmp193223_pop338),
        .out_stall_out(bb_zlaswp_B10_stall_region_out_stall_out),
        .out_valid_out(bb_zlaswp_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_13_sync(GPOUT,3)
    assign out_feedback_out_13 = bb_zlaswp_B10_stall_region_out_feedback_out_13;

    // feedback_out_14_sync(GPOUT,4)
    assign out_feedback_out_14 = bb_zlaswp_B10_stall_region_out_feedback_out_14;

    // feedback_out_15_sync(GPOUT,5)
    assign out_feedback_out_15 = bb_zlaswp_B10_stall_region_out_feedback_out_15;

    // feedback_out_16_sync(GPOUT,6)
    assign out_feedback_out_16 = bb_zlaswp_B10_stall_region_out_feedback_out_16;

    // feedback_out_17_sync(GPOUT,7)
    assign out_feedback_out_17 = bb_zlaswp_B10_stall_region_out_feedback_out_17;

    // feedback_out_18_sync(GPOUT,8)
    assign out_feedback_out_18 = bb_zlaswp_B10_stall_region_out_feedback_out_18;

    // feedback_out_8_sync(GPOUT,9)
    assign out_feedback_out_8 = bb_zlaswp_B10_stall_region_out_feedback_out_8;

    // feedback_valid_out_13_sync(GPOUT,17)
    assign out_feedback_valid_out_13 = bb_zlaswp_B10_stall_region_out_feedback_valid_out_13;

    // feedback_valid_out_14_sync(GPOUT,18)
    assign out_feedback_valid_out_14 = bb_zlaswp_B10_stall_region_out_feedback_valid_out_14;

    // feedback_valid_out_15_sync(GPOUT,19)
    assign out_feedback_valid_out_15 = bb_zlaswp_B10_stall_region_out_feedback_valid_out_15;

    // feedback_valid_out_16_sync(GPOUT,20)
    assign out_feedback_valid_out_16 = bb_zlaswp_B10_stall_region_out_feedback_valid_out_16;

    // feedback_valid_out_17_sync(GPOUT,21)
    assign out_feedback_valid_out_17 = bb_zlaswp_B10_stall_region_out_feedback_valid_out_17;

    // feedback_valid_out_18_sync(GPOUT,22)
    assign out_feedback_valid_out_18 = bb_zlaswp_B10_stall_region_out_feedback_valid_out_18;

    // feedback_valid_out_8_sync(GPOUT,23)
    assign out_feedback_valid_out_8 = bb_zlaswp_B10_stall_region_out_feedback_valid_out_8;

    // out_lm5619_zlaswp_avm_address(GPOUT,41)
    assign out_lm5619_zlaswp_avm_address = bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_address;

    // out_lm5619_zlaswp_avm_burstcount(GPOUT,42)
    assign out_lm5619_zlaswp_avm_burstcount = bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_burstcount;

    // out_lm5619_zlaswp_avm_byteenable(GPOUT,43)
    assign out_lm5619_zlaswp_avm_byteenable = bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_byteenable;

    // out_lm5619_zlaswp_avm_enable(GPOUT,44)
    assign out_lm5619_zlaswp_avm_enable = bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_enable;

    // out_lm5619_zlaswp_avm_read(GPOUT,45)
    assign out_lm5619_zlaswp_avm_read = bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_read;

    // out_lm5619_zlaswp_avm_write(GPOUT,46)
    assign out_lm5619_zlaswp_avm_write = bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_write;

    // out_lm5619_zlaswp_avm_writedata(GPOUT,47)
    assign out_lm5619_zlaswp_avm_writedata = bb_zlaswp_B10_stall_region_out_lm5619_zlaswp_avm_writedata;

    // out_stall_out_0(GPOUT,48)
    assign out_stall_out_0 = zlaswp_B10_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,49)
    assign out_valid_out_0 = zlaswp_B10_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,50)
    assign out_valid_out_1 = zlaswp_B10_branch_out_valid_out_1;

endmodule
