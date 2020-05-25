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

// SystemVerilog created from obs_key_from_virtual_key_function_wrapper
// SystemVerilog created on Sun May 24 22:38:34 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module obs_key_from_virtual_key_function_wrapper (
    input wire [63:0] OBS_KEY_0,
    input wire [63:0] OBS_KEY_1,
    input wire [63:0] OBS_KEY_2,
    input wire [63:0] OBS_KEY_3,
    input wire [63:0] OBS_KEY_4,
    input wire [63:0] OBS_KEY_5,
    input wire [63:0] OBS_KEY_6,
    input wire [63:0] OBS_KEY_7,
    input wire [63:0] OBS_KEY_8,
    input wire [63:0] OBS_KEY_9,
    input wire [63:0] OBS_KEY_A,
    input wire [63:0] OBS_KEY_ALT,
    input wire [63:0] OBS_KEY_B,
    input wire [63:0] OBS_KEY_BACKSLASH,
    input wire [63:0] OBS_KEY_BACKSPACE,
    input wire [63:0] OBS_KEY_BRACKETLEFT,
    input wire [63:0] OBS_KEY_BRACKETRIGHT,
    input wire [63:0] OBS_KEY_C,
    input wire [63:0] OBS_KEY_CAPSLOCK,
    input wire [63:0] OBS_KEY_CLEAR,
    input wire [63:0] OBS_KEY_COMMA,
    input wire [63:0] OBS_KEY_CONTROL,
    input wire [63:0] OBS_KEY_D,
    input wire [63:0] OBS_KEY_DEAD_GRAVE,
    input wire [63:0] OBS_KEY_DELETE,
    input wire [63:0] OBS_KEY_DOWN,
    input wire [63:0] OBS_KEY_E,
    input wire [63:0] OBS_KEY_END,
    input wire [63:0] OBS_KEY_ENTER,
    input wire [63:0] OBS_KEY_EQUAL,
    input wire [63:0] OBS_KEY_ESCAPE,
    input wire [63:0] OBS_KEY_F,
    input wire [63:0] OBS_KEY_F1,
    input wire [63:0] OBS_KEY_F10,
    input wire [63:0] OBS_KEY_F11,
    input wire [63:0] OBS_KEY_F12,
    input wire [63:0] OBS_KEY_F13,
    input wire [63:0] OBS_KEY_F14,
    input wire [63:0] OBS_KEY_F15,
    input wire [63:0] OBS_KEY_F16,
    input wire [63:0] OBS_KEY_F17,
    input wire [63:0] OBS_KEY_F18,
    input wire [63:0] OBS_KEY_F19,
    input wire [63:0] OBS_KEY_F2,
    input wire [63:0] OBS_KEY_F20,
    input wire [63:0] OBS_KEY_F3,
    input wire [63:0] OBS_KEY_F4,
    input wire [63:0] OBS_KEY_F5,
    input wire [63:0] OBS_KEY_F6,
    input wire [63:0] OBS_KEY_F7,
    input wire [63:0] OBS_KEY_F8,
    input wire [63:0] OBS_KEY_F9,
    input wire [63:0] OBS_KEY_G,
    input wire [63:0] OBS_KEY_H,
    input wire [63:0] OBS_KEY_HELP,
    input wire [63:0] OBS_KEY_HOME,
    input wire [63:0] OBS_KEY_I,
    input wire [63:0] OBS_KEY_J,
    input wire [63:0] OBS_KEY_K,
    input wire [63:0] OBS_KEY_L,
    input wire [63:0] OBS_KEY_LEFT,
    input wire [63:0] OBS_KEY_M,
    input wire [63:0] OBS_KEY_META,
    input wire [63:0] OBS_KEY_MINUS,
    input wire [63:0] OBS_KEY_N,
    input wire [63:0] OBS_KEY_NONE,
    input wire [63:0] OBS_KEY_NUM0,
    input wire [63:0] OBS_KEY_NUM1,
    input wire [63:0] OBS_KEY_NUM2,
    input wire [63:0] OBS_KEY_NUM3,
    input wire [63:0] OBS_KEY_NUM4,
    input wire [63:0] OBS_KEY_NUM5,
    input wire [63:0] OBS_KEY_NUM6,
    input wire [63:0] OBS_KEY_NUM7,
    input wire [63:0] OBS_KEY_NUM8,
    input wire [63:0] OBS_KEY_NUM9,
    input wire [63:0] OBS_KEY_NUMASTERISK,
    input wire [63:0] OBS_KEY_NUMEQUAL,
    input wire [63:0] OBS_KEY_NUMMINUS,
    input wire [63:0] OBS_KEY_NUMPERIOD,
    input wire [63:0] OBS_KEY_NUMPLUS,
    input wire [63:0] OBS_KEY_NUMSLASH,
    input wire [63:0] OBS_KEY_O,
    input wire [63:0] OBS_KEY_P,
    input wire [63:0] OBS_KEY_PAGEDOWN,
    input wire [63:0] OBS_KEY_PAGEUP,
    input wire [63:0] OBS_KEY_PERIOD,
    input wire [63:0] OBS_KEY_Q,
    input wire [63:0] OBS_KEY_QUOTE,
    input wire [63:0] OBS_KEY_R,
    input wire [63:0] OBS_KEY_RETURN,
    input wire [63:0] OBS_KEY_RIGHT,
    input wire [63:0] OBS_KEY_S,
    input wire [63:0] OBS_KEY_SECTION,
    input wire [63:0] OBS_KEY_SEMICOLON,
    input wire [63:0] OBS_KEY_SHIFT,
    input wire [63:0] OBS_KEY_SLASH,
    input wire [63:0] OBS_KEY_SPACE,
    input wire [63:0] OBS_KEY_T,
    input wire [63:0] OBS_KEY_TAB,
    input wire [63:0] OBS_KEY_U,
    input wire [63:0] OBS_KEY_UP,
    input wire [63:0] OBS_KEY_V,
    input wire [63:0] OBS_KEY_W,
    input wire [63:0] OBS_KEY_X,
    input wire [63:0] OBS_KEY_Y,
    input wire [63:0] OBS_KEY_Z,
    input wire [63:0] avm_retval_01_obs_key_from_virtual_key_readdata,
    input wire [0:0] avm_retval_01_obs_key_from_virtual_key_readdatavalid,
    input wire [0:0] avm_retval_01_obs_key_from_virtual_key_waitrequest,
    input wire [0:0] avm_retval_01_obs_key_from_virtual_key_writeack,
    input wire [6911:0] avst_iord_bl_call_obs_key_from_virtual_key_data,
    input wire [0:0] avst_iord_bl_call_obs_key_from_virtual_key_valid,
    input wire [0:0] avst_iowr_bl_return_obs_key_from_virtual_key_almostfull,
    input wire [0:0] avst_iowr_bl_return_obs_key_from_virtual_key_ready,
    input wire [31:0] code,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_retval_01_obs_key_from_virtual_key_address,
    output wire [0:0] avm_retval_01_obs_key_from_virtual_key_burstcount,
    output wire [7:0] avm_retval_01_obs_key_from_virtual_key_byteenable,
    output wire [0:0] avm_retval_01_obs_key_from_virtual_key_enable,
    output wire [0:0] avm_retval_01_obs_key_from_virtual_key_read,
    output wire [0:0] avm_retval_01_obs_key_from_virtual_key_write,
    output wire [63:0] avm_retval_01_obs_key_from_virtual_key_writedata,
    output wire [0:0] avst_iord_bl_call_obs_key_from_virtual_key_ready,
    output wire [31:0] avst_iowr_bl_return_obs_key_from_virtual_key_data,
    output wire [0:0] avst_iowr_bl_return_obs_key_from_virtual_key_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [6911:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_1_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] obs_key_from_virtual_key_function_out_iord_bl_call_obs_key_from_virtual_key_o_fifoready;
    wire [31:0] obs_key_from_virtual_key_function_out_iowr_bl_return_obs_key_from_virtual_key_o_fifodata;
    wire [0:0] obs_key_from_virtual_key_function_out_iowr_bl_return_obs_key_from_virtual_key_o_fifovalid;
    wire [63:0] obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_address;
    wire [0:0] obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_burstcount;
    wire [7:0] obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_byteenable;
    wire [0:0] obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_enable;
    wire [0:0] obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_read;
    wire [0:0] obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_write;
    wire [63:0] obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_writedata;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,130)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_1(CONSTANT,8)
    assign implicit_input_pad_const_1_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = {OBS_KEY_Z, OBS_KEY_Y, OBS_KEY_X, OBS_KEY_W, OBS_KEY_V, OBS_KEY_UP, OBS_KEY_U, OBS_KEY_TAB, OBS_KEY_T, OBS_KEY_SPACE, OBS_KEY_SLASH, OBS_KEY_SHIFT, OBS_KEY_SEMICOLON, OBS_KEY_SECTION, OBS_KEY_S, OBS_KEY_RIGHT, OBS_KEY_RETURN, OBS_KEY_R, OBS_KEY_QUOTE, OBS_KEY_Q, OBS_KEY_PERIOD, OBS_KEY_PAGEUP, OBS_KEY_PAGEDOWN, OBS_KEY_P, OBS_KEY_O, OBS_KEY_NUMSLASH, OBS_KEY_NUMPLUS, OBS_KEY_NUMPERIOD, OBS_KEY_NUMMINUS, OBS_KEY_NUMEQUAL, OBS_KEY_NUMASTERISK, OBS_KEY_NUM9, OBS_KEY_NUM8, OBS_KEY_NUM7, OBS_KEY_NUM6, OBS_KEY_NUM5, OBS_KEY_NUM4, OBS_KEY_NUM3, OBS_KEY_NUM2, OBS_KEY_NUM1, OBS_KEY_NUM0, OBS_KEY_NONE, OBS_KEY_N, OBS_KEY_MINUS, OBS_KEY_META, OBS_KEY_M, OBS_KEY_LEFT, OBS_KEY_L, OBS_KEY_K, OBS_KEY_J, OBS_KEY_I, OBS_KEY_HOME, OBS_KEY_HELP, OBS_KEY_H, OBS_KEY_G, OBS_KEY_F9, OBS_KEY_F8, OBS_KEY_F7, OBS_KEY_F6, OBS_KEY_F5, OBS_KEY_F4, OBS_KEY_F3, OBS_KEY_F20, OBS_KEY_F2, OBS_KEY_F19, OBS_KEY_F18, OBS_KEY_F17, OBS_KEY_F16, OBS_KEY_F15, OBS_KEY_F14, OBS_KEY_F13, OBS_KEY_F12, OBS_KEY_F11, OBS_KEY_F10, OBS_KEY_F1, OBS_KEY_F, OBS_KEY_ESCAPE, OBS_KEY_EQUAL, OBS_KEY_ENTER, OBS_KEY_END, OBS_KEY_E, OBS_KEY_DOWN, OBS_KEY_DELETE, OBS_KEY_DEAD_GRAVE, OBS_KEY_D, OBS_KEY_CONTROL, OBS_KEY_COMMA, OBS_KEY_CLEAR, OBS_KEY_CAPSLOCK, OBS_KEY_C, OBS_KEY_BRACKETRIGHT, OBS_KEY_BRACKETLEFT, OBS_KEY_BACKSPACE, OBS_KEY_BACKSLASH, OBS_KEY_B, OBS_KEY_ALT, OBS_KEY_A, OBS_KEY_9, OBS_KEY_8, OBS_KEY_7, OBS_KEY_6, OBS_KEY_5, OBS_KEY_4, OBS_KEY_3, OBS_KEY_2, OBS_KEY_1, OBS_KEY_0, implicit_input_pad_const_1_q, code};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // obs_key_from_virtual_key_function(BLACKBOX,131)
    obs_key_from_virtual_key_function theobs_key_from_virtual_key_function (
        .in_arg_call(call_const_q),
        .in_arg_return1(call_const_q),
        .in_iord_bl_call_obs_key_from_virtual_key_i_fifodata(implicit_input_q),
        .in_iord_bl_call_obs_key_from_virtual_key_i_fifovalid(start),
        .in_iowr_bl_return_obs_key_from_virtual_key_i_fifoready(not_stall_q),
        .in_retval_01_obs_key_from_virtual_key_avm_readdata(avm_retval_01_obs_key_from_virtual_key_readdata),
        .in_retval_01_obs_key_from_virtual_key_avm_readdatavalid(avm_retval_01_obs_key_from_virtual_key_readdatavalid),
        .in_retval_01_obs_key_from_virtual_key_avm_waitrequest(avm_retval_01_obs_key_from_virtual_key_waitrequest),
        .in_retval_01_obs_key_from_virtual_key_avm_writeack(avm_retval_01_obs_key_from_virtual_key_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_obs_key_from_virtual_key_o_fifoready(obs_key_from_virtual_key_function_out_iord_bl_call_obs_key_from_virtual_key_o_fifoready),
        .out_iowr_bl_return_obs_key_from_virtual_key_o_fifodata(obs_key_from_virtual_key_function_out_iowr_bl_return_obs_key_from_virtual_key_o_fifodata),
        .out_iowr_bl_return_obs_key_from_virtual_key_o_fifovalid(obs_key_from_virtual_key_function_out_iowr_bl_return_obs_key_from_virtual_key_o_fifovalid),
        .out_retval_01_obs_key_from_virtual_key_avm_address(obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_address),
        .out_retval_01_obs_key_from_virtual_key_avm_burstcount(obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_burstcount),
        .out_retval_01_obs_key_from_virtual_key_avm_byteenable(obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_byteenable),
        .out_retval_01_obs_key_from_virtual_key_avm_enable(obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_enable),
        .out_retval_01_obs_key_from_virtual_key_avm_read(obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_read),
        .out_retval_01_obs_key_from_virtual_key_avm_write(obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_write),
        .out_retval_01_obs_key_from_virtual_key_avm_writedata(obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_retval_01_obs_key_from_virtual_key_address(GPOUT,132)
    assign avm_retval_01_obs_key_from_virtual_key_address = obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_address;

    // avm_retval_01_obs_key_from_virtual_key_burstcount(GPOUT,133)
    assign avm_retval_01_obs_key_from_virtual_key_burstcount = obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_burstcount;

    // avm_retval_01_obs_key_from_virtual_key_byteenable(GPOUT,134)
    assign avm_retval_01_obs_key_from_virtual_key_byteenable = obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_byteenable;

    // avm_retval_01_obs_key_from_virtual_key_enable(GPOUT,135)
    assign avm_retval_01_obs_key_from_virtual_key_enable = obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_enable;

    // avm_retval_01_obs_key_from_virtual_key_read(GPOUT,136)
    assign avm_retval_01_obs_key_from_virtual_key_read = obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_read;

    // avm_retval_01_obs_key_from_virtual_key_write(GPOUT,137)
    assign avm_retval_01_obs_key_from_virtual_key_write = obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_write;

    // avm_retval_01_obs_key_from_virtual_key_writedata(GPOUT,138)
    assign avm_retval_01_obs_key_from_virtual_key_writedata = obs_key_from_virtual_key_function_out_retval_01_obs_key_from_virtual_key_avm_writedata;

    // avst_iord_bl_call_obs_key_from_virtual_key_ready(GPOUT,139)
    assign avst_iord_bl_call_obs_key_from_virtual_key_ready = obs_key_from_virtual_key_function_out_iord_bl_call_obs_key_from_virtual_key_o_fifoready;

    // avst_iowr_bl_return_obs_key_from_virtual_key_data(GPOUT,140)
    assign avst_iowr_bl_return_obs_key_from_virtual_key_data = obs_key_from_virtual_key_function_out_iowr_bl_return_obs_key_from_virtual_key_o_fifodata;

    // avst_iowr_bl_return_obs_key_from_virtual_key_valid(GPOUT,141)
    assign avst_iowr_bl_return_obs_key_from_virtual_key_valid = obs_key_from_virtual_key_function_out_iowr_bl_return_obs_key_from_virtual_key_o_fifovalid;

    // not_ready(LOGICAL,129)
    assign not_ready_q = ~ (obs_key_from_virtual_key_function_out_iord_bl_call_obs_key_from_virtual_key_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,146)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,145)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,142)
    assign busy = busy_or_q;

    // done(GPOUT,143)
    assign done = obs_key_from_virtual_key_function_out_iowr_bl_return_obs_key_from_virtual_key_o_fifovalid;

    // returndata(GPOUT,144)
    assign returndata = obs_key_from_virtual_key_function_out_iowr_bl_return_obs_key_from_virtual_key_o_fifodata;

endmodule
