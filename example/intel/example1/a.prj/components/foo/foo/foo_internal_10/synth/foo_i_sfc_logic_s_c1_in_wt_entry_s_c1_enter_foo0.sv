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

// SystemVerilog created from foo_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_foo0
// SystemVerilog created on Sun Aug 16 19:04:00 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_foo0 (
    input wire [63:0] in_unnamed_foo3_foo_avm_readdata,
    input wire [0:0] in_unnamed_foo3_foo_avm_writeack,
    input wire [0:0] in_unnamed_foo3_foo_avm_waitrequest,
    input wire [0:0] in_unnamed_foo3_foo_avm_readdatavalid,
    output wire [63:0] out_unnamed_foo3_foo_avm_address,
    output wire [0:0] out_unnamed_foo3_foo_avm_enable,
    output wire [0:0] out_unnamed_foo3_foo_avm_read,
    output wire [0:0] out_unnamed_foo3_foo_avm_write,
    output wire [63:0] out_unnamed_foo3_foo_avm_writedata,
    output wire [7:0] out_unnamed_foo3_foo_avm_byteenable,
    output wire [0:0] out_unnamed_foo3_foo_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [7:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_foo1,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [63:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] i_llvm_fpga_mem_unnamed_foo3_foo3_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_writedata;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [63:0] redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist1_sync_together9_aunroll_x_in_i_valid_5_delay_3;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,11)@1 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_mem_unnamed_foo3_foo3(BLACKBOX,5)@2
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_foo3_foo_avm_address@20000000
    // out out_unnamed_foo3_foo_avm_burstcount@20000000
    // out out_unnamed_foo3_foo_avm_byteenable@20000000
    // out out_unnamed_foo3_foo_avm_enable@20000000
    // out out_unnamed_foo3_foo_avm_read@20000000
    // out out_unnamed_foo3_foo_avm_write@20000000
    // out out_unnamed_foo3_foo_avm_writedata@20000000
    foo_i_llvm_fpga_mem_unnamed_3_foo0 thei_llvm_fpga_mem_unnamed_foo3_foo3 (
        .in_flush(in_flush),
        .in_i_address(redist0_sync_together9_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_unnamed_foo3_foo_avm_readdata(in_unnamed_foo3_foo_avm_readdata),
        .in_unnamed_foo3_foo_avm_readdatavalid(in_unnamed_foo3_foo_avm_readdatavalid),
        .in_unnamed_foo3_foo_avm_waitrequest(in_unnamed_foo3_foo_avm_waitrequest),
        .in_unnamed_foo3_foo_avm_writeack(in_unnamed_foo3_foo_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_foo3_foo3_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_foo3_foo_avm_address(i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_address),
        .out_unnamed_foo3_foo_avm_burstcount(i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_burstcount),
        .out_unnamed_foo3_foo_avm_byteenable(i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_byteenable),
        .out_unnamed_foo3_foo_avm_enable(i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_enable),
        .out_unnamed_foo3_foo_avm_read(i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_read),
        .out_unnamed_foo3_foo_avm_write(i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_write),
        .out_unnamed_foo3_foo_avm_writedata(i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,4)
    assign out_unnamed_foo3_foo_avm_address = i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_address;
    assign out_unnamed_foo3_foo_avm_enable = i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_enable;
    assign out_unnamed_foo3_foo_avm_read = i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_read;
    assign out_unnamed_foo3_foo_avm_write = i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_write;
    assign out_unnamed_foo3_foo_avm_writedata = i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_writedata;
    assign out_unnamed_foo3_foo_avm_byteenable = i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_byteenable;
    assign out_unnamed_foo3_foo_avm_burstcount = i_llvm_fpga_mem_unnamed_foo3_foo3_out_unnamed_foo3_foo_avm_burstcount;

    // redist1_sync_together9_aunroll_x_in_i_valid_5(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together9_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist1_sync_together9_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist1_sync_together9_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together9_aunroll_x_in_i_valid_5_delay_1 <= redist1_sync_together9_aunroll_x_in_i_valid_5_delay_0;
            redist1_sync_together9_aunroll_x_in_i_valid_5_delay_2 <= redist1_sync_together9_aunroll_x_in_i_valid_5_delay_1;
            redist1_sync_together9_aunroll_x_in_i_valid_5_delay_3 <= redist1_sync_together9_aunroll_x_in_i_valid_5_delay_2;
            redist1_sync_together9_aunroll_x_in_i_valid_5_q <= redist1_sync_together9_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg0(REG,10)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together9_aunroll_x_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,8)@7
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_llvm_fpga_mem_unnamed_foo3_foo3_out_o_readdata;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_foo1 = GND_q;

endmodule
