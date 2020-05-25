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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000005Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000005Z_xmlchecklanguageid0 (
    input wire [63:0] in_lm15523_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm15523_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm15523_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm15523_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [7:0] in_intel_reserved_ffwd_20_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_25_0,
    input wire [7:0] in_intel_reserved_ffwd_26_0,
    output wire [63:0] out_intel_reserved_ffwd_27_0,
    input wire [0:0] in_i_valid,
    output wire [7:0] out_intel_reserved_ffwd_28_0,
    output wire [0:0] out_intel_reserved_ffwd_29_0,
    output wire [0:0] out_intel_reserved_ffwd_30_0,
    output wire [0:0] out_intel_reserved_ffwd_31_0,
    output wire [0:0] out_intel_reserved_ffwd_32_0,
    output wire [0:0] out_intel_reserved_ffwd_33_0,
    output wire [0:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [0:0] out_intel_reserved_ffwd_36_0,
    output wire [63:0] out_intel_reserved_ffwd_37_0,
    output wire [7:0] out_intel_reserved_ffwd_38_0,
    output wire [0:0] out_intel_reserved_ffwd_39_0,
    output wire [0:0] out_intel_reserved_ffwd_40_0,
    output wire [0:0] out_intel_reserved_ffwd_41_0,
    output wire [63:0] out_intel_reserved_ffwd_42_0,
    output wire [0:0] out_intel_reserved_ffwd_43_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_xmlCheckLanguageID61_0_tpl,
    output wire [0:0] out_unnamed_xmlCheckLanguageID7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_1123_q;
    wire [63:0] c_i64_4119_q;
    wire [63:0] c_i64_5122_q;
    wire [7:0] c_i8_10128_q;
    wire [7:0] c_i8_26131_q;
    wire [7:0] c_i8_33129_q;
    wire [7:0] c_i8_48127_q;
    wire [7:0] c_i8_65130_q;
    wire [0:0] i_cmp131_xmlchecklanguageid13_qi;
    reg [0:0] i_cmp131_xmlchecklanguageid13_q;
    wire [0:0] i_cmp137_xmlchecklanguageid17_qi;
    reg [0:0] i_cmp137_xmlchecklanguageid17_q;
    wire [0:0] i_cmp159_xmlchecklanguageid31_q;
    wire [0:0] i_cmp164_xmlchecklanguageid40_q;
    wire [0:0] i_lcssa147_select_xmlchecklanguageid8_s;
    reg [7:0] i_lcssa147_select_xmlchecklanguageid8_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp6853_xmlchecklanguageid70_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp6854_xmlchecklanguageid52_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid41_xmlchecklanguageid2_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid42_xmlchecklanguageid6_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid43_xmlchecklanguageid15_out_dest_data_out_21_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lm712164_xmlchecklanguageid5_out_dest_data_out_20_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_pr_lm2266_xmlchecklanguageid7_out_dest_data_out_26_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr12665_xmlchecklanguageid3_out_dest_data_out_25_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select47_xmlchecklanguageid10_out_dest_data_out_13_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select48_xmlchecklanguageid1_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid46_xmlchecklanguageid74_out_intel_reserved_ffwd_29_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid47_xmlchecklanguageid75_out_intel_reserved_ffwd_30_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid48_xmlchecklanguageid76_out_intel_reserved_ffwd_31_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid49_xmlchecklanguageid77_out_intel_reserved_ffwd_32_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid50_xmlchecklanguageid78_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid51_xmlchecklanguageid79_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid52_xmlchecklanguageid80_out_intel_reserved_ffwd_35_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid53_xmlchecklanguageid81_out_intel_reserved_ffwd_36_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid56_xmlchecklanguageid84_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid57_xmlchecklanguageid85_out_intel_reserved_ffwd_40_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid58_xmlchecklanguageid86_out_intel_reserved_ffwd_41_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid60_xmlchecklanguageid88_out_intel_reserved_ffwd_43_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid45_xmlchecklanguageid73_out_intel_reserved_ffwd_28_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid55_xmlchecklanguageid83_out_intel_reserved_ffwd_38_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid44_xmlchecklanguageid72_out_intel_reserved_ffwd_27_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid54_xmlchecklanguageid82_out_intel_reserved_ffwd_37_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid59_xmlchecklanguageid87_out_intel_reserved_ffwd_42_0;
    wire [63:0] i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_o_readdata;
    wire [0:0] i_not3_xmlchecklanguageid69_q;
    wire [0:0] i_notlhs1786_xmlchecklanguageid24_q;
    wire [0:0] i_nxt_1_lcssa_select_xmlchecklanguageid4_s;
    reg [63:0] i_nxt_1_lcssa_select_xmlchecklanguageid4_q;
    wire [8:0] i_off123_xmlchecklanguageid55_a;
    wire [8:0] i_off123_xmlchecklanguageid55_b;
    logic [8:0] i_off123_xmlchecklanguageid55_o;
    wire [8:0] i_off123_xmlchecklanguageid55_q;
    wire [0:0] i_phi_decision246_xor_and_i0_xmlchecklanguageid48_q;
    wire [0:0] i_phi_decision270_xor_and_i0_xmlchecklanguageid49_qi;
    reg [0:0] i_phi_decision270_xor_and_i0_xmlchecklanguageid49_q;
    wire [0:0] i_phi_decision313_and_i0_not_xmlchecklanguageid51_q;
    wire [0:0] i_phi_decision313_and_i0_xmlchecklanguageid50_q;
    wire [0:0] i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q;
    wire [0:0] i_reduction_xmlchecklanguageid_10_xmlchecklanguageid65_q;
    wire [0:0] i_reduction_xmlchecklanguageid_11_xmlchecklanguageid66_q;
    wire [0:0] i_reduction_xmlchecklanguageid_12_xmlchecklanguageid67_q;
    wire [0:0] i_reduction_xmlchecklanguageid_1_xmlchecklanguageid36_q;
    wire [0:0] i_reduction_xmlchecklanguageid_2_xmlchecklanguageid37_q;
    wire [0:0] i_reduction_xmlchecklanguageid_3_xmlchecklanguageid42_q;
    wire [0:0] i_reduction_xmlchecklanguageid_4_xmlchecklanguageid43_q;
    wire [0:0] i_reduction_xmlchecklanguageid_5_xmlchecklanguageid44_q;
    wire [0:0] i_reduction_xmlchecklanguageid_7_xmlchecklanguageid57_q;
    wire [0:0] i_reduction_xmlchecklanguageid_8_xmlchecklanguageid58_q;
    wire [64:0] i_sub_ptr_sub130_off_xmlchecklanguageid21_a;
    wire [64:0] i_sub_ptr_sub130_off_xmlchecklanguageid21_b;
    logic [64:0] i_sub_ptr_sub130_off_xmlchecklanguageid21_o;
    wire [64:0] i_sub_ptr_sub130_off_xmlchecklanguageid21_q;
    wire [64:0] i_sub_ptr_sub130_xmlchecklanguageid12_a;
    wire [64:0] i_sub_ptr_sub130_xmlchecklanguageid12_b;
    logic [64:0] i_sub_ptr_sub130_xmlchecklanguageid12_o;
    wire [64:0] i_sub_ptr_sub130_xmlchecklanguageid12_q;
    wire [0:0] i_unnamed_xmlchecklanguageid16_q;
    wire [0:0] i_unnamed_xmlchecklanguageid19_q;
    wire [0:0] i_unnamed_xmlchecklanguageid20_q;
    wire [65:0] i_unnamed_xmlchecklanguageid22_a;
    wire [65:0] i_unnamed_xmlchecklanguageid22_b;
    logic [65:0] i_unnamed_xmlchecklanguageid22_o;
    wire [0:0] i_unnamed_xmlchecklanguageid22_c;
    wire [0:0] i_unnamed_xmlchecklanguageid23_q;
    wire [0:0] i_unnamed_xmlchecklanguageid25_q;
    wire [63:0] i_unnamed_xmlchecklanguageid26_q;
    wire [63:0] i_unnamed_xmlchecklanguageid26_vt_join_q;
    wire [62:0] i_unnamed_xmlchecklanguageid26_vt_select_63_b;
    wire [0:0] i_unnamed_xmlchecklanguageid27_qi;
    reg [0:0] i_unnamed_xmlchecklanguageid27_q;
    wire [0:0] i_unnamed_xmlchecklanguageid29_q;
    wire [0:0] i_unnamed_xmlchecklanguageid30_q;
    wire [0:0] i_unnamed_xmlchecklanguageid33_q;
    wire [0:0] i_unnamed_xmlchecklanguageid34_q;
    wire [0:0] i_unnamed_xmlchecklanguageid38_q;
    wire [0:0] i_unnamed_xmlchecklanguageid39_q;
    wire [0:0] i_unnamed_xmlchecklanguageid45_q;
    wire [0:0] i_unnamed_xmlchecklanguageid46_q;
    wire [0:0] i_unnamed_xmlchecklanguageid53_q;
    wire [9:0] i_unnamed_xmlchecklanguageid56_a;
    wire [9:0] i_unnamed_xmlchecklanguageid56_b;
    logic [9:0] i_unnamed_xmlchecklanguageid56_o;
    wire [0:0] i_unnamed_xmlchecklanguageid56_c;
    wire [0:0] i_unnamed_xmlchecklanguageid59_q;
    wire [0:0] i_unnamed_xmlchecklanguageid60_q;
    wire [7:0] i_unnamed_xmlchecklanguageid61_q;
    wire [7:0] i_unnamed_xmlchecklanguageid61_vt_join_q;
    wire [8:0] i_unnamed_xmlchecklanguageid62_a;
    wire [8:0] i_unnamed_xmlchecklanguageid62_b;
    logic [8:0] i_unnamed_xmlchecklanguageid62_o;
    wire [8:0] i_unnamed_xmlchecklanguageid62_q;
    wire [9:0] i_unnamed_xmlchecklanguageid63_a;
    wire [9:0] i_unnamed_xmlchecklanguageid63_b;
    logic [9:0] i_unnamed_xmlchecklanguageid63_o;
    wire [0:0] i_unnamed_xmlchecklanguageid63_c;
    wire [0:0] i_unnamed_xmlchecklanguageid64_q;
    wire [0:0] i_unnamed_xmlchecklanguageid71_q;
    wire [7:0] bgTrunc_i_off123_xmlchecklanguageid55_sel_x_b;
    wire [63:0] bgTrunc_i_sub_ptr_sub130_off_xmlchecklanguageid21_sel_x_b;
    wire [63:0] bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b;
    wire [7:0] bgTrunc_i_unnamed_xmlchecklanguageid62_sel_x_b;
    wire [63:0] c_i64_2120_recast_x_q;
    wire [63:0] c_i64_3124_recast_x_q;
    wire [7:0] c_i8_0125_recast_x_q;
    wire [7:0] c_i8_45126_recast_x_q;
    wire [64:0] i_incdec_ptr167_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_incdec_ptr167_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_incdec_ptr167_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_incdec_ptr167_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_incdec_ptr167_xmlchecklanguageid0_trunc_sel_x_b;
    wire [64:0] i_incdec_ptr196169_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_incdec_ptr196169_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_incdec_ptr196169_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_incdec_ptr196169_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_incdec_ptr196169_xmlchecklanguageid0_trunc_sel_x_b;
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
    wire [4:0] i_unnamed_xmlchecklanguageid61_vt_select_4_merged_bit_select_b;
    wire [1:0] i_unnamed_xmlchecklanguageid61_vt_select_4_merged_bit_select_c;
    reg [63:0] redist0_bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b_1_q;
    reg [0:0] redist1_sync_together140_in_i_valid_2_q;
    reg [0:0] redist1_sync_together140_in_i_valid_2_delay_0;
    reg [0:0] redist2_sync_together140_in_i_valid_3_q;
    reg [0:0] redist3_sync_together140_in_i_valid_10_q;
    reg [0:0] redist4_sync_together140_in_i_valid_11_q;
    reg [0:0] redist5_i_unnamed_xmlchecklanguageid46_q_1_q;
    reg [0:0] redist6_i_unnamed_xmlchecklanguageid46_q_9_q;
    reg [0:0] redist7_i_unnamed_xmlchecklanguageid34_q_9_q;
    reg [0:0] redist8_i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q_9_q;
    reg [63:0] redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_q;
    reg [63:0] redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_delay_0;
    reg [63:0] redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together140_in_i_valid_2(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together140_in_i_valid_2_delay_0 <= '0;
            redist1_sync_together140_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist1_sync_together140_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together140_in_i_valid_2_q <= redist1_sync_together140_in_i_valid_2_delay_0;
        end
    end

    // redist2_sync_together140_in_i_valid_3(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together140_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together140_in_i_valid_3_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg10(REG,191)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist2_sync_together140_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i64_4119(CONSTANT,36)
    assign c_i64_4119_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // valid_fanout_reg7(REG,188)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select47_xmlchecklanguageid10(BLACKBOX,58)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000031Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select47_xmlchecklanguageid10 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select47_xmlchecklanguageid10_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,184)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr12665_xmlchecklanguageid3(BLACKBOX,57)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000030Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr12665_xmlchecklanguageid3 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr12665_xmlchecklanguageid3_out_dest_data_out_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,182)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select48_xmlchecklanguageid1(BLACKBOX,59)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000032Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select48_xmlchecklanguageid1 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select48_xmlchecklanguageid1_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,183)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid41_xmlchecklanguageid2(BLACKBOX,52)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000025Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid41_xmlchecklanguageid2 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid41_xmlchecklanguageid2_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_nxt_1_lcssa_select_xmlchecklanguageid4(MUX,80)@1
    assign i_nxt_1_lcssa_select_xmlchecklanguageid4_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid41_xmlchecklanguageid2_out_dest_data_out_23_0;
    always @(i_nxt_1_lcssa_select_xmlchecklanguageid4_s or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select48_xmlchecklanguageid1_out_dest_data_out_13_0 or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr12665_xmlchecklanguageid3_out_dest_data_out_25_0)
    begin
        unique case (i_nxt_1_lcssa_select_xmlchecklanguageid4_s)
            1'b0 : i_nxt_1_lcssa_select_xmlchecklanguageid4_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select48_xmlchecklanguageid1_out_dest_data_out_13_0;
            1'b1 : i_nxt_1_lcssa_select_xmlchecklanguageid4_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr12665_xmlchecklanguageid3_out_dest_data_out_25_0;
            default : i_nxt_1_lcssa_select_xmlchecklanguageid4_q = 64'b0;
        endcase
    end

    // i_sub_ptr_sub130_xmlchecklanguageid12(SUB,98)@1
    assign i_sub_ptr_sub130_xmlchecklanguageid12_a = {1'b0, i_nxt_1_lcssa_select_xmlchecklanguageid4_q};
    assign i_sub_ptr_sub130_xmlchecklanguageid12_b = {1'b0, i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66_lcssa_select47_xmlchecklanguageid10_out_dest_data_out_13_0};
    assign i_sub_ptr_sub130_xmlchecklanguageid12_o = $unsigned(i_sub_ptr_sub130_xmlchecklanguageid12_a) - $unsigned(i_sub_ptr_sub130_xmlchecklanguageid12_b);
    assign i_sub_ptr_sub130_xmlchecklanguageid12_q = i_sub_ptr_sub130_xmlchecklanguageid12_o[64:0];

    // bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x(BITSELECT,149)@1
    assign bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b = $unsigned(i_sub_ptr_sub130_xmlchecklanguageid12_q[63:0]);

    // redist0_bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b_1(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist0_bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b);
        end
    end

    // i_cmp131_xmlchecklanguageid13(LOGICAL,45)@2 + 1
    assign i_cmp131_xmlchecklanguageid13_qi = $unsigned(redist0_bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b_1_q == c_i64_4119_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp131_xmlchecklanguageid13_delay ( .xin(i_cmp131_xmlchecklanguageid13_qi), .xout(i_cmp131_xmlchecklanguageid13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,189)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid43_xmlchecklanguageid15(BLACKBOX,54)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000027Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid43_xmlchecklanguageid15 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid43_xmlchecklanguageid15_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid16(LOGICAL,99)@3
    assign i_unnamed_xmlchecklanguageid16_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid43_xmlchecklanguageid15_out_dest_data_out_21_0 | i_cmp131_xmlchecklanguageid13_q;

    // i_unnamed_xmlchecklanguageid19(LOGICAL,100)@3
    assign i_unnamed_xmlchecklanguageid19_q = i_unnamed_xmlchecklanguageid16_q ^ VCC_q;

    // c_i64_2120_recast_x(CONSTANT,151)
    assign c_i64_2120_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000010);

    // i_cmp137_xmlchecklanguageid17(LOGICAL,46)@2 + 1
    assign i_cmp137_xmlchecklanguageid17_qi = $unsigned(redist0_bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b_1_q == c_i64_2120_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp137_xmlchecklanguageid17_delay ( .xin(i_cmp137_xmlchecklanguageid17_qi), .xout(i_cmp137_xmlchecklanguageid17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid20(LOGICAL,101)@3
    assign i_unnamed_xmlchecklanguageid20_q = i_cmp137_xmlchecklanguageid17_q & i_unnamed_xmlchecklanguageid19_q;

    // i_phi_decision246_xor_and_i0_xmlchecklanguageid48(LOGICAL,82)@3
    assign i_phi_decision246_xor_and_i0_xmlchecklanguageid48_q = i_unnamed_xmlchecklanguageid20_q ^ i_unnamed_xmlchecklanguageid19_q;

    // i_notlhs1786_xmlchecklanguageid24(LOGICAL,79)@3
    assign i_notlhs1786_xmlchecklanguageid24_q = i_cmp137_xmlchecklanguageid17_q ^ VCC_q;

    // c_i64_5122(CONSTANT,37)
    assign c_i64_5122_q = $unsigned(64'b1111111111111111111111111111111111111111111111111111111111111011);

    // i_sub_ptr_sub130_off_xmlchecklanguageid21(ADD,97)@2
    assign i_sub_ptr_sub130_off_xmlchecklanguageid21_a = {1'b0, redist0_bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b_1_q};
    assign i_sub_ptr_sub130_off_xmlchecklanguageid21_b = {1'b0, c_i64_5122_q};
    assign i_sub_ptr_sub130_off_xmlchecklanguageid21_o = $unsigned(i_sub_ptr_sub130_off_xmlchecklanguageid21_a) + $unsigned(i_sub_ptr_sub130_off_xmlchecklanguageid21_b);
    assign i_sub_ptr_sub130_off_xmlchecklanguageid21_q = i_sub_ptr_sub130_off_xmlchecklanguageid21_o[64:0];

    // bgTrunc_i_sub_ptr_sub130_off_xmlchecklanguageid21_sel_x(BITSELECT,148)@2
    assign bgTrunc_i_sub_ptr_sub130_off_xmlchecklanguageid21_sel_x_b = i_sub_ptr_sub130_off_xmlchecklanguageid21_q[63:0];

    // i_unnamed_xmlchecklanguageid22(COMPARE,102)@2 + 1
    assign i_unnamed_xmlchecklanguageid22_a = {2'b00, bgTrunc_i_sub_ptr_sub130_off_xmlchecklanguageid21_sel_x_b};
    assign i_unnamed_xmlchecklanguageid22_b = {2'b00, c_i64_4119_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_xmlchecklanguageid22_o <= 66'b0;
        end
        else
        begin
            i_unnamed_xmlchecklanguageid22_o <= $unsigned(i_unnamed_xmlchecklanguageid22_a) - $unsigned(i_unnamed_xmlchecklanguageid22_b);
        end
    end
    assign i_unnamed_xmlchecklanguageid22_c[0] = i_unnamed_xmlchecklanguageid22_o[65];

    // i_unnamed_xmlchecklanguageid23(LOGICAL,103)@3
    assign i_unnamed_xmlchecklanguageid23_q = i_unnamed_xmlchecklanguageid22_c & i_unnamed_xmlchecklanguageid19_q;

    // i_unnamed_xmlchecklanguageid25(LOGICAL,104)@3
    assign i_unnamed_xmlchecklanguageid25_q = i_unnamed_xmlchecklanguageid23_q & i_notlhs1786_xmlchecklanguageid24_q;

    // i_phi_decision270_xor_and_i0_xmlchecklanguageid49(LOGICAL,83)@3 + 1
    assign i_phi_decision270_xor_and_i0_xmlchecklanguageid49_qi = i_unnamed_xmlchecklanguageid25_q ^ i_phi_decision246_xor_and_i0_xmlchecklanguageid48_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_phi_decision270_xor_and_i0_xmlchecklanguageid49_delay ( .xin(i_phi_decision270_xor_and_i0_xmlchecklanguageid49_qi), .xout(i_phi_decision270_xor_and_i0_xmlchecklanguageid49_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_3124_recast_x(CONSTANT,152)
    assign c_i64_3124_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000011);

    // c_i64_1123(CONSTANT,35)
    assign c_i64_1123_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_unnamed_xmlchecklanguageid26(LOGICAL,105)@2
    assign i_unnamed_xmlchecklanguageid26_q = redist0_bgTrunc_i_sub_ptr_sub130_xmlchecklanguageid12_sel_x_b_1_q | c_i64_1123_q;

    // i_unnamed_xmlchecklanguageid26_vt_select_63(BITSELECT,108)@2
    assign i_unnamed_xmlchecklanguageid26_vt_select_63_b = i_unnamed_xmlchecklanguageid26_q[63:1];

    // i_unnamed_xmlchecklanguageid26_vt_join(BITJOIN,107)@2
    assign i_unnamed_xmlchecklanguageid26_vt_join_q = {i_unnamed_xmlchecklanguageid26_vt_select_63_b, VCC_q};

    // i_unnamed_xmlchecklanguageid27(LOGICAL,109)@2 + 1
    assign i_unnamed_xmlchecklanguageid27_qi = $unsigned(i_unnamed_xmlchecklanguageid26_vt_join_q == c_i64_3124_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_xmlchecklanguageid27_delay ( .xin(i_unnamed_xmlchecklanguageid27_qi), .xout(i_unnamed_xmlchecklanguageid27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid29(LOGICAL,110)@3
    assign i_unnamed_xmlchecklanguageid29_q = i_unnamed_xmlchecklanguageid27_q | i_unnamed_xmlchecklanguageid16_q;

    // i_unnamed_xmlchecklanguageid30(LOGICAL,111)@3
    assign i_unnamed_xmlchecklanguageid30_q = i_unnamed_xmlchecklanguageid25_q | i_unnamed_xmlchecklanguageid29_q;

    // i_unnamed_xmlchecklanguageid38(LOGICAL,114)@3
    assign i_unnamed_xmlchecklanguageid38_q = i_unnamed_xmlchecklanguageid30_q ^ VCC_q;

    // i_unnamed_xmlchecklanguageid34(LOGICAL,113)@3
    assign i_unnamed_xmlchecklanguageid34_q = i_unnamed_xmlchecklanguageid25_q ^ VCC_q;

    // c_i8_0125_recast_x(CONSTANT,154)
    assign c_i8_0125_recast_x_q = $unsigned(8'b00000000);

    // valid_fanout_reg6(REG,187)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_pr_lm2266_xmlchecklanguageid7(BLACKBOX,56)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000029Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_pr_lm2266_xmlchecklanguageid7 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_i8_pr_lm2266_xmlchecklanguageid7_out_dest_data_out_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,185)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_lm712164_xmlchecklanguageid5(BLACKBOX,55)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000028Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lm712164_xmlchecklanguageid5 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i8_lm712164_xmlchecklanguageid5_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,186)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid42_xmlchecklanguageid6(BLACKBOX,53)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000026Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid42_xmlchecklanguageid6 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid42_xmlchecklanguageid6_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_lcssa147_select_xmlchecklanguageid8(MUX,49)@3
    assign i_lcssa147_select_xmlchecklanguageid8_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid42_xmlchecklanguageid6_out_dest_data_out_23_0;
    always @(i_lcssa147_select_xmlchecklanguageid8_s or i_llvm_fpga_ffwd_dest_i8_lm712164_xmlchecklanguageid5_out_dest_data_out_20_0 or i_llvm_fpga_ffwd_dest_i8_pr_lm2266_xmlchecklanguageid7_out_dest_data_out_26_0)
    begin
        unique case (i_lcssa147_select_xmlchecklanguageid8_s)
            1'b0 : i_lcssa147_select_xmlchecklanguageid8_q = i_llvm_fpga_ffwd_dest_i8_lm712164_xmlchecklanguageid5_out_dest_data_out_20_0;
            1'b1 : i_lcssa147_select_xmlchecklanguageid8_q = i_llvm_fpga_ffwd_dest_i8_pr_lm2266_xmlchecklanguageid7_out_dest_data_out_26_0;
            default : i_lcssa147_select_xmlchecklanguageid8_q = 8'b0;
        endcase
    end

    // i_cmp159_xmlchecklanguageid31(LOGICAL,47)@3
    assign i_cmp159_xmlchecklanguageid31_q = $unsigned(i_lcssa147_select_xmlchecklanguageid8_q == c_i8_0125_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_xmlchecklanguageid_1_xmlchecklanguageid36(LOGICAL,90)@3
    assign i_reduction_xmlchecklanguageid_1_xmlchecklanguageid36_q = i_cmp159_xmlchecklanguageid31_q & i_unnamed_xmlchecklanguageid34_q;

    // i_unnamed_xmlchecklanguageid33(LOGICAL,112)@3
    assign i_unnamed_xmlchecklanguageid33_q = i_unnamed_xmlchecklanguageid20_q ^ VCC_q;

    // i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35(LOGICAL,86)@3
    assign i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q = i_unnamed_xmlchecklanguageid19_q & i_unnamed_xmlchecklanguageid33_q;

    // i_reduction_xmlchecklanguageid_2_xmlchecklanguageid37(LOGICAL,91)@3
    assign i_reduction_xmlchecklanguageid_2_xmlchecklanguageid37_q = i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q & i_reduction_xmlchecklanguageid_1_xmlchecklanguageid36_q;

    // i_unnamed_xmlchecklanguageid39(LOGICAL,115)@3
    assign i_unnamed_xmlchecklanguageid39_q = i_reduction_xmlchecklanguageid_2_xmlchecklanguageid37_q | i_unnamed_xmlchecklanguageid38_q;

    // i_unnamed_xmlchecklanguageid45(LOGICAL,116)@3
    assign i_unnamed_xmlchecklanguageid45_q = i_unnamed_xmlchecklanguageid39_q ^ VCC_q;

    // c_i8_45126_recast_x(CONSTANT,155)
    assign c_i8_45126_recast_x_q = $unsigned(8'b00101101);

    // i_cmp164_xmlchecklanguageid40(LOGICAL,48)@3
    assign i_cmp164_xmlchecklanguageid40_q = $unsigned(i_lcssa147_select_xmlchecklanguageid8_q == c_i8_45126_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_xmlchecklanguageid_4_xmlchecklanguageid43(LOGICAL,93)@3
    assign i_reduction_xmlchecklanguageid_4_xmlchecklanguageid43_q = i_unnamed_xmlchecklanguageid16_q | i_cmp164_xmlchecklanguageid40_q;

    // i_reduction_xmlchecklanguageid_3_xmlchecklanguageid42(LOGICAL,92)@3
    assign i_reduction_xmlchecklanguageid_3_xmlchecklanguageid42_q = i_unnamed_xmlchecklanguageid22_c | i_cmp137_xmlchecklanguageid17_q;

    // i_reduction_xmlchecklanguageid_5_xmlchecklanguageid44(LOGICAL,94)@3
    assign i_reduction_xmlchecklanguageid_5_xmlchecklanguageid44_q = i_reduction_xmlchecklanguageid_3_xmlchecklanguageid42_q | i_reduction_xmlchecklanguageid_4_xmlchecklanguageid43_q;

    // i_unnamed_xmlchecklanguageid46(LOGICAL,117)@3
    assign i_unnamed_xmlchecklanguageid46_q = i_reduction_xmlchecklanguageid_5_xmlchecklanguageid44_q & i_unnamed_xmlchecklanguageid45_q;

    // redist5_i_unnamed_xmlchecklanguageid46_q_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_unnamed_xmlchecklanguageid46_q_1_q <= '0;
        end
        else
        begin
            redist5_i_unnamed_xmlchecklanguageid46_q_1_q <= $unsigned(i_unnamed_xmlchecklanguageid46_q);
        end
    end

    // i_phi_decision313_and_i0_xmlchecklanguageid50(LOGICAL,85)@4
    assign i_phi_decision313_and_i0_xmlchecklanguageid50_q = redist5_i_unnamed_xmlchecklanguageid46_q_1_q & i_phi_decision270_xor_and_i0_xmlchecklanguageid49_q;

    // i_phi_decision313_and_i0_not_xmlchecklanguageid51(LOGICAL,84)@4
    assign i_phi_decision313_and_i0_not_xmlchecklanguageid51_q = i_phi_decision313_and_i0_xmlchecklanguageid50_q ^ VCC_q;

    // valid_fanout_reg9(REG,190)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist2_sync_together140_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp6854_xmlchecklanguageid52(BLACKBOX,51)@4
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000024Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp6854_xmlchecklanguageid52 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp6854_xmlchecklanguageid52_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid53(LOGICAL,118)@4
    assign i_unnamed_xmlchecklanguageid53_q = i_llvm_fpga_ffwd_dest_i1_cmp6854_xmlchecklanguageid52_out_dest_data_out_14_0 | i_phi_decision313_and_i0_not_xmlchecklanguageid51_q;

    // redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_inputreg0(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_inputreg0_q <= '0;
        end
        else
        begin
            redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_inputreg0_q <= $unsigned(i_nxt_1_lcssa_select_xmlchecklanguageid4_q);
        end
    end

    // redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_delay_0 <= '0;
            redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_q <= '0;
        end
        else
        begin
            redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_delay_0 <= $unsigned(redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_inputreg0_q);
            redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_q <= redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_delay_0;
        end
    end

    // i_incdec_ptr167_xmlchecklanguageid0_add_x(ADD,172)@4
    assign i_incdec_ptr167_xmlchecklanguageid0_add_x_a = {1'b0, redist9_i_nxt_1_lcssa_select_xmlchecklanguageid4_q_3_q};
    assign i_incdec_ptr167_xmlchecklanguageid0_add_x_b = {1'b0, c_i64_1123_q};
    assign i_incdec_ptr167_xmlchecklanguageid0_add_x_o = $unsigned(i_incdec_ptr167_xmlchecklanguageid0_add_x_a) + $unsigned(i_incdec_ptr167_xmlchecklanguageid0_add_x_b);
    assign i_incdec_ptr167_xmlchecklanguageid0_add_x_q = i_incdec_ptr167_xmlchecklanguageid0_add_x_o[64:0];

    // i_incdec_ptr167_xmlchecklanguageid0_trunc_sel_x(BITSELECT,175)@4
    assign i_incdec_ptr167_xmlchecklanguageid0_trunc_sel_x_b = i_incdec_ptr167_xmlchecklanguageid0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm15523_xmlchecklanguageid54(BLACKBOX,77)@4
    // in in_i_stall@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_address@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_read@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_write@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@11
    // out out_o_stall@10
    // out out_o_valid@11
    xmlCheckLanguageID_i_llvm_fpga_mem_lm15523_xmlchecklanguageid0 thei_llvm_fpga_mem_lm15523_xmlchecklanguageid54 (
        .in_flush(in_flush),
        .in_i_address(i_incdec_ptr167_xmlchecklanguageid0_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_xmlchecklanguageid53_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_lm15523_xmlCheckLanguageID_avm_readdata(in_lm15523_xmlCheckLanguageID_avm_readdata),
        .in_lm15523_xmlCheckLanguageID_avm_readdatavalid(in_lm15523_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm15523_xmlCheckLanguageID_avm_waitrequest(in_lm15523_xmlCheckLanguageID_avm_waitrequest),
        .in_lm15523_xmlCheckLanguageID_avm_writeack(in_lm15523_xmlCheckLanguageID_avm_writeack),
        .out_lm15523_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_address),
        .out_lm15523_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_burstcount),
        .out_lm15523_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_byteenable),
        .out_lm15523_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_enable),
        .out_lm15523_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_read),
        .out_lm15523_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_write),
        .out_lm15523_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_lm15523_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_address;
    assign out_lm15523_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_enable;
    assign out_lm15523_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_read;
    assign out_lm15523_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_write;
    assign out_lm15523_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_writedata;
    assign out_lm15523_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_byteenable;
    assign out_lm15523_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_lm15523_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg12(REG,193)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid44_xmlchecklanguageid72(BLACKBOX,74)@1
    // out out_intel_reserved_ffwd_27_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000041Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid44_xmlchecklanguageid72 (
        .in_predicate_in(GND_q),
        .in_src_data_in_27_0(i_nxt_1_lcssa_select_xmlchecklanguageid4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid44_xmlchecklanguageid72_out_intel_reserved_ffwd_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,144)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid44_xmlchecklanguageid72_out_intel_reserved_ffwd_27_0;

    // valid_fanout_reg13(REG,194)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid45_xmlchecklanguageid73(BLACKBOX,72)@3
    // out out_intel_reserved_ffwd_28_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000039Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid45_xmlchecklanguageid73 (
        .in_predicate_in(GND_q),
        .in_src_data_in_28_0(i_lcssa147_select_xmlchecklanguageid8_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_28_0(i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid45_xmlchecklanguageid73_out_intel_reserved_ffwd_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,156)
    assign out_intel_reserved_ffwd_28_0 = i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid45_xmlchecklanguageid73_out_intel_reserved_ffwd_28_0;

    // valid_fanout_reg14(REG,195)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid46_xmlchecklanguageid74(BLACKBOX,60)@3
    // out out_intel_reserved_ffwd_29_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000027Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid46_xmlchecklanguageid74 (
        .in_predicate_in(GND_q),
        .in_src_data_in_29_0(i_unnamed_xmlchecklanguageid16_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid46_xmlchecklanguageid74_out_intel_reserved_ffwd_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,157)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid46_xmlchecklanguageid74_out_intel_reserved_ffwd_29_0;

    // valid_fanout_reg15(REG,196)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid47_xmlchecklanguageid75(BLACKBOX,61)@3
    // out out_intel_reserved_ffwd_30_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000028Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid47_xmlchecklanguageid75 (
        .in_predicate_in(GND_q),
        .in_src_data_in_30_0(i_unnamed_xmlchecklanguageid19_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_30_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid47_xmlchecklanguageid75_out_intel_reserved_ffwd_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,158)
    assign out_intel_reserved_ffwd_30_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid47_xmlchecklanguageid75_out_intel_reserved_ffwd_30_0;

    // valid_fanout_reg16(REG,197)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid48_xmlchecklanguageid76(BLACKBOX,62)@3
    // out out_intel_reserved_ffwd_31_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000029Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid48_xmlchecklanguageid76 (
        .in_predicate_in(GND_q),
        .in_src_data_in_31_0(i_unnamed_xmlchecklanguageid20_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_31_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid48_xmlchecklanguageid76_out_intel_reserved_ffwd_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,159)
    assign out_intel_reserved_ffwd_31_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid48_xmlchecklanguageid76_out_intel_reserved_ffwd_31_0;

    // valid_fanout_reg17(REG,198)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid49_xmlchecklanguageid77(BLACKBOX,63)@3
    // out out_intel_reserved_ffwd_32_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000030Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid49_xmlchecklanguageid77 (
        .in_predicate_in(GND_q),
        .in_src_data_in_32_0(i_unnamed_xmlchecklanguageid25_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid49_xmlchecklanguageid77_out_intel_reserved_ffwd_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,160)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid49_xmlchecklanguageid77_out_intel_reserved_ffwd_32_0;

    // valid_fanout_reg18(REG,199)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid50_xmlchecklanguageid78(BLACKBOX,64)@3
    // out out_intel_reserved_ffwd_33_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000031Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid50_xmlchecklanguageid78 (
        .in_predicate_in(GND_q),
        .in_src_data_in_33_0(i_unnamed_xmlchecklanguageid30_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid50_xmlchecklanguageid78_out_intel_reserved_ffwd_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,161)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid50_xmlchecklanguageid78_out_intel_reserved_ffwd_33_0;

    // valid_fanout_reg19(REG,200)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid51_xmlchecklanguageid79(BLACKBOX,65)@3
    // out out_intel_reserved_ffwd_34_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000032Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid51_xmlchecklanguageid79 (
        .in_predicate_in(GND_q),
        .in_src_data_in_34_0(i_unnamed_xmlchecklanguageid34_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_34_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid51_xmlchecklanguageid79_out_intel_reserved_ffwd_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,162)
    assign out_intel_reserved_ffwd_34_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid51_xmlchecklanguageid79_out_intel_reserved_ffwd_34_0;

    // valid_fanout_reg20(REG,201)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid52_xmlchecklanguageid80(BLACKBOX,66)@3
    // out out_intel_reserved_ffwd_35_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000033Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid52_xmlchecklanguageid80 (
        .in_predicate_in(GND_q),
        .in_src_data_in_35_0(i_unnamed_xmlchecklanguageid39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_intel_reserved_ffwd_35_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid52_xmlchecklanguageid80_out_intel_reserved_ffwd_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,163)
    assign out_intel_reserved_ffwd_35_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid52_xmlchecklanguageid80_out_intel_reserved_ffwd_35_0;

    // valid_fanout_reg21(REG,202)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist1_sync_together140_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid53_xmlchecklanguageid81(BLACKBOX,67)@3
    // out out_intel_reserved_ffwd_36_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000034Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid53_xmlchecklanguageid81 (
        .in_predicate_in(GND_q),
        .in_src_data_in_36_0(i_unnamed_xmlchecklanguageid46_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_intel_reserved_ffwd_36_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid53_xmlchecklanguageid81_out_intel_reserved_ffwd_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,164)
    assign out_intel_reserved_ffwd_36_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid53_xmlchecklanguageid81_out_intel_reserved_ffwd_36_0;

    // valid_fanout_reg22(REG,203)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist2_sync_together140_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid54_xmlchecklanguageid82(BLACKBOX,75)@4
    // out out_intel_reserved_ffwd_37_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000042Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid54_xmlchecklanguageid82 (
        .in_predicate_in(GND_q),
        .in_src_data_in_37_0(i_incdec_ptr167_xmlchecklanguageid0_trunc_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid54_xmlchecklanguageid82_out_intel_reserved_ffwd_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,165)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid54_xmlchecklanguageid82_out_intel_reserved_ffwd_37_0;

    // redist3_sync_together140_in_i_valid_10(DELAY,218)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together140_in_i_valid_10 ( .xin(redist2_sync_together140_in_i_valid_3_q), .xout(redist3_sync_together140_in_i_valid_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg23(REG,204)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist3_sync_together140_in_i_valid_10_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid55_xmlchecklanguageid83(BLACKBOX,73)@11
    // out out_intel_reserved_ffwd_38_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000040Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid55_xmlchecklanguageid83 (
        .in_predicate_in(GND_q),
        .in_src_data_in_38_0(i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_intel_reserved_ffwd_38_0(i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid55_xmlchecklanguageid83_out_intel_reserved_ffwd_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,166)
    assign out_intel_reserved_ffwd_38_0 = i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid55_xmlchecklanguageid83_out_intel_reserved_ffwd_38_0;

    // redist4_sync_together140_in_i_valid_11(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together140_in_i_valid_11_q <= '0;
        end
        else
        begin
            redist4_sync_together140_in_i_valid_11_q <= $unsigned(redist3_sync_together140_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg24(REG,205)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist4_sync_together140_in_i_valid_11_q);
        end
    end

    // redist6_i_unnamed_xmlchecklanguageid46_q_9(DELAY,221)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_unnamed_xmlchecklanguageid46_q_9 ( .xin(redist5_i_unnamed_xmlchecklanguageid46_q_1_q), .xout(redist6_i_unnamed_xmlchecklanguageid46_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid59(LOGICAL,120)@12
    assign i_unnamed_xmlchecklanguageid59_q = redist6_i_unnamed_xmlchecklanguageid46_q_9_q ^ VCC_q;

    // redist7_i_unnamed_xmlchecklanguageid34_q_9(DELAY,222)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_unnamed_xmlchecklanguageid34_q_9 ( .xin(i_unnamed_xmlchecklanguageid34_q), .xout(redist7_i_unnamed_xmlchecklanguageid34_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i8_10128(CONSTANT,38)
    assign c_i8_10128_q = $unsigned(8'b00001010);

    // c_i8_48127(CONSTANT,41)
    assign c_i8_48127_q = $unsigned(8'b11010000);

    // i_off123_xmlchecklanguageid55(ADD,81)@11
    assign i_off123_xmlchecklanguageid55_a = {1'b0, i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_o_readdata};
    assign i_off123_xmlchecklanguageid55_b = {1'b0, c_i8_48127_q};
    assign i_off123_xmlchecklanguageid55_o = $unsigned(i_off123_xmlchecklanguageid55_a) + $unsigned(i_off123_xmlchecklanguageid55_b);
    assign i_off123_xmlchecklanguageid55_q = i_off123_xmlchecklanguageid55_o[8:0];

    // bgTrunc_i_off123_xmlchecklanguageid55_sel_x(BITSELECT,147)@11
    assign bgTrunc_i_off123_xmlchecklanguageid55_sel_x_b = i_off123_xmlchecklanguageid55_q[7:0];

    // i_unnamed_xmlchecklanguageid56(COMPARE,119)@11 + 1
    assign i_unnamed_xmlchecklanguageid56_a = {2'b00, bgTrunc_i_off123_xmlchecklanguageid55_sel_x_b};
    assign i_unnamed_xmlchecklanguageid56_b = {2'b00, c_i8_10128_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_xmlchecklanguageid56_o <= 10'b0;
        end
        else
        begin
            i_unnamed_xmlchecklanguageid56_o <= $unsigned(i_unnamed_xmlchecklanguageid56_a) - $unsigned(i_unnamed_xmlchecklanguageid56_b);
        end
    end
    assign i_unnamed_xmlchecklanguageid56_c[0] = i_unnamed_xmlchecklanguageid56_o[9];

    // i_reduction_xmlchecklanguageid_7_xmlchecklanguageid57(LOGICAL,95)@12
    assign i_reduction_xmlchecklanguageid_7_xmlchecklanguageid57_q = i_unnamed_xmlchecklanguageid56_c & redist7_i_unnamed_xmlchecklanguageid34_q_9_q;

    // redist8_i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q_9(DELAY,223)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q_9 ( .xin(i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q), .xout(redist8_i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_8_xmlchecklanguageid58(LOGICAL,96)@12
    assign i_reduction_xmlchecklanguageid_8_xmlchecklanguageid58_q = redist8_i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q_9_q & i_reduction_xmlchecklanguageid_7_xmlchecklanguageid57_q;

    // i_unnamed_xmlchecklanguageid60(LOGICAL,121)@12
    assign i_unnamed_xmlchecklanguageid60_q = i_reduction_xmlchecklanguageid_8_xmlchecklanguageid58_q | i_unnamed_xmlchecklanguageid59_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid56_xmlchecklanguageid84(BLACKBOX,68)@12
    // out out_intel_reserved_ffwd_39_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000035Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid56_xmlchecklanguageid84 (
        .in_predicate_in(GND_q),
        .in_src_data_in_39_0(i_unnamed_xmlchecklanguageid60_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_intel_reserved_ffwd_39_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid56_xmlchecklanguageid84_out_intel_reserved_ffwd_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,167)
    assign out_intel_reserved_ffwd_39_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid56_xmlchecklanguageid84_out_intel_reserved_ffwd_39_0;

    // valid_fanout_reg25(REG,206)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist4_sync_together140_in_i_valid_11_q);
        end
    end

    // i_unnamed_xmlchecklanguageid64(LOGICAL,129)@12
    assign i_unnamed_xmlchecklanguageid64_q = i_unnamed_xmlchecklanguageid60_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid57_xmlchecklanguageid85(BLACKBOX,69)@12
    // out out_intel_reserved_ffwd_40_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000036Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid57_xmlchecklanguageid85 (
        .in_predicate_in(GND_q),
        .in_src_data_in_40_0(i_unnamed_xmlchecklanguageid64_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_intel_reserved_ffwd_40_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid57_xmlchecklanguageid85_out_intel_reserved_ffwd_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,168)
    assign out_intel_reserved_ffwd_40_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid57_xmlchecklanguageid85_out_intel_reserved_ffwd_40_0;

    // valid_fanout_reg26(REG,207)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist4_sync_together140_in_i_valid_11_q);
        end
    end

    // i_reduction_xmlchecklanguageid_10_xmlchecklanguageid65(LOGICAL,87)@12
    assign i_reduction_xmlchecklanguageid_10_xmlchecklanguageid65_q = redist7_i_unnamed_xmlchecklanguageid34_q_9_q & i_unnamed_xmlchecklanguageid64_q;

    // i_reduction_xmlchecklanguageid_11_xmlchecklanguageid66(LOGICAL,88)@12
    assign i_reduction_xmlchecklanguageid_11_xmlchecklanguageid66_q = redist8_i_reduction_xmlchecklanguageid_0_xmlchecklanguageid35_q_9_q & i_reduction_xmlchecklanguageid_10_xmlchecklanguageid65_q;

    // c_i8_26131(CONSTANT,39)
    assign c_i8_26131_q = $unsigned(8'b00011010);

    // c_i8_65130(CONSTANT,42)
    assign c_i8_65130_q = $unsigned(8'b10111111);

    // c_i8_33129(CONSTANT,40)
    assign c_i8_33129_q = $unsigned(8'b11011111);

    // i_unnamed_xmlchecklanguageid61(LOGICAL,122)@11
    assign i_unnamed_xmlchecklanguageid61_q = i_llvm_fpga_mem_lm15523_xmlchecklanguageid54_out_o_readdata & c_i8_33129_q;

    // i_unnamed_xmlchecklanguageid61_vt_select_4_merged_bit_select(BITSELECT,214)@11
    assign i_unnamed_xmlchecklanguageid61_vt_select_4_merged_bit_select_b = i_unnamed_xmlchecklanguageid61_q[4:0];
    assign i_unnamed_xmlchecklanguageid61_vt_select_4_merged_bit_select_c = i_unnamed_xmlchecklanguageid61_q[7:6];

    // i_unnamed_xmlchecklanguageid61_vt_join(BITJOIN,124)@11
    assign i_unnamed_xmlchecklanguageid61_vt_join_q = {i_unnamed_xmlchecklanguageid61_vt_select_4_merged_bit_select_c, GND_q, i_unnamed_xmlchecklanguageid61_vt_select_4_merged_bit_select_b};

    // i_unnamed_xmlchecklanguageid62(ADD,127)@11
    assign i_unnamed_xmlchecklanguageid62_a = {1'b0, i_unnamed_xmlchecklanguageid61_vt_join_q};
    assign i_unnamed_xmlchecklanguageid62_b = {1'b0, c_i8_65130_q};
    assign i_unnamed_xmlchecklanguageid62_o = $unsigned(i_unnamed_xmlchecklanguageid62_a) + $unsigned(i_unnamed_xmlchecklanguageid62_b);
    assign i_unnamed_xmlchecklanguageid62_q = i_unnamed_xmlchecklanguageid62_o[8:0];

    // bgTrunc_i_unnamed_xmlchecklanguageid62_sel_x(BITSELECT,150)@11
    assign bgTrunc_i_unnamed_xmlchecklanguageid62_sel_x_b = i_unnamed_xmlchecklanguageid62_q[7:0];

    // i_unnamed_xmlchecklanguageid63(COMPARE,128)@11 + 1
    assign i_unnamed_xmlchecklanguageid63_a = {2'b00, bgTrunc_i_unnamed_xmlchecklanguageid62_sel_x_b};
    assign i_unnamed_xmlchecklanguageid63_b = {2'b00, c_i8_26131_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_xmlchecklanguageid63_o <= 10'b0;
        end
        else
        begin
            i_unnamed_xmlchecklanguageid63_o <= $unsigned(i_unnamed_xmlchecklanguageid63_a) - $unsigned(i_unnamed_xmlchecklanguageid63_b);
        end
    end
    assign i_unnamed_xmlchecklanguageid63_c[0] = i_unnamed_xmlchecklanguageid63_o[9];

    // i_reduction_xmlchecklanguageid_12_xmlchecklanguageid67(LOGICAL,89)@12
    assign i_reduction_xmlchecklanguageid_12_xmlchecklanguageid67_q = i_unnamed_xmlchecklanguageid63_c & i_reduction_xmlchecklanguageid_11_xmlchecklanguageid66_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid58_xmlchecklanguageid86(BLACKBOX,70)@12
    // out out_intel_reserved_ffwd_41_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000037Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid58_xmlchecklanguageid86 (
        .in_predicate_in(GND_q),
        .in_src_data_in_41_0(i_reduction_xmlchecklanguageid_12_xmlchecklanguageid67_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_intel_reserved_ffwd_41_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid58_xmlchecklanguageid86_out_intel_reserved_ffwd_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,169)
    assign out_intel_reserved_ffwd_41_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid58_xmlchecklanguageid86_out_intel_reserved_ffwd_41_0;

    // valid_fanout_reg27(REG,208)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // i_incdec_ptr196169_xmlchecklanguageid0_add_x(ADD,176)@1
    assign i_incdec_ptr196169_xmlchecklanguageid0_add_x_a = {1'b0, i_nxt_1_lcssa_select_xmlchecklanguageid4_q};
    assign i_incdec_ptr196169_xmlchecklanguageid0_add_x_b = {1'b0, c_i64_2120_recast_x_q};
    assign i_incdec_ptr196169_xmlchecklanguageid0_add_x_o = $unsigned(i_incdec_ptr196169_xmlchecklanguageid0_add_x_a) + $unsigned(i_incdec_ptr196169_xmlchecklanguageid0_add_x_b);
    assign i_incdec_ptr196169_xmlchecklanguageid0_add_x_q = i_incdec_ptr196169_xmlchecklanguageid0_add_x_o[64:0];

    // i_incdec_ptr196169_xmlchecklanguageid0_trunc_sel_x(BITSELECT,179)@1
    assign i_incdec_ptr196169_xmlchecklanguageid0_trunc_sel_x_b = i_incdec_ptr196169_xmlchecklanguageid0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid59_xmlchecklanguageid87(BLACKBOX,76)@1
    // out out_intel_reserved_ffwd_42_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000043Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid59_xmlchecklanguageid87 (
        .in_predicate_in(GND_q),
        .in_src_data_in_42_0(i_incdec_ptr196169_xmlchecklanguageid0_trunc_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_intel_reserved_ffwd_42_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid59_xmlchecklanguageid87_out_intel_reserved_ffwd_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,170)
    assign out_intel_reserved_ffwd_42_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid59_xmlchecklanguageid87_out_intel_reserved_ffwd_42_0;

    // valid_fanout_reg28(REG,209)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist4_sync_together140_in_i_valid_11_q);
        end
    end

    // i_not3_xmlchecklanguageid69(LOGICAL,78)@12
    assign i_not3_xmlchecklanguageid69_q = i_reduction_xmlchecklanguageid_12_xmlchecklanguageid67_q ^ VCC_q;

    // valid_fanout_reg11(REG,192)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist4_sync_together140_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp6853_xmlchecklanguageid70(BLACKBOX,50)@12
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000023Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp6853_xmlchecklanguageid70 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp6853_xmlchecklanguageid70_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid71(LOGICAL,130)@12
    assign i_unnamed_xmlchecklanguageid71_q = i_llvm_fpga_ffwd_dest_i1_cmp6853_xmlchecklanguageid70_out_dest_data_out_14_0 | i_not3_xmlchecklanguageid69_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid60_xmlchecklanguageid88(BLACKBOX,71)@12
    // out out_intel_reserved_ffwd_43_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000038Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid60_xmlchecklanguageid88 (
        .in_predicate_in(GND_q),
        .in_src_data_in_43_0(i_unnamed_xmlchecklanguageid71_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_intel_reserved_ffwd_43_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid60_xmlchecklanguageid88_out_intel_reserved_ffwd_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,171)
    assign out_intel_reserved_ffwd_43_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid60_xmlchecklanguageid88_out_intel_reserved_ffwd_43_0;

    // valid_fanout_reg0(REG,181)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together140_in_i_valid_11_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,180)@12
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_xmlCheckLanguageID61_0_tpl = GND_q;
    assign out_unnamed_xmlCheckLanguageID7 = GND_q;

endmodule
