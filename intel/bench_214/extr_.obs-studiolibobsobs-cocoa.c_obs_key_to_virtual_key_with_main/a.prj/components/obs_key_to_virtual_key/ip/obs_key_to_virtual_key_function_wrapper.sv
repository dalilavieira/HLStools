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

// SystemVerilog created from obs_key_to_virtual_key_function_wrapper
// SystemVerilog created on Sun May 24 22:38:51 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module obs_key_to_virtual_key_function_wrapper (
    input wire [63:0] INVALID_KEY,
    input wire [63:0] avm_retval_01_obs_key_to_virtual_key_readdata,
    input wire [0:0] avm_retval_01_obs_key_to_virtual_key_readdatavalid,
    input wire [0:0] avm_retval_01_obs_key_to_virtual_key_waitrequest,
    input wire [0:0] avm_retval_01_obs_key_to_virtual_key_writeack,
    input wire [6911:0] avst_iord_bl_call_obs_key_to_virtual_key_data,
    input wire [0:0] avst_iord_bl_call_obs_key_to_virtual_key_valid,
    input wire [0:0] avst_iowr_bl_return_obs_key_to_virtual_key_almostfull,
    input wire [0:0] avst_iowr_bl_return_obs_key_to_virtual_key_ready,
    input wire [31:0] code,
    input wire [63:0] kVK_ANSI_0,
    input wire [63:0] kVK_ANSI_1,
    input wire [63:0] kVK_ANSI_2,
    input wire [63:0] kVK_ANSI_3,
    input wire [63:0] kVK_ANSI_4,
    input wire [63:0] kVK_ANSI_5,
    input wire [63:0] kVK_ANSI_6,
    input wire [63:0] kVK_ANSI_7,
    input wire [63:0] kVK_ANSI_8,
    input wire [63:0] kVK_ANSI_9,
    input wire [63:0] kVK_ANSI_A,
    input wire [63:0] kVK_ANSI_B,
    input wire [63:0] kVK_ANSI_Backslash,
    input wire [63:0] kVK_ANSI_C,
    input wire [63:0] kVK_ANSI_Comma,
    input wire [63:0] kVK_ANSI_D,
    input wire [63:0] kVK_ANSI_E,
    input wire [63:0] kVK_ANSI_Equal,
    input wire [63:0] kVK_ANSI_F,
    input wire [63:0] kVK_ANSI_G,
    input wire [63:0] kVK_ANSI_Grave,
    input wire [63:0] kVK_ANSI_H,
    input wire [63:0] kVK_ANSI_I,
    input wire [63:0] kVK_ANSI_J,
    input wire [63:0] kVK_ANSI_K,
    input wire [63:0] kVK_ANSI_Keypad0,
    input wire [63:0] kVK_ANSI_Keypad1,
    input wire [63:0] kVK_ANSI_Keypad2,
    input wire [63:0] kVK_ANSI_Keypad3,
    input wire [63:0] kVK_ANSI_Keypad4,
    input wire [63:0] kVK_ANSI_Keypad5,
    input wire [63:0] kVK_ANSI_Keypad6,
    input wire [63:0] kVK_ANSI_Keypad7,
    input wire [63:0] kVK_ANSI_Keypad8,
    input wire [63:0] kVK_ANSI_Keypad9,
    input wire [63:0] kVK_ANSI_KeypadClear,
    input wire [63:0] kVK_ANSI_KeypadDecimal,
    input wire [63:0] kVK_ANSI_KeypadDivide,
    input wire [63:0] kVK_ANSI_KeypadEnter,
    input wire [63:0] kVK_ANSI_KeypadEquals,
    input wire [63:0] kVK_ANSI_KeypadMinus,
    input wire [63:0] kVK_ANSI_KeypadMultiply,
    input wire [63:0] kVK_ANSI_KeypadPlus,
    input wire [63:0] kVK_ANSI_L,
    input wire [63:0] kVK_ANSI_LeftBracket,
    input wire [63:0] kVK_ANSI_M,
    input wire [63:0] kVK_ANSI_Minus,
    input wire [63:0] kVK_ANSI_N,
    input wire [63:0] kVK_ANSI_O,
    input wire [63:0] kVK_ANSI_P,
    input wire [63:0] kVK_ANSI_Period,
    input wire [63:0] kVK_ANSI_Q,
    input wire [63:0] kVK_ANSI_Quote,
    input wire [63:0] kVK_ANSI_R,
    input wire [63:0] kVK_ANSI_RightBracket,
    input wire [63:0] kVK_ANSI_S,
    input wire [63:0] kVK_ANSI_Semicolon,
    input wire [63:0] kVK_ANSI_Slash,
    input wire [63:0] kVK_ANSI_T,
    input wire [63:0] kVK_ANSI_U,
    input wire [63:0] kVK_ANSI_V,
    input wire [63:0] kVK_ANSI_W,
    input wire [63:0] kVK_ANSI_X,
    input wire [63:0] kVK_ANSI_Y,
    input wire [63:0] kVK_ANSI_Z,
    input wire [63:0] kVK_CapsLock,
    input wire [63:0] kVK_Command,
    input wire [63:0] kVK_Control,
    input wire [63:0] kVK_Delete,
    input wire [63:0] kVK_DownArrow,
    input wire [63:0] kVK_End,
    input wire [63:0] kVK_Escape,
    input wire [63:0] kVK_F1,
    input wire [63:0] kVK_F10,
    input wire [63:0] kVK_F11,
    input wire [63:0] kVK_F12,
    input wire [63:0] kVK_F13,
    input wire [63:0] kVK_F14,
    input wire [63:0] kVK_F15,
    input wire [63:0] kVK_F16,
    input wire [63:0] kVK_F17,
    input wire [63:0] kVK_F18,
    input wire [63:0] kVK_F19,
    input wire [63:0] kVK_F2,
    input wire [63:0] kVK_F20,
    input wire [63:0] kVK_F3,
    input wire [63:0] kVK_F4,
    input wire [63:0] kVK_F5,
    input wire [63:0] kVK_F6,
    input wire [63:0] kVK_F7,
    input wire [63:0] kVK_F8,
    input wire [63:0] kVK_F9,
    input wire [63:0] kVK_ForwardDelete,
    input wire [63:0] kVK_Help,
    input wire [63:0] kVK_Home,
    input wire [63:0] kVK_ISO_Section,
    input wire [63:0] kVK_LeftArrow,
    input wire [63:0] kVK_Option,
    input wire [63:0] kVK_PageDown,
    input wire [63:0] kVK_PageUp,
    input wire [63:0] kVK_Return,
    input wire [63:0] kVK_RightArrow,
    input wire [63:0] kVK_Shift,
    input wire [63:0] kVK_Space,
    input wire [63:0] kVK_Tab,
    input wire [63:0] kVK_UpArrow,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_retval_01_obs_key_to_virtual_key_address,
    output wire [0:0] avm_retval_01_obs_key_to_virtual_key_burstcount,
    output wire [7:0] avm_retval_01_obs_key_to_virtual_key_byteenable,
    output wire [0:0] avm_retval_01_obs_key_to_virtual_key_enable,
    output wire [0:0] avm_retval_01_obs_key_to_virtual_key_read,
    output wire [0:0] avm_retval_01_obs_key_to_virtual_key_write,
    output wire [63:0] avm_retval_01_obs_key_to_virtual_key_writedata,
    output wire [0:0] avst_iord_bl_call_obs_key_to_virtual_key_ready,
    output wire [31:0] avst_iowr_bl_return_obs_key_to_virtual_key_data,
    output wire [0:0] avst_iowr_bl_return_obs_key_to_virtual_key_valid,
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
    wire [0:0] obs_key_to_virtual_key_function_out_iord_bl_call_obs_key_to_virtual_key_o_fifoready;
    wire [31:0] obs_key_to_virtual_key_function_out_iowr_bl_return_obs_key_to_virtual_key_o_fifodata;
    wire [0:0] obs_key_to_virtual_key_function_out_iowr_bl_return_obs_key_to_virtual_key_o_fifovalid;
    wire [63:0] obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_address;
    wire [0:0] obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_burstcount;
    wire [7:0] obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_byteenable;
    wire [0:0] obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_enable;
    wire [0:0] obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_read;
    wire [0:0] obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_write;
    wire [63:0] obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_writedata;
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
    assign implicit_input_q = {kVK_UpArrow, kVK_Tab, kVK_Space, kVK_Shift, kVK_RightArrow, kVK_Return, kVK_PageUp, kVK_PageDown, kVK_Option, kVK_LeftArrow, kVK_ISO_Section, kVK_Home, kVK_Help, kVK_ForwardDelete, kVK_F9, kVK_F8, kVK_F7, kVK_F6, kVK_F5, kVK_F4, kVK_F3, kVK_F20, kVK_F2, kVK_F19, kVK_F18, kVK_F17, kVK_F16, kVK_F15, kVK_F14, kVK_F13, kVK_F12, kVK_F11, kVK_F10, kVK_F1, kVK_Escape, kVK_End, kVK_DownArrow, kVK_Delete, kVK_Control, kVK_Command, kVK_CapsLock, kVK_ANSI_Z, kVK_ANSI_Y, kVK_ANSI_X, kVK_ANSI_W, kVK_ANSI_V, kVK_ANSI_U, kVK_ANSI_T, kVK_ANSI_Slash, kVK_ANSI_Semicolon, kVK_ANSI_S, kVK_ANSI_RightBracket, kVK_ANSI_R, kVK_ANSI_Quote, kVK_ANSI_Q, kVK_ANSI_Period, kVK_ANSI_P, kVK_ANSI_O, kVK_ANSI_N, kVK_ANSI_Minus, kVK_ANSI_M, kVK_ANSI_LeftBracket, kVK_ANSI_L, kVK_ANSI_KeypadPlus, kVK_ANSI_KeypadMultiply, kVK_ANSI_KeypadMinus, kVK_ANSI_KeypadEquals, kVK_ANSI_KeypadEnter, kVK_ANSI_KeypadDivide, kVK_ANSI_KeypadDecimal, kVK_ANSI_KeypadClear, kVK_ANSI_Keypad9, kVK_ANSI_Keypad8, kVK_ANSI_Keypad7, kVK_ANSI_Keypad6, kVK_ANSI_Keypad5, kVK_ANSI_Keypad4, kVK_ANSI_Keypad3, kVK_ANSI_Keypad2, kVK_ANSI_Keypad1, kVK_ANSI_Keypad0, kVK_ANSI_K, kVK_ANSI_J, kVK_ANSI_I, kVK_ANSI_H, kVK_ANSI_Grave, kVK_ANSI_G, kVK_ANSI_F, kVK_ANSI_Equal, kVK_ANSI_E, kVK_ANSI_D, kVK_ANSI_Comma, kVK_ANSI_C, kVK_ANSI_Backslash, kVK_ANSI_B, kVK_ANSI_A, kVK_ANSI_9, kVK_ANSI_8, kVK_ANSI_7, kVK_ANSI_6, kVK_ANSI_5, kVK_ANSI_4, kVK_ANSI_3, kVK_ANSI_2, kVK_ANSI_1, kVK_ANSI_0, INVALID_KEY, implicit_input_pad_const_1_q, code};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // obs_key_to_virtual_key_function(BLACKBOX,131)
    obs_key_to_virtual_key_function theobs_key_to_virtual_key_function (
        .in_arg_call(call_const_q),
        .in_arg_return1(call_const_q),
        .in_iord_bl_call_obs_key_to_virtual_key_i_fifodata(implicit_input_q),
        .in_iord_bl_call_obs_key_to_virtual_key_i_fifovalid(start),
        .in_iowr_bl_return_obs_key_to_virtual_key_i_fifoready(not_stall_q),
        .in_retval_01_obs_key_to_virtual_key_avm_readdata(avm_retval_01_obs_key_to_virtual_key_readdata),
        .in_retval_01_obs_key_to_virtual_key_avm_readdatavalid(avm_retval_01_obs_key_to_virtual_key_readdatavalid),
        .in_retval_01_obs_key_to_virtual_key_avm_waitrequest(avm_retval_01_obs_key_to_virtual_key_waitrequest),
        .in_retval_01_obs_key_to_virtual_key_avm_writeack(avm_retval_01_obs_key_to_virtual_key_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_obs_key_to_virtual_key_o_fifoready(obs_key_to_virtual_key_function_out_iord_bl_call_obs_key_to_virtual_key_o_fifoready),
        .out_iowr_bl_return_obs_key_to_virtual_key_o_fifodata(obs_key_to_virtual_key_function_out_iowr_bl_return_obs_key_to_virtual_key_o_fifodata),
        .out_iowr_bl_return_obs_key_to_virtual_key_o_fifovalid(obs_key_to_virtual_key_function_out_iowr_bl_return_obs_key_to_virtual_key_o_fifovalid),
        .out_retval_01_obs_key_to_virtual_key_avm_address(obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_address),
        .out_retval_01_obs_key_to_virtual_key_avm_burstcount(obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_burstcount),
        .out_retval_01_obs_key_to_virtual_key_avm_byteenable(obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_byteenable),
        .out_retval_01_obs_key_to_virtual_key_avm_enable(obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_enable),
        .out_retval_01_obs_key_to_virtual_key_avm_read(obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_read),
        .out_retval_01_obs_key_to_virtual_key_avm_write(obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_write),
        .out_retval_01_obs_key_to_virtual_key_avm_writedata(obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_retval_01_obs_key_to_virtual_key_address(GPOUT,132)
    assign avm_retval_01_obs_key_to_virtual_key_address = obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_address;

    // avm_retval_01_obs_key_to_virtual_key_burstcount(GPOUT,133)
    assign avm_retval_01_obs_key_to_virtual_key_burstcount = obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_burstcount;

    // avm_retval_01_obs_key_to_virtual_key_byteenable(GPOUT,134)
    assign avm_retval_01_obs_key_to_virtual_key_byteenable = obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_byteenable;

    // avm_retval_01_obs_key_to_virtual_key_enable(GPOUT,135)
    assign avm_retval_01_obs_key_to_virtual_key_enable = obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_enable;

    // avm_retval_01_obs_key_to_virtual_key_read(GPOUT,136)
    assign avm_retval_01_obs_key_to_virtual_key_read = obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_read;

    // avm_retval_01_obs_key_to_virtual_key_write(GPOUT,137)
    assign avm_retval_01_obs_key_to_virtual_key_write = obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_write;

    // avm_retval_01_obs_key_to_virtual_key_writedata(GPOUT,138)
    assign avm_retval_01_obs_key_to_virtual_key_writedata = obs_key_to_virtual_key_function_out_retval_01_obs_key_to_virtual_key_avm_writedata;

    // avst_iord_bl_call_obs_key_to_virtual_key_ready(GPOUT,139)
    assign avst_iord_bl_call_obs_key_to_virtual_key_ready = obs_key_to_virtual_key_function_out_iord_bl_call_obs_key_to_virtual_key_o_fifoready;

    // avst_iowr_bl_return_obs_key_to_virtual_key_data(GPOUT,140)
    assign avst_iowr_bl_return_obs_key_to_virtual_key_data = obs_key_to_virtual_key_function_out_iowr_bl_return_obs_key_to_virtual_key_o_fifodata;

    // avst_iowr_bl_return_obs_key_to_virtual_key_valid(GPOUT,141)
    assign avst_iowr_bl_return_obs_key_to_virtual_key_valid = obs_key_to_virtual_key_function_out_iowr_bl_return_obs_key_to_virtual_key_o_fifovalid;

    // not_ready(LOGICAL,129)
    assign not_ready_q = ~ (obs_key_to_virtual_key_function_out_iord_bl_call_obs_key_to_virtual_key_o_fifoready);

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
    assign done = obs_key_to_virtual_key_function_out_iowr_bl_return_obs_key_to_virtual_key_o_fifovalid;

    // returndata(GPOUT,144)
    assign returndata = obs_key_to_virtual_key_function_out_iowr_bl_return_obs_key_to_virtual_key_o_fifodata;

endmodule
