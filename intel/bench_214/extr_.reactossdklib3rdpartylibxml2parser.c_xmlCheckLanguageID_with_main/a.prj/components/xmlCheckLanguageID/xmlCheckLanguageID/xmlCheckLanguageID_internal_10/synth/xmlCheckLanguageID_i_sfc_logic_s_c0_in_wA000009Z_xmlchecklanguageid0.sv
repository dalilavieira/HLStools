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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000009Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000009Z_xmlchecklanguageid0 (
    input wire [63:0] in_pre157_lm28_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_pre157_lm28_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_pre157_lm28_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_pre157_lm28_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_27_0,
    input wire [7:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_intel_reserved_ffwd_31_0,
    input wire [63:0] in_intel_reserved_ffwd_46_0,
    input wire [7:0] in_intel_reserved_ffwd_47_0,
    input wire [0:0] in_intel_reserved_ffwd_48_0,
    input wire [0:0] in_intel_reserved_ffwd_49_0,
    input wire [63:0] in_intel_reserved_ffwd_53_0,
    input wire [7:0] in_intel_reserved_ffwd_54_0,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [0:0] in_intel_reserved_ffwd_56_0,
    input wire [0:0] in_intel_reserved_ffwd_57_0,
    input wire [63:0] in_intel_reserved_ffwd_60_0,
    input wire [0:0] in_intel_reserved_ffwd_61_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_63_0,
    input wire [0:0] in_intel_reserved_ffwd_64_0,
    input wire [63:0] in_intel_reserved_ffwd_66_0,
    input wire [7:0] in_intel_reserved_ffwd_67_0,
    output wire [7:0] out_intel_reserved_ffwd_68_0,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_intel_reserved_ffwd_69_0,
    output wire [0:0] out_intel_reserved_ffwd_70_0,
    output wire [0:0] out_intel_reserved_ffwd_71_0,
    output wire [0:0] out_intel_reserved_ffwd_72_0,
    output wire [0:0] out_intel_reserved_ffwd_73_0,
    output wire [0:0] out_intel_reserved_ffwd_74_0,
    output wire [63:0] out_intel_reserved_ffwd_75_0,
    output wire [0:0] out_intel_reserved_ffwd_76_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_xmlCheckLanguageID137_0_tpl,
    output wire [0:0] out_unnamed_xmlCheckLanguageID7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_4123_q;
    wire [63:0] c_i64_5122_q;
    wire [0:0] i_cmp276_xmlchecklanguageid30_qi;
    reg [0:0] i_cmp276_xmlchecklanguageid30_q;
    wire [0:0] i_cmp281_xmlchecklanguageid56_qi;
    reg [0:0] i_cmp281_xmlchecklanguageid56_q;
    wire [0:0] i_cmp286_xmlchecklanguageid62_qi;
    reg [0:0] i_cmp286_xmlchecklanguageid62_q;
    wire [0:0] i_lcssa163_select_xmlchecklanguageid21_s;
    reg [7:0] i_lcssa163_select_xmlchecklanguageid21_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp6851_xmlchecklanguageid71_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision_xor96_xmlchecklanguageid37_out_dest_data_out_64_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision_xor97_xmlchecklanguageid33_out_dest_data_out_64_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_3394_xmlchecklanguageid10_out_dest_data_out_61_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid115_xmlchecklanguageid3_out_dest_data_out_48_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid116_xmlchecklanguageid4_out_dest_data_out_63_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid117_xmlchecklanguageid6_out_dest_data_out_62_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid118_xmlchecklanguageid8_out_dest_data_out_55_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid119_xmlchecklanguageid15_out_dest_data_out_57_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid120_xmlchecklanguageid19_out_dest_data_out_57_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid121_xmlchecklanguageid28_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid122_xmlchecklanguageid35_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid123_xmlchecklanguageid39_out_dest_data_out_48_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid124_xmlchecklanguageid40_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid125_xmlchecklanguageid42_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid126_xmlchecklanguageid44_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid127_xmlchecklanguageid46_out_dest_data_out_31_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lcssa147_select70_xmlchecklanguageid54_out_dest_data_out_28_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lcssa164_select85_xmlchecklanguageid50_out_dest_data_out_47_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lm922589_xmlchecklanguageid18_out_dest_data_out_54_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_pre156_lm29100_xmlchecklanguageid20_out_dest_data_out_67_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23187_xmlchecklanguageid23_out_dest_data_out_53_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23188_xmlchecklanguageid14_out_dest_data_out_53_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr260167_replace_phi99_xmlchecklanguageid16_out_dest_data_out_66_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select67_xmlchecklanguageid52_out_dest_data_out_27_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_nxt_2_lcssa_select83_xmlchecklanguageid48_out_dest_data_out_46_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_nxt_8_select93_xmlchecklanguageid1_out_dest_data_out_60_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid129_xmlchecklanguageid74_out_intel_reserved_ffwd_69_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid130_xmlchecklanguageid75_out_intel_reserved_ffwd_70_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid131_xmlchecklanguageid76_out_intel_reserved_ffwd_71_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid132_xmlchecklanguageid77_out_intel_reserved_ffwd_72_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid133_xmlchecklanguageid78_out_intel_reserved_ffwd_73_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid134_xmlchecklanguageid79_out_intel_reserved_ffwd_74_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid136_xmlchecklanguageid81_out_intel_reserved_ffwd_76_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid128_xmlchecklanguageid73_out_intel_reserved_ffwd_68_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid135_xmlchecklanguageid80_out_intel_reserved_ffwd_75_0;
    wire [7:0] i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_writedata;
    wire [0:0] i_nxt_4_lcssa_select_xmlchecklanguageid17_s;
    reg [63:0] i_nxt_4_lcssa_select_xmlchecklanguageid17_q;
    wire [0:0] i_nxt_5_select1689_xmlchecklanguageid43_s;
    reg [63:0] i_nxt_5_select1689_xmlchecklanguageid43_q;
    wire [0:0] i_nxt_5_select567_xmlchecklanguageid49_s;
    reg [63:0] i_nxt_5_select567_xmlchecklanguageid49_q;
    wire [0:0] i_nxt_5_select_xmlchecklanguageid53_s;
    reg [63:0] i_nxt_5_select_xmlchecklanguageid53_q;
    wire [0:0] i_phi_decision1222_select_xmlchecklanguageid34_q;
    wire [0:0] i_phi_decision1224_and_i0_not_xmlchecklanguageid70_q;
    wire [0:0] i_phi_decision1224_and_i0_xmlchecklanguageid69_q;
    wire [0:0] i_phi_decision249_select_xmlchecklanguageid47_q;
    wire [0:0] i_phi_decision549_select_xmlchecklanguageid41_q;
    wire [0:0] i_phi_decision770_select_xmlchecklanguageid38_q;
    wire [0:0] i_phi_decision811_select_xmlchecklanguageid36_q;
    wire [0:0] i_phi_decision927_and_i0_xmlchecklanguageid68_q;
    wire [0:0] i_reduction_xmlchecklanguageid_41_xmlchecklanguageid9_q;
    wire [0:0] i_reduction_xmlchecklanguageid_42_xmlchecklanguageid11_q;
    wire [0:0] i_select1686_xmlchecklanguageid45_s;
    reg [7:0] i_select1686_xmlchecklanguageid45_q;
    wire [0:0] i_select258_xmlchecklanguageid55_s;
    reg [7:0] i_select258_xmlchecklanguageid55_q;
    wire [0:0] i_select558_xmlchecklanguageid51_s;
    reg [7:0] i_select558_xmlchecklanguageid51_q;
    wire [64:0] i_sub_ptr_sub264_off_xmlchecklanguageid26_a;
    wire [64:0] i_sub_ptr_sub264_off_xmlchecklanguageid26_b;
    logic [64:0] i_sub_ptr_sub264_off_xmlchecklanguageid26_o;
    wire [64:0] i_sub_ptr_sub264_off_xmlchecklanguageid26_q;
    wire [64:0] i_sub_ptr_sub264_xmlchecklanguageid25_a;
    wire [64:0] i_sub_ptr_sub264_xmlchecklanguageid25_b;
    logic [64:0] i_sub_ptr_sub264_xmlchecklanguageid25_o;
    wire [64:0] i_sub_ptr_sub264_xmlchecklanguageid25_q;
    wire [0:0] i_unnamed_xmlchecklanguageid12_q;
    wire [65:0] i_unnamed_xmlchecklanguageid27_a;
    wire [65:0] i_unnamed_xmlchecklanguageid27_b;
    logic [65:0] i_unnamed_xmlchecklanguageid27_o;
    wire [0:0] i_unnamed_xmlchecklanguageid27_c;
    wire [0:0] i_unnamed_xmlchecklanguageid29_q;
    wire [0:0] i_unnamed_xmlchecklanguageid32_q;
    wire [0:0] i_unnamed_xmlchecklanguageid5_q;
    wire [0:0] i_unnamed_xmlchecklanguageid58_q;
    wire [0:0] i_unnamed_xmlchecklanguageid59_q;
    wire [0:0] i_unnamed_xmlchecklanguageid60_q;
    wire [0:0] i_unnamed_xmlchecklanguageid61_q;
    wire [0:0] i_unnamed_xmlchecklanguageid64_q;
    wire [0:0] i_unnamed_xmlchecklanguageid65_q;
    wire [0:0] i_unnamed_xmlchecklanguageid66_q;
    wire [0:0] i_unnamed_xmlchecklanguageid7_q;
    wire [0:0] i_unnamed_xmlchecklanguageid72_q;
    wire [63:0] bgTrunc_i_sub_ptr_sub264_off_xmlchecklanguageid26_sel_x_b;
    wire [63:0] bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b;
    wire [63:0] c_i64_2124_recast_x_q;
    wire [7:0] c_i8_0125_recast_x_q;
    wire [7:0] c_i8_45126_recast_x_q;
    wire [64:0] i_add_ptr348_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_add_ptr348_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_add_ptr348_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_add_ptr348_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_add_ptr348_xmlchecklanguageid0_c_i64_31_x_q;
    wire [63:0] i_add_ptr348_xmlchecklanguageid0_trunc_sel_x_b;
    wire [64:0] i_incdec_ptr289_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_incdec_ptr289_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_incdec_ptr289_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_incdec_ptr289_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_incdec_ptr289_xmlchecklanguageid0_c_i64_11_x_q;
    wire [63:0] i_incdec_ptr289_xmlchecklanguageid0_trunc_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    reg [63:0] redist0_bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b_1_q;
    reg [0:0] redist1_sync_together148_in_i_valid_1_q;
    reg [0:0] redist2_sync_together148_in_i_valid_2_q;
    reg [0:0] redist3_sync_together148_in_i_valid_7_q;
    reg [0:0] redist3_sync_together148_in_i_valid_7_delay_0;
    reg [0:0] redist3_sync_together148_in_i_valid_7_delay_1;
    reg [0:0] redist3_sync_together148_in_i_valid_7_delay_2;
    reg [0:0] redist3_sync_together148_in_i_valid_7_delay_3;
    reg [0:0] redist4_sync_together148_in_i_valid_8_q;
    reg [0:0] redist5_i_unnamed_xmlchecklanguageid29_q_6_q;
    reg [0:0] redist6_i_phi_decision811_select_xmlchecklanguageid36_q_6_q;
    reg [0:0] redist7_i_phi_decision549_select_xmlchecklanguageid41_q_6_q;
    reg [0:0] redist8_i_phi_decision249_select_xmlchecklanguageid47_q_6_q;
    reg [0:0] redist9_i_phi_decision1222_select_xmlchecklanguageid34_q_8_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg7(REG,176)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg3(REG,172)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid116_xmlchecklanguageid4(BLACKBOX,55)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000083Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid116_xmlchecklanguageid4 (
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_63_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid116_xmlchecklanguageid4_out_dest_data_out_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,171)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid115_xmlchecklanguageid3(BLACKBOX,54)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000082Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid115_xmlchecklanguageid3 (
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_48_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid115_xmlchecklanguageid3_out_dest_data_out_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid5(LOGICAL,110)@1
    assign i_unnamed_xmlchecklanguageid5_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid115_xmlchecklanguageid3_out_dest_data_out_48_0 | i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid116_xmlchecklanguageid4_out_dest_data_out_63_0;

    // valid_fanout_reg4(REG,173)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid117_xmlchecklanguageid6(BLACKBOX,56)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000084Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid117_xmlchecklanguageid6 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid117_xmlchecklanguageid6_out_dest_data_out_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid7(LOGICAL,118)@1
    assign i_unnamed_xmlchecklanguageid7_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid117_xmlchecklanguageid6_out_dest_data_out_62_0 & i_unnamed_xmlchecklanguageid5_q;

    // valid_fanout_reg5(REG,174)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid118_xmlchecklanguageid8(BLACKBOX,57)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000085Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid118_xmlchecklanguageid8 (
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_55_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid118_xmlchecklanguageid8_out_dest_data_out_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_41_xmlchecklanguageid9(LOGICAL,99)@1
    assign i_reduction_xmlchecklanguageid_41_xmlchecklanguageid9_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid118_xmlchecklanguageid8_out_dest_data_out_55_0 & i_unnamed_xmlchecklanguageid7_q;

    // valid_fanout_reg6(REG,175)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_3394_xmlchecklanguageid10(BLACKBOX,53)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000081Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_3394_xmlchecklanguageid10 (
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_61_0(i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_3394_xmlchecklanguageid10_out_dest_data_out_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_42_xmlchecklanguageid11(LOGICAL,100)@1
    assign i_reduction_xmlchecklanguageid_42_xmlchecklanguageid11_q = i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_3394_xmlchecklanguageid10_out_dest_data_out_61_0 & i_reduction_xmlchecklanguageid_41_xmlchecklanguageid9_q;

    // i_unnamed_xmlchecklanguageid12(LOGICAL,106)@1
    assign i_unnamed_xmlchecklanguageid12_q = i_reduction_xmlchecklanguageid_42_xmlchecklanguageid11_q ^ VCC_q;

    // i_add_ptr348_xmlchecklanguageid0_c_i64_31_x(CONSTANT,161)
    assign i_add_ptr348_xmlchecklanguageid0_c_i64_31_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000011);

    // valid_fanout_reg1(REG,170)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_nxt_8_select93_xmlchecklanguageid1(BLACKBOX,76)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000104Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_nxt_8_select93_xmlchecklanguageid1 (
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_60_0(i_llvm_fpga_ffwd_dest_p1024i8_nxt_8_select93_xmlchecklanguageid1_out_dest_data_out_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_ptr348_xmlchecklanguageid0_add_x(ADD,160)@1
    assign i_add_ptr348_xmlchecklanguageid0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i8_nxt_8_select93_xmlchecklanguageid1_out_dest_data_out_60_0};
    assign i_add_ptr348_xmlchecklanguageid0_add_x_b = {1'b0, i_add_ptr348_xmlchecklanguageid0_c_i64_31_x_q};
    assign i_add_ptr348_xmlchecklanguageid0_add_x_o = $unsigned(i_add_ptr348_xmlchecklanguageid0_add_x_a) + $unsigned(i_add_ptr348_xmlchecklanguageid0_add_x_b);
    assign i_add_ptr348_xmlchecklanguageid0_add_x_q = i_add_ptr348_xmlchecklanguageid0_add_x_o[64:0];

    // i_add_ptr348_xmlchecklanguageid0_trunc_sel_x(BITSELECT,163)@1
    assign i_add_ptr348_xmlchecklanguageid0_trunc_sel_x_b = i_add_ptr348_xmlchecklanguageid0_add_x_q[63:0];

    // i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13(BLACKBOX,86)@1
    // in in_i_stall@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    // out out_pre157_lm28_xmlCheckLanguageID_avm_address@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_enable@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_read@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_write@20000000
    // out out_pre157_lm28_xmlCheckLanguageID_avm_writedata@20000000
    xmlCheckLanguageID_i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid0 thei_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13 (
        .in_flush(in_flush),
        .in_i_address(i_add_ptr348_xmlchecklanguageid0_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_xmlchecklanguageid12_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_pre157_lm28_xmlCheckLanguageID_avm_readdata(in_pre157_lm28_xmlCheckLanguageID_avm_readdata),
        .in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid(in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid),
        .in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest(in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest),
        .in_pre157_lm28_xmlCheckLanguageID_avm_writeack(in_pre157_lm28_xmlCheckLanguageID_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_pre157_lm28_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_address),
        .out_pre157_lm28_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount),
        .out_pre157_lm28_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable),
        .out_pre157_lm28_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_enable),
        .out_pre157_lm28_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_read),
        .out_pre157_lm28_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_write),
        .out_pre157_lm28_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,45)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_address;
    assign out_pre157_lm28_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_enable;
    assign out_pre157_lm28_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_read;
    assign out_pre157_lm28_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_write;
    assign out_pre157_lm28_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_writedata;
    assign out_pre157_lm28_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable;
    assign out_pre157_lm28_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount;

    // redist1_sync_together148_in_i_valid_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together148_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together148_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together148_in_i_valid_2(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together148_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist2_sync_together148_in_i_valid_2_q <= $unsigned(redist1_sync_together148_in_i_valid_1_q);
        end
    end

    // redist3_sync_together148_in_i_valid_7(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together148_in_i_valid_7_delay_0 <= '0;
            redist3_sync_together148_in_i_valid_7_delay_1 <= '0;
            redist3_sync_together148_in_i_valid_7_delay_2 <= '0;
            redist3_sync_together148_in_i_valid_7_delay_3 <= '0;
            redist3_sync_together148_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist3_sync_together148_in_i_valid_7_delay_0 <= $unsigned(redist2_sync_together148_in_i_valid_2_q);
            redist3_sync_together148_in_i_valid_7_delay_1 <= redist3_sync_together148_in_i_valid_7_delay_0;
            redist3_sync_together148_in_i_valid_7_delay_2 <= redist3_sync_together148_in_i_valid_7_delay_1;
            redist3_sync_together148_in_i_valid_7_delay_3 <= redist3_sync_together148_in_i_valid_7_delay_2;
            redist3_sync_together148_in_i_valid_7_q <= redist3_sync_together148_in_i_valid_7_delay_3;
        end
    end

    // valid_fanout_reg29(REG,198)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist3_sync_together148_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg13(REG,182)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist3_sync_together148_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_pre156_lm29100_xmlchecklanguageid20(BLACKBOX,70)@8
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000098Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_pre156_lm29100_xmlchecklanguageid20 (
        .in_intel_reserved_ffwd_67_0(in_intel_reserved_ffwd_67_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_67_0(i_llvm_fpga_ffwd_dest_i8_pre156_lm29100_xmlchecklanguageid20_out_dest_data_out_67_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,180)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist3_sync_together148_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_lm922589_xmlchecklanguageid18(BLACKBOX,69)@8
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000097Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lm922589_xmlchecklanguageid18 (
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_54_0(i_llvm_fpga_ffwd_dest_i8_lm922589_xmlchecklanguageid18_out_dest_data_out_54_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,181)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist3_sync_together148_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid120_xmlchecklanguageid19(BLACKBOX,59)@8
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000087Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid120_xmlchecklanguageid19 (
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_57_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid120_xmlchecklanguageid19_out_dest_data_out_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_lcssa163_select_xmlchecklanguageid21(MUX,49)@8
    assign i_lcssa163_select_xmlchecklanguageid21_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid120_xmlchecklanguageid19_out_dest_data_out_57_0;
    always @(i_lcssa163_select_xmlchecklanguageid21_s or i_llvm_fpga_ffwd_dest_i8_lm922589_xmlchecklanguageid18_out_dest_data_out_54_0 or i_llvm_fpga_ffwd_dest_i8_pre156_lm29100_xmlchecklanguageid20_out_dest_data_out_67_0)
    begin
        unique case (i_lcssa163_select_xmlchecklanguageid21_s)
            1'b0 : i_lcssa163_select_xmlchecklanguageid21_q = i_llvm_fpga_ffwd_dest_i8_lm922589_xmlchecklanguageid18_out_dest_data_out_54_0;
            1'b1 : i_lcssa163_select_xmlchecklanguageid21_q = i_llvm_fpga_ffwd_dest_i8_pre156_lm29100_xmlchecklanguageid20_out_dest_data_out_67_0;
            default : i_lcssa163_select_xmlchecklanguageid21_q = 8'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid128_xmlchecklanguageid73(BLACKBOX,84)@8
    // out out_intel_reserved_ffwd_68_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000075Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid128_xmlchecklanguageid73 (
        .in_predicate_in(GND_q),
        .in_src_data_in_68_0(i_lcssa163_select_xmlchecklanguageid21_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_intel_reserved_ffwd_68_0(i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid128_xmlchecklanguageid73_out_intel_reserved_ffwd_68_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,144)
    assign out_intel_reserved_ffwd_68_0 = i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid128_xmlchecklanguageid73_out_intel_reserved_ffwd_68_0;

    // valid_fanout_reg30(REG,199)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,185)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_phi_decision_xor97_xmlchecklanguageid33(BLACKBOX,52)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000080Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_phi_decision_xor97_xmlchecklanguageid33 (
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_64_0(i_llvm_fpga_ffwd_dest_i1_phi_decision_xor97_xmlchecklanguageid33_out_dest_data_out_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision1222_select_xmlchecklanguageid34(LOGICAL,91)@1
    assign i_phi_decision1222_select_xmlchecklanguageid34_q = i_unnamed_xmlchecklanguageid7_q | i_llvm_fpga_ffwd_dest_i1_phi_decision_xor97_xmlchecklanguageid33_out_dest_data_out_64_0;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid129_xmlchecklanguageid74(BLACKBOX,77)@1
    // out out_intel_reserved_ffwd_69_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000068Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid129_xmlchecklanguageid74 (
        .in_predicate_in(GND_q),
        .in_src_data_in_69_0(i_phi_decision1222_select_xmlchecklanguageid34_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_intel_reserved_ffwd_69_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid129_xmlchecklanguageid74_out_intel_reserved_ffwd_69_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,152)
    assign out_intel_reserved_ffwd_69_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid129_xmlchecklanguageid74_out_intel_reserved_ffwd_69_0;

    // valid_fanout_reg31(REG,200)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist2_sync_together148_in_i_valid_2_q);
        end
    end

    // c_i64_2124_recast_x(CONSTANT,149)
    assign c_i64_2124_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000010);

    // valid_fanout_reg14(REG,183)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23187_xmlchecklanguageid23(BLACKBOX,71)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000099Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23187_xmlchecklanguageid23 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23187_xmlchecklanguageid23_out_dest_data_out_53_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,179)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr260167_replace_phi99_xmlchecklanguageid16(BLACKBOX,73)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000101Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr260167_replace_phi99_xmlchecklanguageid16 (
        .in_intel_reserved_ffwd_66_0(in_intel_reserved_ffwd_66_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_66_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr260167_replace_phi99_xmlchecklanguageid16_out_dest_data_out_66_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,177)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23188_xmlchecklanguageid14(BLACKBOX,72)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000100Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23188_xmlchecklanguageid14 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23188_xmlchecklanguageid14_out_dest_data_out_53_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,178)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid119_xmlchecklanguageid15(BLACKBOX,58)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000086Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid119_xmlchecklanguageid15 (
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_57_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid119_xmlchecklanguageid15_out_dest_data_out_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_nxt_4_lcssa_select_xmlchecklanguageid17(MUX,87)@1
    assign i_nxt_4_lcssa_select_xmlchecklanguageid17_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid119_xmlchecklanguageid15_out_dest_data_out_57_0;
    always @(i_nxt_4_lcssa_select_xmlchecklanguageid17_s or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23188_xmlchecklanguageid14_out_dest_data_out_53_0 or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr260167_replace_phi99_xmlchecklanguageid16_out_dest_data_out_66_0)
    begin
        unique case (i_nxt_4_lcssa_select_xmlchecklanguageid17_s)
            1'b0 : i_nxt_4_lcssa_select_xmlchecklanguageid17_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23188_xmlchecklanguageid14_out_dest_data_out_53_0;
            1'b1 : i_nxt_4_lcssa_select_xmlchecklanguageid17_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr260167_replace_phi99_xmlchecklanguageid16_out_dest_data_out_66_0;
            default : i_nxt_4_lcssa_select_xmlchecklanguageid17_q = 64'b0;
        endcase
    end

    // i_sub_ptr_sub264_xmlchecklanguageid25(SUB,105)@1
    assign i_sub_ptr_sub264_xmlchecklanguageid25_a = {1'b0, i_nxt_4_lcssa_select_xmlchecklanguageid17_q};
    assign i_sub_ptr_sub264_xmlchecklanguageid25_b = {1'b0, i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr23187_xmlchecklanguageid23_out_dest_data_out_53_0};
    assign i_sub_ptr_sub264_xmlchecklanguageid25_o = $unsigned(i_sub_ptr_sub264_xmlchecklanguageid25_a) - $unsigned(i_sub_ptr_sub264_xmlchecklanguageid25_b);
    assign i_sub_ptr_sub264_xmlchecklanguageid25_q = i_sub_ptr_sub264_xmlchecklanguageid25_o[64:0];

    // bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x(BITSELECT,148)@1
    assign bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b = $unsigned(i_sub_ptr_sub264_xmlchecklanguageid25_q[63:0]);

    // redist0_bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist0_bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b);
        end
    end

    // i_cmp276_xmlchecklanguageid30(LOGICAL,46)@2 + 1
    assign i_cmp276_xmlchecklanguageid30_qi = $unsigned(redist0_bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b_1_q == c_i64_2124_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp276_xmlchecklanguageid30_delay ( .xin(i_cmp276_xmlchecklanguageid30_qi), .xout(i_cmp276_xmlchecklanguageid30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4123(CONSTANT,42)
    assign c_i64_4123_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // c_i64_5122(CONSTANT,43)
    assign c_i64_5122_q = $unsigned(64'b1111111111111111111111111111111111111111111111111111111111111011);

    // i_sub_ptr_sub264_off_xmlchecklanguageid26(ADD,104)@2
    assign i_sub_ptr_sub264_off_xmlchecklanguageid26_a = {1'b0, redist0_bgTrunc_i_sub_ptr_sub264_xmlchecklanguageid25_sel_x_b_1_q};
    assign i_sub_ptr_sub264_off_xmlchecklanguageid26_b = {1'b0, c_i64_5122_q};
    assign i_sub_ptr_sub264_off_xmlchecklanguageid26_o = $unsigned(i_sub_ptr_sub264_off_xmlchecklanguageid26_a) + $unsigned(i_sub_ptr_sub264_off_xmlchecklanguageid26_b);
    assign i_sub_ptr_sub264_off_xmlchecklanguageid26_q = i_sub_ptr_sub264_off_xmlchecklanguageid26_o[64:0];

    // bgTrunc_i_sub_ptr_sub264_off_xmlchecklanguageid26_sel_x(BITSELECT,147)@2
    assign bgTrunc_i_sub_ptr_sub264_off_xmlchecklanguageid26_sel_x_b = i_sub_ptr_sub264_off_xmlchecklanguageid26_q[63:0];

    // i_unnamed_xmlchecklanguageid27(COMPARE,107)@2 + 1
    assign i_unnamed_xmlchecklanguageid27_a = {2'b00, bgTrunc_i_sub_ptr_sub264_off_xmlchecklanguageid26_sel_x_b};
    assign i_unnamed_xmlchecklanguageid27_b = {2'b00, c_i64_4123_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_xmlchecklanguageid27_o <= 66'b0;
        end
        else
        begin
            i_unnamed_xmlchecklanguageid27_o <= $unsigned(i_unnamed_xmlchecklanguageid27_a) - $unsigned(i_unnamed_xmlchecklanguageid27_b);
        end
    end
    assign i_unnamed_xmlchecklanguageid27_c[0] = i_unnamed_xmlchecklanguageid27_o[65];

    // valid_fanout_reg15(REG,184)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist2_sync_together148_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid121_xmlchecklanguageid28(BLACKBOX,60)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000088Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid121_xmlchecklanguageid28 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid121_xmlchecklanguageid28_out_dest_data_out_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid29(LOGICAL,108)@3
    assign i_unnamed_xmlchecklanguageid29_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid121_xmlchecklanguageid28_out_dest_data_out_49_0 | i_unnamed_xmlchecklanguageid27_c;

    // i_unnamed_xmlchecklanguageid32(LOGICAL,109)@3
    assign i_unnamed_xmlchecklanguageid32_q = i_unnamed_xmlchecklanguageid29_q | i_cmp276_xmlchecklanguageid30_q;

    // valid_fanout_reg17(REG,186)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist2_sync_together148_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid122_xmlchecklanguageid35(BLACKBOX,61)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000089Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid122_xmlchecklanguageid35 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid122_xmlchecklanguageid35_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision811_select_xmlchecklanguageid36(LOGICAL,97)@3
    assign i_phi_decision811_select_xmlchecklanguageid36_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid122_xmlchecklanguageid35_out_dest_data_out_56_0 | i_unnamed_xmlchecklanguageid32_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid130_xmlchecklanguageid75(BLACKBOX,78)@3
    // out out_intel_reserved_ffwd_70_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000069Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid130_xmlchecklanguageid75 (
        .in_predicate_in(GND_q),
        .in_src_data_in_70_0(i_phi_decision811_select_xmlchecklanguageid36_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_intel_reserved_ffwd_70_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid130_xmlchecklanguageid75_out_intel_reserved_ffwd_70_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,153)
    assign out_intel_reserved_ffwd_70_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid130_xmlchecklanguageid75_out_intel_reserved_ffwd_70_0;

    // redist4_sync_together148_in_i_valid_8(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together148_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist4_sync_together148_in_i_valid_8_q <= $unsigned(redist3_sync_together148_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg32(REG,201)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist4_sync_together148_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg18(REG,187)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist4_sync_together148_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_phi_decision_xor96_xmlchecklanguageid37(BLACKBOX,51)@9
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000079Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_phi_decision_xor96_xmlchecklanguageid37 (
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_64_0(i_llvm_fpga_ffwd_dest_i1_phi_decision_xor96_xmlchecklanguageid37_out_dest_data_out_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_unnamed_xmlchecklanguageid29_q_6(DELAY,214)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_i_unnamed_xmlchecklanguageid29_q_6 ( .xin(i_unnamed_xmlchecklanguageid29_q), .xout(redist5_i_unnamed_xmlchecklanguageid29_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_phi_decision770_select_xmlchecklanguageid38(LOGICAL,96)@9
    assign i_phi_decision770_select_xmlchecklanguageid38_q = redist5_i_unnamed_xmlchecklanguageid29_q_6_q & i_llvm_fpga_ffwd_dest_i1_phi_decision_xor96_xmlchecklanguageid37_out_dest_data_out_64_0;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid131_xmlchecklanguageid76(BLACKBOX,79)@9
    // out out_intel_reserved_ffwd_71_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000070Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid131_xmlchecklanguageid76 (
        .in_predicate_in(GND_q),
        .in_src_data_in_71_0(i_phi_decision770_select_xmlchecklanguageid38_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_intel_reserved_ffwd_71_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid131_xmlchecklanguageid76_out_intel_reserved_ffwd_71_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,154)
    assign out_intel_reserved_ffwd_71_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid131_xmlchecklanguageid76_out_intel_reserved_ffwd_71_0;

    // valid_fanout_reg33(REG,202)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist4_sync_together148_in_i_valid_8_q);
        end
    end

    // i_unnamed_xmlchecklanguageid58(LOGICAL,111)@9
    assign i_unnamed_xmlchecklanguageid58_q = i_phi_decision770_select_xmlchecklanguageid38_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid132_xmlchecklanguageid77(BLACKBOX,80)@9
    // out out_intel_reserved_ffwd_72_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000071Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid132_xmlchecklanguageid77 (
        .in_predicate_in(GND_q),
        .in_src_data_in_72_0(i_unnamed_xmlchecklanguageid58_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_intel_reserved_ffwd_72_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid132_xmlchecklanguageid77_out_intel_reserved_ffwd_72_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,155)
    assign out_intel_reserved_ffwd_72_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid132_xmlchecklanguageid77_out_intel_reserved_ffwd_72_0;

    // valid_fanout_reg34(REG,203)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist4_sync_together148_in_i_valid_8_q);
        end
    end

    // redist6_i_phi_decision811_select_xmlchecklanguageid36_q_6(DELAY,215)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_phi_decision811_select_xmlchecklanguageid36_q_6 ( .xin(i_phi_decision811_select_xmlchecklanguageid36_q), .xout(redist6_i_phi_decision811_select_xmlchecklanguageid36_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid60(LOGICAL,113)@9
    assign i_unnamed_xmlchecklanguageid60_q = redist6_i_phi_decision811_select_xmlchecklanguageid36_q_6_q ^ VCC_q;

    // c_i8_0125_recast_x(CONSTANT,150)
    assign c_i8_0125_recast_x_q = $unsigned(8'b00000000);

    // valid_fanout_reg27(REG,196)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist3_sync_together148_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_lcssa147_select70_xmlchecklanguageid54(BLACKBOX,67)@8
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000095Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lcssa147_select70_xmlchecklanguageid54 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_i8_lcssa147_select70_xmlchecklanguageid54_out_dest_data_out_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,194)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist3_sync_together148_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_lcssa164_select85_xmlchecklanguageid50(BLACKBOX,68)@8
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000096Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lcssa164_select85_xmlchecklanguageid50 (
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_dest_data_out_47_0(i_llvm_fpga_ffwd_dest_i8_lcssa164_select85_xmlchecklanguageid50_out_dest_data_out_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg22(REG,191)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist3_sync_together148_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid126_xmlchecklanguageid44(BLACKBOX,65)@8
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000093Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid126_xmlchecklanguageid44 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid126_xmlchecklanguageid44_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select1686_xmlchecklanguageid45(MUX,101)@8
    assign i_select1686_xmlchecklanguageid45_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid126_xmlchecklanguageid44_out_dest_data_out_56_0;
    always @(i_select1686_xmlchecklanguageid45_s or i_lcssa163_select_xmlchecklanguageid21_q or i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_o_readdata)
    begin
        unique case (i_select1686_xmlchecklanguageid45_s)
            1'b0 : i_select1686_xmlchecklanguageid45_q = i_lcssa163_select_xmlchecklanguageid21_q;
            1'b1 : i_select1686_xmlchecklanguageid45_q = i_llvm_fpga_mem_pre157_lm28_xmlchecklanguageid13_out_o_readdata;
            default : i_select1686_xmlchecklanguageid45_q = 8'b0;
        endcase
    end

    // valid_fanout_reg19(REG,188)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist1_sync_together148_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid123_xmlchecklanguageid39(BLACKBOX,62)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000090Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid123_xmlchecklanguageid39 (
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dest_data_out_48_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid123_xmlchecklanguageid39_out_dest_data_out_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg20(REG,189)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist1_sync_together148_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid124_xmlchecklanguageid40(BLACKBOX,63)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000091Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid124_xmlchecklanguageid40 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid124_xmlchecklanguageid40_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision549_select_xmlchecklanguageid41(LOGICAL,95)@2
    assign i_phi_decision549_select_xmlchecklanguageid41_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid124_xmlchecklanguageid40_out_dest_data_out_56_0 & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid123_xmlchecklanguageid39_out_dest_data_out_48_0;

    // redist7_i_phi_decision549_select_xmlchecklanguageid41_q_6(DELAY,216)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_phi_decision549_select_xmlchecklanguageid41_q_6 ( .xin(i_phi_decision549_select_xmlchecklanguageid41_q), .xout(redist7_i_phi_decision549_select_xmlchecklanguageid41_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_select558_xmlchecklanguageid51(MUX,103)@8
    assign i_select558_xmlchecklanguageid51_s = redist7_i_phi_decision549_select_xmlchecklanguageid41_q_6_q;
    always @(i_select558_xmlchecklanguageid51_s or i_select1686_xmlchecklanguageid45_q or i_llvm_fpga_ffwd_dest_i8_lcssa164_select85_xmlchecklanguageid50_out_dest_data_out_47_0)
    begin
        unique case (i_select558_xmlchecklanguageid51_s)
            1'b0 : i_select558_xmlchecklanguageid51_q = i_select1686_xmlchecklanguageid45_q;
            1'b1 : i_select558_xmlchecklanguageid51_q = i_llvm_fpga_ffwd_dest_i8_lcssa164_select85_xmlchecklanguageid50_out_dest_data_out_47_0;
            default : i_select558_xmlchecklanguageid51_q = 8'b0;
        endcase
    end

    // valid_fanout_reg23(REG,192)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist1_sync_together148_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid127_xmlchecklanguageid46(BLACKBOX,66)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000094Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid127_xmlchecklanguageid46 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid127_xmlchecklanguageid46_out_dest_data_out_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision249_select_xmlchecklanguageid47(LOGICAL,94)@2
    assign i_phi_decision249_select_xmlchecklanguageid47_q = i_phi_decision549_select_xmlchecklanguageid41_q & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid127_xmlchecklanguageid46_out_dest_data_out_31_0;

    // redist8_i_phi_decision249_select_xmlchecklanguageid47_q_6(DELAY,217)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_phi_decision249_select_xmlchecklanguageid47_q_6 ( .xin(i_phi_decision249_select_xmlchecklanguageid47_q), .xout(redist8_i_phi_decision249_select_xmlchecklanguageid47_q_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_select258_xmlchecklanguageid55(MUX,102)@8
    assign i_select258_xmlchecklanguageid55_s = redist8_i_phi_decision249_select_xmlchecklanguageid47_q_6_q;
    always @(i_select258_xmlchecklanguageid55_s or i_select558_xmlchecklanguageid51_q or i_llvm_fpga_ffwd_dest_i8_lcssa147_select70_xmlchecklanguageid54_out_dest_data_out_28_0)
    begin
        unique case (i_select258_xmlchecklanguageid55_s)
            1'b0 : i_select258_xmlchecklanguageid55_q = i_select558_xmlchecklanguageid51_q;
            1'b1 : i_select258_xmlchecklanguageid55_q = i_llvm_fpga_ffwd_dest_i8_lcssa147_select70_xmlchecklanguageid54_out_dest_data_out_28_0;
            default : i_select258_xmlchecklanguageid55_q = 8'b0;
        endcase
    end

    // i_cmp281_xmlchecklanguageid56(LOGICAL,47)@8 + 1
    assign i_cmp281_xmlchecklanguageid56_qi = $unsigned(i_select258_xmlchecklanguageid55_q == c_i8_0125_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp281_xmlchecklanguageid56_delay ( .xin(i_cmp281_xmlchecklanguageid56_qi), .xout(i_cmp281_xmlchecklanguageid56_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid59(LOGICAL,112)@9
    assign i_unnamed_xmlchecklanguageid59_q = i_cmp281_xmlchecklanguageid56_q & i_unnamed_xmlchecklanguageid58_q;

    // i_unnamed_xmlchecklanguageid61(LOGICAL,114)@9
    assign i_unnamed_xmlchecklanguageid61_q = i_unnamed_xmlchecklanguageid59_q | i_unnamed_xmlchecklanguageid60_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid133_xmlchecklanguageid78(BLACKBOX,81)@9
    // out out_intel_reserved_ffwd_73_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000072Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid133_xmlchecklanguageid78 (
        .in_predicate_in(GND_q),
        .in_src_data_in_73_0(i_unnamed_xmlchecklanguageid61_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_intel_reserved_ffwd_73_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid133_xmlchecklanguageid78_out_intel_reserved_ffwd_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,156)
    assign out_intel_reserved_ffwd_73_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid133_xmlchecklanguageid78_out_intel_reserved_ffwd_73_0;

    // valid_fanout_reg35(REG,204)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist4_sync_together148_in_i_valid_8_q);
        end
    end

    // i_unnamed_xmlchecklanguageid65(LOGICAL,116)@9
    assign i_unnamed_xmlchecklanguageid65_q = i_unnamed_xmlchecklanguageid61_q ^ VCC_q;

    // c_i8_45126_recast_x(CONSTANT,151)
    assign c_i8_45126_recast_x_q = $unsigned(8'b00101101);

    // i_cmp286_xmlchecklanguageid62(LOGICAL,48)@8 + 1
    assign i_cmp286_xmlchecklanguageid62_qi = $unsigned(i_select258_xmlchecklanguageid55_q == c_i8_45126_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp286_xmlchecklanguageid62_delay ( .xin(i_cmp286_xmlchecklanguageid62_qi), .xout(i_cmp286_xmlchecklanguageid62_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid64(LOGICAL,115)@9
    assign i_unnamed_xmlchecklanguageid64_q = i_phi_decision770_select_xmlchecklanguageid38_q | i_cmp286_xmlchecklanguageid62_q;

    // i_unnamed_xmlchecklanguageid66(LOGICAL,117)@9
    assign i_unnamed_xmlchecklanguageid66_q = i_unnamed_xmlchecklanguageid64_q & i_unnamed_xmlchecklanguageid65_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid134_xmlchecklanguageid79(BLACKBOX,82)@9
    // out out_intel_reserved_ffwd_74_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000073Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid134_xmlchecklanguageid79 (
        .in_predicate_in(GND_q),
        .in_src_data_in_74_0(i_unnamed_xmlchecklanguageid66_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_intel_reserved_ffwd_74_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid134_xmlchecklanguageid79_out_intel_reserved_ffwd_74_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,157)
    assign out_intel_reserved_ffwd_74_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid134_xmlchecklanguageid79_out_intel_reserved_ffwd_74_0;

    // valid_fanout_reg36(REG,205)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist1_sync_together148_in_i_valid_1_q);
        end
    end

    // i_incdec_ptr289_xmlchecklanguageid0_c_i64_11_x(CONSTANT,165)
    assign i_incdec_ptr289_xmlchecklanguageid0_c_i64_11_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // valid_fanout_reg26(REG,195)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist1_sync_together148_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select67_xmlchecklanguageid52(BLACKBOX,74)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000102Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select67_xmlchecklanguageid52 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select67_xmlchecklanguageid52_out_dest_data_out_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg24(REG,193)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist1_sync_together148_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_nxt_2_lcssa_select83_xmlchecklanguageid48(BLACKBOX,75)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000103Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_nxt_2_lcssa_select83_xmlchecklanguageid48 (
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_46_0(i_llvm_fpga_ffwd_dest_p1024i8_nxt_2_lcssa_select83_xmlchecklanguageid48_out_dest_data_out_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,190)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid125_xmlchecklanguageid42(BLACKBOX,64)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000092Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid125_xmlchecklanguageid42 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid125_xmlchecklanguageid42_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_nxt_5_select1689_xmlchecklanguageid43(MUX,88)@1 + 1
    assign i_nxt_5_select1689_xmlchecklanguageid43_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid125_xmlchecklanguageid42_out_dest_data_out_56_0;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_nxt_5_select1689_xmlchecklanguageid43_q <= 64'b0;
        end
        else
        begin
            unique case (i_nxt_5_select1689_xmlchecklanguageid43_s)
                1'b0 : i_nxt_5_select1689_xmlchecklanguageid43_q <= i_nxt_4_lcssa_select_xmlchecklanguageid17_q;
                1'b1 : i_nxt_5_select1689_xmlchecklanguageid43_q <= i_add_ptr348_xmlchecklanguageid0_trunc_sel_x_b;
                default : i_nxt_5_select1689_xmlchecklanguageid43_q <= 64'b0;
            endcase
        end
    end

    // i_nxt_5_select567_xmlchecklanguageid49(MUX,89)@2
    assign i_nxt_5_select567_xmlchecklanguageid49_s = i_phi_decision549_select_xmlchecklanguageid41_q;
    always @(i_nxt_5_select567_xmlchecklanguageid49_s or i_nxt_5_select1689_xmlchecklanguageid43_q or i_llvm_fpga_ffwd_dest_p1024i8_nxt_2_lcssa_select83_xmlchecklanguageid48_out_dest_data_out_46_0)
    begin
        unique case (i_nxt_5_select567_xmlchecklanguageid49_s)
            1'b0 : i_nxt_5_select567_xmlchecklanguageid49_q = i_nxt_5_select1689_xmlchecklanguageid43_q;
            1'b1 : i_nxt_5_select567_xmlchecklanguageid49_q = i_llvm_fpga_ffwd_dest_p1024i8_nxt_2_lcssa_select83_xmlchecklanguageid48_out_dest_data_out_46_0;
            default : i_nxt_5_select567_xmlchecklanguageid49_q = 64'b0;
        endcase
    end

    // i_nxt_5_select_xmlchecklanguageid53(MUX,90)@2
    assign i_nxt_5_select_xmlchecklanguageid53_s = i_phi_decision249_select_xmlchecklanguageid47_q;
    always @(i_nxt_5_select_xmlchecklanguageid53_s or i_nxt_5_select567_xmlchecklanguageid49_q or i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select67_xmlchecklanguageid52_out_dest_data_out_27_0)
    begin
        unique case (i_nxt_5_select_xmlchecklanguageid53_s)
            1'b0 : i_nxt_5_select_xmlchecklanguageid53_q = i_nxt_5_select567_xmlchecklanguageid49_q;
            1'b1 : i_nxt_5_select_xmlchecklanguageid53_q = i_llvm_fpga_ffwd_dest_p1024i8_nxt_1_lcssa_select67_xmlchecklanguageid52_out_dest_data_out_27_0;
            default : i_nxt_5_select_xmlchecklanguageid53_q = 64'b0;
        endcase
    end

    // i_incdec_ptr289_xmlchecklanguageid0_add_x(ADD,164)@2
    assign i_incdec_ptr289_xmlchecklanguageid0_add_x_a = {1'b0, i_nxt_5_select_xmlchecklanguageid53_q};
    assign i_incdec_ptr289_xmlchecklanguageid0_add_x_b = {1'b0, i_incdec_ptr289_xmlchecklanguageid0_c_i64_11_x_q};
    assign i_incdec_ptr289_xmlchecklanguageid0_add_x_o = $unsigned(i_incdec_ptr289_xmlchecklanguageid0_add_x_a) + $unsigned(i_incdec_ptr289_xmlchecklanguageid0_add_x_b);
    assign i_incdec_ptr289_xmlchecklanguageid0_add_x_q = i_incdec_ptr289_xmlchecklanguageid0_add_x_o[64:0];

    // i_incdec_ptr289_xmlchecklanguageid0_trunc_sel_x(BITSELECT,167)@2
    assign i_incdec_ptr289_xmlchecklanguageid0_trunc_sel_x_b = i_incdec_ptr289_xmlchecklanguageid0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid135_xmlchecklanguageid80(BLACKBOX,85)@2
    // out out_intel_reserved_ffwd_75_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000076Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid135_xmlchecklanguageid80 (
        .in_predicate_in(GND_q),
        .in_src_data_in_75_0(i_incdec_ptr289_xmlchecklanguageid0_trunc_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_intel_reserved_ffwd_75_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid135_xmlchecklanguageid80_out_intel_reserved_ffwd_75_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,158)
    assign out_intel_reserved_ffwd_75_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid135_xmlchecklanguageid80_out_intel_reserved_ffwd_75_0;

    // valid_fanout_reg37(REG,206)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist4_sync_together148_in_i_valid_8_q);
        end
    end

    // i_phi_decision927_and_i0_xmlchecklanguageid68(LOGICAL,98)@9
    assign i_phi_decision927_and_i0_xmlchecklanguageid68_q = i_unnamed_xmlchecklanguageid66_q & i_unnamed_xmlchecklanguageid58_q;

    // redist9_i_phi_decision1222_select_xmlchecklanguageid34_q_8(DELAY,218)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_phi_decision1222_select_xmlchecklanguageid34_q_8 ( .xin(i_phi_decision1222_select_xmlchecklanguageid34_q), .xout(redist9_i_phi_decision1222_select_xmlchecklanguageid34_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_phi_decision1224_and_i0_xmlchecklanguageid69(LOGICAL,93)@9
    assign i_phi_decision1224_and_i0_xmlchecklanguageid69_q = redist9_i_phi_decision1222_select_xmlchecklanguageid34_q_8_q & i_phi_decision927_and_i0_xmlchecklanguageid68_q;

    // i_phi_decision1224_and_i0_not_xmlchecklanguageid70(LOGICAL,92)@9
    assign i_phi_decision1224_and_i0_not_xmlchecklanguageid70_q = i_phi_decision1224_and_i0_xmlchecklanguageid69_q ^ VCC_q;

    // valid_fanout_reg28(REG,197)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist4_sync_together148_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp6851_xmlchecklanguageid71(BLACKBOX,50)@9
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000078Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp6851_xmlchecklanguageid71 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp6851_xmlchecklanguageid71_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid72(LOGICAL,119)@9
    assign i_unnamed_xmlchecklanguageid72_q = i_llvm_fpga_ffwd_dest_i1_cmp6851_xmlchecklanguageid71_out_dest_data_out_14_0 | i_phi_decision1224_and_i0_not_xmlchecklanguageid70_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid136_xmlchecklanguageid81(BLACKBOX,83)@9
    // out out_intel_reserved_ffwd_76_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000074Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid136_xmlchecklanguageid81 (
        .in_predicate_in(GND_q),
        .in_src_data_in_76_0(i_unnamed_xmlchecklanguageid72_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_intel_reserved_ffwd_76_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid136_xmlchecklanguageid81_out_intel_reserved_ffwd_76_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,159)
    assign out_intel_reserved_ffwd_76_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid136_xmlchecklanguageid81_out_intel_reserved_ffwd_76_0;

    // valid_fanout_reg0(REG,169)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together148_in_i_valid_8_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,168)@9
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_xmlCheckLanguageID137_0_tpl = GND_q;
    assign out_unnamed_xmlCheckLanguageID7 = GND_q;

endmodule
