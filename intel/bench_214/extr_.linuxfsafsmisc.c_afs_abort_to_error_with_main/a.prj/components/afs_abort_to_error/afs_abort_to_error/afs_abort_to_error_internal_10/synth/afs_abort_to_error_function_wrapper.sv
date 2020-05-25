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

// SystemVerilog created from afs_abort_to_error_function_wrapper
// SystemVerilog created on Sun May 24 22:37:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module afs_abort_to_error_function_wrapper (
    input wire [63:0] EACCES,
    input wire [63:0] EAGAIN,
    input wire [63:0] EBADRQC,
    input wire [63:0] EBUSY,
    input wire [63:0] EDEADLK,
    input wire [63:0] EDOM,
    input wire [63:0] EDQUOT,
    input wire [63:0] EEXIST,
    input wire [63:0] EFBIG,
    input wire [63:0] EINVAL,
    input wire [63:0] EIO,
    input wire [63:0] EISDIR,
    input wire [63:0] EKEYEXPIRED,
    input wire [63:0] EKEYREJECTED,
    input wire [63:0] EMLINK,
    input wire [63:0] ENAMETOOLONG,
    input wire [63:0] ENODEV,
    input wire [63:0] ENOENT,
    input wire [63:0] ENOLCK,
    input wire [63:0] ENOMEDIUM,
    input wire [63:0] ENOMEM,
    input wire [63:0] ENOSPC,
    input wire [63:0] ENOTCONN,
    input wire [63:0] ENOTDIR,
    input wire [63:0] ENOTEMPTY,
    input wire [63:0] ENOTSUPP,
    input wire [63:0] ENXIO,
    input wire [63:0] EPERM,
    input wire [63:0] EPROTO,
    input wire [63:0] ERANGE,
    input wire [63:0] EREMOTEIO,
    input wire [63:0] EROFS,
    input wire [63:0] ETIMEDOUT,
    input wire [63:0] EWOULDBLOCK,
    input wire [63:0] EXDEV,
    input wire [31:0] abort_code,
    input wire [63:0] avm_pn1_afs_abort_to_error_readdata,
    input wire [0:0] avm_pn1_afs_abort_to_error_readdatavalid,
    input wire [0:0] avm_pn1_afs_abort_to_error_waitrequest,
    input wire [0:0] avm_pn1_afs_abort_to_error_writeack,
    input wire [2303:0] avst_iord_bl_call_afs_abort_to_error_data,
    input wire [0:0] avst_iord_bl_call_afs_abort_to_error_valid,
    input wire [0:0] avst_iowr_bl_return_afs_abort_to_error_almostfull,
    input wire [0:0] avst_iowr_bl_return_afs_abort_to_error_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_pn1_afs_abort_to_error_address,
    output wire [0:0] avm_pn1_afs_abort_to_error_burstcount,
    output wire [7:0] avm_pn1_afs_abort_to_error_byteenable,
    output wire [0:0] avm_pn1_afs_abort_to_error_enable,
    output wire [0:0] avm_pn1_afs_abort_to_error_read,
    output wire [0:0] avm_pn1_afs_abort_to_error_write,
    output wire [63:0] avm_pn1_afs_abort_to_error_writedata,
    output wire [0:0] avst_iord_bl_call_afs_abort_to_error_ready,
    output wire [31:0] avst_iowr_bl_return_afs_abort_to_error_data,
    output wire [0:0] avst_iowr_bl_return_afs_abort_to_error_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] afs_abort_to_error_function_out_iord_bl_call_afs_abort_to_error_o_fifoready;
    wire [31:0] afs_abort_to_error_function_out_iowr_bl_return_afs_abort_to_error_o_fifodata;
    wire [0:0] afs_abort_to_error_function_out_iowr_bl_return_afs_abort_to_error_o_fifovalid;
    wire [63:0] afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_address;
    wire [0:0] afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_burstcount;
    wire [7:0] afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_byteenable;
    wire [0:0] afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_enable;
    wire [0:0] afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_read;
    wire [0:0] afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_write;
    wire [63:0] afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_writedata;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [2303:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_1_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,59)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_1(CONSTANT,9)
    assign implicit_input_pad_const_1_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {EXDEV, EWOULDBLOCK, ETIMEDOUT, EROFS, EREMOTEIO, ERANGE, EPROTO, EPERM, ENXIO, ENOTSUPP, ENOTEMPTY, ENOTDIR, ENOTCONN, ENOSPC, ENOMEM, ENOMEDIUM, ENOLCK, ENOENT, ENODEV, ENAMETOOLONG, EMLINK, EKEYREJECTED, EKEYEXPIRED, EISDIR, EIO, EINVAL, EFBIG, EEXIST, EDQUOT, EDOM, EDEADLK, EBUSY, EBADRQC, EAGAIN, EACCES, implicit_input_pad_const_1_q, abort_code};

    // call_const(CONSTANT,5)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // afs_abort_to_error_function(BLACKBOX,2)
    afs_abort_to_error_function theafs_abort_to_error_function (
        .in_arg_call(call_const_q),
        .in_arg_return1(call_const_q),
        .in_iord_bl_call_afs_abort_to_error_i_fifodata(implicit_input_q),
        .in_iord_bl_call_afs_abort_to_error_i_fifovalid(start),
        .in_iowr_bl_return_afs_abort_to_error_i_fifoready(not_stall_q),
        .in_pn1_afs_abort_to_error_avm_readdata(avm_pn1_afs_abort_to_error_readdata),
        .in_pn1_afs_abort_to_error_avm_readdatavalid(avm_pn1_afs_abort_to_error_readdatavalid),
        .in_pn1_afs_abort_to_error_avm_waitrequest(avm_pn1_afs_abort_to_error_waitrequest),
        .in_pn1_afs_abort_to_error_avm_writeack(avm_pn1_afs_abort_to_error_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_afs_abort_to_error_o_fifoready(afs_abort_to_error_function_out_iord_bl_call_afs_abort_to_error_o_fifoready),
        .out_iowr_bl_return_afs_abort_to_error_o_fifodata(afs_abort_to_error_function_out_iowr_bl_return_afs_abort_to_error_o_fifodata),
        .out_iowr_bl_return_afs_abort_to_error_o_fifovalid(afs_abort_to_error_function_out_iowr_bl_return_afs_abort_to_error_o_fifovalid),
        .out_pn1_afs_abort_to_error_avm_address(afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_address),
        .out_pn1_afs_abort_to_error_avm_burstcount(afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_burstcount),
        .out_pn1_afs_abort_to_error_avm_byteenable(afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_byteenable),
        .out_pn1_afs_abort_to_error_avm_enable(afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_enable),
        .out_pn1_afs_abort_to_error_avm_read(afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_read),
        .out_pn1_afs_abort_to_error_avm_write(afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_write),
        .out_pn1_afs_abort_to_error_avm_writedata(afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_pn1_afs_abort_to_error_address(GPOUT,60)
    assign avm_pn1_afs_abort_to_error_address = afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_address;

    // avm_pn1_afs_abort_to_error_burstcount(GPOUT,61)
    assign avm_pn1_afs_abort_to_error_burstcount = afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_burstcount;

    // avm_pn1_afs_abort_to_error_byteenable(GPOUT,62)
    assign avm_pn1_afs_abort_to_error_byteenable = afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_byteenable;

    // avm_pn1_afs_abort_to_error_enable(GPOUT,63)
    assign avm_pn1_afs_abort_to_error_enable = afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_enable;

    // avm_pn1_afs_abort_to_error_read(GPOUT,64)
    assign avm_pn1_afs_abort_to_error_read = afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_read;

    // avm_pn1_afs_abort_to_error_write(GPOUT,65)
    assign avm_pn1_afs_abort_to_error_write = afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_write;

    // avm_pn1_afs_abort_to_error_writedata(GPOUT,66)
    assign avm_pn1_afs_abort_to_error_writedata = afs_abort_to_error_function_out_pn1_afs_abort_to_error_avm_writedata;

    // avst_iord_bl_call_afs_abort_to_error_ready(GPOUT,67)
    assign avst_iord_bl_call_afs_abort_to_error_ready = afs_abort_to_error_function_out_iord_bl_call_afs_abort_to_error_o_fifoready;

    // avst_iowr_bl_return_afs_abort_to_error_data(GPOUT,68)
    assign avst_iowr_bl_return_afs_abort_to_error_data = afs_abort_to_error_function_out_iowr_bl_return_afs_abort_to_error_o_fifodata;

    // avst_iowr_bl_return_afs_abort_to_error_valid(GPOUT,69)
    assign avst_iowr_bl_return_afs_abort_to_error_valid = afs_abort_to_error_function_out_iowr_bl_return_afs_abort_to_error_o_fifovalid;

    // not_ready(LOGICAL,58)
    assign not_ready_q = ~ (afs_abort_to_error_function_out_iord_bl_call_afs_abort_to_error_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,74)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,73)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,70)
    assign busy = busy_or_q;

    // done(GPOUT,71)
    assign done = afs_abort_to_error_function_out_iowr_bl_return_afs_abort_to_error_o_fifovalid;

    // returndata(GPOUT,72)
    assign returndata = afs_abort_to_error_function_out_iowr_bl_return_afs_abort_to_error_o_fifodata;

endmodule
