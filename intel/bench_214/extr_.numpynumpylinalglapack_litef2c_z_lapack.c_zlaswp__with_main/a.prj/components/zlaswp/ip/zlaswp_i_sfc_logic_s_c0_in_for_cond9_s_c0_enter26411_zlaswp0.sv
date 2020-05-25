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

// SystemVerilog created from zlaswp_i_sfc_logic_s_c0_in_for_cond9_s_c0_enter26411_zlaswp0
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_i_sfc_logic_s_c0_in_for_cond9_s_c0_enter26411_zlaswp0 (
    input wire [63:0] in_lm1476_zlaswp_avm_readdata,
    input wire [0:0] in_lm1476_zlaswp_avm_writeack,
    input wire [0:0] in_lm1476_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm1476_zlaswp_avm_readdatavalid,
    output wire [63:0] out_lm1476_zlaswp_avm_address,
    output wire [0:0] out_lm1476_zlaswp_avm_enable,
    output wire [0:0] out_lm1476_zlaswp_avm_read,
    output wire [0:0] out_lm1476_zlaswp_avm_write,
    output wire [63:0] out_lm1476_zlaswp_avm_writedata,
    output wire [7:0] out_lm1476_zlaswp_avm_byteenable,
    output wire [0:0] out_lm1476_zlaswp_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [0:0] out_intel_reserved_ffwd_17_0,
    output wire [0:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [0:0] out_intel_reserved_ffwd_20_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zlaswp13,
    output wire [0:0] out_unnamed_zlaswp29_0_tpl,
    input wire [0:0] in_c0_eni1263_0_tpl,
    input wire [0:0] in_c0_eni1263_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [33:0] i_cmp11_zlaswp9_a;
    wire [33:0] i_cmp11_zlaswp9_b;
    logic [33:0] i_cmp11_zlaswp9_o;
    wire [0:0] i_cmp11_zlaswp9_n;
    wire [33:0] i_cmp12_zlaswp12_a;
    wire [33:0] i_cmp12_zlaswp12_b;
    logic [33:0] i_cmp12_zlaswp12_o;
    wire [0:0] i_cmp12_zlaswp12_n;
    wire [0:0] i_cmp14_zlaswp23_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp148_zlaswp14_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp22_zlaswp16_out_dest_data_out_14_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add51176_zlaswp3_out_dest_data_out_23_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add53178_zlaswp2_out_dest_data_out_24_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_select88152_zlaswp6_out_dest_data_out_7_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3153_zlaswp4_out_dest_data_out_9_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4155_zlaswp8_out_dest_data_out_10_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4156_zlaswp11_out_dest_data_out_10_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr146_zlaswp19_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp25_zlaswp29_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp26_zlaswp30_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp28_zlaswp32_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp23_zlaswp27_out_intel_reserved_ffwd_15_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp24_zlaswp28_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp27_zlaswp31_out_intel_reserved_ffwd_19_0;
    wire [63:0] i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1476_zlaswp22_out_o_readdata;
    wire [0:0] i_notlhs_zlaswp25_q;
    wire [0:0] i_phi_decision153_xor_zlaswp26_q;
    wire [0:0] i_storemerge70_replace_phi_zlaswp5_s;
    reg [31:0] i_storemerge70_replace_phi_zlaswp5_q;
    wire [0:0] i_unnamed_zlaswp15_s;
    reg [0:0] i_unnamed_zlaswp15_q;
    wire [0:0] i_unnamed_zlaswp17_q;
    wire [0:0] i_unnamed_zlaswp21_q;
    wire [0:0] i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_s;
    reg [31:0] i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q;
    wire [64:0] i_arrayidx_zlaswp0_add_x_a;
    wire [64:0] i_arrayidx_zlaswp0_add_x_b;
    logic [64:0] i_arrayidx_zlaswp0_add_x_o;
    wire [64:0] i_arrayidx_zlaswp0_add_x_q;
    wire [127:0] i_arrayidx_zlaswp0_mult_extender_x_q;
    wire [60:0] i_arrayidx_zlaswp0_mult_multconst_x_q;
    wire [63:0] i_arrayidx_zlaswp0_trunc_sel_x_b;
    wire [63:0] i_arrayidx_zlaswp0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom_zlaswp18_sel_x_b;
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
    wire [35:0] i_arrayidx_zlaswp0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx_zlaswp0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx_zlaswp0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx_zlaswp0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx_zlaswp0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx_zlaswp0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx_zlaswp0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx_zlaswp0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_q;
    wire [11:0] i_arrayidx_zlaswp0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx_zlaswp0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx_zlaswp0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx_zlaswp0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx_zlaswp0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx_zlaswp0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx_zlaswp0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx_zlaswp0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_1_q;
    reg [0:0] redist1_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_2_q;
    reg [0:0] redist2_sync_together60_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together60_aunroll_x_in_i_valid_8_q;
    reg [31:0] redist4_i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q_1_q;
    reg [0:0] redist5_i_unnamed_zlaswp17_q_7_q;
    reg [31:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_inputreg0_q;
    reg [31:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_outputreg0_q;
    wire redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_reset0;
    wire [31:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_ia;
    wire [1:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_aa;
    wire [1:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_ab;
    wire [31:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_iq;
    wire [31:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_q;
    wire [1:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_q;
    (* preserve *) reg [1:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_i;
    reg [1:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_wraddr_q;
    wire [2:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_last_q;
    wire [2:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmp_b;
    wire [0:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmp_q;
    (* dont_merge *) reg [0:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmpReg_q;
    wire [0:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_notEnable_q;
    wire [0:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_sticky_ena_q;
    wire [0:0] redist6_i_storemerge70_replace_phi_zlaswp5_q_7_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together60_aunroll_x_in_i_valid_1(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together60_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together60_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,95)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg8(REG,93)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp22_zlaswp16(BLACKBOX,27)@3
    zlaswp_i_llvm_fpga_ffwd_dest_i1_unnamed_22_zlaswp0 thei_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp22_zlaswp16 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp22_zlaswp16_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,88)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3153_zlaswp4(BLACKBOX,31)@3
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3153_0 thei_llvm_fpga_ffwd_dest_i32_storemerge1_lm3153_zlaswp4 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3153_zlaswp4_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,86)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add53178_zlaswp2(BLACKBOX,29)@3
    zlaswp_i_llvm_fpga_ffwd_dest_i32_add53178_0 thei_llvm_fpga_ffwd_dest_i32_add53178_zlaswp2 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i32_add53178_zlaswp2_out_dest_data_out_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_1(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_1_q <= $unsigned(in_c0_eni1263_1_tpl);
        end
    end

    // redist1_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_2(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_2_q <= $unsigned(redist0_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_1_q);
        end
    end

    // i_storemerge70_replace_phi_zlaswp5(MUX,44)@3
    assign i_storemerge70_replace_phi_zlaswp5_s = redist1_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_2_q;
    always @(i_storemerge70_replace_phi_zlaswp5_s or i_llvm_fpga_ffwd_dest_i32_add53178_zlaswp2_out_dest_data_out_24_0 or i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3153_zlaswp4_out_dest_data_out_9_0)
    begin
        unique case (i_storemerge70_replace_phi_zlaswp5_s)
            1'b0 : i_storemerge70_replace_phi_zlaswp5_q = i_llvm_fpga_ffwd_dest_i32_add53178_zlaswp2_out_dest_data_out_24_0;
            1'b1 : i_storemerge70_replace_phi_zlaswp5_q = i_llvm_fpga_ffwd_dest_i32_storemerge1_lm3153_zlaswp4_out_dest_data_out_9_0;
            default : i_storemerge70_replace_phi_zlaswp5_q = 32'b0;
        endcase
    end

    // valid_fanout_reg6(REG,91)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4156_zlaswp11(BLACKBOX,33)@3
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4156_0 thei_llvm_fpga_ffwd_dest_i32_storemerge72_lm4156_zlaswp11 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4156_zlaswp11_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp12_zlaswp12(COMPARE,22)@3
    assign i_cmp12_zlaswp12_a = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4156_zlaswp11_out_dest_data_out_10_0[31]}}, i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4156_zlaswp11_out_dest_data_out_10_0});
    assign i_cmp12_zlaswp12_b = $unsigned({{2{i_storemerge70_replace_phi_zlaswp5_q[31]}}, i_storemerge70_replace_phi_zlaswp5_q});
    assign i_cmp12_zlaswp12_o = $unsigned($signed(i_cmp12_zlaswp12_a) - $signed(i_cmp12_zlaswp12_b));
    assign i_cmp12_zlaswp12_n[0] = ~ (i_cmp12_zlaswp12_o[33]);

    // valid_fanout_reg5(REG,90)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4155_zlaswp8(BLACKBOX,32)@3
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4155_0 thei_llvm_fpga_ffwd_dest_i32_storemerge72_lm4155_zlaswp8 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4155_zlaswp8_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp11_zlaswp9(COMPARE,21)@3
    assign i_cmp11_zlaswp9_a = $unsigned({{2{i_storemerge70_replace_phi_zlaswp5_q[31]}}, i_storemerge70_replace_phi_zlaswp5_q});
    assign i_cmp11_zlaswp9_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4155_zlaswp8_out_dest_data_out_10_0[31]}}, i_llvm_fpga_ffwd_dest_i32_storemerge72_lm4155_zlaswp8_out_dest_data_out_10_0});
    assign i_cmp11_zlaswp9_o = $unsigned($signed(i_cmp11_zlaswp9_a) - $signed(i_cmp11_zlaswp9_b));
    assign i_cmp11_zlaswp9_n[0] = ~ (i_cmp11_zlaswp9_o[33]);

    // valid_fanout_reg7(REG,92)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp148_zlaswp14(BLACKBOX,26)@3
    zlaswp_i_llvm_fpga_ffwd_dest_i1_cmp148_0 thei_llvm_fpga_ffwd_dest_i1_cmp148_zlaswp14 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i1_cmp148_zlaswp14_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_zlaswp15(MUX,45)@3
    assign i_unnamed_zlaswp15_s = i_llvm_fpga_ffwd_dest_i1_cmp148_zlaswp14_out_dest_data_out_5_0;
    always @(i_unnamed_zlaswp15_s or i_cmp11_zlaswp9_n or i_cmp12_zlaswp12_n)
    begin
        unique case (i_unnamed_zlaswp15_s)
            1'b0 : i_unnamed_zlaswp15_q = i_cmp11_zlaswp9_n;
            1'b1 : i_unnamed_zlaswp15_q = i_cmp12_zlaswp12_n;
            default : i_unnamed_zlaswp15_q = 1'b0;
        endcase
    end

    // i_unnamed_zlaswp17(LOGICAL,46)@3
    assign i_unnamed_zlaswp17_q = i_unnamed_zlaswp15_q & i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp22_zlaswp16_out_dest_data_out_14_0;

    // i_unnamed_zlaswp21(LOGICAL,47)@3
    assign i_unnamed_zlaswp21_q = i_unnamed_zlaswp17_q ^ VCC_q;

    // i_arrayidx_zlaswp0_mult_multconst_x(CONSTANT,79)
    assign i_arrayidx_zlaswp0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg4(REG,89)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_select88152_zlaswp6(BLACKBOX,30)@2
    zlaswp_i_llvm_fpga_ffwd_dest_i32_select88152_0 thei_llvm_fpga_ffwd_dest_i32_select88152_zlaswp6 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_select88152_zlaswp6_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,87)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_add51176_zlaswp3(BLACKBOX,28)@2
    zlaswp_i_llvm_fpga_ffwd_dest_i32_add51176_0 thei_llvm_fpga_ffwd_dest_i32_add51176_zlaswp3 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i32_add51176_zlaswp3_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7(MUX,48)@2
    assign i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_s = redist0_sync_together60_aunroll_x_in_c0_eni1263_1_tpl_1_q;
    always @(i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_s or i_llvm_fpga_ffwd_dest_i32_add51176_zlaswp3_out_dest_data_out_23_0 or i_llvm_fpga_ffwd_dest_i32_select88152_zlaswp6_out_dest_data_out_7_0)
    begin
        unique case (i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_s)
            1'b0 : i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q = i_llvm_fpga_ffwd_dest_i32_add51176_zlaswp3_out_dest_data_out_23_0;
            1'b1 : i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q = i_llvm_fpga_ffwd_dest_i32_select88152_zlaswp6_out_dest_data_out_7_0;
            default : i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q = 32'b0;
        endcase
    end

    // redist4_i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q_1(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q_1_q <= '0;
        end
        else
        begin
            redist4_i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q_1_q <= $unsigned(i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q);
        end
    end

    // i_idxprom_zlaswp18_sel_x(BITSELECT,82)@3
    assign i_idxprom_zlaswp18_sel_x_b = $unsigned({{32{redist4_i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q_1_q[31]}}, redist4_i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q_1_q[31:0]});

    // i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select(BITSELECT,125)@3
    assign i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_b = i_idxprom_zlaswp18_sel_x_b[63:54];
    assign i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_c = i_idxprom_zlaswp18_sel_x_b[53:36];
    assign i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_d = i_idxprom_zlaswp18_sel_x_b[35:18];
    assign i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_e = i_idxprom_zlaswp18_sel_x_b[17:0];

    // i_arrayidx_zlaswp0_mult_x_im0_shift0(BITSHIFT,121)@3
    assign i_arrayidx_zlaswp0_mult_x_im0_shift0_qint = { i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx_zlaswp0_mult_x_im0_shift0_q = i_arrayidx_zlaswp0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx_zlaswp0_mult_x_sums_align_3(BITSHIFT,118)@3
    assign i_arrayidx_zlaswp0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx_zlaswp0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_zlaswp0_mult_x_sums_align_3_q = i_arrayidx_zlaswp0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx_zlaswp0_mult_x_im6_shift0(BITSHIFT,123)@3
    assign i_arrayidx_zlaswp0_mult_x_im6_shift0_qint = { i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx_zlaswp0_mult_x_im6_shift0_q = i_arrayidx_zlaswp0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx_zlaswp0_mult_x_sums_align_2(BITSHIFT,117)@3
    assign i_arrayidx_zlaswp0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx_zlaswp0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx_zlaswp0_mult_x_sums_align_2_q = i_arrayidx_zlaswp0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx_zlaswp0_mult_x_sums_join_4(BITJOIN,119)@3
    assign i_arrayidx_zlaswp0_mult_x_sums_join_4_q = {i_arrayidx_zlaswp0_mult_x_sums_align_3_q, i_arrayidx_zlaswp0_mult_x_sums_align_2_q};

    // i_arrayidx_zlaswp0_mult_x_im3_shift0(BITSHIFT,122)@3
    assign i_arrayidx_zlaswp0_mult_x_im3_shift0_qint = { i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx_zlaswp0_mult_x_im3_shift0_q = i_arrayidx_zlaswp0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx_zlaswp0_mult_x_sums_align_0(BITSHIFT,115)@3
    assign i_arrayidx_zlaswp0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx_zlaswp0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_zlaswp0_mult_x_sums_align_0_q = i_arrayidx_zlaswp0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx_zlaswp0_mult_x_im9_shift0(BITSHIFT,124)@3
    assign i_arrayidx_zlaswp0_mult_x_im9_shift0_qint = { i_arrayidx_zlaswp0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx_zlaswp0_mult_x_im9_shift0_q = i_arrayidx_zlaswp0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx_zlaswp0_mult_x_sums_join_1(BITJOIN,116)@3
    assign i_arrayidx_zlaswp0_mult_x_sums_join_1_q = {i_arrayidx_zlaswp0_mult_x_sums_align_0_q, {1'b0, i_arrayidx_zlaswp0_mult_x_im9_shift0_q}};

    // i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0(ADD,120)@3
    assign i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx_zlaswp0_mult_x_sums_join_1_q};
    assign i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx_zlaswp0_mult_x_sums_join_4_q};
    assign i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_q = i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx_zlaswp0_mult_extender_x(BITJOIN,78)@3
    assign i_arrayidx_zlaswp0_mult_extender_x_q = {i_arrayidx_zlaswp0_mult_multconst_x_q, i_arrayidx_zlaswp0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx_zlaswp0_trunc_sel_x(BITSELECT,80)@3
    assign i_arrayidx_zlaswp0_trunc_sel_x_b = i_arrayidx_zlaswp0_mult_extender_x_q[63:0];

    // valid_fanout_reg9(REG,94)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr146_zlaswp19(BLACKBOX,34)@3
    zlaswp_i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr146_0 thei_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr146_zlaswp19 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr146_zlaswp19_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_zlaswp0_add_x(ADD,72)@3
    assign i_arrayidx_zlaswp0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_incdec_ptr146_zlaswp19_out_dest_data_out_4_0};
    assign i_arrayidx_zlaswp0_add_x_b = {1'b0, i_arrayidx_zlaswp0_trunc_sel_x_b};
    assign i_arrayidx_zlaswp0_add_x_o = $unsigned(i_arrayidx_zlaswp0_add_x_a) + $unsigned(i_arrayidx_zlaswp0_add_x_b);
    assign i_arrayidx_zlaswp0_add_x_q = i_arrayidx_zlaswp0_add_x_o[64:0];

    // i_arrayidx_zlaswp0_dupName_0_trunc_sel_x(BITSELECT,81)@3
    assign i_arrayidx_zlaswp0_dupName_0_trunc_sel_x_b = i_arrayidx_zlaswp0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1476_zlaswp22(BLACKBOX,41)@3
    // in in_i_stall@20000000
    // out out_lm1476_zlaswp_avm_address@20000000
    // out out_lm1476_zlaswp_avm_burstcount@20000000
    // out out_lm1476_zlaswp_avm_byteenable@20000000
    // out out_lm1476_zlaswp_avm_enable@20000000
    // out out_lm1476_zlaswp_avm_read@20000000
    // out out_lm1476_zlaswp_avm_write@20000000
    // out out_lm1476_zlaswp_avm_writedata@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    zlaswp_i_llvm_fpga_mem_lm1476_0 thei_llvm_fpga_mem_lm1476_zlaswp22 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_zlaswp0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_zlaswp21_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_lm1476_zlaswp_avm_readdata(in_lm1476_zlaswp_avm_readdata),
        .in_lm1476_zlaswp_avm_readdatavalid(in_lm1476_zlaswp_avm_readdatavalid),
        .in_lm1476_zlaswp_avm_waitrequest(in_lm1476_zlaswp_avm_waitrequest),
        .in_lm1476_zlaswp_avm_writeack(in_lm1476_zlaswp_avm_writeack),
        .out_lm1476_zlaswp_avm_address(i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_address),
        .out_lm1476_zlaswp_avm_burstcount(i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_burstcount),
        .out_lm1476_zlaswp_avm_byteenable(i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_byteenable),
        .out_lm1476_zlaswp_avm_enable(i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_enable),
        .out_lm1476_zlaswp_avm_read(i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_read),
        .out_lm1476_zlaswp_avm_write(i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_write),
        .out_lm1476_zlaswp_avm_writedata(i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1476_zlaswp22_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,20)
    assign out_lm1476_zlaswp_avm_address = i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_address;
    assign out_lm1476_zlaswp_avm_enable = i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_enable;
    assign out_lm1476_zlaswp_avm_read = i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_read;
    assign out_lm1476_zlaswp_avm_write = i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_write;
    assign out_lm1476_zlaswp_avm_writedata = i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_writedata;
    assign out_lm1476_zlaswp_avm_byteenable = i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_byteenable;
    assign out_lm1476_zlaswp_avm_burstcount = i_llvm_fpga_mem_lm1476_zlaswp22_out_lm1476_zlaswp_avm_burstcount;

    // redist3_sync_together60_aunroll_x_in_i_valid_8(DELAY,129)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together60_aunroll_x_in_i_valid_8 ( .xin(redist2_sync_together60_aunroll_x_in_i_valid_1_q), .xout(redist3_sync_together60_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,96)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist3_sync_together60_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_notEnable(LOGICAL,141)
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_nor(LOGICAL,142)
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_nor_q = ~ (redist6_i_storemerge70_replace_phi_zlaswp5_q_7_notEnable_q | redist6_i_storemerge70_replace_phi_zlaswp5_q_7_sticky_ena_q);

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_last(CONSTANT,138)
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_last_q = $unsigned(3'b010);

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmp(LOGICAL,139)
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmp_b = {1'b0, redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_q};
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmp_q = $unsigned(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_last_q == redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmp_b ? 1'b1 : 1'b0);

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmpReg(REG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmpReg_q <= $unsigned(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmp_q);
        end
    end

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_sticky_ena(REG,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_storemerge70_replace_phi_zlaswp5_q_7_nor_q == 1'b1)
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_sticky_ena_q <= $unsigned(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_cmpReg_q);
        end
    end

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_enaAnd(LOGICAL,144)
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_enaAnd_q = redist6_i_storemerge70_replace_phi_zlaswp5_q_7_sticky_ena_q & VCC_q;

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt(COUNTER,136)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_i <= $unsigned(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_q = redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_i[1:0];

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_inputreg0(DELAY,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_inputreg0_q <= '0;
        end
        else
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_inputreg0_q <= $unsigned(i_storemerge70_replace_phi_zlaswp5_q);
        end
    end

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_wraddr(REG,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_wraddr_q <= $unsigned(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_q);
        end
    end

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem(DUALMEM,135)
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_ia = $unsigned(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_inputreg0_q);
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_aa = redist6_i_storemerge70_replace_phi_zlaswp5_q_7_wraddr_q;
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_ab = redist6_i_storemerge70_replace_phi_zlaswp5_q_7_rdcnt_q;
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_dmem (
        .clocken1(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_aa),
        .data_a(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_ab),
        .q_b(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_q = redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_iq[31:0];

    // redist6_i_storemerge70_replace_phi_zlaswp5_q_7_outputreg0(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_outputreg0_q <= '0;
        end
        else
        begin
            redist6_i_storemerge70_replace_phi_zlaswp5_q_7_outputreg0_q <= $unsigned(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_mem_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp23_zlaswp27(BLACKBOX,38)@10
    // out out_intel_reserved_ffwd_15_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_23_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp23_zlaswp27 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(redist6_i_storemerge70_replace_phi_zlaswp5_q_7_outputreg0_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp23_zlaswp27_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,62)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp23_zlaswp27_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg12(REG,97)@1 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp24_zlaswp28(BLACKBOX,39)@2
    // out out_intel_reserved_ffwd_16_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_24_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp24_zlaswp28 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(i_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi_zlaswp7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp24_zlaswp28_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,67)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp24_zlaswp28_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg13(REG,98)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp25_zlaswp29(BLACKBOX,35)@3
    // out out_intel_reserved_ffwd_17_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i1_unnamed_25_zlaswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_zlaswp25_zlaswp29 (
        .in_predicate_in(GND_q),
        .in_src_data_in_17_0(i_unnamed_zlaswp17_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp25_zlaswp29_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,68)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp25_zlaswp29_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg14(REG,99)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist2_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp26_zlaswp30(BLACKBOX,36)@3
    // out out_intel_reserved_ffwd_18_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i1_unnamed_26_zlaswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_zlaswp26_zlaswp30 (
        .in_predicate_in(GND_q),
        .in_src_data_in_18_0(i_unnamed_zlaswp21_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp26_zlaswp30_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,69)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp26_zlaswp30_out_intel_reserved_ffwd_18_0;

    // valid_fanout_reg15(REG,100)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist3_sync_together60_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp27_zlaswp31(BLACKBOX,40)@10
    // out out_intel_reserved_ffwd_19_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_27_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp27_zlaswp31 (
        .in_predicate_in(GND_q),
        .in_src_data_in_19_0(i_llvm_fpga_mem_lm1476_zlaswp22_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp27_zlaswp31_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,70)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp27_zlaswp31_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg16(REG,101)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist3_sync_together60_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_cmp14_zlaswp23(LOGICAL,23)@10
    assign i_cmp14_zlaswp23_q = $unsigned(i_llvm_fpga_mem_lm1476_zlaswp22_out_o_readdata == redist6_i_storemerge70_replace_phi_zlaswp5_q_7_outputreg0_q ? 1'b1 : 1'b0);

    // i_notlhs_zlaswp25(LOGICAL,42)@10
    assign i_notlhs_zlaswp25_q = i_cmp14_zlaswp23_q ^ VCC_q;

    // redist5_i_unnamed_zlaswp17_q_7(DELAY,131)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_i_unnamed_zlaswp17_q_7 ( .xin(i_unnamed_zlaswp17_q), .xout(redist5_i_unnamed_zlaswp17_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_phi_decision153_xor_zlaswp26(LOGICAL,43)@10
    assign i_phi_decision153_xor_zlaswp26_q = redist5_i_unnamed_zlaswp17_q_7_q & i_notlhs_zlaswp25_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp28_zlaswp32(BLACKBOX,37)@10
    // out out_intel_reserved_ffwd_20_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i1_unnamed_28_zlaswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_zlaswp28_zlaswp32 (
        .in_predicate_in(GND_q),
        .in_src_data_in_20_0(i_phi_decision153_xor_zlaswp26_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp28_zlaswp32_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,71)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp28_zlaswp32_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg0(REG,85)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together60_aunroll_x_in_i_valid_8_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,83)@10
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zlaswp13 = GND_q;
    assign out_unnamed_zlaswp29_0_tpl = GND_q;

endmodule
