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

// SystemVerilog created from qspline_i_sfc_logic_s_c0_in_for_cond_cleanup29_s_c0_enter86_qspline0
// SystemVerilog created on Sun Apr 19 21:19:10 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module qspline_i_sfc_logic_s_c0_in_for_cond_cleanup29_s_c0_enter86_qspline0 (
    input wire [15:0] in_unnamed_qspline5_qspline_avm_readdata,
    input wire [0:0] in_unnamed_qspline5_qspline_avm_writeack,
    input wire [0:0] in_unnamed_qspline5_qspline_avm_waitrequest,
    input wire [0:0] in_unnamed_qspline5_qspline_avm_readdatavalid,
    output wire [31:0] out_unnamed_qspline5_qspline_avm_address,
    output wire [0:0] out_unnamed_qspline5_qspline_avm_enable,
    output wire [0:0] out_unnamed_qspline5_qspline_avm_read,
    output wire [0:0] out_unnamed_qspline5_qspline_avm_write,
    output wire [15:0] out_unnamed_qspline5_qspline_avm_writedata,
    output wire [1:0] out_unnamed_qspline5_qspline_avm_byteenable,
    output wire [0:0] out_unnamed_qspline5_qspline_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exi187_0_tpl,
    output wire [31:0] out_c0_exi187_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_qspline1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_qspline_out_pmem_q;
    wire [63:0] i_arrayidx12916_qspline3_vt_join_q;
    wire [62:0] i_arrayidx12916_qspline3_vt_select_63_b;
    wire [15:0] i_conv130_qspline5_vt_const_31_q;
    wire [31:0] i_conv130_qspline5_vt_join_q;
    wire [15:0] i_conv130_qspline5_vt_select_15_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_idx5216_qspline1_out_dest_data_out_0_0;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_writedata;
    wire [64:0] i_arrayidx12916_qspline0_add_x_a;
    wire [64:0] i_arrayidx12916_qspline0_add_x_b;
    logic [64:0] i_arrayidx12916_qspline0_add_x_o;
    wire [64:0] i_arrayidx12916_qspline0_add_x_q;
    wire [127:0] i_arrayidx12916_qspline0_mult_extender_x_q;
    wire [61:0] i_arrayidx12916_qspline0_mult_multconst_x_q;
    wire [63:0] i_arrayidx12916_qspline0_trunc_sel_x_b;
    wire [63:0] i_arrayidx12916_qspline0_dupName_0_trunc_sel_x_b;
    wire [31:0] i_conv130_qspline5_sel_x_b;
    wire [63:0] i_idxprom128_qspline2_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [35:0] i_arrayidx12916_qspline0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx12916_qspline0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx12916_qspline0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx12916_qspline0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx12916_qspline0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx12916_qspline0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx12916_qspline0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx12916_qspline0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_q;
    wire [10:0] i_arrayidx12916_qspline0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx12916_qspline0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx12916_qspline0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx12916_qspline0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx12916_qspline0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx12916_qspline0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx12916_qspline0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx12916_qspline0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together14_in_i_valid_4_q;
    reg [0:0] redist0_sync_together14_in_i_valid_4_delay_0;
    reg [0:0] redist0_sync_together14_in_i_valid_4_delay_1;
    reg [0:0] redist0_sync_together14_in_i_valid_4_delay_2;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg2(REG,38)@0 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_arrayidx12916_qspline0_mult_multconst_x(CONSTANT,30)
    assign i_arrayidx12916_qspline0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg1(REG,37)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_idx5216_qspline1(BLACKBOX,16)@1
    qspline_i_llvm_fpga_ffwd_dest_i32_idx5216_0 thei_llvm_fpga_ffwd_dest_i32_idx5216_qspline1 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_idx5216_qspline1_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom128_qspline2_sel_x(BITSELECT,34)@1
    assign i_idxprom128_qspline2_sel_x_b = $unsigned({{32{i_llvm_fpga_ffwd_dest_i32_idx5216_qspline1_out_dest_data_out_0_0[31]}}, i_llvm_fpga_ffwd_dest_i32_idx5216_qspline1_out_dest_data_out_0_0[31:0]});

    // i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select(BITSELECT,63)@1
    assign i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_b = i_idxprom128_qspline2_sel_x_b[63:54];
    assign i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_c = i_idxprom128_qspline2_sel_x_b[53:36];
    assign i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_d = i_idxprom128_qspline2_sel_x_b[35:18];
    assign i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_e = i_idxprom128_qspline2_sel_x_b[17:0];

    // i_arrayidx12916_qspline0_mult_x_im0_shift0(BITSHIFT,59)@1
    assign i_arrayidx12916_qspline0_mult_x_im0_shift0_qint = { i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx12916_qspline0_mult_x_im0_shift0_q = i_arrayidx12916_qspline0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx12916_qspline0_mult_x_sums_align_3(BITSHIFT,56)@1
    assign i_arrayidx12916_qspline0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx12916_qspline0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx12916_qspline0_mult_x_sums_align_3_q = i_arrayidx12916_qspline0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx12916_qspline0_mult_x_im6_shift0(BITSHIFT,61)@1
    assign i_arrayidx12916_qspline0_mult_x_im6_shift0_qint = { i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx12916_qspline0_mult_x_im6_shift0_q = i_arrayidx12916_qspline0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx12916_qspline0_mult_x_sums_align_2(BITSHIFT,55)@1
    assign i_arrayidx12916_qspline0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx12916_qspline0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx12916_qspline0_mult_x_sums_align_2_q = i_arrayidx12916_qspline0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx12916_qspline0_mult_x_sums_join_4(BITJOIN,57)@1
    assign i_arrayidx12916_qspline0_mult_x_sums_join_4_q = {i_arrayidx12916_qspline0_mult_x_sums_align_3_q, i_arrayidx12916_qspline0_mult_x_sums_align_2_q};

    // i_arrayidx12916_qspline0_mult_x_im3_shift0(BITSHIFT,60)@1
    assign i_arrayidx12916_qspline0_mult_x_im3_shift0_qint = { i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx12916_qspline0_mult_x_im3_shift0_q = i_arrayidx12916_qspline0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx12916_qspline0_mult_x_sums_align_0(BITSHIFT,53)@1
    assign i_arrayidx12916_qspline0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx12916_qspline0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx12916_qspline0_mult_x_sums_align_0_q = i_arrayidx12916_qspline0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx12916_qspline0_mult_x_im9_shift0(BITSHIFT,62)@1
    assign i_arrayidx12916_qspline0_mult_x_im9_shift0_qint = { i_arrayidx12916_qspline0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx12916_qspline0_mult_x_im9_shift0_q = i_arrayidx12916_qspline0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx12916_qspline0_mult_x_sums_join_1(BITJOIN,54)@1
    assign i_arrayidx12916_qspline0_mult_x_sums_join_1_q = {i_arrayidx12916_qspline0_mult_x_sums_align_0_q, {1'b0, i_arrayidx12916_qspline0_mult_x_im9_shift0_q}};

    // i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0(ADD,58)@1
    assign i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx12916_qspline0_mult_x_sums_join_1_q};
    assign i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx12916_qspline0_mult_x_sums_join_4_q};
    assign i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_q = i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx12916_qspline0_mult_extender_x(BITJOIN,29)@1
    assign i_arrayidx12916_qspline0_mult_extender_x_q = {i_arrayidx12916_qspline0_mult_multconst_x_q, i_arrayidx12916_qspline0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx12916_qspline0_trunc_sel_x(BITSELECT,31)@1
    assign i_arrayidx12916_qspline0_trunc_sel_x_b = i_arrayidx12916_qspline0_mult_extender_x_q[63:0];

    // c_qspline_out_pmem(CONSTANT,4)
    assign c_qspline_out_pmem_q = $unsigned(64'b0100000000001100000000000000000000000000000000000000000000000000);

    // i_arrayidx12916_qspline0_add_x(ADD,23)@1
    assign i_arrayidx12916_qspline0_add_x_a = {1'b0, c_qspline_out_pmem_q};
    assign i_arrayidx12916_qspline0_add_x_b = {1'b0, i_arrayidx12916_qspline0_trunc_sel_x_b};
    assign i_arrayidx12916_qspline0_add_x_o = $unsigned(i_arrayidx12916_qspline0_add_x_a) + $unsigned(i_arrayidx12916_qspline0_add_x_b);
    assign i_arrayidx12916_qspline0_add_x_q = i_arrayidx12916_qspline0_add_x_o[64:0];

    // i_arrayidx12916_qspline0_dupName_0_trunc_sel_x(BITSELECT,32)@1
    assign i_arrayidx12916_qspline0_dupName_0_trunc_sel_x_b = i_arrayidx12916_qspline0_add_x_q[63:0];

    // i_arrayidx12916_qspline3_vt_select_63(BITSELECT,9)@1
    assign i_arrayidx12916_qspline3_vt_select_63_b = i_arrayidx12916_qspline0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx12916_qspline3_vt_join(BITJOIN,8)@1
    assign i_arrayidx12916_qspline3_vt_join_q = {i_arrayidx12916_qspline3_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_qspline5_qspline4(BLACKBOX,17)@1
    // in in_i_stall@20000000
    // out out_o_readdata@5
    // out out_o_stall@4
    // out out_o_valid@5
    // out out_unnamed_qspline5_qspline_avm_address@20000000
    // out out_unnamed_qspline5_qspline_avm_burstcount@20000000
    // out out_unnamed_qspline5_qspline_avm_byteenable@20000000
    // out out_unnamed_qspline5_qspline_avm_enable@20000000
    // out out_unnamed_qspline5_qspline_avm_read@20000000
    // out out_unnamed_qspline5_qspline_avm_write@20000000
    // out out_unnamed_qspline5_qspline_avm_writedata@20000000
    qspline_i_llvm_fpga_mem_unnamed_5_qspline0 thei_llvm_fpga_mem_unnamed_qspline5_qspline4 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx12916_qspline3_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_unnamed_qspline5_qspline_avm_readdata(in_unnamed_qspline5_qspline_avm_readdata),
        .in_unnamed_qspline5_qspline_avm_readdatavalid(in_unnamed_qspline5_qspline_avm_readdatavalid),
        .in_unnamed_qspline5_qspline_avm_waitrequest(in_unnamed_qspline5_qspline_avm_waitrequest),
        .in_unnamed_qspline5_qspline_avm_writeack(in_unnamed_qspline5_qspline_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_qspline5_qspline_avm_address(i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_address),
        .out_unnamed_qspline5_qspline_avm_burstcount(i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_burstcount),
        .out_unnamed_qspline5_qspline_avm_byteenable(i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_byteenable),
        .out_unnamed_qspline5_qspline_avm_enable(i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_enable),
        .out_unnamed_qspline5_qspline_avm_read(i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_read),
        .out_unnamed_qspline5_qspline_avm_write(i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_write),
        .out_unnamed_qspline5_qspline_avm_writedata(i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_qspline5_qspline_avm_address = i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_address;
    assign out_unnamed_qspline5_qspline_avm_enable = i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_enable;
    assign out_unnamed_qspline5_qspline_avm_read = i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_read;
    assign out_unnamed_qspline5_qspline_avm_write = i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_write;
    assign out_unnamed_qspline5_qspline_avm_writedata = i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_writedata;
    assign out_unnamed_qspline5_qspline_avm_byteenable = i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_byteenable;
    assign out_unnamed_qspline5_qspline_avm_burstcount = i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_unnamed_qspline5_qspline_avm_burstcount;

    // redist0_sync_together14_in_i_valid_4(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together14_in_i_valid_4_delay_0 <= '0;
            redist0_sync_together14_in_i_valid_4_delay_1 <= '0;
            redist0_sync_together14_in_i_valid_4_delay_2 <= '0;
            redist0_sync_together14_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist0_sync_together14_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist0_sync_together14_in_i_valid_4_delay_1 <= redist0_sync_together14_in_i_valid_4_delay_0;
            redist0_sync_together14_in_i_valid_4_delay_2 <= redist0_sync_together14_in_i_valid_4_delay_1;
            redist0_sync_together14_in_i_valid_4_q <= redist0_sync_together14_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg0(REG,36)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist0_sync_together14_in_i_valid_4_q);
        end
    end

    // i_conv130_qspline5_vt_const_31(CONSTANT,11)
    assign i_conv130_qspline5_vt_const_31_q = $unsigned(16'b0000000000000000);

    // i_conv130_qspline5_sel_x(BITSELECT,33)@5
    assign i_conv130_qspline5_sel_x_b = {16'b0000000000000000, i_llvm_fpga_mem_unnamed_qspline5_qspline4_out_o_readdata[15:0]};

    // i_conv130_qspline5_vt_select_15(BITSELECT,13)@5
    assign i_conv130_qspline5_vt_select_15_b = i_conv130_qspline5_sel_x_b[15:0];

    // i_conv130_qspline5_vt_join(BITJOIN,12)@5
    assign i_conv130_qspline5_vt_join_q = {i_conv130_qspline5_vt_const_31_q, i_conv130_qspline5_vt_select_15_b};

    // sync_out_aunroll_x(GPOUT,35)@5
    assign out_c0_exi187_0_tpl = GND_q;
    assign out_c0_exi187_1_tpl = i_conv130_qspline5_vt_join_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_qspline1 = GND_q;

endmodule
