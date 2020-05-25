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

// SystemVerilog created from emscripten_compute_dom_pk_code_function_wrapper
// SystemVerilog created on Sun May 24 22:31:15 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_function_wrapper (
    input wire [63:0] DOM_PK_0,
    input wire [63:0] DOM_PK_1,
    input wire [63:0] DOM_PK_2,
    input wire [63:0] DOM_PK_3,
    input wire [63:0] DOM_PK_4,
    input wire [63:0] DOM_PK_5,
    input wire [63:0] DOM_PK_6,
    input wire [63:0] DOM_PK_7,
    input wire [63:0] DOM_PK_8,
    input wire [63:0] DOM_PK_9,
    input wire [63:0] DOM_PK_A,
    input wire [63:0] DOM_PK_ALT_LEFT,
    input wire [63:0] DOM_PK_ALT_RIGHT,
    input wire [63:0] DOM_PK_ARROW_DOWN,
    input wire [63:0] DOM_PK_ARROW_LEFT,
    input wire [63:0] DOM_PK_ARROW_RIGHT,
    input wire [63:0] DOM_PK_ARROW_UP,
    input wire [63:0] DOM_PK_AUDIO_VOLUME_DOWN,
    input wire [63:0] DOM_PK_AUDIO_VOLUME_MUTE,
    input wire [63:0] DOM_PK_AUDIO_VOLUME_UP,
    input wire [63:0] DOM_PK_B,
    input wire [63:0] DOM_PK_BACKQUOTE,
    input wire [63:0] DOM_PK_BACKSLASH,
    input wire [63:0] DOM_PK_BACKSPACE,
    input wire [63:0] DOM_PK_BRACKET_LEFT,
    input wire [63:0] DOM_PK_BRACKET_RIGHT,
    input wire [63:0] DOM_PK_BROWSER_BACK,
    input wire [63:0] DOM_PK_BROWSER_FAVORITES,
    input wire [63:0] DOM_PK_BROWSER_FORWARD,
    input wire [63:0] DOM_PK_BROWSER_HOME,
    input wire [63:0] DOM_PK_BROWSER_REFRESH,
    input wire [63:0] DOM_PK_BROWSER_SEARCH,
    input wire [63:0] DOM_PK_BROWSER_STOP,
    input wire [63:0] DOM_PK_C,
    input wire [63:0] DOM_PK_CAPS_LOCK,
    input wire [63:0] DOM_PK_COMMA,
    input wire [63:0] DOM_PK_CONTEXT_MENU,
    input wire [63:0] DOM_PK_CONTROL_LEFT,
    input wire [63:0] DOM_PK_CONTROL_RIGHT,
    input wire [63:0] DOM_PK_CONVERT,
    input wire [63:0] DOM_PK_COPY,
    input wire [63:0] DOM_PK_CUT,
    input wire [63:0] DOM_PK_D,
    input wire [63:0] DOM_PK_DELETE,
    input wire [63:0] DOM_PK_E,
    input wire [63:0] DOM_PK_EJECT,
    input wire [63:0] DOM_PK_END,
    input wire [63:0] DOM_PK_ENTER,
    input wire [63:0] DOM_PK_EQUAL,
    input wire [63:0] DOM_PK_ESCAPE,
    input wire [63:0] DOM_PK_F,
    input wire [63:0] DOM_PK_F1,
    input wire [63:0] DOM_PK_F10,
    input wire [63:0] DOM_PK_F11,
    input wire [63:0] DOM_PK_F12,
    input wire [63:0] DOM_PK_F13,
    input wire [63:0] DOM_PK_F14,
    input wire [63:0] DOM_PK_F15,
    input wire [63:0] DOM_PK_F16,
    input wire [63:0] DOM_PK_F17,
    input wire [63:0] DOM_PK_F18,
    input wire [63:0] DOM_PK_F19,
    input wire [63:0] DOM_PK_F2,
    input wire [63:0] DOM_PK_F20,
    input wire [63:0] DOM_PK_F21,
    input wire [63:0] DOM_PK_F22,
    input wire [63:0] DOM_PK_F23,
    input wire [63:0] DOM_PK_F24,
    input wire [63:0] DOM_PK_F3,
    input wire [63:0] DOM_PK_F4,
    input wire [63:0] DOM_PK_F5,
    input wire [63:0] DOM_PK_F6,
    input wire [63:0] DOM_PK_F7,
    input wire [63:0] DOM_PK_F8,
    input wire [63:0] DOM_PK_F9,
    input wire [63:0] DOM_PK_G,
    input wire [63:0] DOM_PK_H,
    input wire [63:0] DOM_PK_HELP,
    input wire [63:0] DOM_PK_HOME,
    input wire [63:0] DOM_PK_I,
    input wire [63:0] DOM_PK_INSERT,
    input wire [63:0] DOM_PK_INTL_BACKSLASH,
    input wire [63:0] DOM_PK_INTL_RO,
    input wire [63:0] DOM_PK_INTL_YEN,
    input wire [63:0] DOM_PK_J,
    input wire [63:0] DOM_PK_K,
    input wire [63:0] DOM_PK_KANA_MODE,
    input wire [63:0] DOM_PK_L,
    input wire [63:0] DOM_PK_LANG_1,
    input wire [63:0] DOM_PK_LANG_2,
    input wire [63:0] DOM_PK_LAUNCH_APP_1,
    input wire [63:0] DOM_PK_LAUNCH_APP_2,
    input wire [63:0] DOM_PK_LAUNCH_MAIL,
    input wire [63:0] DOM_PK_LAUNCH_MEDIA_PLAYER,
    input wire [63:0] DOM_PK_M,
    input wire [63:0] DOM_PK_MEDIA_PLAY_PAUSE,
    input wire [63:0] DOM_PK_MEDIA_SELECT,
    input wire [63:0] DOM_PK_MEDIA_STOP,
    input wire [63:0] DOM_PK_MEDIA_TRACK_NEXT,
    input wire [63:0] DOM_PK_MEDIA_TRACK_PREVIOUS,
    input wire [63:0] DOM_PK_META_LEFT,
    input wire [63:0] DOM_PK_META_RIGHT,
    input wire [63:0] DOM_PK_MINUS,
    input wire [63:0] DOM_PK_N,
    input wire [63:0] DOM_PK_NON_CONVERT,
    input wire [63:0] DOM_PK_NUMPAD_0,
    input wire [63:0] DOM_PK_NUMPAD_1,
    input wire [63:0] DOM_PK_NUMPAD_2,
    input wire [63:0] DOM_PK_NUMPAD_3,
    input wire [63:0] DOM_PK_NUMPAD_4,
    input wire [63:0] DOM_PK_NUMPAD_5,
    input wire [63:0] DOM_PK_NUMPAD_6,
    input wire [63:0] DOM_PK_NUMPAD_7,
    input wire [63:0] DOM_PK_NUMPAD_8,
    input wire [63:0] DOM_PK_NUMPAD_9,
    input wire [63:0] DOM_PK_NUMPAD_ADD,
    input wire [63:0] DOM_PK_NUMPAD_COMMA,
    input wire [63:0] DOM_PK_NUMPAD_DECIMAL,
    input wire [63:0] DOM_PK_NUMPAD_DIVIDE,
    input wire [63:0] DOM_PK_NUMPAD_ENTER,
    input wire [63:0] DOM_PK_NUMPAD_EQUAL,
    input wire [63:0] DOM_PK_NUMPAD_MULTIPLY,
    input wire [63:0] DOM_PK_NUMPAD_SUBTRACT,
    input wire [63:0] DOM_PK_NUM_LOCK,
    input wire [63:0] DOM_PK_O,
    input wire [63:0] DOM_PK_OS_LEFT,
    input wire [63:0] DOM_PK_OS_RIGHT,
    input wire [63:0] DOM_PK_P,
    input wire [63:0] DOM_PK_PAGE_DOWN,
    input wire [63:0] DOM_PK_PAGE_UP,
    input wire [63:0] DOM_PK_PASTE,
    input wire [63:0] DOM_PK_PAUSE,
    input wire [63:0] DOM_PK_PERIOD,
    input wire [63:0] DOM_PK_POWER,
    input wire [63:0] DOM_PK_PRINT_SCREEN,
    input wire [63:0] DOM_PK_Q,
    input wire [63:0] DOM_PK_QUOTE,
    input wire [63:0] DOM_PK_R,
    input wire [63:0] DOM_PK_S,
    input wire [63:0] DOM_PK_SCROLL_LOCK,
    input wire [63:0] DOM_PK_SEMICOLON,
    input wire [63:0] DOM_PK_SHIFT_LEFT,
    input wire [63:0] DOM_PK_SHIFT_RIGHT,
    input wire [63:0] DOM_PK_SLASH,
    input wire [63:0] DOM_PK_SPACE,
    input wire [63:0] DOM_PK_T,
    input wire [63:0] DOM_PK_TAB,
    input wire [63:0] DOM_PK_U,
    input wire [63:0] DOM_PK_UNKNOWN,
    input wire [63:0] DOM_PK_V,
    input wire [63:0] DOM_PK_W,
    input wire [63:0] DOM_PK_X,
    input wire [63:0] DOM_PK_Y,
    input wire [63:0] DOM_PK_Z,
    input wire [63:0] avm_lm24714_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm24714_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm24714_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm24714_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm24845_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm24845_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm24845_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm24845_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm24966_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm24966_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm24966_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm24966_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm25087_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm25087_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm25087_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm25087_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm25208_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm25208_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm25208_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm25208_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm25329_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm25329_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm25329_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm25329_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm254410_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm254410_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm254410_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm254410_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm255611_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm255611_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm255611_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm255611_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm256812_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm256812_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm256812_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm256812_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm258113_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm258113_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm258113_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm258113_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm259314_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm259314_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm259314_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm259314_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm260515_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm260515_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm260515_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm260515_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm261816_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm261816_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm261816_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm261816_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm263017_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm263017_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm263017_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm263017_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm264218_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm264218_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm264218_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm264218_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm265519_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm265519_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm265519_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm265519_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm266720_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm266720_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm266720_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm266720_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm268021_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm268021_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm268021_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm268021_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm269222_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm269222_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm269222_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm269222_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm270523_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm270523_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm270523_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm270523_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm271824_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm271824_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm271824_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm271824_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm273125_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm273125_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm273125_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm273125_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm274326_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm274326_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm274326_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm274326_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm275527_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm275527_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm275527_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm275527_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm276728_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm276728_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm276728_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm276728_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm278029_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm278029_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm278029_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm278029_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm279230_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm279230_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm279230_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm279230_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm280531_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm280531_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm280531_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm280531_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm281732_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm281732_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm281732_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm281732_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm283033_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm283033_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm283033_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm283033_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm284334_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm284334_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm284334_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm284334_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm285535_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm285535_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm285535_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm285535_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm287936_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm287936_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm287936_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm287936_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm290337_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm290337_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm290337_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm290337_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm291538_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm291538_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm291538_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm291538_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm292739_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm292739_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm292739_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm292739_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm293940_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm293940_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm293940_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm293940_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm295141_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm295141_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm295141_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm295141_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm297642_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm297642_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm297642_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm297642_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm298843_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm298843_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm298843_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm298843_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm300144_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm300144_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm300144_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm300144_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm301345_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm301345_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm301345_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm301345_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm302646_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm302646_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm302646_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm302646_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm303947_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm303947_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm303947_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm303947_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm305148_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm305148_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm305148_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm305148_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm306449_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm306449_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm306449_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm306449_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm307750_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm307750_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm307750_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm307750_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm309051_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm309051_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm309051_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm309051_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm310252_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm310252_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm310252_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm310252_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm311553_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm311553_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm311553_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm311553_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm312854_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm312854_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm312854_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm312854_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm313955_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm313955_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm313955_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm313955_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm315256_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm315256_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm315256_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm315256_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm316457_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm316457_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm316457_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm316457_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm317658_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm317658_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm317658_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm317658_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm318759_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm318759_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm318759_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm318759_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm319860_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm319860_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm319860_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm319860_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm320961_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm320961_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm320961_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm320961_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm322262_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm322262_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm322262_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm322262_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm323463_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm323463_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm323463_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm323463_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm324564_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm324564_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm324564_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm324564_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm325665_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm325665_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm325665_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm325665_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm326766_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm326766_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm326766_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm326766_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm327967_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm327967_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm327967_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm327967_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm329168_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm329168_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm329168_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm329168_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm330369_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm330369_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm330369_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm330369_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm331470_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm331470_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm331470_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm331470_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm332571_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm332571_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm332571_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm332571_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm333872_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm333872_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm333872_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm333872_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm335073_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm335073_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm335073_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm335073_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm336374_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm336374_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm336374_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm336374_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm337475_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm337475_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm337475_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm337475_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm338676_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm338676_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm338676_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm338676_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm339777_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm339777_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm339777_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm339777_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm340878_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm340878_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm340878_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm340878_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm342179_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm342179_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm342179_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm342179_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm343280_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm343280_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm343280_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm343280_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm344381_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm344381_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm344381_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm344381_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm345582_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm345582_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm345582_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm345582_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm346783_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm346783_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm346783_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm346783_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm348084_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm348084_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm348084_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm348084_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm349285_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm349285_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm349285_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm349285_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm350486_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm350486_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm350486_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm350486_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm351687_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm351687_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm351687_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm351687_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm352888_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm352888_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm352888_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm352888_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm353989_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm353989_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm353989_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm353989_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm355190_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm355190_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm355190_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm355190_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm356291_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm356291_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm356291_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm356291_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm357592_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm357592_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm357592_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm357592_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm358693_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm358693_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm358693_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm358693_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm359794_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm359794_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm359794_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm359794_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm360895_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm360895_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm360895_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm360895_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm362096_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm362096_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm362096_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm362096_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm363297_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm363297_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm363297_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm363297_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm364398_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm364398_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm364398_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm364398_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm365699_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm365699_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm365699_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm365699_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3668100_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3668100_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3668100_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3668100_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3681101_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3681101_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3681101_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3681101_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3693102_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3693102_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3693102_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3693102_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3706103_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3706103_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3706103_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3706103_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3718104_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3718104_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3718104_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3718104_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3731105_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3731105_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3731105_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3731105_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3743106_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3743106_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3743106_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3743106_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3755107_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3755107_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3755107_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3755107_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3767108_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3767108_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3767108_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3767108_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3778109_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3778109_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3778109_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3778109_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3789110_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3789110_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3789110_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3789110_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3801111_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3801111_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3801111_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3801111_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3812112_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3812112_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3812112_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3812112_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3824113_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3824113_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3824113_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3824113_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3836114_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3836114_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3836114_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3836114_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3849115_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3849115_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3849115_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3849115_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3862116_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3862116_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3862116_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3862116_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3874117_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3874117_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3874117_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3874117_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3886118_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3886118_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3886118_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3886118_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3897119_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3897119_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3897119_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3897119_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3908120_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3908120_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3908120_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3908120_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3919121_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3919121_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3919121_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3919121_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3931122_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3931122_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3931122_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3931122_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3942123_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3942123_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3942123_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3942123_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3953124_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3953124_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3953124_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3953124_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3965125_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3965125_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3965125_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3965125_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3977126_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3977126_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3977126_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3977126_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3988127_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3988127_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3988127_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3988127_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm3_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm3_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm3_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm3_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4000128_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4000128_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4000128_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4000128_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4012129_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4012129_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4012129_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4012129_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4024130_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4024130_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4024130_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4024130_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4036131_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4036131_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4036131_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4036131_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4047132_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4047132_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4047132_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4047132_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4058133_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4058133_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4058133_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4058133_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4070134_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4070134_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4070134_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4070134_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4081135_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4081135_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4081135_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4081135_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4092136_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4092136_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4092136_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4092136_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4103137_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4103137_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4103137_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4103137_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4115138_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4115138_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4115138_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4115138_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4126139_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4126139_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4126139_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4126139_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4137140_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4137140_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4137140_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4137140_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4148141_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4148141_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4148141_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4148141_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4160142_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4160142_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4160142_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4160142_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4172143_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4172143_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4172143_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4172143_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4185144_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4185144_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4185144_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4185144_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4198145_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4198145_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4198145_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4198145_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4210146_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4210146_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4210146_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4210146_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4221147_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4221147_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4221147_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4221147_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4233148_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4233148_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4233148_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4233148_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4245149_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4245149_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4245149_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4245149_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4257150_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4257150_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4257150_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4257150_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4268151_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4268151_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4268151_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4268151_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4279152_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4279152_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4279152_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4279152_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4290153_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4290153_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4290153_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4290153_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4302154_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4302154_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4302154_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4302154_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4314155_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4314155_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4314155_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4314155_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm4326156_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm4326156_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm4326156_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm4326156_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm58771_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm58771_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm58771_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm58771_emscripten_compute_dom_pk_code_writeack,
    input wire [63:0] avm_lm58812_emscripten_compute_dom_pk_code_readdata,
    input wire [0:0] avm_lm58812_emscripten_compute_dom_pk_code_readdatavalid,
    input wire [0:0] avm_lm58812_emscripten_compute_dom_pk_code_waitrequest,
    input wire [0:0] avm_lm58812_emscripten_compute_dom_pk_code_writeack,
    input wire [9919:0] avst_iord_bl_call_emscripten_compute_dom_pk_code_data,
    input wire [0:0] avst_iord_bl_call_emscripten_compute_dom_pk_code_valid,
    input wire [0:0] avst_iowr_bl_return_emscripten_compute_dom_pk_code_almostfull,
    input wire [0:0] avst_iowr_bl_return_emscripten_compute_dom_pk_code_ready,
    input wire [63:0] keyCodeString,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm24714_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm24714_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm24714_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm24714_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm24714_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm24714_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm24714_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm24845_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm24845_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm24845_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm24845_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm24845_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm24845_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm24845_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm24966_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm24966_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm24966_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm24966_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm24966_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm24966_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm24966_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm25087_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm25087_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm25087_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm25087_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm25087_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm25087_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm25087_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm25208_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm25208_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm25208_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm25208_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm25208_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm25208_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm25208_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm25329_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm25329_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm25329_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm25329_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm25329_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm25329_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm25329_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm254410_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm254410_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm254410_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm254410_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm254410_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm254410_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm254410_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm255611_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm255611_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm255611_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm255611_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm255611_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm255611_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm255611_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm256812_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm256812_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm256812_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm256812_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm256812_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm256812_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm256812_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm258113_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm258113_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm258113_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm258113_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm258113_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm258113_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm258113_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm259314_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm259314_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm259314_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm259314_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm259314_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm259314_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm259314_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm260515_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm260515_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm260515_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm260515_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm260515_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm260515_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm260515_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm261816_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm261816_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm261816_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm261816_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm261816_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm261816_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm261816_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm263017_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm263017_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm263017_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm263017_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm263017_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm263017_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm263017_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm264218_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm264218_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm264218_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm264218_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm264218_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm264218_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm264218_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm265519_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm265519_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm265519_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm265519_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm265519_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm265519_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm265519_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm266720_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm266720_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm266720_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm266720_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm266720_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm266720_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm266720_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm268021_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm268021_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm268021_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm268021_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm268021_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm268021_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm268021_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm269222_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm269222_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm269222_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm269222_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm269222_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm269222_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm269222_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm270523_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm270523_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm270523_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm270523_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm270523_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm270523_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm270523_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm271824_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm271824_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm271824_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm271824_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm271824_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm271824_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm271824_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm273125_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm273125_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm273125_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm273125_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm273125_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm273125_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm273125_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm274326_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm274326_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm274326_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm274326_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm274326_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm274326_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm274326_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm275527_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm275527_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm275527_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm275527_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm275527_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm275527_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm275527_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm276728_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm276728_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm276728_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm276728_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm276728_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm276728_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm276728_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm278029_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm278029_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm278029_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm278029_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm278029_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm278029_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm278029_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm279230_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm279230_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm279230_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm279230_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm279230_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm279230_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm279230_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm280531_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm280531_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm280531_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm280531_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm280531_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm280531_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm280531_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm281732_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm281732_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm281732_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm281732_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm281732_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm281732_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm281732_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm283033_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm283033_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm283033_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm283033_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm283033_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm283033_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm283033_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm284334_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm284334_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm284334_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm284334_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm284334_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm284334_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm284334_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm285535_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm285535_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm285535_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm285535_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm285535_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm285535_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm285535_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm287936_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm287936_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm287936_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm287936_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm287936_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm287936_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm287936_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm290337_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm290337_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm290337_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm290337_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm290337_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm290337_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm290337_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm291538_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm291538_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm291538_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm291538_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm291538_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm291538_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm291538_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm292739_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm292739_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm292739_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm292739_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm292739_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm292739_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm292739_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm293940_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm293940_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm293940_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm293940_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm293940_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm293940_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm293940_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm295141_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm295141_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm295141_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm295141_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm295141_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm295141_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm295141_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm297642_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm297642_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm297642_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm297642_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm297642_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm297642_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm297642_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm298843_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm298843_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm298843_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm298843_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm298843_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm298843_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm298843_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm300144_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm300144_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm300144_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm300144_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm300144_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm300144_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm300144_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm301345_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm301345_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm301345_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm301345_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm301345_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm301345_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm301345_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm302646_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm302646_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm302646_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm302646_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm302646_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm302646_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm302646_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm303947_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm303947_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm303947_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm303947_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm303947_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm303947_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm303947_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm305148_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm305148_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm305148_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm305148_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm305148_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm305148_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm305148_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm306449_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm306449_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm306449_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm306449_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm306449_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm306449_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm306449_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm307750_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm307750_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm307750_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm307750_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm307750_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm307750_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm307750_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm309051_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm309051_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm309051_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm309051_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm309051_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm309051_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm309051_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm310252_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm310252_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm310252_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm310252_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm310252_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm310252_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm310252_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm311553_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm311553_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm311553_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm311553_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm311553_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm311553_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm311553_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm312854_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm312854_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm312854_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm312854_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm312854_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm312854_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm312854_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm313955_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm313955_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm313955_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm313955_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm313955_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm313955_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm313955_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm315256_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm315256_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm315256_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm315256_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm315256_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm315256_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm315256_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm316457_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm316457_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm316457_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm316457_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm316457_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm316457_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm316457_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm317658_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm317658_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm317658_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm317658_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm317658_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm317658_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm317658_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm318759_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm318759_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm318759_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm318759_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm318759_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm318759_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm318759_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm319860_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm319860_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm319860_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm319860_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm319860_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm319860_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm319860_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm320961_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm320961_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm320961_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm320961_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm320961_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm320961_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm320961_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm322262_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm322262_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm322262_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm322262_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm322262_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm322262_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm322262_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm323463_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm323463_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm323463_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm323463_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm323463_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm323463_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm323463_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm324564_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm324564_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm324564_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm324564_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm324564_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm324564_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm324564_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm325665_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm325665_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm325665_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm325665_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm325665_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm325665_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm325665_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm326766_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm326766_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm326766_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm326766_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm326766_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm326766_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm326766_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm327967_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm327967_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm327967_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm327967_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm327967_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm327967_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm327967_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm329168_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm329168_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm329168_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm329168_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm329168_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm329168_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm329168_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm330369_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm330369_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm330369_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm330369_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm330369_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm330369_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm330369_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm331470_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm331470_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm331470_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm331470_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm331470_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm331470_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm331470_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm332571_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm332571_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm332571_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm332571_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm332571_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm332571_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm332571_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm333872_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm333872_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm333872_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm333872_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm333872_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm333872_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm333872_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm335073_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm335073_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm335073_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm335073_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm335073_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm335073_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm335073_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm336374_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm336374_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm336374_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm336374_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm336374_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm336374_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm336374_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm337475_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm337475_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm337475_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm337475_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm337475_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm337475_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm337475_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm338676_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm338676_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm338676_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm338676_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm338676_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm338676_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm338676_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm339777_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm339777_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm339777_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm339777_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm339777_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm339777_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm339777_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm340878_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm340878_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm340878_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm340878_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm340878_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm340878_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm340878_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm342179_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm342179_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm342179_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm342179_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm342179_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm342179_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm342179_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm343280_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm343280_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm343280_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm343280_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm343280_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm343280_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm343280_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm344381_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm344381_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm344381_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm344381_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm344381_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm344381_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm344381_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm345582_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm345582_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm345582_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm345582_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm345582_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm345582_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm345582_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm346783_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm346783_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm346783_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm346783_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm346783_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm346783_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm346783_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm348084_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm348084_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm348084_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm348084_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm348084_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm348084_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm348084_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm349285_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm349285_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm349285_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm349285_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm349285_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm349285_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm349285_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm350486_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm350486_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm350486_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm350486_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm350486_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm350486_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm350486_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm351687_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm351687_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm351687_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm351687_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm351687_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm351687_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm351687_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm352888_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm352888_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm352888_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm352888_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm352888_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm352888_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm352888_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm353989_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm353989_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm353989_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm353989_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm353989_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm353989_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm353989_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm355190_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm355190_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm355190_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm355190_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm355190_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm355190_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm355190_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm356291_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm356291_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm356291_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm356291_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm356291_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm356291_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm356291_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm357592_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm357592_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm357592_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm357592_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm357592_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm357592_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm357592_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm358693_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm358693_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm358693_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm358693_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm358693_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm358693_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm358693_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm359794_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm359794_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm359794_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm359794_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm359794_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm359794_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm359794_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm360895_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm360895_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm360895_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm360895_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm360895_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm360895_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm360895_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm362096_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm362096_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm362096_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm362096_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm362096_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm362096_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm362096_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm363297_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm363297_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm363297_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm363297_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm363297_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm363297_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm363297_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm364398_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm364398_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm364398_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm364398_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm364398_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm364398_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm364398_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm365699_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm365699_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm365699_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm365699_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm365699_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm365699_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm365699_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3668100_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3668100_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3668100_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3668100_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3668100_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3668100_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3668100_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3681101_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3681101_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3681101_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3681101_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3681101_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3681101_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3681101_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3693102_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3693102_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3693102_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3693102_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3693102_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3693102_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3693102_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3706103_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3706103_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3706103_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3706103_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3706103_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3706103_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3706103_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3718104_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3718104_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3718104_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3718104_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3718104_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3718104_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3718104_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3731105_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3731105_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3731105_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3731105_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3731105_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3731105_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3731105_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3743106_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3743106_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3743106_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3743106_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3743106_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3743106_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3743106_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3755107_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3755107_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3755107_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3755107_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3755107_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3755107_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3755107_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3767108_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3767108_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3767108_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3767108_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3767108_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3767108_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3767108_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3778109_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3778109_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3778109_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3778109_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3778109_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3778109_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3778109_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3789110_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3789110_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3789110_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3789110_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3789110_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3789110_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3789110_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3801111_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3801111_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3801111_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3801111_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3801111_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3801111_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3801111_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3812112_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3812112_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3812112_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3812112_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3812112_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3812112_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3812112_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3824113_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3824113_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3824113_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3824113_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3824113_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3824113_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3824113_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3836114_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3836114_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3836114_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3836114_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3836114_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3836114_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3836114_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3849115_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3849115_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3849115_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3849115_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3849115_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3849115_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3849115_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3862116_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3862116_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3862116_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3862116_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3862116_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3862116_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3862116_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3874117_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3874117_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3874117_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3874117_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3874117_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3874117_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3874117_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3886118_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3886118_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3886118_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3886118_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3886118_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3886118_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3886118_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3897119_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3897119_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3897119_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3897119_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3897119_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3897119_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3897119_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3908120_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3908120_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3908120_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3908120_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3908120_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3908120_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3908120_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3919121_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3919121_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3919121_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3919121_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3919121_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3919121_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3919121_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3931122_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3931122_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3931122_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3931122_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3931122_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3931122_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3931122_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3942123_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3942123_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3942123_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3942123_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3942123_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3942123_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3942123_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3953124_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3953124_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3953124_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3953124_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3953124_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3953124_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3953124_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3965125_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3965125_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3965125_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3965125_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3965125_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3965125_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3965125_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3977126_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3977126_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3977126_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3977126_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3977126_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3977126_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3977126_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3988127_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3988127_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3988127_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3988127_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3988127_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3988127_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3988127_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm3_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm3_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm3_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm3_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm3_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm3_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm3_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4000128_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4000128_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4000128_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4000128_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4000128_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4000128_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4000128_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4012129_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4012129_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4012129_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4012129_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4012129_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4012129_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4012129_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4024130_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4024130_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4024130_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4024130_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4024130_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4024130_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4024130_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4036131_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4036131_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4036131_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4036131_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4036131_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4036131_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4036131_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4047132_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4047132_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4047132_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4047132_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4047132_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4047132_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4047132_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4058133_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4058133_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4058133_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4058133_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4058133_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4058133_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4058133_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4070134_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4070134_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4070134_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4070134_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4070134_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4070134_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4070134_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4081135_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4081135_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4081135_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4081135_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4081135_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4081135_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4081135_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4092136_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4092136_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4092136_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4092136_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4092136_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4092136_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4092136_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4103137_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4103137_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4103137_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4103137_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4103137_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4103137_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4103137_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4115138_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4115138_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4115138_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4115138_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4115138_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4115138_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4115138_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4126139_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4126139_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4126139_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4126139_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4126139_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4126139_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4126139_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4137140_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4137140_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4137140_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4137140_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4137140_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4137140_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4137140_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4148141_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4148141_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4148141_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4148141_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4148141_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4148141_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4148141_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4160142_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4160142_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4160142_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4160142_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4160142_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4160142_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4160142_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4172143_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4172143_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4172143_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4172143_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4172143_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4172143_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4172143_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4185144_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4185144_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4185144_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4185144_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4185144_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4185144_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4185144_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4198145_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4198145_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4198145_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4198145_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4198145_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4198145_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4198145_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4210146_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4210146_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4210146_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4210146_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4210146_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4210146_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4210146_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4221147_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4221147_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4221147_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4221147_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4221147_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4221147_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4221147_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4233148_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4233148_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4233148_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4233148_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4233148_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4233148_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4233148_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4245149_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4245149_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4245149_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4245149_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4245149_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4245149_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4245149_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4257150_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4257150_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4257150_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4257150_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4257150_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4257150_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4257150_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4268151_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4268151_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4268151_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4268151_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4268151_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4268151_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4268151_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4279152_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4279152_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4279152_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4279152_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4279152_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4279152_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4279152_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4290153_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4290153_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4290153_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4290153_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4290153_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4290153_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4290153_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4302154_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4302154_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4302154_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4302154_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4302154_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4302154_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4302154_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4314155_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4314155_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4314155_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4314155_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4314155_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4314155_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4314155_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm4326156_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm4326156_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm4326156_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm4326156_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm4326156_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm4326156_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm4326156_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm58771_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm58771_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm58771_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm58771_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm58771_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm58771_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm58771_emscripten_compute_dom_pk_code_writedata,
    output wire [63:0] avm_lm58812_emscripten_compute_dom_pk_code_address,
    output wire [0:0] avm_lm58812_emscripten_compute_dom_pk_code_burstcount,
    output wire [7:0] avm_lm58812_emscripten_compute_dom_pk_code_byteenable,
    output wire [0:0] avm_lm58812_emscripten_compute_dom_pk_code_enable,
    output wire [0:0] avm_lm58812_emscripten_compute_dom_pk_code_read,
    output wire [0:0] avm_lm58812_emscripten_compute_dom_pk_code_write,
    output wire [63:0] avm_lm58812_emscripten_compute_dom_pk_code_writedata,
    output wire [0:0] avst_iord_bl_call_emscripten_compute_dom_pk_code_ready,
    output wire [31:0] avst_iowr_bl_return_emscripten_compute_dom_pk_code_data,
    output wire [0:0] avst_iowr_bl_return_emscripten_compute_dom_pk_code_valid,
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
    wire [0:0] emscripten_compute_dom_pk_code_function_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready;
    wire [31:0] emscripten_compute_dom_pk_code_function_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata;
    wire [9919:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,798)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {DOM_PK_Z, DOM_PK_Y, DOM_PK_X, DOM_PK_W, DOM_PK_V, DOM_PK_UNKNOWN, DOM_PK_U, DOM_PK_TAB, DOM_PK_T, DOM_PK_SPACE, DOM_PK_SLASH, DOM_PK_SHIFT_RIGHT, DOM_PK_SHIFT_LEFT, DOM_PK_SEMICOLON, DOM_PK_SCROLL_LOCK, DOM_PK_S, DOM_PK_R, DOM_PK_QUOTE, DOM_PK_Q, DOM_PK_PRINT_SCREEN, DOM_PK_POWER, DOM_PK_PERIOD, DOM_PK_PAUSE, DOM_PK_PASTE, DOM_PK_PAGE_UP, DOM_PK_PAGE_DOWN, DOM_PK_P, DOM_PK_OS_RIGHT, DOM_PK_OS_LEFT, DOM_PK_O, DOM_PK_NUM_LOCK, DOM_PK_NUMPAD_SUBTRACT, DOM_PK_NUMPAD_MULTIPLY, DOM_PK_NUMPAD_EQUAL, DOM_PK_NUMPAD_ENTER, DOM_PK_NUMPAD_DIVIDE, DOM_PK_NUMPAD_DECIMAL, DOM_PK_NUMPAD_COMMA, DOM_PK_NUMPAD_ADD, DOM_PK_NUMPAD_9, DOM_PK_NUMPAD_8, DOM_PK_NUMPAD_7, DOM_PK_NUMPAD_6, DOM_PK_NUMPAD_5, DOM_PK_NUMPAD_4, DOM_PK_NUMPAD_3, DOM_PK_NUMPAD_2, DOM_PK_NUMPAD_1, DOM_PK_NUMPAD_0, DOM_PK_NON_CONVERT, DOM_PK_N, DOM_PK_MINUS, DOM_PK_META_RIGHT, DOM_PK_META_LEFT, DOM_PK_MEDIA_TRACK_PREVIOUS, DOM_PK_MEDIA_TRACK_NEXT, DOM_PK_MEDIA_STOP, DOM_PK_MEDIA_SELECT, DOM_PK_MEDIA_PLAY_PAUSE, DOM_PK_M, DOM_PK_LAUNCH_MEDIA_PLAYER, DOM_PK_LAUNCH_MAIL, DOM_PK_LAUNCH_APP_2, DOM_PK_LAUNCH_APP_1, DOM_PK_LANG_2, DOM_PK_LANG_1, DOM_PK_L, DOM_PK_KANA_MODE, DOM_PK_K, DOM_PK_J, DOM_PK_INTL_YEN, DOM_PK_INTL_RO, DOM_PK_INTL_BACKSLASH, DOM_PK_INSERT, DOM_PK_I, DOM_PK_HOME, DOM_PK_HELP, DOM_PK_H, DOM_PK_G, DOM_PK_F9, DOM_PK_F8, DOM_PK_F7, DOM_PK_F6, DOM_PK_F5, DOM_PK_F4, DOM_PK_F3, DOM_PK_F24, DOM_PK_F23, DOM_PK_F22, DOM_PK_F21, DOM_PK_F20, DOM_PK_F2, DOM_PK_F19, DOM_PK_F18, DOM_PK_F17, DOM_PK_F16, DOM_PK_F15, DOM_PK_F14, DOM_PK_F13, DOM_PK_F12, DOM_PK_F11, DOM_PK_F10, DOM_PK_F1, DOM_PK_F, DOM_PK_ESCAPE, DOM_PK_EQUAL, DOM_PK_ENTER, DOM_PK_END, DOM_PK_EJECT, DOM_PK_E, DOM_PK_DELETE, DOM_PK_D, DOM_PK_CUT, DOM_PK_COPY, DOM_PK_CONVERT, DOM_PK_CONTROL_RIGHT, DOM_PK_CONTROL_LEFT, DOM_PK_CONTEXT_MENU, DOM_PK_COMMA, DOM_PK_CAPS_LOCK, DOM_PK_C, DOM_PK_BROWSER_STOP, DOM_PK_BROWSER_SEARCH, DOM_PK_BROWSER_REFRESH, DOM_PK_BROWSER_HOME, DOM_PK_BROWSER_FORWARD, DOM_PK_BROWSER_FAVORITES, DOM_PK_BROWSER_BACK, DOM_PK_BRACKET_RIGHT, DOM_PK_BRACKET_LEFT, DOM_PK_BACKSPACE, DOM_PK_BACKSLASH, DOM_PK_BACKQUOTE, DOM_PK_B, DOM_PK_AUDIO_VOLUME_UP, DOM_PK_AUDIO_VOLUME_MUTE, DOM_PK_AUDIO_VOLUME_DOWN, DOM_PK_ARROW_UP, DOM_PK_ARROW_RIGHT, DOM_PK_ARROW_LEFT, DOM_PK_ARROW_DOWN, DOM_PK_ALT_RIGHT, DOM_PK_ALT_LEFT, DOM_PK_A, DOM_PK_9, DOM_PK_8, DOM_PK_7, DOM_PK_6, DOM_PK_5, DOM_PK_4, DOM_PK_3, DOM_PK_2, DOM_PK_1, DOM_PK_0, keyCodeString};

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // emscripten_compute_dom_pk_code_function(BLACKBOX,7)
    emscripten_compute_dom_pk_code_function theemscripten_compute_dom_pk_code_function (
        .in_arg_call(call_const_q),
        .in_arg_keyCodeString(call_const_q),
        .in_arg_return1(call_const_q),
        .in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata(implicit_input_q),
        .in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid(start),
        .in_iowr_bl_return_emscripten_compute_dom_pk_code_i_fifoready(not_stall_q),
        .in_lm24714_emscripten_compute_dom_pk_code_avm_readdata(avm_lm24714_emscripten_compute_dom_pk_code_readdata),
        .in_lm24714_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm24714_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm24714_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm24714_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm24714_emscripten_compute_dom_pk_code_avm_writeack(avm_lm24714_emscripten_compute_dom_pk_code_writeack),
        .in_lm24845_emscripten_compute_dom_pk_code_avm_readdata(avm_lm24845_emscripten_compute_dom_pk_code_readdata),
        .in_lm24845_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm24845_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm24845_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm24845_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm24845_emscripten_compute_dom_pk_code_avm_writeack(avm_lm24845_emscripten_compute_dom_pk_code_writeack),
        .in_lm24966_emscripten_compute_dom_pk_code_avm_readdata(avm_lm24966_emscripten_compute_dom_pk_code_readdata),
        .in_lm24966_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm24966_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm24966_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm24966_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm24966_emscripten_compute_dom_pk_code_avm_writeack(avm_lm24966_emscripten_compute_dom_pk_code_writeack),
        .in_lm25087_emscripten_compute_dom_pk_code_avm_readdata(avm_lm25087_emscripten_compute_dom_pk_code_readdata),
        .in_lm25087_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm25087_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm25087_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm25087_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm25087_emscripten_compute_dom_pk_code_avm_writeack(avm_lm25087_emscripten_compute_dom_pk_code_writeack),
        .in_lm25208_emscripten_compute_dom_pk_code_avm_readdata(avm_lm25208_emscripten_compute_dom_pk_code_readdata),
        .in_lm25208_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm25208_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm25208_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm25208_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm25208_emscripten_compute_dom_pk_code_avm_writeack(avm_lm25208_emscripten_compute_dom_pk_code_writeack),
        .in_lm25329_emscripten_compute_dom_pk_code_avm_readdata(avm_lm25329_emscripten_compute_dom_pk_code_readdata),
        .in_lm25329_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm25329_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm25329_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm25329_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm25329_emscripten_compute_dom_pk_code_avm_writeack(avm_lm25329_emscripten_compute_dom_pk_code_writeack),
        .in_lm254410_emscripten_compute_dom_pk_code_avm_readdata(avm_lm254410_emscripten_compute_dom_pk_code_readdata),
        .in_lm254410_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm254410_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm254410_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm254410_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm254410_emscripten_compute_dom_pk_code_avm_writeack(avm_lm254410_emscripten_compute_dom_pk_code_writeack),
        .in_lm255611_emscripten_compute_dom_pk_code_avm_readdata(avm_lm255611_emscripten_compute_dom_pk_code_readdata),
        .in_lm255611_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm255611_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm255611_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm255611_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm255611_emscripten_compute_dom_pk_code_avm_writeack(avm_lm255611_emscripten_compute_dom_pk_code_writeack),
        .in_lm256812_emscripten_compute_dom_pk_code_avm_readdata(avm_lm256812_emscripten_compute_dom_pk_code_readdata),
        .in_lm256812_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm256812_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm256812_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm256812_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm256812_emscripten_compute_dom_pk_code_avm_writeack(avm_lm256812_emscripten_compute_dom_pk_code_writeack),
        .in_lm258113_emscripten_compute_dom_pk_code_avm_readdata(avm_lm258113_emscripten_compute_dom_pk_code_readdata),
        .in_lm258113_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm258113_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm258113_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm258113_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm258113_emscripten_compute_dom_pk_code_avm_writeack(avm_lm258113_emscripten_compute_dom_pk_code_writeack),
        .in_lm259314_emscripten_compute_dom_pk_code_avm_readdata(avm_lm259314_emscripten_compute_dom_pk_code_readdata),
        .in_lm259314_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm259314_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm259314_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm259314_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm259314_emscripten_compute_dom_pk_code_avm_writeack(avm_lm259314_emscripten_compute_dom_pk_code_writeack),
        .in_lm260515_emscripten_compute_dom_pk_code_avm_readdata(avm_lm260515_emscripten_compute_dom_pk_code_readdata),
        .in_lm260515_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm260515_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm260515_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm260515_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm260515_emscripten_compute_dom_pk_code_avm_writeack(avm_lm260515_emscripten_compute_dom_pk_code_writeack),
        .in_lm261816_emscripten_compute_dom_pk_code_avm_readdata(avm_lm261816_emscripten_compute_dom_pk_code_readdata),
        .in_lm261816_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm261816_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm261816_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm261816_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm261816_emscripten_compute_dom_pk_code_avm_writeack(avm_lm261816_emscripten_compute_dom_pk_code_writeack),
        .in_lm263017_emscripten_compute_dom_pk_code_avm_readdata(avm_lm263017_emscripten_compute_dom_pk_code_readdata),
        .in_lm263017_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm263017_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm263017_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm263017_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm263017_emscripten_compute_dom_pk_code_avm_writeack(avm_lm263017_emscripten_compute_dom_pk_code_writeack),
        .in_lm264218_emscripten_compute_dom_pk_code_avm_readdata(avm_lm264218_emscripten_compute_dom_pk_code_readdata),
        .in_lm264218_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm264218_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm264218_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm264218_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm264218_emscripten_compute_dom_pk_code_avm_writeack(avm_lm264218_emscripten_compute_dom_pk_code_writeack),
        .in_lm265519_emscripten_compute_dom_pk_code_avm_readdata(avm_lm265519_emscripten_compute_dom_pk_code_readdata),
        .in_lm265519_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm265519_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm265519_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm265519_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm265519_emscripten_compute_dom_pk_code_avm_writeack(avm_lm265519_emscripten_compute_dom_pk_code_writeack),
        .in_lm266720_emscripten_compute_dom_pk_code_avm_readdata(avm_lm266720_emscripten_compute_dom_pk_code_readdata),
        .in_lm266720_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm266720_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm266720_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm266720_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm266720_emscripten_compute_dom_pk_code_avm_writeack(avm_lm266720_emscripten_compute_dom_pk_code_writeack),
        .in_lm268021_emscripten_compute_dom_pk_code_avm_readdata(avm_lm268021_emscripten_compute_dom_pk_code_readdata),
        .in_lm268021_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm268021_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm268021_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm268021_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm268021_emscripten_compute_dom_pk_code_avm_writeack(avm_lm268021_emscripten_compute_dom_pk_code_writeack),
        .in_lm269222_emscripten_compute_dom_pk_code_avm_readdata(avm_lm269222_emscripten_compute_dom_pk_code_readdata),
        .in_lm269222_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm269222_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm269222_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm269222_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm269222_emscripten_compute_dom_pk_code_avm_writeack(avm_lm269222_emscripten_compute_dom_pk_code_writeack),
        .in_lm270523_emscripten_compute_dom_pk_code_avm_readdata(avm_lm270523_emscripten_compute_dom_pk_code_readdata),
        .in_lm270523_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm270523_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm270523_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm270523_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm270523_emscripten_compute_dom_pk_code_avm_writeack(avm_lm270523_emscripten_compute_dom_pk_code_writeack),
        .in_lm271824_emscripten_compute_dom_pk_code_avm_readdata(avm_lm271824_emscripten_compute_dom_pk_code_readdata),
        .in_lm271824_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm271824_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm271824_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm271824_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm271824_emscripten_compute_dom_pk_code_avm_writeack(avm_lm271824_emscripten_compute_dom_pk_code_writeack),
        .in_lm273125_emscripten_compute_dom_pk_code_avm_readdata(avm_lm273125_emscripten_compute_dom_pk_code_readdata),
        .in_lm273125_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm273125_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm273125_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm273125_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm273125_emscripten_compute_dom_pk_code_avm_writeack(avm_lm273125_emscripten_compute_dom_pk_code_writeack),
        .in_lm274326_emscripten_compute_dom_pk_code_avm_readdata(avm_lm274326_emscripten_compute_dom_pk_code_readdata),
        .in_lm274326_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm274326_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm274326_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm274326_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm274326_emscripten_compute_dom_pk_code_avm_writeack(avm_lm274326_emscripten_compute_dom_pk_code_writeack),
        .in_lm275527_emscripten_compute_dom_pk_code_avm_readdata(avm_lm275527_emscripten_compute_dom_pk_code_readdata),
        .in_lm275527_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm275527_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm275527_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm275527_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm275527_emscripten_compute_dom_pk_code_avm_writeack(avm_lm275527_emscripten_compute_dom_pk_code_writeack),
        .in_lm276728_emscripten_compute_dom_pk_code_avm_readdata(avm_lm276728_emscripten_compute_dom_pk_code_readdata),
        .in_lm276728_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm276728_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm276728_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm276728_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm276728_emscripten_compute_dom_pk_code_avm_writeack(avm_lm276728_emscripten_compute_dom_pk_code_writeack),
        .in_lm278029_emscripten_compute_dom_pk_code_avm_readdata(avm_lm278029_emscripten_compute_dom_pk_code_readdata),
        .in_lm278029_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm278029_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm278029_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm278029_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm278029_emscripten_compute_dom_pk_code_avm_writeack(avm_lm278029_emscripten_compute_dom_pk_code_writeack),
        .in_lm279230_emscripten_compute_dom_pk_code_avm_readdata(avm_lm279230_emscripten_compute_dom_pk_code_readdata),
        .in_lm279230_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm279230_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm279230_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm279230_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm279230_emscripten_compute_dom_pk_code_avm_writeack(avm_lm279230_emscripten_compute_dom_pk_code_writeack),
        .in_lm280531_emscripten_compute_dom_pk_code_avm_readdata(avm_lm280531_emscripten_compute_dom_pk_code_readdata),
        .in_lm280531_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm280531_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm280531_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm280531_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm280531_emscripten_compute_dom_pk_code_avm_writeack(avm_lm280531_emscripten_compute_dom_pk_code_writeack),
        .in_lm281732_emscripten_compute_dom_pk_code_avm_readdata(avm_lm281732_emscripten_compute_dom_pk_code_readdata),
        .in_lm281732_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm281732_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm281732_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm281732_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm281732_emscripten_compute_dom_pk_code_avm_writeack(avm_lm281732_emscripten_compute_dom_pk_code_writeack),
        .in_lm283033_emscripten_compute_dom_pk_code_avm_readdata(avm_lm283033_emscripten_compute_dom_pk_code_readdata),
        .in_lm283033_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm283033_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm283033_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm283033_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm283033_emscripten_compute_dom_pk_code_avm_writeack(avm_lm283033_emscripten_compute_dom_pk_code_writeack),
        .in_lm284334_emscripten_compute_dom_pk_code_avm_readdata(avm_lm284334_emscripten_compute_dom_pk_code_readdata),
        .in_lm284334_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm284334_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm284334_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm284334_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm284334_emscripten_compute_dom_pk_code_avm_writeack(avm_lm284334_emscripten_compute_dom_pk_code_writeack),
        .in_lm285535_emscripten_compute_dom_pk_code_avm_readdata(avm_lm285535_emscripten_compute_dom_pk_code_readdata),
        .in_lm285535_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm285535_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm285535_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm285535_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm285535_emscripten_compute_dom_pk_code_avm_writeack(avm_lm285535_emscripten_compute_dom_pk_code_writeack),
        .in_lm287936_emscripten_compute_dom_pk_code_avm_readdata(avm_lm287936_emscripten_compute_dom_pk_code_readdata),
        .in_lm287936_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm287936_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm287936_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm287936_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm287936_emscripten_compute_dom_pk_code_avm_writeack(avm_lm287936_emscripten_compute_dom_pk_code_writeack),
        .in_lm290337_emscripten_compute_dom_pk_code_avm_readdata(avm_lm290337_emscripten_compute_dom_pk_code_readdata),
        .in_lm290337_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm290337_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm290337_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm290337_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm290337_emscripten_compute_dom_pk_code_avm_writeack(avm_lm290337_emscripten_compute_dom_pk_code_writeack),
        .in_lm291538_emscripten_compute_dom_pk_code_avm_readdata(avm_lm291538_emscripten_compute_dom_pk_code_readdata),
        .in_lm291538_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm291538_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm291538_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm291538_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm291538_emscripten_compute_dom_pk_code_avm_writeack(avm_lm291538_emscripten_compute_dom_pk_code_writeack),
        .in_lm292739_emscripten_compute_dom_pk_code_avm_readdata(avm_lm292739_emscripten_compute_dom_pk_code_readdata),
        .in_lm292739_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm292739_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm292739_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm292739_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm292739_emscripten_compute_dom_pk_code_avm_writeack(avm_lm292739_emscripten_compute_dom_pk_code_writeack),
        .in_lm293940_emscripten_compute_dom_pk_code_avm_readdata(avm_lm293940_emscripten_compute_dom_pk_code_readdata),
        .in_lm293940_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm293940_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm293940_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm293940_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm293940_emscripten_compute_dom_pk_code_avm_writeack(avm_lm293940_emscripten_compute_dom_pk_code_writeack),
        .in_lm295141_emscripten_compute_dom_pk_code_avm_readdata(avm_lm295141_emscripten_compute_dom_pk_code_readdata),
        .in_lm295141_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm295141_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm295141_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm295141_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm295141_emscripten_compute_dom_pk_code_avm_writeack(avm_lm295141_emscripten_compute_dom_pk_code_writeack),
        .in_lm297642_emscripten_compute_dom_pk_code_avm_readdata(avm_lm297642_emscripten_compute_dom_pk_code_readdata),
        .in_lm297642_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm297642_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm297642_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm297642_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm297642_emscripten_compute_dom_pk_code_avm_writeack(avm_lm297642_emscripten_compute_dom_pk_code_writeack),
        .in_lm298843_emscripten_compute_dom_pk_code_avm_readdata(avm_lm298843_emscripten_compute_dom_pk_code_readdata),
        .in_lm298843_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm298843_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm298843_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm298843_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm298843_emscripten_compute_dom_pk_code_avm_writeack(avm_lm298843_emscripten_compute_dom_pk_code_writeack),
        .in_lm300144_emscripten_compute_dom_pk_code_avm_readdata(avm_lm300144_emscripten_compute_dom_pk_code_readdata),
        .in_lm300144_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm300144_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm300144_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm300144_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm300144_emscripten_compute_dom_pk_code_avm_writeack(avm_lm300144_emscripten_compute_dom_pk_code_writeack),
        .in_lm301345_emscripten_compute_dom_pk_code_avm_readdata(avm_lm301345_emscripten_compute_dom_pk_code_readdata),
        .in_lm301345_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm301345_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm301345_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm301345_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm301345_emscripten_compute_dom_pk_code_avm_writeack(avm_lm301345_emscripten_compute_dom_pk_code_writeack),
        .in_lm302646_emscripten_compute_dom_pk_code_avm_readdata(avm_lm302646_emscripten_compute_dom_pk_code_readdata),
        .in_lm302646_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm302646_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm302646_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm302646_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm302646_emscripten_compute_dom_pk_code_avm_writeack(avm_lm302646_emscripten_compute_dom_pk_code_writeack),
        .in_lm303947_emscripten_compute_dom_pk_code_avm_readdata(avm_lm303947_emscripten_compute_dom_pk_code_readdata),
        .in_lm303947_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm303947_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm303947_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm303947_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm303947_emscripten_compute_dom_pk_code_avm_writeack(avm_lm303947_emscripten_compute_dom_pk_code_writeack),
        .in_lm305148_emscripten_compute_dom_pk_code_avm_readdata(avm_lm305148_emscripten_compute_dom_pk_code_readdata),
        .in_lm305148_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm305148_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm305148_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm305148_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm305148_emscripten_compute_dom_pk_code_avm_writeack(avm_lm305148_emscripten_compute_dom_pk_code_writeack),
        .in_lm306449_emscripten_compute_dom_pk_code_avm_readdata(avm_lm306449_emscripten_compute_dom_pk_code_readdata),
        .in_lm306449_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm306449_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm306449_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm306449_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm306449_emscripten_compute_dom_pk_code_avm_writeack(avm_lm306449_emscripten_compute_dom_pk_code_writeack),
        .in_lm307750_emscripten_compute_dom_pk_code_avm_readdata(avm_lm307750_emscripten_compute_dom_pk_code_readdata),
        .in_lm307750_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm307750_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm307750_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm307750_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm307750_emscripten_compute_dom_pk_code_avm_writeack(avm_lm307750_emscripten_compute_dom_pk_code_writeack),
        .in_lm309051_emscripten_compute_dom_pk_code_avm_readdata(avm_lm309051_emscripten_compute_dom_pk_code_readdata),
        .in_lm309051_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm309051_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm309051_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm309051_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm309051_emscripten_compute_dom_pk_code_avm_writeack(avm_lm309051_emscripten_compute_dom_pk_code_writeack),
        .in_lm310252_emscripten_compute_dom_pk_code_avm_readdata(avm_lm310252_emscripten_compute_dom_pk_code_readdata),
        .in_lm310252_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm310252_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm310252_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm310252_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm310252_emscripten_compute_dom_pk_code_avm_writeack(avm_lm310252_emscripten_compute_dom_pk_code_writeack),
        .in_lm311553_emscripten_compute_dom_pk_code_avm_readdata(avm_lm311553_emscripten_compute_dom_pk_code_readdata),
        .in_lm311553_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm311553_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm311553_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm311553_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm311553_emscripten_compute_dom_pk_code_avm_writeack(avm_lm311553_emscripten_compute_dom_pk_code_writeack),
        .in_lm312854_emscripten_compute_dom_pk_code_avm_readdata(avm_lm312854_emscripten_compute_dom_pk_code_readdata),
        .in_lm312854_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm312854_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm312854_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm312854_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm312854_emscripten_compute_dom_pk_code_avm_writeack(avm_lm312854_emscripten_compute_dom_pk_code_writeack),
        .in_lm313955_emscripten_compute_dom_pk_code_avm_readdata(avm_lm313955_emscripten_compute_dom_pk_code_readdata),
        .in_lm313955_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm313955_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm313955_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm313955_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm313955_emscripten_compute_dom_pk_code_avm_writeack(avm_lm313955_emscripten_compute_dom_pk_code_writeack),
        .in_lm315256_emscripten_compute_dom_pk_code_avm_readdata(avm_lm315256_emscripten_compute_dom_pk_code_readdata),
        .in_lm315256_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm315256_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm315256_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm315256_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm315256_emscripten_compute_dom_pk_code_avm_writeack(avm_lm315256_emscripten_compute_dom_pk_code_writeack),
        .in_lm316457_emscripten_compute_dom_pk_code_avm_readdata(avm_lm316457_emscripten_compute_dom_pk_code_readdata),
        .in_lm316457_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm316457_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm316457_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm316457_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm316457_emscripten_compute_dom_pk_code_avm_writeack(avm_lm316457_emscripten_compute_dom_pk_code_writeack),
        .in_lm317658_emscripten_compute_dom_pk_code_avm_readdata(avm_lm317658_emscripten_compute_dom_pk_code_readdata),
        .in_lm317658_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm317658_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm317658_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm317658_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm317658_emscripten_compute_dom_pk_code_avm_writeack(avm_lm317658_emscripten_compute_dom_pk_code_writeack),
        .in_lm318759_emscripten_compute_dom_pk_code_avm_readdata(avm_lm318759_emscripten_compute_dom_pk_code_readdata),
        .in_lm318759_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm318759_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm318759_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm318759_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm318759_emscripten_compute_dom_pk_code_avm_writeack(avm_lm318759_emscripten_compute_dom_pk_code_writeack),
        .in_lm319860_emscripten_compute_dom_pk_code_avm_readdata(avm_lm319860_emscripten_compute_dom_pk_code_readdata),
        .in_lm319860_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm319860_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm319860_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm319860_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm319860_emscripten_compute_dom_pk_code_avm_writeack(avm_lm319860_emscripten_compute_dom_pk_code_writeack),
        .in_lm320961_emscripten_compute_dom_pk_code_avm_readdata(avm_lm320961_emscripten_compute_dom_pk_code_readdata),
        .in_lm320961_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm320961_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm320961_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm320961_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm320961_emscripten_compute_dom_pk_code_avm_writeack(avm_lm320961_emscripten_compute_dom_pk_code_writeack),
        .in_lm322262_emscripten_compute_dom_pk_code_avm_readdata(avm_lm322262_emscripten_compute_dom_pk_code_readdata),
        .in_lm322262_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm322262_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm322262_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm322262_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm322262_emscripten_compute_dom_pk_code_avm_writeack(avm_lm322262_emscripten_compute_dom_pk_code_writeack),
        .in_lm323463_emscripten_compute_dom_pk_code_avm_readdata(avm_lm323463_emscripten_compute_dom_pk_code_readdata),
        .in_lm323463_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm323463_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm323463_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm323463_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm323463_emscripten_compute_dom_pk_code_avm_writeack(avm_lm323463_emscripten_compute_dom_pk_code_writeack),
        .in_lm324564_emscripten_compute_dom_pk_code_avm_readdata(avm_lm324564_emscripten_compute_dom_pk_code_readdata),
        .in_lm324564_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm324564_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm324564_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm324564_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm324564_emscripten_compute_dom_pk_code_avm_writeack(avm_lm324564_emscripten_compute_dom_pk_code_writeack),
        .in_lm325665_emscripten_compute_dom_pk_code_avm_readdata(avm_lm325665_emscripten_compute_dom_pk_code_readdata),
        .in_lm325665_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm325665_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm325665_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm325665_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm325665_emscripten_compute_dom_pk_code_avm_writeack(avm_lm325665_emscripten_compute_dom_pk_code_writeack),
        .in_lm326766_emscripten_compute_dom_pk_code_avm_readdata(avm_lm326766_emscripten_compute_dom_pk_code_readdata),
        .in_lm326766_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm326766_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm326766_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm326766_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm326766_emscripten_compute_dom_pk_code_avm_writeack(avm_lm326766_emscripten_compute_dom_pk_code_writeack),
        .in_lm327967_emscripten_compute_dom_pk_code_avm_readdata(avm_lm327967_emscripten_compute_dom_pk_code_readdata),
        .in_lm327967_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm327967_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm327967_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm327967_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm327967_emscripten_compute_dom_pk_code_avm_writeack(avm_lm327967_emscripten_compute_dom_pk_code_writeack),
        .in_lm329168_emscripten_compute_dom_pk_code_avm_readdata(avm_lm329168_emscripten_compute_dom_pk_code_readdata),
        .in_lm329168_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm329168_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm329168_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm329168_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm329168_emscripten_compute_dom_pk_code_avm_writeack(avm_lm329168_emscripten_compute_dom_pk_code_writeack),
        .in_lm330369_emscripten_compute_dom_pk_code_avm_readdata(avm_lm330369_emscripten_compute_dom_pk_code_readdata),
        .in_lm330369_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm330369_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm330369_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm330369_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm330369_emscripten_compute_dom_pk_code_avm_writeack(avm_lm330369_emscripten_compute_dom_pk_code_writeack),
        .in_lm331470_emscripten_compute_dom_pk_code_avm_readdata(avm_lm331470_emscripten_compute_dom_pk_code_readdata),
        .in_lm331470_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm331470_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm331470_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm331470_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm331470_emscripten_compute_dom_pk_code_avm_writeack(avm_lm331470_emscripten_compute_dom_pk_code_writeack),
        .in_lm332571_emscripten_compute_dom_pk_code_avm_readdata(avm_lm332571_emscripten_compute_dom_pk_code_readdata),
        .in_lm332571_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm332571_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm332571_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm332571_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm332571_emscripten_compute_dom_pk_code_avm_writeack(avm_lm332571_emscripten_compute_dom_pk_code_writeack),
        .in_lm333872_emscripten_compute_dom_pk_code_avm_readdata(avm_lm333872_emscripten_compute_dom_pk_code_readdata),
        .in_lm333872_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm333872_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm333872_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm333872_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm333872_emscripten_compute_dom_pk_code_avm_writeack(avm_lm333872_emscripten_compute_dom_pk_code_writeack),
        .in_lm335073_emscripten_compute_dom_pk_code_avm_readdata(avm_lm335073_emscripten_compute_dom_pk_code_readdata),
        .in_lm335073_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm335073_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm335073_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm335073_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm335073_emscripten_compute_dom_pk_code_avm_writeack(avm_lm335073_emscripten_compute_dom_pk_code_writeack),
        .in_lm336374_emscripten_compute_dom_pk_code_avm_readdata(avm_lm336374_emscripten_compute_dom_pk_code_readdata),
        .in_lm336374_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm336374_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm336374_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm336374_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm336374_emscripten_compute_dom_pk_code_avm_writeack(avm_lm336374_emscripten_compute_dom_pk_code_writeack),
        .in_lm337475_emscripten_compute_dom_pk_code_avm_readdata(avm_lm337475_emscripten_compute_dom_pk_code_readdata),
        .in_lm337475_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm337475_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm337475_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm337475_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm337475_emscripten_compute_dom_pk_code_avm_writeack(avm_lm337475_emscripten_compute_dom_pk_code_writeack),
        .in_lm338676_emscripten_compute_dom_pk_code_avm_readdata(avm_lm338676_emscripten_compute_dom_pk_code_readdata),
        .in_lm338676_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm338676_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm338676_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm338676_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm338676_emscripten_compute_dom_pk_code_avm_writeack(avm_lm338676_emscripten_compute_dom_pk_code_writeack),
        .in_lm339777_emscripten_compute_dom_pk_code_avm_readdata(avm_lm339777_emscripten_compute_dom_pk_code_readdata),
        .in_lm339777_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm339777_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm339777_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm339777_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm339777_emscripten_compute_dom_pk_code_avm_writeack(avm_lm339777_emscripten_compute_dom_pk_code_writeack),
        .in_lm340878_emscripten_compute_dom_pk_code_avm_readdata(avm_lm340878_emscripten_compute_dom_pk_code_readdata),
        .in_lm340878_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm340878_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm340878_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm340878_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm340878_emscripten_compute_dom_pk_code_avm_writeack(avm_lm340878_emscripten_compute_dom_pk_code_writeack),
        .in_lm342179_emscripten_compute_dom_pk_code_avm_readdata(avm_lm342179_emscripten_compute_dom_pk_code_readdata),
        .in_lm342179_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm342179_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm342179_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm342179_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm342179_emscripten_compute_dom_pk_code_avm_writeack(avm_lm342179_emscripten_compute_dom_pk_code_writeack),
        .in_lm343280_emscripten_compute_dom_pk_code_avm_readdata(avm_lm343280_emscripten_compute_dom_pk_code_readdata),
        .in_lm343280_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm343280_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm343280_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm343280_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm343280_emscripten_compute_dom_pk_code_avm_writeack(avm_lm343280_emscripten_compute_dom_pk_code_writeack),
        .in_lm344381_emscripten_compute_dom_pk_code_avm_readdata(avm_lm344381_emscripten_compute_dom_pk_code_readdata),
        .in_lm344381_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm344381_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm344381_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm344381_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm344381_emscripten_compute_dom_pk_code_avm_writeack(avm_lm344381_emscripten_compute_dom_pk_code_writeack),
        .in_lm345582_emscripten_compute_dom_pk_code_avm_readdata(avm_lm345582_emscripten_compute_dom_pk_code_readdata),
        .in_lm345582_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm345582_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm345582_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm345582_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm345582_emscripten_compute_dom_pk_code_avm_writeack(avm_lm345582_emscripten_compute_dom_pk_code_writeack),
        .in_lm346783_emscripten_compute_dom_pk_code_avm_readdata(avm_lm346783_emscripten_compute_dom_pk_code_readdata),
        .in_lm346783_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm346783_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm346783_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm346783_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm346783_emscripten_compute_dom_pk_code_avm_writeack(avm_lm346783_emscripten_compute_dom_pk_code_writeack),
        .in_lm348084_emscripten_compute_dom_pk_code_avm_readdata(avm_lm348084_emscripten_compute_dom_pk_code_readdata),
        .in_lm348084_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm348084_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm348084_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm348084_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm348084_emscripten_compute_dom_pk_code_avm_writeack(avm_lm348084_emscripten_compute_dom_pk_code_writeack),
        .in_lm349285_emscripten_compute_dom_pk_code_avm_readdata(avm_lm349285_emscripten_compute_dom_pk_code_readdata),
        .in_lm349285_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm349285_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm349285_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm349285_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm349285_emscripten_compute_dom_pk_code_avm_writeack(avm_lm349285_emscripten_compute_dom_pk_code_writeack),
        .in_lm350486_emscripten_compute_dom_pk_code_avm_readdata(avm_lm350486_emscripten_compute_dom_pk_code_readdata),
        .in_lm350486_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm350486_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm350486_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm350486_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm350486_emscripten_compute_dom_pk_code_avm_writeack(avm_lm350486_emscripten_compute_dom_pk_code_writeack),
        .in_lm351687_emscripten_compute_dom_pk_code_avm_readdata(avm_lm351687_emscripten_compute_dom_pk_code_readdata),
        .in_lm351687_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm351687_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm351687_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm351687_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm351687_emscripten_compute_dom_pk_code_avm_writeack(avm_lm351687_emscripten_compute_dom_pk_code_writeack),
        .in_lm352888_emscripten_compute_dom_pk_code_avm_readdata(avm_lm352888_emscripten_compute_dom_pk_code_readdata),
        .in_lm352888_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm352888_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm352888_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm352888_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm352888_emscripten_compute_dom_pk_code_avm_writeack(avm_lm352888_emscripten_compute_dom_pk_code_writeack),
        .in_lm353989_emscripten_compute_dom_pk_code_avm_readdata(avm_lm353989_emscripten_compute_dom_pk_code_readdata),
        .in_lm353989_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm353989_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm353989_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm353989_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm353989_emscripten_compute_dom_pk_code_avm_writeack(avm_lm353989_emscripten_compute_dom_pk_code_writeack),
        .in_lm355190_emscripten_compute_dom_pk_code_avm_readdata(avm_lm355190_emscripten_compute_dom_pk_code_readdata),
        .in_lm355190_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm355190_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm355190_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm355190_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm355190_emscripten_compute_dom_pk_code_avm_writeack(avm_lm355190_emscripten_compute_dom_pk_code_writeack),
        .in_lm356291_emscripten_compute_dom_pk_code_avm_readdata(avm_lm356291_emscripten_compute_dom_pk_code_readdata),
        .in_lm356291_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm356291_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm356291_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm356291_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm356291_emscripten_compute_dom_pk_code_avm_writeack(avm_lm356291_emscripten_compute_dom_pk_code_writeack),
        .in_lm357592_emscripten_compute_dom_pk_code_avm_readdata(avm_lm357592_emscripten_compute_dom_pk_code_readdata),
        .in_lm357592_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm357592_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm357592_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm357592_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm357592_emscripten_compute_dom_pk_code_avm_writeack(avm_lm357592_emscripten_compute_dom_pk_code_writeack),
        .in_lm358693_emscripten_compute_dom_pk_code_avm_readdata(avm_lm358693_emscripten_compute_dom_pk_code_readdata),
        .in_lm358693_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm358693_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm358693_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm358693_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm358693_emscripten_compute_dom_pk_code_avm_writeack(avm_lm358693_emscripten_compute_dom_pk_code_writeack),
        .in_lm359794_emscripten_compute_dom_pk_code_avm_readdata(avm_lm359794_emscripten_compute_dom_pk_code_readdata),
        .in_lm359794_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm359794_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm359794_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm359794_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm359794_emscripten_compute_dom_pk_code_avm_writeack(avm_lm359794_emscripten_compute_dom_pk_code_writeack),
        .in_lm360895_emscripten_compute_dom_pk_code_avm_readdata(avm_lm360895_emscripten_compute_dom_pk_code_readdata),
        .in_lm360895_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm360895_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm360895_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm360895_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm360895_emscripten_compute_dom_pk_code_avm_writeack(avm_lm360895_emscripten_compute_dom_pk_code_writeack),
        .in_lm362096_emscripten_compute_dom_pk_code_avm_readdata(avm_lm362096_emscripten_compute_dom_pk_code_readdata),
        .in_lm362096_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm362096_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm362096_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm362096_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm362096_emscripten_compute_dom_pk_code_avm_writeack(avm_lm362096_emscripten_compute_dom_pk_code_writeack),
        .in_lm363297_emscripten_compute_dom_pk_code_avm_readdata(avm_lm363297_emscripten_compute_dom_pk_code_readdata),
        .in_lm363297_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm363297_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm363297_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm363297_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm363297_emscripten_compute_dom_pk_code_avm_writeack(avm_lm363297_emscripten_compute_dom_pk_code_writeack),
        .in_lm364398_emscripten_compute_dom_pk_code_avm_readdata(avm_lm364398_emscripten_compute_dom_pk_code_readdata),
        .in_lm364398_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm364398_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm364398_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm364398_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm364398_emscripten_compute_dom_pk_code_avm_writeack(avm_lm364398_emscripten_compute_dom_pk_code_writeack),
        .in_lm365699_emscripten_compute_dom_pk_code_avm_readdata(avm_lm365699_emscripten_compute_dom_pk_code_readdata),
        .in_lm365699_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm365699_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm365699_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm365699_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm365699_emscripten_compute_dom_pk_code_avm_writeack(avm_lm365699_emscripten_compute_dom_pk_code_writeack),
        .in_lm3668100_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3668100_emscripten_compute_dom_pk_code_readdata),
        .in_lm3668100_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3668100_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3668100_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3668100_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3668100_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3668100_emscripten_compute_dom_pk_code_writeack),
        .in_lm3681101_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3681101_emscripten_compute_dom_pk_code_readdata),
        .in_lm3681101_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3681101_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3681101_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3681101_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3681101_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3681101_emscripten_compute_dom_pk_code_writeack),
        .in_lm3693102_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3693102_emscripten_compute_dom_pk_code_readdata),
        .in_lm3693102_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3693102_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3693102_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3693102_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3693102_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3693102_emscripten_compute_dom_pk_code_writeack),
        .in_lm3706103_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3706103_emscripten_compute_dom_pk_code_readdata),
        .in_lm3706103_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3706103_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3706103_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3706103_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3706103_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3706103_emscripten_compute_dom_pk_code_writeack),
        .in_lm3718104_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3718104_emscripten_compute_dom_pk_code_readdata),
        .in_lm3718104_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3718104_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3718104_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3718104_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3718104_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3718104_emscripten_compute_dom_pk_code_writeack),
        .in_lm3731105_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3731105_emscripten_compute_dom_pk_code_readdata),
        .in_lm3731105_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3731105_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3731105_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3731105_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3731105_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3731105_emscripten_compute_dom_pk_code_writeack),
        .in_lm3743106_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3743106_emscripten_compute_dom_pk_code_readdata),
        .in_lm3743106_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3743106_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3743106_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3743106_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3743106_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3743106_emscripten_compute_dom_pk_code_writeack),
        .in_lm3755107_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3755107_emscripten_compute_dom_pk_code_readdata),
        .in_lm3755107_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3755107_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3755107_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3755107_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3755107_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3755107_emscripten_compute_dom_pk_code_writeack),
        .in_lm3767108_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3767108_emscripten_compute_dom_pk_code_readdata),
        .in_lm3767108_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3767108_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3767108_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3767108_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3767108_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3767108_emscripten_compute_dom_pk_code_writeack),
        .in_lm3778109_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3778109_emscripten_compute_dom_pk_code_readdata),
        .in_lm3778109_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3778109_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3778109_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3778109_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3778109_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3778109_emscripten_compute_dom_pk_code_writeack),
        .in_lm3789110_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3789110_emscripten_compute_dom_pk_code_readdata),
        .in_lm3789110_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3789110_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3789110_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3789110_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3789110_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3789110_emscripten_compute_dom_pk_code_writeack),
        .in_lm3801111_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3801111_emscripten_compute_dom_pk_code_readdata),
        .in_lm3801111_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3801111_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3801111_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3801111_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3801111_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3801111_emscripten_compute_dom_pk_code_writeack),
        .in_lm3812112_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3812112_emscripten_compute_dom_pk_code_readdata),
        .in_lm3812112_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3812112_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3812112_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3812112_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3812112_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3812112_emscripten_compute_dom_pk_code_writeack),
        .in_lm3824113_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3824113_emscripten_compute_dom_pk_code_readdata),
        .in_lm3824113_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3824113_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3824113_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3824113_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3824113_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3824113_emscripten_compute_dom_pk_code_writeack),
        .in_lm3836114_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3836114_emscripten_compute_dom_pk_code_readdata),
        .in_lm3836114_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3836114_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3836114_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3836114_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3836114_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3836114_emscripten_compute_dom_pk_code_writeack),
        .in_lm3849115_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3849115_emscripten_compute_dom_pk_code_readdata),
        .in_lm3849115_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3849115_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3849115_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3849115_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3849115_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3849115_emscripten_compute_dom_pk_code_writeack),
        .in_lm3862116_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3862116_emscripten_compute_dom_pk_code_readdata),
        .in_lm3862116_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3862116_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3862116_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3862116_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3862116_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3862116_emscripten_compute_dom_pk_code_writeack),
        .in_lm3874117_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3874117_emscripten_compute_dom_pk_code_readdata),
        .in_lm3874117_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3874117_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3874117_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3874117_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3874117_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3874117_emscripten_compute_dom_pk_code_writeack),
        .in_lm3886118_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3886118_emscripten_compute_dom_pk_code_readdata),
        .in_lm3886118_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3886118_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3886118_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3886118_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3886118_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3886118_emscripten_compute_dom_pk_code_writeack),
        .in_lm3897119_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3897119_emscripten_compute_dom_pk_code_readdata),
        .in_lm3897119_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3897119_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3897119_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3897119_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3897119_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3897119_emscripten_compute_dom_pk_code_writeack),
        .in_lm3908120_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3908120_emscripten_compute_dom_pk_code_readdata),
        .in_lm3908120_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3908120_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3908120_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3908120_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3908120_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3908120_emscripten_compute_dom_pk_code_writeack),
        .in_lm3919121_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3919121_emscripten_compute_dom_pk_code_readdata),
        .in_lm3919121_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3919121_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3919121_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3919121_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3919121_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3919121_emscripten_compute_dom_pk_code_writeack),
        .in_lm3931122_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3931122_emscripten_compute_dom_pk_code_readdata),
        .in_lm3931122_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3931122_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3931122_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3931122_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3931122_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3931122_emscripten_compute_dom_pk_code_writeack),
        .in_lm3942123_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3942123_emscripten_compute_dom_pk_code_readdata),
        .in_lm3942123_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3942123_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3942123_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3942123_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3942123_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3942123_emscripten_compute_dom_pk_code_writeack),
        .in_lm3953124_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3953124_emscripten_compute_dom_pk_code_readdata),
        .in_lm3953124_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3953124_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3953124_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3953124_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3953124_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3953124_emscripten_compute_dom_pk_code_writeack),
        .in_lm3965125_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3965125_emscripten_compute_dom_pk_code_readdata),
        .in_lm3965125_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3965125_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3965125_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3965125_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3965125_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3965125_emscripten_compute_dom_pk_code_writeack),
        .in_lm3977126_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3977126_emscripten_compute_dom_pk_code_readdata),
        .in_lm3977126_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3977126_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3977126_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3977126_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3977126_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3977126_emscripten_compute_dom_pk_code_writeack),
        .in_lm3988127_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3988127_emscripten_compute_dom_pk_code_readdata),
        .in_lm3988127_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3988127_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3988127_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3988127_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3988127_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3988127_emscripten_compute_dom_pk_code_writeack),
        .in_lm3_emscripten_compute_dom_pk_code_avm_readdata(avm_lm3_emscripten_compute_dom_pk_code_readdata),
        .in_lm3_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm3_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm3_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm3_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm3_emscripten_compute_dom_pk_code_avm_writeack(avm_lm3_emscripten_compute_dom_pk_code_writeack),
        .in_lm4000128_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4000128_emscripten_compute_dom_pk_code_readdata),
        .in_lm4000128_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4000128_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4000128_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4000128_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4000128_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4000128_emscripten_compute_dom_pk_code_writeack),
        .in_lm4012129_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4012129_emscripten_compute_dom_pk_code_readdata),
        .in_lm4012129_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4012129_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4012129_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4012129_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4012129_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4012129_emscripten_compute_dom_pk_code_writeack),
        .in_lm4024130_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4024130_emscripten_compute_dom_pk_code_readdata),
        .in_lm4024130_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4024130_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4024130_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4024130_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4024130_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4024130_emscripten_compute_dom_pk_code_writeack),
        .in_lm4036131_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4036131_emscripten_compute_dom_pk_code_readdata),
        .in_lm4036131_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4036131_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4036131_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4036131_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4036131_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4036131_emscripten_compute_dom_pk_code_writeack),
        .in_lm4047132_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4047132_emscripten_compute_dom_pk_code_readdata),
        .in_lm4047132_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4047132_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4047132_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4047132_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4047132_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4047132_emscripten_compute_dom_pk_code_writeack),
        .in_lm4058133_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4058133_emscripten_compute_dom_pk_code_readdata),
        .in_lm4058133_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4058133_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4058133_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4058133_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4058133_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4058133_emscripten_compute_dom_pk_code_writeack),
        .in_lm4070134_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4070134_emscripten_compute_dom_pk_code_readdata),
        .in_lm4070134_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4070134_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4070134_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4070134_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4070134_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4070134_emscripten_compute_dom_pk_code_writeack),
        .in_lm4081135_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4081135_emscripten_compute_dom_pk_code_readdata),
        .in_lm4081135_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4081135_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4081135_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4081135_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4081135_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4081135_emscripten_compute_dom_pk_code_writeack),
        .in_lm4092136_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4092136_emscripten_compute_dom_pk_code_readdata),
        .in_lm4092136_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4092136_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4092136_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4092136_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4092136_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4092136_emscripten_compute_dom_pk_code_writeack),
        .in_lm4103137_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4103137_emscripten_compute_dom_pk_code_readdata),
        .in_lm4103137_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4103137_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4103137_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4103137_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4103137_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4103137_emscripten_compute_dom_pk_code_writeack),
        .in_lm4115138_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4115138_emscripten_compute_dom_pk_code_readdata),
        .in_lm4115138_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4115138_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4115138_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4115138_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4115138_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4115138_emscripten_compute_dom_pk_code_writeack),
        .in_lm4126139_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4126139_emscripten_compute_dom_pk_code_readdata),
        .in_lm4126139_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4126139_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4126139_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4126139_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4126139_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4126139_emscripten_compute_dom_pk_code_writeack),
        .in_lm4137140_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4137140_emscripten_compute_dom_pk_code_readdata),
        .in_lm4137140_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4137140_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4137140_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4137140_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4137140_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4137140_emscripten_compute_dom_pk_code_writeack),
        .in_lm4148141_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4148141_emscripten_compute_dom_pk_code_readdata),
        .in_lm4148141_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4148141_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4148141_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4148141_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4148141_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4148141_emscripten_compute_dom_pk_code_writeack),
        .in_lm4160142_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4160142_emscripten_compute_dom_pk_code_readdata),
        .in_lm4160142_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4160142_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4160142_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4160142_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4160142_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4160142_emscripten_compute_dom_pk_code_writeack),
        .in_lm4172143_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4172143_emscripten_compute_dom_pk_code_readdata),
        .in_lm4172143_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4172143_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4172143_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4172143_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4172143_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4172143_emscripten_compute_dom_pk_code_writeack),
        .in_lm4185144_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4185144_emscripten_compute_dom_pk_code_readdata),
        .in_lm4185144_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4185144_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4185144_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4185144_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4185144_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4185144_emscripten_compute_dom_pk_code_writeack),
        .in_lm4198145_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4198145_emscripten_compute_dom_pk_code_readdata),
        .in_lm4198145_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4198145_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4198145_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4198145_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4198145_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4198145_emscripten_compute_dom_pk_code_writeack),
        .in_lm4210146_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4210146_emscripten_compute_dom_pk_code_readdata),
        .in_lm4210146_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4210146_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4210146_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4210146_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4210146_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4210146_emscripten_compute_dom_pk_code_writeack),
        .in_lm4221147_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4221147_emscripten_compute_dom_pk_code_readdata),
        .in_lm4221147_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4221147_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4221147_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4221147_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4221147_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4221147_emscripten_compute_dom_pk_code_writeack),
        .in_lm4233148_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4233148_emscripten_compute_dom_pk_code_readdata),
        .in_lm4233148_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4233148_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4233148_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4233148_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4233148_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4233148_emscripten_compute_dom_pk_code_writeack),
        .in_lm4245149_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4245149_emscripten_compute_dom_pk_code_readdata),
        .in_lm4245149_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4245149_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4245149_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4245149_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4245149_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4245149_emscripten_compute_dom_pk_code_writeack),
        .in_lm4257150_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4257150_emscripten_compute_dom_pk_code_readdata),
        .in_lm4257150_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4257150_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4257150_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4257150_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4257150_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4257150_emscripten_compute_dom_pk_code_writeack),
        .in_lm4268151_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4268151_emscripten_compute_dom_pk_code_readdata),
        .in_lm4268151_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4268151_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4268151_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4268151_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4268151_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4268151_emscripten_compute_dom_pk_code_writeack),
        .in_lm4279152_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4279152_emscripten_compute_dom_pk_code_readdata),
        .in_lm4279152_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4279152_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4279152_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4279152_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4279152_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4279152_emscripten_compute_dom_pk_code_writeack),
        .in_lm4290153_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4290153_emscripten_compute_dom_pk_code_readdata),
        .in_lm4290153_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4290153_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4290153_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4290153_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4290153_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4290153_emscripten_compute_dom_pk_code_writeack),
        .in_lm4302154_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4302154_emscripten_compute_dom_pk_code_readdata),
        .in_lm4302154_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4302154_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4302154_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4302154_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4302154_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4302154_emscripten_compute_dom_pk_code_writeack),
        .in_lm4314155_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4314155_emscripten_compute_dom_pk_code_readdata),
        .in_lm4314155_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4314155_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4314155_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4314155_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4314155_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4314155_emscripten_compute_dom_pk_code_writeack),
        .in_lm4326156_emscripten_compute_dom_pk_code_avm_readdata(avm_lm4326156_emscripten_compute_dom_pk_code_readdata),
        .in_lm4326156_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm4326156_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm4326156_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm4326156_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm4326156_emscripten_compute_dom_pk_code_avm_writeack(avm_lm4326156_emscripten_compute_dom_pk_code_writeack),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdata(avm_lm58771_emscripten_compute_dom_pk_code_readdata),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm58771_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm58771_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_writeack(avm_lm58771_emscripten_compute_dom_pk_code_writeack),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_readdata(avm_lm58812_emscripten_compute_dom_pk_code_readdata),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_readdatavalid(avm_lm58812_emscripten_compute_dom_pk_code_readdatavalid),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_waitrequest(avm_lm58812_emscripten_compute_dom_pk_code_waitrequest),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_writeack(avm_lm58812_emscripten_compute_dom_pk_code_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready(emscripten_compute_dom_pk_code_function_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready),
        .out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata(emscripten_compute_dom_pk_code_function_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata),
        .out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid(emscripten_compute_dom_pk_code_function_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_address),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_read),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_write),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_address),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_read),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_write),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_address),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_read),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_write),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_address),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_read),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_write),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_address),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_read),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_write),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_address),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_read),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_write),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_address),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_read),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_write),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_address),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_read),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_write),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_address),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_read),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_write),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_address),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_read),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_write),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_address),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_read),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_write),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_address),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_read),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_write),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_address),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_read),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_write),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_address),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_read),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_write),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_address),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_read),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_write),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_address),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_read),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_write),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_address),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_read),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_write),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_address),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_read),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_write),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_address),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_read),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_write),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_address),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_read),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_write),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_address),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_read),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_write),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_address),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_read),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_write),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_address),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_read),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_write),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_address),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_read),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_write),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_address),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_read),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_write),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_address),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_read),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_write),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_address),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_read),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_write),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_address),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_read),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_write),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_address),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_read),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_write),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_address),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_read),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_write),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_address),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_read),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_write),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_address),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_read),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_write),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_address),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_read),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_write),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_address),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_read),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_write),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_address),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_read),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_write),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_address),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_read),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_write),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_address),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_read),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_write),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_address),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_read),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_write),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_address),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_read),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_write),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_address),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_read),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_write),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_address),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_read),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_write),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_address),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_read),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_write),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_address),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_read),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_write),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_address),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_read),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_write),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_address),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_read),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_write),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_address),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_read),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_write),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_address),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_read),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_write),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_address),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_read),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_write),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_address),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_read),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_write),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_address),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_read),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_write),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_address),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_read),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_write),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_address),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_read),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_write),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_address),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_read),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_write),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_address),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_read),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_write),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_address),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_read),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_write),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_address),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_read),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_write),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_address),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_read),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_write),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_address),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_read),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_write),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_address),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_read),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_write),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_address),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_read),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_write),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_address),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_read),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_write),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_address),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_read),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_write),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_address),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_read),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_write),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_address),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_read),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_write),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_address),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_read),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_write),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_address),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_read),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_write),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_address),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_read),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_write),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_address),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_read),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_write),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_address),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_read),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_write),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_address),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_read),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_write),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_address),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_read),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_write),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_address),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_read),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_write),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_address),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_read),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_write),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_address),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_read),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_write),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_address),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_read),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_write),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_address),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_read),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_write),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_address),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_read),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_write),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_address),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_read),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_write),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_address),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_read),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_write),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_address),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_read),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_write),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_address),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_read),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_write),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_address),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_read),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_write),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_address),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_read),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_write),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_address),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_read),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_write),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_address),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_read),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_write),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_address),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_read),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_write),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_address),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_read),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_write),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_address),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_read),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_write),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_address),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_read),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_write),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_address),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_read),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_write),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_address),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_read),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_write),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_address),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_read),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_write),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_address),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_read),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_write),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_address),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_read),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_write),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_address),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_read),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_write),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_address),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_read),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_write),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_address),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_read),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_write),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_address(emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_address),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount(emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable(emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_enable(emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_read(emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_read),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_write(emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_write),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_writedata(emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm24714_emscripten_compute_dom_pk_code_address(GPOUT,799)
    assign avm_lm24714_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm24714_emscripten_compute_dom_pk_code_burstcount(GPOUT,800)
    assign avm_lm24714_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm24714_emscripten_compute_dom_pk_code_byteenable(GPOUT,801)
    assign avm_lm24714_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm24714_emscripten_compute_dom_pk_code_enable(GPOUT,802)
    assign avm_lm24714_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm24714_emscripten_compute_dom_pk_code_read(GPOUT,803)
    assign avm_lm24714_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm24714_emscripten_compute_dom_pk_code_write(GPOUT,804)
    assign avm_lm24714_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm24714_emscripten_compute_dom_pk_code_writedata(GPOUT,805)
    assign avm_lm24714_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm24714_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm24845_emscripten_compute_dom_pk_code_address(GPOUT,806)
    assign avm_lm24845_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm24845_emscripten_compute_dom_pk_code_burstcount(GPOUT,807)
    assign avm_lm24845_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm24845_emscripten_compute_dom_pk_code_byteenable(GPOUT,808)
    assign avm_lm24845_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm24845_emscripten_compute_dom_pk_code_enable(GPOUT,809)
    assign avm_lm24845_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm24845_emscripten_compute_dom_pk_code_read(GPOUT,810)
    assign avm_lm24845_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm24845_emscripten_compute_dom_pk_code_write(GPOUT,811)
    assign avm_lm24845_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm24845_emscripten_compute_dom_pk_code_writedata(GPOUT,812)
    assign avm_lm24845_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm24845_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm24966_emscripten_compute_dom_pk_code_address(GPOUT,813)
    assign avm_lm24966_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm24966_emscripten_compute_dom_pk_code_burstcount(GPOUT,814)
    assign avm_lm24966_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm24966_emscripten_compute_dom_pk_code_byteenable(GPOUT,815)
    assign avm_lm24966_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm24966_emscripten_compute_dom_pk_code_enable(GPOUT,816)
    assign avm_lm24966_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm24966_emscripten_compute_dom_pk_code_read(GPOUT,817)
    assign avm_lm24966_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm24966_emscripten_compute_dom_pk_code_write(GPOUT,818)
    assign avm_lm24966_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm24966_emscripten_compute_dom_pk_code_writedata(GPOUT,819)
    assign avm_lm24966_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm24966_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm25087_emscripten_compute_dom_pk_code_address(GPOUT,820)
    assign avm_lm25087_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm25087_emscripten_compute_dom_pk_code_burstcount(GPOUT,821)
    assign avm_lm25087_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm25087_emscripten_compute_dom_pk_code_byteenable(GPOUT,822)
    assign avm_lm25087_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm25087_emscripten_compute_dom_pk_code_enable(GPOUT,823)
    assign avm_lm25087_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm25087_emscripten_compute_dom_pk_code_read(GPOUT,824)
    assign avm_lm25087_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm25087_emscripten_compute_dom_pk_code_write(GPOUT,825)
    assign avm_lm25087_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm25087_emscripten_compute_dom_pk_code_writedata(GPOUT,826)
    assign avm_lm25087_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm25087_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm25208_emscripten_compute_dom_pk_code_address(GPOUT,827)
    assign avm_lm25208_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm25208_emscripten_compute_dom_pk_code_burstcount(GPOUT,828)
    assign avm_lm25208_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm25208_emscripten_compute_dom_pk_code_byteenable(GPOUT,829)
    assign avm_lm25208_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm25208_emscripten_compute_dom_pk_code_enable(GPOUT,830)
    assign avm_lm25208_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm25208_emscripten_compute_dom_pk_code_read(GPOUT,831)
    assign avm_lm25208_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm25208_emscripten_compute_dom_pk_code_write(GPOUT,832)
    assign avm_lm25208_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm25208_emscripten_compute_dom_pk_code_writedata(GPOUT,833)
    assign avm_lm25208_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm25208_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm25329_emscripten_compute_dom_pk_code_address(GPOUT,834)
    assign avm_lm25329_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm25329_emscripten_compute_dom_pk_code_burstcount(GPOUT,835)
    assign avm_lm25329_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm25329_emscripten_compute_dom_pk_code_byteenable(GPOUT,836)
    assign avm_lm25329_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm25329_emscripten_compute_dom_pk_code_enable(GPOUT,837)
    assign avm_lm25329_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm25329_emscripten_compute_dom_pk_code_read(GPOUT,838)
    assign avm_lm25329_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm25329_emscripten_compute_dom_pk_code_write(GPOUT,839)
    assign avm_lm25329_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm25329_emscripten_compute_dom_pk_code_writedata(GPOUT,840)
    assign avm_lm25329_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm25329_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm254410_emscripten_compute_dom_pk_code_address(GPOUT,841)
    assign avm_lm254410_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm254410_emscripten_compute_dom_pk_code_burstcount(GPOUT,842)
    assign avm_lm254410_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm254410_emscripten_compute_dom_pk_code_byteenable(GPOUT,843)
    assign avm_lm254410_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm254410_emscripten_compute_dom_pk_code_enable(GPOUT,844)
    assign avm_lm254410_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm254410_emscripten_compute_dom_pk_code_read(GPOUT,845)
    assign avm_lm254410_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm254410_emscripten_compute_dom_pk_code_write(GPOUT,846)
    assign avm_lm254410_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm254410_emscripten_compute_dom_pk_code_writedata(GPOUT,847)
    assign avm_lm254410_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm254410_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm255611_emscripten_compute_dom_pk_code_address(GPOUT,848)
    assign avm_lm255611_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm255611_emscripten_compute_dom_pk_code_burstcount(GPOUT,849)
    assign avm_lm255611_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm255611_emscripten_compute_dom_pk_code_byteenable(GPOUT,850)
    assign avm_lm255611_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm255611_emscripten_compute_dom_pk_code_enable(GPOUT,851)
    assign avm_lm255611_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm255611_emscripten_compute_dom_pk_code_read(GPOUT,852)
    assign avm_lm255611_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm255611_emscripten_compute_dom_pk_code_write(GPOUT,853)
    assign avm_lm255611_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm255611_emscripten_compute_dom_pk_code_writedata(GPOUT,854)
    assign avm_lm255611_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm255611_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm256812_emscripten_compute_dom_pk_code_address(GPOUT,855)
    assign avm_lm256812_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm256812_emscripten_compute_dom_pk_code_burstcount(GPOUT,856)
    assign avm_lm256812_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm256812_emscripten_compute_dom_pk_code_byteenable(GPOUT,857)
    assign avm_lm256812_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm256812_emscripten_compute_dom_pk_code_enable(GPOUT,858)
    assign avm_lm256812_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm256812_emscripten_compute_dom_pk_code_read(GPOUT,859)
    assign avm_lm256812_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm256812_emscripten_compute_dom_pk_code_write(GPOUT,860)
    assign avm_lm256812_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm256812_emscripten_compute_dom_pk_code_writedata(GPOUT,861)
    assign avm_lm256812_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm256812_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm258113_emscripten_compute_dom_pk_code_address(GPOUT,862)
    assign avm_lm258113_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm258113_emscripten_compute_dom_pk_code_burstcount(GPOUT,863)
    assign avm_lm258113_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm258113_emscripten_compute_dom_pk_code_byteenable(GPOUT,864)
    assign avm_lm258113_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm258113_emscripten_compute_dom_pk_code_enable(GPOUT,865)
    assign avm_lm258113_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm258113_emscripten_compute_dom_pk_code_read(GPOUT,866)
    assign avm_lm258113_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm258113_emscripten_compute_dom_pk_code_write(GPOUT,867)
    assign avm_lm258113_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm258113_emscripten_compute_dom_pk_code_writedata(GPOUT,868)
    assign avm_lm258113_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm258113_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm259314_emscripten_compute_dom_pk_code_address(GPOUT,869)
    assign avm_lm259314_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm259314_emscripten_compute_dom_pk_code_burstcount(GPOUT,870)
    assign avm_lm259314_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm259314_emscripten_compute_dom_pk_code_byteenable(GPOUT,871)
    assign avm_lm259314_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm259314_emscripten_compute_dom_pk_code_enable(GPOUT,872)
    assign avm_lm259314_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm259314_emscripten_compute_dom_pk_code_read(GPOUT,873)
    assign avm_lm259314_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm259314_emscripten_compute_dom_pk_code_write(GPOUT,874)
    assign avm_lm259314_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm259314_emscripten_compute_dom_pk_code_writedata(GPOUT,875)
    assign avm_lm259314_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm259314_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm260515_emscripten_compute_dom_pk_code_address(GPOUT,876)
    assign avm_lm260515_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm260515_emscripten_compute_dom_pk_code_burstcount(GPOUT,877)
    assign avm_lm260515_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm260515_emscripten_compute_dom_pk_code_byteenable(GPOUT,878)
    assign avm_lm260515_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm260515_emscripten_compute_dom_pk_code_enable(GPOUT,879)
    assign avm_lm260515_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm260515_emscripten_compute_dom_pk_code_read(GPOUT,880)
    assign avm_lm260515_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm260515_emscripten_compute_dom_pk_code_write(GPOUT,881)
    assign avm_lm260515_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm260515_emscripten_compute_dom_pk_code_writedata(GPOUT,882)
    assign avm_lm260515_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm260515_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm261816_emscripten_compute_dom_pk_code_address(GPOUT,883)
    assign avm_lm261816_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm261816_emscripten_compute_dom_pk_code_burstcount(GPOUT,884)
    assign avm_lm261816_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm261816_emscripten_compute_dom_pk_code_byteenable(GPOUT,885)
    assign avm_lm261816_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm261816_emscripten_compute_dom_pk_code_enable(GPOUT,886)
    assign avm_lm261816_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm261816_emscripten_compute_dom_pk_code_read(GPOUT,887)
    assign avm_lm261816_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm261816_emscripten_compute_dom_pk_code_write(GPOUT,888)
    assign avm_lm261816_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm261816_emscripten_compute_dom_pk_code_writedata(GPOUT,889)
    assign avm_lm261816_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm261816_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm263017_emscripten_compute_dom_pk_code_address(GPOUT,890)
    assign avm_lm263017_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm263017_emscripten_compute_dom_pk_code_burstcount(GPOUT,891)
    assign avm_lm263017_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm263017_emscripten_compute_dom_pk_code_byteenable(GPOUT,892)
    assign avm_lm263017_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm263017_emscripten_compute_dom_pk_code_enable(GPOUT,893)
    assign avm_lm263017_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm263017_emscripten_compute_dom_pk_code_read(GPOUT,894)
    assign avm_lm263017_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm263017_emscripten_compute_dom_pk_code_write(GPOUT,895)
    assign avm_lm263017_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm263017_emscripten_compute_dom_pk_code_writedata(GPOUT,896)
    assign avm_lm263017_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm263017_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm264218_emscripten_compute_dom_pk_code_address(GPOUT,897)
    assign avm_lm264218_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm264218_emscripten_compute_dom_pk_code_burstcount(GPOUT,898)
    assign avm_lm264218_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm264218_emscripten_compute_dom_pk_code_byteenable(GPOUT,899)
    assign avm_lm264218_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm264218_emscripten_compute_dom_pk_code_enable(GPOUT,900)
    assign avm_lm264218_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm264218_emscripten_compute_dom_pk_code_read(GPOUT,901)
    assign avm_lm264218_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm264218_emscripten_compute_dom_pk_code_write(GPOUT,902)
    assign avm_lm264218_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm264218_emscripten_compute_dom_pk_code_writedata(GPOUT,903)
    assign avm_lm264218_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm264218_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm265519_emscripten_compute_dom_pk_code_address(GPOUT,904)
    assign avm_lm265519_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm265519_emscripten_compute_dom_pk_code_burstcount(GPOUT,905)
    assign avm_lm265519_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm265519_emscripten_compute_dom_pk_code_byteenable(GPOUT,906)
    assign avm_lm265519_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm265519_emscripten_compute_dom_pk_code_enable(GPOUT,907)
    assign avm_lm265519_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm265519_emscripten_compute_dom_pk_code_read(GPOUT,908)
    assign avm_lm265519_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm265519_emscripten_compute_dom_pk_code_write(GPOUT,909)
    assign avm_lm265519_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm265519_emscripten_compute_dom_pk_code_writedata(GPOUT,910)
    assign avm_lm265519_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm265519_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm266720_emscripten_compute_dom_pk_code_address(GPOUT,911)
    assign avm_lm266720_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm266720_emscripten_compute_dom_pk_code_burstcount(GPOUT,912)
    assign avm_lm266720_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm266720_emscripten_compute_dom_pk_code_byteenable(GPOUT,913)
    assign avm_lm266720_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm266720_emscripten_compute_dom_pk_code_enable(GPOUT,914)
    assign avm_lm266720_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm266720_emscripten_compute_dom_pk_code_read(GPOUT,915)
    assign avm_lm266720_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm266720_emscripten_compute_dom_pk_code_write(GPOUT,916)
    assign avm_lm266720_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm266720_emscripten_compute_dom_pk_code_writedata(GPOUT,917)
    assign avm_lm266720_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm266720_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm268021_emscripten_compute_dom_pk_code_address(GPOUT,918)
    assign avm_lm268021_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm268021_emscripten_compute_dom_pk_code_burstcount(GPOUT,919)
    assign avm_lm268021_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm268021_emscripten_compute_dom_pk_code_byteenable(GPOUT,920)
    assign avm_lm268021_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm268021_emscripten_compute_dom_pk_code_enable(GPOUT,921)
    assign avm_lm268021_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm268021_emscripten_compute_dom_pk_code_read(GPOUT,922)
    assign avm_lm268021_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm268021_emscripten_compute_dom_pk_code_write(GPOUT,923)
    assign avm_lm268021_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm268021_emscripten_compute_dom_pk_code_writedata(GPOUT,924)
    assign avm_lm268021_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm268021_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm269222_emscripten_compute_dom_pk_code_address(GPOUT,925)
    assign avm_lm269222_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm269222_emscripten_compute_dom_pk_code_burstcount(GPOUT,926)
    assign avm_lm269222_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm269222_emscripten_compute_dom_pk_code_byteenable(GPOUT,927)
    assign avm_lm269222_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm269222_emscripten_compute_dom_pk_code_enable(GPOUT,928)
    assign avm_lm269222_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm269222_emscripten_compute_dom_pk_code_read(GPOUT,929)
    assign avm_lm269222_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm269222_emscripten_compute_dom_pk_code_write(GPOUT,930)
    assign avm_lm269222_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm269222_emscripten_compute_dom_pk_code_writedata(GPOUT,931)
    assign avm_lm269222_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm269222_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm270523_emscripten_compute_dom_pk_code_address(GPOUT,932)
    assign avm_lm270523_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm270523_emscripten_compute_dom_pk_code_burstcount(GPOUT,933)
    assign avm_lm270523_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm270523_emscripten_compute_dom_pk_code_byteenable(GPOUT,934)
    assign avm_lm270523_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm270523_emscripten_compute_dom_pk_code_enable(GPOUT,935)
    assign avm_lm270523_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm270523_emscripten_compute_dom_pk_code_read(GPOUT,936)
    assign avm_lm270523_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm270523_emscripten_compute_dom_pk_code_write(GPOUT,937)
    assign avm_lm270523_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm270523_emscripten_compute_dom_pk_code_writedata(GPOUT,938)
    assign avm_lm270523_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm270523_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm271824_emscripten_compute_dom_pk_code_address(GPOUT,939)
    assign avm_lm271824_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm271824_emscripten_compute_dom_pk_code_burstcount(GPOUT,940)
    assign avm_lm271824_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm271824_emscripten_compute_dom_pk_code_byteenable(GPOUT,941)
    assign avm_lm271824_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm271824_emscripten_compute_dom_pk_code_enable(GPOUT,942)
    assign avm_lm271824_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm271824_emscripten_compute_dom_pk_code_read(GPOUT,943)
    assign avm_lm271824_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm271824_emscripten_compute_dom_pk_code_write(GPOUT,944)
    assign avm_lm271824_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm271824_emscripten_compute_dom_pk_code_writedata(GPOUT,945)
    assign avm_lm271824_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm271824_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm273125_emscripten_compute_dom_pk_code_address(GPOUT,946)
    assign avm_lm273125_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm273125_emscripten_compute_dom_pk_code_burstcount(GPOUT,947)
    assign avm_lm273125_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm273125_emscripten_compute_dom_pk_code_byteenable(GPOUT,948)
    assign avm_lm273125_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm273125_emscripten_compute_dom_pk_code_enable(GPOUT,949)
    assign avm_lm273125_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm273125_emscripten_compute_dom_pk_code_read(GPOUT,950)
    assign avm_lm273125_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm273125_emscripten_compute_dom_pk_code_write(GPOUT,951)
    assign avm_lm273125_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm273125_emscripten_compute_dom_pk_code_writedata(GPOUT,952)
    assign avm_lm273125_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm273125_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm274326_emscripten_compute_dom_pk_code_address(GPOUT,953)
    assign avm_lm274326_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm274326_emscripten_compute_dom_pk_code_burstcount(GPOUT,954)
    assign avm_lm274326_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm274326_emscripten_compute_dom_pk_code_byteenable(GPOUT,955)
    assign avm_lm274326_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm274326_emscripten_compute_dom_pk_code_enable(GPOUT,956)
    assign avm_lm274326_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm274326_emscripten_compute_dom_pk_code_read(GPOUT,957)
    assign avm_lm274326_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm274326_emscripten_compute_dom_pk_code_write(GPOUT,958)
    assign avm_lm274326_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm274326_emscripten_compute_dom_pk_code_writedata(GPOUT,959)
    assign avm_lm274326_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm274326_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm275527_emscripten_compute_dom_pk_code_address(GPOUT,960)
    assign avm_lm275527_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm275527_emscripten_compute_dom_pk_code_burstcount(GPOUT,961)
    assign avm_lm275527_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm275527_emscripten_compute_dom_pk_code_byteenable(GPOUT,962)
    assign avm_lm275527_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm275527_emscripten_compute_dom_pk_code_enable(GPOUT,963)
    assign avm_lm275527_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm275527_emscripten_compute_dom_pk_code_read(GPOUT,964)
    assign avm_lm275527_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm275527_emscripten_compute_dom_pk_code_write(GPOUT,965)
    assign avm_lm275527_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm275527_emscripten_compute_dom_pk_code_writedata(GPOUT,966)
    assign avm_lm275527_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm275527_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm276728_emscripten_compute_dom_pk_code_address(GPOUT,967)
    assign avm_lm276728_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm276728_emscripten_compute_dom_pk_code_burstcount(GPOUT,968)
    assign avm_lm276728_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm276728_emscripten_compute_dom_pk_code_byteenable(GPOUT,969)
    assign avm_lm276728_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm276728_emscripten_compute_dom_pk_code_enable(GPOUT,970)
    assign avm_lm276728_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm276728_emscripten_compute_dom_pk_code_read(GPOUT,971)
    assign avm_lm276728_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm276728_emscripten_compute_dom_pk_code_write(GPOUT,972)
    assign avm_lm276728_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm276728_emscripten_compute_dom_pk_code_writedata(GPOUT,973)
    assign avm_lm276728_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm276728_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm278029_emscripten_compute_dom_pk_code_address(GPOUT,974)
    assign avm_lm278029_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm278029_emscripten_compute_dom_pk_code_burstcount(GPOUT,975)
    assign avm_lm278029_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm278029_emscripten_compute_dom_pk_code_byteenable(GPOUT,976)
    assign avm_lm278029_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm278029_emscripten_compute_dom_pk_code_enable(GPOUT,977)
    assign avm_lm278029_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm278029_emscripten_compute_dom_pk_code_read(GPOUT,978)
    assign avm_lm278029_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm278029_emscripten_compute_dom_pk_code_write(GPOUT,979)
    assign avm_lm278029_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm278029_emscripten_compute_dom_pk_code_writedata(GPOUT,980)
    assign avm_lm278029_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm278029_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm279230_emscripten_compute_dom_pk_code_address(GPOUT,981)
    assign avm_lm279230_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm279230_emscripten_compute_dom_pk_code_burstcount(GPOUT,982)
    assign avm_lm279230_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm279230_emscripten_compute_dom_pk_code_byteenable(GPOUT,983)
    assign avm_lm279230_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm279230_emscripten_compute_dom_pk_code_enable(GPOUT,984)
    assign avm_lm279230_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm279230_emscripten_compute_dom_pk_code_read(GPOUT,985)
    assign avm_lm279230_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm279230_emscripten_compute_dom_pk_code_write(GPOUT,986)
    assign avm_lm279230_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm279230_emscripten_compute_dom_pk_code_writedata(GPOUT,987)
    assign avm_lm279230_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm279230_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm280531_emscripten_compute_dom_pk_code_address(GPOUT,988)
    assign avm_lm280531_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm280531_emscripten_compute_dom_pk_code_burstcount(GPOUT,989)
    assign avm_lm280531_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm280531_emscripten_compute_dom_pk_code_byteenable(GPOUT,990)
    assign avm_lm280531_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm280531_emscripten_compute_dom_pk_code_enable(GPOUT,991)
    assign avm_lm280531_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm280531_emscripten_compute_dom_pk_code_read(GPOUT,992)
    assign avm_lm280531_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm280531_emscripten_compute_dom_pk_code_write(GPOUT,993)
    assign avm_lm280531_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm280531_emscripten_compute_dom_pk_code_writedata(GPOUT,994)
    assign avm_lm280531_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm280531_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm281732_emscripten_compute_dom_pk_code_address(GPOUT,995)
    assign avm_lm281732_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm281732_emscripten_compute_dom_pk_code_burstcount(GPOUT,996)
    assign avm_lm281732_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm281732_emscripten_compute_dom_pk_code_byteenable(GPOUT,997)
    assign avm_lm281732_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm281732_emscripten_compute_dom_pk_code_enable(GPOUT,998)
    assign avm_lm281732_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm281732_emscripten_compute_dom_pk_code_read(GPOUT,999)
    assign avm_lm281732_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm281732_emscripten_compute_dom_pk_code_write(GPOUT,1000)
    assign avm_lm281732_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm281732_emscripten_compute_dom_pk_code_writedata(GPOUT,1001)
    assign avm_lm281732_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm281732_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm283033_emscripten_compute_dom_pk_code_address(GPOUT,1002)
    assign avm_lm283033_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm283033_emscripten_compute_dom_pk_code_burstcount(GPOUT,1003)
    assign avm_lm283033_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm283033_emscripten_compute_dom_pk_code_byteenable(GPOUT,1004)
    assign avm_lm283033_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm283033_emscripten_compute_dom_pk_code_enable(GPOUT,1005)
    assign avm_lm283033_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm283033_emscripten_compute_dom_pk_code_read(GPOUT,1006)
    assign avm_lm283033_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm283033_emscripten_compute_dom_pk_code_write(GPOUT,1007)
    assign avm_lm283033_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm283033_emscripten_compute_dom_pk_code_writedata(GPOUT,1008)
    assign avm_lm283033_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm283033_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm284334_emscripten_compute_dom_pk_code_address(GPOUT,1009)
    assign avm_lm284334_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm284334_emscripten_compute_dom_pk_code_burstcount(GPOUT,1010)
    assign avm_lm284334_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm284334_emscripten_compute_dom_pk_code_byteenable(GPOUT,1011)
    assign avm_lm284334_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm284334_emscripten_compute_dom_pk_code_enable(GPOUT,1012)
    assign avm_lm284334_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm284334_emscripten_compute_dom_pk_code_read(GPOUT,1013)
    assign avm_lm284334_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm284334_emscripten_compute_dom_pk_code_write(GPOUT,1014)
    assign avm_lm284334_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm284334_emscripten_compute_dom_pk_code_writedata(GPOUT,1015)
    assign avm_lm284334_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm284334_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm285535_emscripten_compute_dom_pk_code_address(GPOUT,1016)
    assign avm_lm285535_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm285535_emscripten_compute_dom_pk_code_burstcount(GPOUT,1017)
    assign avm_lm285535_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm285535_emscripten_compute_dom_pk_code_byteenable(GPOUT,1018)
    assign avm_lm285535_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm285535_emscripten_compute_dom_pk_code_enable(GPOUT,1019)
    assign avm_lm285535_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm285535_emscripten_compute_dom_pk_code_read(GPOUT,1020)
    assign avm_lm285535_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm285535_emscripten_compute_dom_pk_code_write(GPOUT,1021)
    assign avm_lm285535_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm285535_emscripten_compute_dom_pk_code_writedata(GPOUT,1022)
    assign avm_lm285535_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm285535_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm287936_emscripten_compute_dom_pk_code_address(GPOUT,1023)
    assign avm_lm287936_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm287936_emscripten_compute_dom_pk_code_burstcount(GPOUT,1024)
    assign avm_lm287936_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm287936_emscripten_compute_dom_pk_code_byteenable(GPOUT,1025)
    assign avm_lm287936_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm287936_emscripten_compute_dom_pk_code_enable(GPOUT,1026)
    assign avm_lm287936_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm287936_emscripten_compute_dom_pk_code_read(GPOUT,1027)
    assign avm_lm287936_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm287936_emscripten_compute_dom_pk_code_write(GPOUT,1028)
    assign avm_lm287936_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm287936_emscripten_compute_dom_pk_code_writedata(GPOUT,1029)
    assign avm_lm287936_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm287936_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm290337_emscripten_compute_dom_pk_code_address(GPOUT,1030)
    assign avm_lm290337_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm290337_emscripten_compute_dom_pk_code_burstcount(GPOUT,1031)
    assign avm_lm290337_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm290337_emscripten_compute_dom_pk_code_byteenable(GPOUT,1032)
    assign avm_lm290337_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm290337_emscripten_compute_dom_pk_code_enable(GPOUT,1033)
    assign avm_lm290337_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm290337_emscripten_compute_dom_pk_code_read(GPOUT,1034)
    assign avm_lm290337_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm290337_emscripten_compute_dom_pk_code_write(GPOUT,1035)
    assign avm_lm290337_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm290337_emscripten_compute_dom_pk_code_writedata(GPOUT,1036)
    assign avm_lm290337_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm290337_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm291538_emscripten_compute_dom_pk_code_address(GPOUT,1037)
    assign avm_lm291538_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm291538_emscripten_compute_dom_pk_code_burstcount(GPOUT,1038)
    assign avm_lm291538_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm291538_emscripten_compute_dom_pk_code_byteenable(GPOUT,1039)
    assign avm_lm291538_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm291538_emscripten_compute_dom_pk_code_enable(GPOUT,1040)
    assign avm_lm291538_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm291538_emscripten_compute_dom_pk_code_read(GPOUT,1041)
    assign avm_lm291538_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm291538_emscripten_compute_dom_pk_code_write(GPOUT,1042)
    assign avm_lm291538_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm291538_emscripten_compute_dom_pk_code_writedata(GPOUT,1043)
    assign avm_lm291538_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm291538_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm292739_emscripten_compute_dom_pk_code_address(GPOUT,1044)
    assign avm_lm292739_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm292739_emscripten_compute_dom_pk_code_burstcount(GPOUT,1045)
    assign avm_lm292739_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm292739_emscripten_compute_dom_pk_code_byteenable(GPOUT,1046)
    assign avm_lm292739_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm292739_emscripten_compute_dom_pk_code_enable(GPOUT,1047)
    assign avm_lm292739_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm292739_emscripten_compute_dom_pk_code_read(GPOUT,1048)
    assign avm_lm292739_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm292739_emscripten_compute_dom_pk_code_write(GPOUT,1049)
    assign avm_lm292739_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm292739_emscripten_compute_dom_pk_code_writedata(GPOUT,1050)
    assign avm_lm292739_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm292739_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm293940_emscripten_compute_dom_pk_code_address(GPOUT,1051)
    assign avm_lm293940_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm293940_emscripten_compute_dom_pk_code_burstcount(GPOUT,1052)
    assign avm_lm293940_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm293940_emscripten_compute_dom_pk_code_byteenable(GPOUT,1053)
    assign avm_lm293940_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm293940_emscripten_compute_dom_pk_code_enable(GPOUT,1054)
    assign avm_lm293940_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm293940_emscripten_compute_dom_pk_code_read(GPOUT,1055)
    assign avm_lm293940_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm293940_emscripten_compute_dom_pk_code_write(GPOUT,1056)
    assign avm_lm293940_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm293940_emscripten_compute_dom_pk_code_writedata(GPOUT,1057)
    assign avm_lm293940_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm293940_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm295141_emscripten_compute_dom_pk_code_address(GPOUT,1058)
    assign avm_lm295141_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm295141_emscripten_compute_dom_pk_code_burstcount(GPOUT,1059)
    assign avm_lm295141_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm295141_emscripten_compute_dom_pk_code_byteenable(GPOUT,1060)
    assign avm_lm295141_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm295141_emscripten_compute_dom_pk_code_enable(GPOUT,1061)
    assign avm_lm295141_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm295141_emscripten_compute_dom_pk_code_read(GPOUT,1062)
    assign avm_lm295141_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm295141_emscripten_compute_dom_pk_code_write(GPOUT,1063)
    assign avm_lm295141_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm295141_emscripten_compute_dom_pk_code_writedata(GPOUT,1064)
    assign avm_lm295141_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm295141_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm297642_emscripten_compute_dom_pk_code_address(GPOUT,1065)
    assign avm_lm297642_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm297642_emscripten_compute_dom_pk_code_burstcount(GPOUT,1066)
    assign avm_lm297642_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm297642_emscripten_compute_dom_pk_code_byteenable(GPOUT,1067)
    assign avm_lm297642_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm297642_emscripten_compute_dom_pk_code_enable(GPOUT,1068)
    assign avm_lm297642_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm297642_emscripten_compute_dom_pk_code_read(GPOUT,1069)
    assign avm_lm297642_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm297642_emscripten_compute_dom_pk_code_write(GPOUT,1070)
    assign avm_lm297642_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm297642_emscripten_compute_dom_pk_code_writedata(GPOUT,1071)
    assign avm_lm297642_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm297642_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm298843_emscripten_compute_dom_pk_code_address(GPOUT,1072)
    assign avm_lm298843_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm298843_emscripten_compute_dom_pk_code_burstcount(GPOUT,1073)
    assign avm_lm298843_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm298843_emscripten_compute_dom_pk_code_byteenable(GPOUT,1074)
    assign avm_lm298843_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm298843_emscripten_compute_dom_pk_code_enable(GPOUT,1075)
    assign avm_lm298843_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm298843_emscripten_compute_dom_pk_code_read(GPOUT,1076)
    assign avm_lm298843_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm298843_emscripten_compute_dom_pk_code_write(GPOUT,1077)
    assign avm_lm298843_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm298843_emscripten_compute_dom_pk_code_writedata(GPOUT,1078)
    assign avm_lm298843_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm298843_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm300144_emscripten_compute_dom_pk_code_address(GPOUT,1079)
    assign avm_lm300144_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm300144_emscripten_compute_dom_pk_code_burstcount(GPOUT,1080)
    assign avm_lm300144_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm300144_emscripten_compute_dom_pk_code_byteenable(GPOUT,1081)
    assign avm_lm300144_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm300144_emscripten_compute_dom_pk_code_enable(GPOUT,1082)
    assign avm_lm300144_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm300144_emscripten_compute_dom_pk_code_read(GPOUT,1083)
    assign avm_lm300144_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm300144_emscripten_compute_dom_pk_code_write(GPOUT,1084)
    assign avm_lm300144_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm300144_emscripten_compute_dom_pk_code_writedata(GPOUT,1085)
    assign avm_lm300144_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm300144_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm301345_emscripten_compute_dom_pk_code_address(GPOUT,1086)
    assign avm_lm301345_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm301345_emscripten_compute_dom_pk_code_burstcount(GPOUT,1087)
    assign avm_lm301345_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm301345_emscripten_compute_dom_pk_code_byteenable(GPOUT,1088)
    assign avm_lm301345_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm301345_emscripten_compute_dom_pk_code_enable(GPOUT,1089)
    assign avm_lm301345_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm301345_emscripten_compute_dom_pk_code_read(GPOUT,1090)
    assign avm_lm301345_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm301345_emscripten_compute_dom_pk_code_write(GPOUT,1091)
    assign avm_lm301345_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm301345_emscripten_compute_dom_pk_code_writedata(GPOUT,1092)
    assign avm_lm301345_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm301345_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm302646_emscripten_compute_dom_pk_code_address(GPOUT,1093)
    assign avm_lm302646_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm302646_emscripten_compute_dom_pk_code_burstcount(GPOUT,1094)
    assign avm_lm302646_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm302646_emscripten_compute_dom_pk_code_byteenable(GPOUT,1095)
    assign avm_lm302646_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm302646_emscripten_compute_dom_pk_code_enable(GPOUT,1096)
    assign avm_lm302646_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm302646_emscripten_compute_dom_pk_code_read(GPOUT,1097)
    assign avm_lm302646_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm302646_emscripten_compute_dom_pk_code_write(GPOUT,1098)
    assign avm_lm302646_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm302646_emscripten_compute_dom_pk_code_writedata(GPOUT,1099)
    assign avm_lm302646_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm302646_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm303947_emscripten_compute_dom_pk_code_address(GPOUT,1100)
    assign avm_lm303947_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm303947_emscripten_compute_dom_pk_code_burstcount(GPOUT,1101)
    assign avm_lm303947_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm303947_emscripten_compute_dom_pk_code_byteenable(GPOUT,1102)
    assign avm_lm303947_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm303947_emscripten_compute_dom_pk_code_enable(GPOUT,1103)
    assign avm_lm303947_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm303947_emscripten_compute_dom_pk_code_read(GPOUT,1104)
    assign avm_lm303947_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm303947_emscripten_compute_dom_pk_code_write(GPOUT,1105)
    assign avm_lm303947_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm303947_emscripten_compute_dom_pk_code_writedata(GPOUT,1106)
    assign avm_lm303947_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm303947_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm305148_emscripten_compute_dom_pk_code_address(GPOUT,1107)
    assign avm_lm305148_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm305148_emscripten_compute_dom_pk_code_burstcount(GPOUT,1108)
    assign avm_lm305148_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm305148_emscripten_compute_dom_pk_code_byteenable(GPOUT,1109)
    assign avm_lm305148_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm305148_emscripten_compute_dom_pk_code_enable(GPOUT,1110)
    assign avm_lm305148_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm305148_emscripten_compute_dom_pk_code_read(GPOUT,1111)
    assign avm_lm305148_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm305148_emscripten_compute_dom_pk_code_write(GPOUT,1112)
    assign avm_lm305148_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm305148_emscripten_compute_dom_pk_code_writedata(GPOUT,1113)
    assign avm_lm305148_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm305148_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm306449_emscripten_compute_dom_pk_code_address(GPOUT,1114)
    assign avm_lm306449_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm306449_emscripten_compute_dom_pk_code_burstcount(GPOUT,1115)
    assign avm_lm306449_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm306449_emscripten_compute_dom_pk_code_byteenable(GPOUT,1116)
    assign avm_lm306449_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm306449_emscripten_compute_dom_pk_code_enable(GPOUT,1117)
    assign avm_lm306449_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm306449_emscripten_compute_dom_pk_code_read(GPOUT,1118)
    assign avm_lm306449_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm306449_emscripten_compute_dom_pk_code_write(GPOUT,1119)
    assign avm_lm306449_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm306449_emscripten_compute_dom_pk_code_writedata(GPOUT,1120)
    assign avm_lm306449_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm306449_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm307750_emscripten_compute_dom_pk_code_address(GPOUT,1121)
    assign avm_lm307750_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm307750_emscripten_compute_dom_pk_code_burstcount(GPOUT,1122)
    assign avm_lm307750_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm307750_emscripten_compute_dom_pk_code_byteenable(GPOUT,1123)
    assign avm_lm307750_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm307750_emscripten_compute_dom_pk_code_enable(GPOUT,1124)
    assign avm_lm307750_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm307750_emscripten_compute_dom_pk_code_read(GPOUT,1125)
    assign avm_lm307750_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm307750_emscripten_compute_dom_pk_code_write(GPOUT,1126)
    assign avm_lm307750_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm307750_emscripten_compute_dom_pk_code_writedata(GPOUT,1127)
    assign avm_lm307750_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm307750_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm309051_emscripten_compute_dom_pk_code_address(GPOUT,1128)
    assign avm_lm309051_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm309051_emscripten_compute_dom_pk_code_burstcount(GPOUT,1129)
    assign avm_lm309051_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm309051_emscripten_compute_dom_pk_code_byteenable(GPOUT,1130)
    assign avm_lm309051_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm309051_emscripten_compute_dom_pk_code_enable(GPOUT,1131)
    assign avm_lm309051_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm309051_emscripten_compute_dom_pk_code_read(GPOUT,1132)
    assign avm_lm309051_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm309051_emscripten_compute_dom_pk_code_write(GPOUT,1133)
    assign avm_lm309051_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm309051_emscripten_compute_dom_pk_code_writedata(GPOUT,1134)
    assign avm_lm309051_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm309051_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm310252_emscripten_compute_dom_pk_code_address(GPOUT,1135)
    assign avm_lm310252_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm310252_emscripten_compute_dom_pk_code_burstcount(GPOUT,1136)
    assign avm_lm310252_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm310252_emscripten_compute_dom_pk_code_byteenable(GPOUT,1137)
    assign avm_lm310252_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm310252_emscripten_compute_dom_pk_code_enable(GPOUT,1138)
    assign avm_lm310252_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm310252_emscripten_compute_dom_pk_code_read(GPOUT,1139)
    assign avm_lm310252_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm310252_emscripten_compute_dom_pk_code_write(GPOUT,1140)
    assign avm_lm310252_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm310252_emscripten_compute_dom_pk_code_writedata(GPOUT,1141)
    assign avm_lm310252_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm310252_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm311553_emscripten_compute_dom_pk_code_address(GPOUT,1142)
    assign avm_lm311553_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm311553_emscripten_compute_dom_pk_code_burstcount(GPOUT,1143)
    assign avm_lm311553_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm311553_emscripten_compute_dom_pk_code_byteenable(GPOUT,1144)
    assign avm_lm311553_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm311553_emscripten_compute_dom_pk_code_enable(GPOUT,1145)
    assign avm_lm311553_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm311553_emscripten_compute_dom_pk_code_read(GPOUT,1146)
    assign avm_lm311553_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm311553_emscripten_compute_dom_pk_code_write(GPOUT,1147)
    assign avm_lm311553_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm311553_emscripten_compute_dom_pk_code_writedata(GPOUT,1148)
    assign avm_lm311553_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm311553_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm312854_emscripten_compute_dom_pk_code_address(GPOUT,1149)
    assign avm_lm312854_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm312854_emscripten_compute_dom_pk_code_burstcount(GPOUT,1150)
    assign avm_lm312854_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm312854_emscripten_compute_dom_pk_code_byteenable(GPOUT,1151)
    assign avm_lm312854_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm312854_emscripten_compute_dom_pk_code_enable(GPOUT,1152)
    assign avm_lm312854_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm312854_emscripten_compute_dom_pk_code_read(GPOUT,1153)
    assign avm_lm312854_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm312854_emscripten_compute_dom_pk_code_write(GPOUT,1154)
    assign avm_lm312854_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm312854_emscripten_compute_dom_pk_code_writedata(GPOUT,1155)
    assign avm_lm312854_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm312854_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm313955_emscripten_compute_dom_pk_code_address(GPOUT,1156)
    assign avm_lm313955_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm313955_emscripten_compute_dom_pk_code_burstcount(GPOUT,1157)
    assign avm_lm313955_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm313955_emscripten_compute_dom_pk_code_byteenable(GPOUT,1158)
    assign avm_lm313955_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm313955_emscripten_compute_dom_pk_code_enable(GPOUT,1159)
    assign avm_lm313955_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm313955_emscripten_compute_dom_pk_code_read(GPOUT,1160)
    assign avm_lm313955_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm313955_emscripten_compute_dom_pk_code_write(GPOUT,1161)
    assign avm_lm313955_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm313955_emscripten_compute_dom_pk_code_writedata(GPOUT,1162)
    assign avm_lm313955_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm313955_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm315256_emscripten_compute_dom_pk_code_address(GPOUT,1163)
    assign avm_lm315256_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm315256_emscripten_compute_dom_pk_code_burstcount(GPOUT,1164)
    assign avm_lm315256_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm315256_emscripten_compute_dom_pk_code_byteenable(GPOUT,1165)
    assign avm_lm315256_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm315256_emscripten_compute_dom_pk_code_enable(GPOUT,1166)
    assign avm_lm315256_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm315256_emscripten_compute_dom_pk_code_read(GPOUT,1167)
    assign avm_lm315256_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm315256_emscripten_compute_dom_pk_code_write(GPOUT,1168)
    assign avm_lm315256_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm315256_emscripten_compute_dom_pk_code_writedata(GPOUT,1169)
    assign avm_lm315256_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm315256_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm316457_emscripten_compute_dom_pk_code_address(GPOUT,1170)
    assign avm_lm316457_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm316457_emscripten_compute_dom_pk_code_burstcount(GPOUT,1171)
    assign avm_lm316457_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm316457_emscripten_compute_dom_pk_code_byteenable(GPOUT,1172)
    assign avm_lm316457_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm316457_emscripten_compute_dom_pk_code_enable(GPOUT,1173)
    assign avm_lm316457_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm316457_emscripten_compute_dom_pk_code_read(GPOUT,1174)
    assign avm_lm316457_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm316457_emscripten_compute_dom_pk_code_write(GPOUT,1175)
    assign avm_lm316457_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm316457_emscripten_compute_dom_pk_code_writedata(GPOUT,1176)
    assign avm_lm316457_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm316457_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm317658_emscripten_compute_dom_pk_code_address(GPOUT,1177)
    assign avm_lm317658_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm317658_emscripten_compute_dom_pk_code_burstcount(GPOUT,1178)
    assign avm_lm317658_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm317658_emscripten_compute_dom_pk_code_byteenable(GPOUT,1179)
    assign avm_lm317658_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm317658_emscripten_compute_dom_pk_code_enable(GPOUT,1180)
    assign avm_lm317658_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm317658_emscripten_compute_dom_pk_code_read(GPOUT,1181)
    assign avm_lm317658_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm317658_emscripten_compute_dom_pk_code_write(GPOUT,1182)
    assign avm_lm317658_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm317658_emscripten_compute_dom_pk_code_writedata(GPOUT,1183)
    assign avm_lm317658_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm317658_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm318759_emscripten_compute_dom_pk_code_address(GPOUT,1184)
    assign avm_lm318759_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm318759_emscripten_compute_dom_pk_code_burstcount(GPOUT,1185)
    assign avm_lm318759_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm318759_emscripten_compute_dom_pk_code_byteenable(GPOUT,1186)
    assign avm_lm318759_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm318759_emscripten_compute_dom_pk_code_enable(GPOUT,1187)
    assign avm_lm318759_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm318759_emscripten_compute_dom_pk_code_read(GPOUT,1188)
    assign avm_lm318759_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm318759_emscripten_compute_dom_pk_code_write(GPOUT,1189)
    assign avm_lm318759_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm318759_emscripten_compute_dom_pk_code_writedata(GPOUT,1190)
    assign avm_lm318759_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm318759_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm319860_emscripten_compute_dom_pk_code_address(GPOUT,1191)
    assign avm_lm319860_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm319860_emscripten_compute_dom_pk_code_burstcount(GPOUT,1192)
    assign avm_lm319860_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm319860_emscripten_compute_dom_pk_code_byteenable(GPOUT,1193)
    assign avm_lm319860_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm319860_emscripten_compute_dom_pk_code_enable(GPOUT,1194)
    assign avm_lm319860_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm319860_emscripten_compute_dom_pk_code_read(GPOUT,1195)
    assign avm_lm319860_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm319860_emscripten_compute_dom_pk_code_write(GPOUT,1196)
    assign avm_lm319860_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm319860_emscripten_compute_dom_pk_code_writedata(GPOUT,1197)
    assign avm_lm319860_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm319860_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm320961_emscripten_compute_dom_pk_code_address(GPOUT,1198)
    assign avm_lm320961_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm320961_emscripten_compute_dom_pk_code_burstcount(GPOUT,1199)
    assign avm_lm320961_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm320961_emscripten_compute_dom_pk_code_byteenable(GPOUT,1200)
    assign avm_lm320961_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm320961_emscripten_compute_dom_pk_code_enable(GPOUT,1201)
    assign avm_lm320961_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm320961_emscripten_compute_dom_pk_code_read(GPOUT,1202)
    assign avm_lm320961_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm320961_emscripten_compute_dom_pk_code_write(GPOUT,1203)
    assign avm_lm320961_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm320961_emscripten_compute_dom_pk_code_writedata(GPOUT,1204)
    assign avm_lm320961_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm320961_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm322262_emscripten_compute_dom_pk_code_address(GPOUT,1205)
    assign avm_lm322262_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm322262_emscripten_compute_dom_pk_code_burstcount(GPOUT,1206)
    assign avm_lm322262_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm322262_emscripten_compute_dom_pk_code_byteenable(GPOUT,1207)
    assign avm_lm322262_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm322262_emscripten_compute_dom_pk_code_enable(GPOUT,1208)
    assign avm_lm322262_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm322262_emscripten_compute_dom_pk_code_read(GPOUT,1209)
    assign avm_lm322262_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm322262_emscripten_compute_dom_pk_code_write(GPOUT,1210)
    assign avm_lm322262_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm322262_emscripten_compute_dom_pk_code_writedata(GPOUT,1211)
    assign avm_lm322262_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm322262_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm323463_emscripten_compute_dom_pk_code_address(GPOUT,1212)
    assign avm_lm323463_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm323463_emscripten_compute_dom_pk_code_burstcount(GPOUT,1213)
    assign avm_lm323463_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm323463_emscripten_compute_dom_pk_code_byteenable(GPOUT,1214)
    assign avm_lm323463_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm323463_emscripten_compute_dom_pk_code_enable(GPOUT,1215)
    assign avm_lm323463_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm323463_emscripten_compute_dom_pk_code_read(GPOUT,1216)
    assign avm_lm323463_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm323463_emscripten_compute_dom_pk_code_write(GPOUT,1217)
    assign avm_lm323463_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm323463_emscripten_compute_dom_pk_code_writedata(GPOUT,1218)
    assign avm_lm323463_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm323463_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm324564_emscripten_compute_dom_pk_code_address(GPOUT,1219)
    assign avm_lm324564_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm324564_emscripten_compute_dom_pk_code_burstcount(GPOUT,1220)
    assign avm_lm324564_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm324564_emscripten_compute_dom_pk_code_byteenable(GPOUT,1221)
    assign avm_lm324564_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm324564_emscripten_compute_dom_pk_code_enable(GPOUT,1222)
    assign avm_lm324564_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm324564_emscripten_compute_dom_pk_code_read(GPOUT,1223)
    assign avm_lm324564_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm324564_emscripten_compute_dom_pk_code_write(GPOUT,1224)
    assign avm_lm324564_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm324564_emscripten_compute_dom_pk_code_writedata(GPOUT,1225)
    assign avm_lm324564_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm324564_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm325665_emscripten_compute_dom_pk_code_address(GPOUT,1226)
    assign avm_lm325665_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm325665_emscripten_compute_dom_pk_code_burstcount(GPOUT,1227)
    assign avm_lm325665_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm325665_emscripten_compute_dom_pk_code_byteenable(GPOUT,1228)
    assign avm_lm325665_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm325665_emscripten_compute_dom_pk_code_enable(GPOUT,1229)
    assign avm_lm325665_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm325665_emscripten_compute_dom_pk_code_read(GPOUT,1230)
    assign avm_lm325665_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm325665_emscripten_compute_dom_pk_code_write(GPOUT,1231)
    assign avm_lm325665_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm325665_emscripten_compute_dom_pk_code_writedata(GPOUT,1232)
    assign avm_lm325665_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm325665_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm326766_emscripten_compute_dom_pk_code_address(GPOUT,1233)
    assign avm_lm326766_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm326766_emscripten_compute_dom_pk_code_burstcount(GPOUT,1234)
    assign avm_lm326766_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm326766_emscripten_compute_dom_pk_code_byteenable(GPOUT,1235)
    assign avm_lm326766_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm326766_emscripten_compute_dom_pk_code_enable(GPOUT,1236)
    assign avm_lm326766_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm326766_emscripten_compute_dom_pk_code_read(GPOUT,1237)
    assign avm_lm326766_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm326766_emscripten_compute_dom_pk_code_write(GPOUT,1238)
    assign avm_lm326766_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm326766_emscripten_compute_dom_pk_code_writedata(GPOUT,1239)
    assign avm_lm326766_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm326766_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm327967_emscripten_compute_dom_pk_code_address(GPOUT,1240)
    assign avm_lm327967_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm327967_emscripten_compute_dom_pk_code_burstcount(GPOUT,1241)
    assign avm_lm327967_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm327967_emscripten_compute_dom_pk_code_byteenable(GPOUT,1242)
    assign avm_lm327967_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm327967_emscripten_compute_dom_pk_code_enable(GPOUT,1243)
    assign avm_lm327967_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm327967_emscripten_compute_dom_pk_code_read(GPOUT,1244)
    assign avm_lm327967_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm327967_emscripten_compute_dom_pk_code_write(GPOUT,1245)
    assign avm_lm327967_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm327967_emscripten_compute_dom_pk_code_writedata(GPOUT,1246)
    assign avm_lm327967_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm327967_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm329168_emscripten_compute_dom_pk_code_address(GPOUT,1247)
    assign avm_lm329168_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm329168_emscripten_compute_dom_pk_code_burstcount(GPOUT,1248)
    assign avm_lm329168_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm329168_emscripten_compute_dom_pk_code_byteenable(GPOUT,1249)
    assign avm_lm329168_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm329168_emscripten_compute_dom_pk_code_enable(GPOUT,1250)
    assign avm_lm329168_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm329168_emscripten_compute_dom_pk_code_read(GPOUT,1251)
    assign avm_lm329168_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm329168_emscripten_compute_dom_pk_code_write(GPOUT,1252)
    assign avm_lm329168_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm329168_emscripten_compute_dom_pk_code_writedata(GPOUT,1253)
    assign avm_lm329168_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm329168_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm330369_emscripten_compute_dom_pk_code_address(GPOUT,1254)
    assign avm_lm330369_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm330369_emscripten_compute_dom_pk_code_burstcount(GPOUT,1255)
    assign avm_lm330369_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm330369_emscripten_compute_dom_pk_code_byteenable(GPOUT,1256)
    assign avm_lm330369_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm330369_emscripten_compute_dom_pk_code_enable(GPOUT,1257)
    assign avm_lm330369_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm330369_emscripten_compute_dom_pk_code_read(GPOUT,1258)
    assign avm_lm330369_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm330369_emscripten_compute_dom_pk_code_write(GPOUT,1259)
    assign avm_lm330369_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm330369_emscripten_compute_dom_pk_code_writedata(GPOUT,1260)
    assign avm_lm330369_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm330369_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm331470_emscripten_compute_dom_pk_code_address(GPOUT,1261)
    assign avm_lm331470_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm331470_emscripten_compute_dom_pk_code_burstcount(GPOUT,1262)
    assign avm_lm331470_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm331470_emscripten_compute_dom_pk_code_byteenable(GPOUT,1263)
    assign avm_lm331470_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm331470_emscripten_compute_dom_pk_code_enable(GPOUT,1264)
    assign avm_lm331470_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm331470_emscripten_compute_dom_pk_code_read(GPOUT,1265)
    assign avm_lm331470_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm331470_emscripten_compute_dom_pk_code_write(GPOUT,1266)
    assign avm_lm331470_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm331470_emscripten_compute_dom_pk_code_writedata(GPOUT,1267)
    assign avm_lm331470_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm331470_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm332571_emscripten_compute_dom_pk_code_address(GPOUT,1268)
    assign avm_lm332571_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm332571_emscripten_compute_dom_pk_code_burstcount(GPOUT,1269)
    assign avm_lm332571_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm332571_emscripten_compute_dom_pk_code_byteenable(GPOUT,1270)
    assign avm_lm332571_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm332571_emscripten_compute_dom_pk_code_enable(GPOUT,1271)
    assign avm_lm332571_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm332571_emscripten_compute_dom_pk_code_read(GPOUT,1272)
    assign avm_lm332571_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm332571_emscripten_compute_dom_pk_code_write(GPOUT,1273)
    assign avm_lm332571_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm332571_emscripten_compute_dom_pk_code_writedata(GPOUT,1274)
    assign avm_lm332571_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm332571_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm333872_emscripten_compute_dom_pk_code_address(GPOUT,1275)
    assign avm_lm333872_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm333872_emscripten_compute_dom_pk_code_burstcount(GPOUT,1276)
    assign avm_lm333872_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm333872_emscripten_compute_dom_pk_code_byteenable(GPOUT,1277)
    assign avm_lm333872_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm333872_emscripten_compute_dom_pk_code_enable(GPOUT,1278)
    assign avm_lm333872_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm333872_emscripten_compute_dom_pk_code_read(GPOUT,1279)
    assign avm_lm333872_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm333872_emscripten_compute_dom_pk_code_write(GPOUT,1280)
    assign avm_lm333872_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm333872_emscripten_compute_dom_pk_code_writedata(GPOUT,1281)
    assign avm_lm333872_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm333872_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm335073_emscripten_compute_dom_pk_code_address(GPOUT,1282)
    assign avm_lm335073_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm335073_emscripten_compute_dom_pk_code_burstcount(GPOUT,1283)
    assign avm_lm335073_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm335073_emscripten_compute_dom_pk_code_byteenable(GPOUT,1284)
    assign avm_lm335073_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm335073_emscripten_compute_dom_pk_code_enable(GPOUT,1285)
    assign avm_lm335073_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm335073_emscripten_compute_dom_pk_code_read(GPOUT,1286)
    assign avm_lm335073_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm335073_emscripten_compute_dom_pk_code_write(GPOUT,1287)
    assign avm_lm335073_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm335073_emscripten_compute_dom_pk_code_writedata(GPOUT,1288)
    assign avm_lm335073_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm335073_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm336374_emscripten_compute_dom_pk_code_address(GPOUT,1289)
    assign avm_lm336374_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm336374_emscripten_compute_dom_pk_code_burstcount(GPOUT,1290)
    assign avm_lm336374_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm336374_emscripten_compute_dom_pk_code_byteenable(GPOUT,1291)
    assign avm_lm336374_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm336374_emscripten_compute_dom_pk_code_enable(GPOUT,1292)
    assign avm_lm336374_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm336374_emscripten_compute_dom_pk_code_read(GPOUT,1293)
    assign avm_lm336374_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm336374_emscripten_compute_dom_pk_code_write(GPOUT,1294)
    assign avm_lm336374_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm336374_emscripten_compute_dom_pk_code_writedata(GPOUT,1295)
    assign avm_lm336374_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm336374_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm337475_emscripten_compute_dom_pk_code_address(GPOUT,1296)
    assign avm_lm337475_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm337475_emscripten_compute_dom_pk_code_burstcount(GPOUT,1297)
    assign avm_lm337475_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm337475_emscripten_compute_dom_pk_code_byteenable(GPOUT,1298)
    assign avm_lm337475_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm337475_emscripten_compute_dom_pk_code_enable(GPOUT,1299)
    assign avm_lm337475_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm337475_emscripten_compute_dom_pk_code_read(GPOUT,1300)
    assign avm_lm337475_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm337475_emscripten_compute_dom_pk_code_write(GPOUT,1301)
    assign avm_lm337475_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm337475_emscripten_compute_dom_pk_code_writedata(GPOUT,1302)
    assign avm_lm337475_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm337475_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm338676_emscripten_compute_dom_pk_code_address(GPOUT,1303)
    assign avm_lm338676_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm338676_emscripten_compute_dom_pk_code_burstcount(GPOUT,1304)
    assign avm_lm338676_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm338676_emscripten_compute_dom_pk_code_byteenable(GPOUT,1305)
    assign avm_lm338676_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm338676_emscripten_compute_dom_pk_code_enable(GPOUT,1306)
    assign avm_lm338676_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm338676_emscripten_compute_dom_pk_code_read(GPOUT,1307)
    assign avm_lm338676_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm338676_emscripten_compute_dom_pk_code_write(GPOUT,1308)
    assign avm_lm338676_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm338676_emscripten_compute_dom_pk_code_writedata(GPOUT,1309)
    assign avm_lm338676_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm338676_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm339777_emscripten_compute_dom_pk_code_address(GPOUT,1310)
    assign avm_lm339777_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm339777_emscripten_compute_dom_pk_code_burstcount(GPOUT,1311)
    assign avm_lm339777_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm339777_emscripten_compute_dom_pk_code_byteenable(GPOUT,1312)
    assign avm_lm339777_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm339777_emscripten_compute_dom_pk_code_enable(GPOUT,1313)
    assign avm_lm339777_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm339777_emscripten_compute_dom_pk_code_read(GPOUT,1314)
    assign avm_lm339777_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm339777_emscripten_compute_dom_pk_code_write(GPOUT,1315)
    assign avm_lm339777_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm339777_emscripten_compute_dom_pk_code_writedata(GPOUT,1316)
    assign avm_lm339777_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm339777_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm340878_emscripten_compute_dom_pk_code_address(GPOUT,1317)
    assign avm_lm340878_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm340878_emscripten_compute_dom_pk_code_burstcount(GPOUT,1318)
    assign avm_lm340878_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm340878_emscripten_compute_dom_pk_code_byteenable(GPOUT,1319)
    assign avm_lm340878_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm340878_emscripten_compute_dom_pk_code_enable(GPOUT,1320)
    assign avm_lm340878_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm340878_emscripten_compute_dom_pk_code_read(GPOUT,1321)
    assign avm_lm340878_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm340878_emscripten_compute_dom_pk_code_write(GPOUT,1322)
    assign avm_lm340878_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm340878_emscripten_compute_dom_pk_code_writedata(GPOUT,1323)
    assign avm_lm340878_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm340878_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm342179_emscripten_compute_dom_pk_code_address(GPOUT,1324)
    assign avm_lm342179_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm342179_emscripten_compute_dom_pk_code_burstcount(GPOUT,1325)
    assign avm_lm342179_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm342179_emscripten_compute_dom_pk_code_byteenable(GPOUT,1326)
    assign avm_lm342179_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm342179_emscripten_compute_dom_pk_code_enable(GPOUT,1327)
    assign avm_lm342179_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm342179_emscripten_compute_dom_pk_code_read(GPOUT,1328)
    assign avm_lm342179_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm342179_emscripten_compute_dom_pk_code_write(GPOUT,1329)
    assign avm_lm342179_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm342179_emscripten_compute_dom_pk_code_writedata(GPOUT,1330)
    assign avm_lm342179_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm342179_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm343280_emscripten_compute_dom_pk_code_address(GPOUT,1331)
    assign avm_lm343280_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm343280_emscripten_compute_dom_pk_code_burstcount(GPOUT,1332)
    assign avm_lm343280_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm343280_emscripten_compute_dom_pk_code_byteenable(GPOUT,1333)
    assign avm_lm343280_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm343280_emscripten_compute_dom_pk_code_enable(GPOUT,1334)
    assign avm_lm343280_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm343280_emscripten_compute_dom_pk_code_read(GPOUT,1335)
    assign avm_lm343280_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm343280_emscripten_compute_dom_pk_code_write(GPOUT,1336)
    assign avm_lm343280_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm343280_emscripten_compute_dom_pk_code_writedata(GPOUT,1337)
    assign avm_lm343280_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm343280_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm344381_emscripten_compute_dom_pk_code_address(GPOUT,1338)
    assign avm_lm344381_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm344381_emscripten_compute_dom_pk_code_burstcount(GPOUT,1339)
    assign avm_lm344381_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm344381_emscripten_compute_dom_pk_code_byteenable(GPOUT,1340)
    assign avm_lm344381_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm344381_emscripten_compute_dom_pk_code_enable(GPOUT,1341)
    assign avm_lm344381_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm344381_emscripten_compute_dom_pk_code_read(GPOUT,1342)
    assign avm_lm344381_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm344381_emscripten_compute_dom_pk_code_write(GPOUT,1343)
    assign avm_lm344381_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm344381_emscripten_compute_dom_pk_code_writedata(GPOUT,1344)
    assign avm_lm344381_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm344381_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm345582_emscripten_compute_dom_pk_code_address(GPOUT,1345)
    assign avm_lm345582_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm345582_emscripten_compute_dom_pk_code_burstcount(GPOUT,1346)
    assign avm_lm345582_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm345582_emscripten_compute_dom_pk_code_byteenable(GPOUT,1347)
    assign avm_lm345582_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm345582_emscripten_compute_dom_pk_code_enable(GPOUT,1348)
    assign avm_lm345582_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm345582_emscripten_compute_dom_pk_code_read(GPOUT,1349)
    assign avm_lm345582_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm345582_emscripten_compute_dom_pk_code_write(GPOUT,1350)
    assign avm_lm345582_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm345582_emscripten_compute_dom_pk_code_writedata(GPOUT,1351)
    assign avm_lm345582_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm345582_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm346783_emscripten_compute_dom_pk_code_address(GPOUT,1352)
    assign avm_lm346783_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm346783_emscripten_compute_dom_pk_code_burstcount(GPOUT,1353)
    assign avm_lm346783_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm346783_emscripten_compute_dom_pk_code_byteenable(GPOUT,1354)
    assign avm_lm346783_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm346783_emscripten_compute_dom_pk_code_enable(GPOUT,1355)
    assign avm_lm346783_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm346783_emscripten_compute_dom_pk_code_read(GPOUT,1356)
    assign avm_lm346783_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm346783_emscripten_compute_dom_pk_code_write(GPOUT,1357)
    assign avm_lm346783_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm346783_emscripten_compute_dom_pk_code_writedata(GPOUT,1358)
    assign avm_lm346783_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm346783_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm348084_emscripten_compute_dom_pk_code_address(GPOUT,1359)
    assign avm_lm348084_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm348084_emscripten_compute_dom_pk_code_burstcount(GPOUT,1360)
    assign avm_lm348084_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm348084_emscripten_compute_dom_pk_code_byteenable(GPOUT,1361)
    assign avm_lm348084_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm348084_emscripten_compute_dom_pk_code_enable(GPOUT,1362)
    assign avm_lm348084_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm348084_emscripten_compute_dom_pk_code_read(GPOUT,1363)
    assign avm_lm348084_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm348084_emscripten_compute_dom_pk_code_write(GPOUT,1364)
    assign avm_lm348084_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm348084_emscripten_compute_dom_pk_code_writedata(GPOUT,1365)
    assign avm_lm348084_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm348084_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm349285_emscripten_compute_dom_pk_code_address(GPOUT,1366)
    assign avm_lm349285_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm349285_emscripten_compute_dom_pk_code_burstcount(GPOUT,1367)
    assign avm_lm349285_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm349285_emscripten_compute_dom_pk_code_byteenable(GPOUT,1368)
    assign avm_lm349285_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm349285_emscripten_compute_dom_pk_code_enable(GPOUT,1369)
    assign avm_lm349285_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm349285_emscripten_compute_dom_pk_code_read(GPOUT,1370)
    assign avm_lm349285_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm349285_emscripten_compute_dom_pk_code_write(GPOUT,1371)
    assign avm_lm349285_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm349285_emscripten_compute_dom_pk_code_writedata(GPOUT,1372)
    assign avm_lm349285_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm349285_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm350486_emscripten_compute_dom_pk_code_address(GPOUT,1373)
    assign avm_lm350486_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm350486_emscripten_compute_dom_pk_code_burstcount(GPOUT,1374)
    assign avm_lm350486_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm350486_emscripten_compute_dom_pk_code_byteenable(GPOUT,1375)
    assign avm_lm350486_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm350486_emscripten_compute_dom_pk_code_enable(GPOUT,1376)
    assign avm_lm350486_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm350486_emscripten_compute_dom_pk_code_read(GPOUT,1377)
    assign avm_lm350486_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm350486_emscripten_compute_dom_pk_code_write(GPOUT,1378)
    assign avm_lm350486_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm350486_emscripten_compute_dom_pk_code_writedata(GPOUT,1379)
    assign avm_lm350486_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm350486_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm351687_emscripten_compute_dom_pk_code_address(GPOUT,1380)
    assign avm_lm351687_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm351687_emscripten_compute_dom_pk_code_burstcount(GPOUT,1381)
    assign avm_lm351687_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm351687_emscripten_compute_dom_pk_code_byteenable(GPOUT,1382)
    assign avm_lm351687_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm351687_emscripten_compute_dom_pk_code_enable(GPOUT,1383)
    assign avm_lm351687_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm351687_emscripten_compute_dom_pk_code_read(GPOUT,1384)
    assign avm_lm351687_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm351687_emscripten_compute_dom_pk_code_write(GPOUT,1385)
    assign avm_lm351687_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm351687_emscripten_compute_dom_pk_code_writedata(GPOUT,1386)
    assign avm_lm351687_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm351687_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm352888_emscripten_compute_dom_pk_code_address(GPOUT,1387)
    assign avm_lm352888_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm352888_emscripten_compute_dom_pk_code_burstcount(GPOUT,1388)
    assign avm_lm352888_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm352888_emscripten_compute_dom_pk_code_byteenable(GPOUT,1389)
    assign avm_lm352888_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm352888_emscripten_compute_dom_pk_code_enable(GPOUT,1390)
    assign avm_lm352888_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm352888_emscripten_compute_dom_pk_code_read(GPOUT,1391)
    assign avm_lm352888_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm352888_emscripten_compute_dom_pk_code_write(GPOUT,1392)
    assign avm_lm352888_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm352888_emscripten_compute_dom_pk_code_writedata(GPOUT,1393)
    assign avm_lm352888_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm352888_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm353989_emscripten_compute_dom_pk_code_address(GPOUT,1394)
    assign avm_lm353989_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm353989_emscripten_compute_dom_pk_code_burstcount(GPOUT,1395)
    assign avm_lm353989_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm353989_emscripten_compute_dom_pk_code_byteenable(GPOUT,1396)
    assign avm_lm353989_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm353989_emscripten_compute_dom_pk_code_enable(GPOUT,1397)
    assign avm_lm353989_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm353989_emscripten_compute_dom_pk_code_read(GPOUT,1398)
    assign avm_lm353989_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm353989_emscripten_compute_dom_pk_code_write(GPOUT,1399)
    assign avm_lm353989_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm353989_emscripten_compute_dom_pk_code_writedata(GPOUT,1400)
    assign avm_lm353989_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm353989_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm355190_emscripten_compute_dom_pk_code_address(GPOUT,1401)
    assign avm_lm355190_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm355190_emscripten_compute_dom_pk_code_burstcount(GPOUT,1402)
    assign avm_lm355190_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm355190_emscripten_compute_dom_pk_code_byteenable(GPOUT,1403)
    assign avm_lm355190_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm355190_emscripten_compute_dom_pk_code_enable(GPOUT,1404)
    assign avm_lm355190_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm355190_emscripten_compute_dom_pk_code_read(GPOUT,1405)
    assign avm_lm355190_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm355190_emscripten_compute_dom_pk_code_write(GPOUT,1406)
    assign avm_lm355190_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm355190_emscripten_compute_dom_pk_code_writedata(GPOUT,1407)
    assign avm_lm355190_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm355190_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm356291_emscripten_compute_dom_pk_code_address(GPOUT,1408)
    assign avm_lm356291_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm356291_emscripten_compute_dom_pk_code_burstcount(GPOUT,1409)
    assign avm_lm356291_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm356291_emscripten_compute_dom_pk_code_byteenable(GPOUT,1410)
    assign avm_lm356291_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm356291_emscripten_compute_dom_pk_code_enable(GPOUT,1411)
    assign avm_lm356291_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm356291_emscripten_compute_dom_pk_code_read(GPOUT,1412)
    assign avm_lm356291_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm356291_emscripten_compute_dom_pk_code_write(GPOUT,1413)
    assign avm_lm356291_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm356291_emscripten_compute_dom_pk_code_writedata(GPOUT,1414)
    assign avm_lm356291_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm356291_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm357592_emscripten_compute_dom_pk_code_address(GPOUT,1415)
    assign avm_lm357592_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm357592_emscripten_compute_dom_pk_code_burstcount(GPOUT,1416)
    assign avm_lm357592_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm357592_emscripten_compute_dom_pk_code_byteenable(GPOUT,1417)
    assign avm_lm357592_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm357592_emscripten_compute_dom_pk_code_enable(GPOUT,1418)
    assign avm_lm357592_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm357592_emscripten_compute_dom_pk_code_read(GPOUT,1419)
    assign avm_lm357592_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm357592_emscripten_compute_dom_pk_code_write(GPOUT,1420)
    assign avm_lm357592_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm357592_emscripten_compute_dom_pk_code_writedata(GPOUT,1421)
    assign avm_lm357592_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm357592_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm358693_emscripten_compute_dom_pk_code_address(GPOUT,1422)
    assign avm_lm358693_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm358693_emscripten_compute_dom_pk_code_burstcount(GPOUT,1423)
    assign avm_lm358693_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm358693_emscripten_compute_dom_pk_code_byteenable(GPOUT,1424)
    assign avm_lm358693_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm358693_emscripten_compute_dom_pk_code_enable(GPOUT,1425)
    assign avm_lm358693_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm358693_emscripten_compute_dom_pk_code_read(GPOUT,1426)
    assign avm_lm358693_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm358693_emscripten_compute_dom_pk_code_write(GPOUT,1427)
    assign avm_lm358693_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm358693_emscripten_compute_dom_pk_code_writedata(GPOUT,1428)
    assign avm_lm358693_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm358693_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm359794_emscripten_compute_dom_pk_code_address(GPOUT,1429)
    assign avm_lm359794_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm359794_emscripten_compute_dom_pk_code_burstcount(GPOUT,1430)
    assign avm_lm359794_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm359794_emscripten_compute_dom_pk_code_byteenable(GPOUT,1431)
    assign avm_lm359794_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm359794_emscripten_compute_dom_pk_code_enable(GPOUT,1432)
    assign avm_lm359794_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm359794_emscripten_compute_dom_pk_code_read(GPOUT,1433)
    assign avm_lm359794_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm359794_emscripten_compute_dom_pk_code_write(GPOUT,1434)
    assign avm_lm359794_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm359794_emscripten_compute_dom_pk_code_writedata(GPOUT,1435)
    assign avm_lm359794_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm359794_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm360895_emscripten_compute_dom_pk_code_address(GPOUT,1436)
    assign avm_lm360895_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm360895_emscripten_compute_dom_pk_code_burstcount(GPOUT,1437)
    assign avm_lm360895_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm360895_emscripten_compute_dom_pk_code_byteenable(GPOUT,1438)
    assign avm_lm360895_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm360895_emscripten_compute_dom_pk_code_enable(GPOUT,1439)
    assign avm_lm360895_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm360895_emscripten_compute_dom_pk_code_read(GPOUT,1440)
    assign avm_lm360895_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm360895_emscripten_compute_dom_pk_code_write(GPOUT,1441)
    assign avm_lm360895_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm360895_emscripten_compute_dom_pk_code_writedata(GPOUT,1442)
    assign avm_lm360895_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm360895_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm362096_emscripten_compute_dom_pk_code_address(GPOUT,1443)
    assign avm_lm362096_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm362096_emscripten_compute_dom_pk_code_burstcount(GPOUT,1444)
    assign avm_lm362096_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm362096_emscripten_compute_dom_pk_code_byteenable(GPOUT,1445)
    assign avm_lm362096_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm362096_emscripten_compute_dom_pk_code_enable(GPOUT,1446)
    assign avm_lm362096_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm362096_emscripten_compute_dom_pk_code_read(GPOUT,1447)
    assign avm_lm362096_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm362096_emscripten_compute_dom_pk_code_write(GPOUT,1448)
    assign avm_lm362096_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm362096_emscripten_compute_dom_pk_code_writedata(GPOUT,1449)
    assign avm_lm362096_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm362096_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm363297_emscripten_compute_dom_pk_code_address(GPOUT,1450)
    assign avm_lm363297_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm363297_emscripten_compute_dom_pk_code_burstcount(GPOUT,1451)
    assign avm_lm363297_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm363297_emscripten_compute_dom_pk_code_byteenable(GPOUT,1452)
    assign avm_lm363297_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm363297_emscripten_compute_dom_pk_code_enable(GPOUT,1453)
    assign avm_lm363297_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm363297_emscripten_compute_dom_pk_code_read(GPOUT,1454)
    assign avm_lm363297_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm363297_emscripten_compute_dom_pk_code_write(GPOUT,1455)
    assign avm_lm363297_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm363297_emscripten_compute_dom_pk_code_writedata(GPOUT,1456)
    assign avm_lm363297_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm363297_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm364398_emscripten_compute_dom_pk_code_address(GPOUT,1457)
    assign avm_lm364398_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm364398_emscripten_compute_dom_pk_code_burstcount(GPOUT,1458)
    assign avm_lm364398_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm364398_emscripten_compute_dom_pk_code_byteenable(GPOUT,1459)
    assign avm_lm364398_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm364398_emscripten_compute_dom_pk_code_enable(GPOUT,1460)
    assign avm_lm364398_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm364398_emscripten_compute_dom_pk_code_read(GPOUT,1461)
    assign avm_lm364398_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm364398_emscripten_compute_dom_pk_code_write(GPOUT,1462)
    assign avm_lm364398_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm364398_emscripten_compute_dom_pk_code_writedata(GPOUT,1463)
    assign avm_lm364398_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm364398_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm365699_emscripten_compute_dom_pk_code_address(GPOUT,1464)
    assign avm_lm365699_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm365699_emscripten_compute_dom_pk_code_burstcount(GPOUT,1465)
    assign avm_lm365699_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm365699_emscripten_compute_dom_pk_code_byteenable(GPOUT,1466)
    assign avm_lm365699_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm365699_emscripten_compute_dom_pk_code_enable(GPOUT,1467)
    assign avm_lm365699_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm365699_emscripten_compute_dom_pk_code_read(GPOUT,1468)
    assign avm_lm365699_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm365699_emscripten_compute_dom_pk_code_write(GPOUT,1469)
    assign avm_lm365699_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm365699_emscripten_compute_dom_pk_code_writedata(GPOUT,1470)
    assign avm_lm365699_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm365699_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3668100_emscripten_compute_dom_pk_code_address(GPOUT,1471)
    assign avm_lm3668100_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3668100_emscripten_compute_dom_pk_code_burstcount(GPOUT,1472)
    assign avm_lm3668100_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3668100_emscripten_compute_dom_pk_code_byteenable(GPOUT,1473)
    assign avm_lm3668100_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3668100_emscripten_compute_dom_pk_code_enable(GPOUT,1474)
    assign avm_lm3668100_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3668100_emscripten_compute_dom_pk_code_read(GPOUT,1475)
    assign avm_lm3668100_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3668100_emscripten_compute_dom_pk_code_write(GPOUT,1476)
    assign avm_lm3668100_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3668100_emscripten_compute_dom_pk_code_writedata(GPOUT,1477)
    assign avm_lm3668100_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3681101_emscripten_compute_dom_pk_code_address(GPOUT,1478)
    assign avm_lm3681101_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3681101_emscripten_compute_dom_pk_code_burstcount(GPOUT,1479)
    assign avm_lm3681101_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3681101_emscripten_compute_dom_pk_code_byteenable(GPOUT,1480)
    assign avm_lm3681101_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3681101_emscripten_compute_dom_pk_code_enable(GPOUT,1481)
    assign avm_lm3681101_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3681101_emscripten_compute_dom_pk_code_read(GPOUT,1482)
    assign avm_lm3681101_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3681101_emscripten_compute_dom_pk_code_write(GPOUT,1483)
    assign avm_lm3681101_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3681101_emscripten_compute_dom_pk_code_writedata(GPOUT,1484)
    assign avm_lm3681101_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3693102_emscripten_compute_dom_pk_code_address(GPOUT,1485)
    assign avm_lm3693102_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3693102_emscripten_compute_dom_pk_code_burstcount(GPOUT,1486)
    assign avm_lm3693102_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3693102_emscripten_compute_dom_pk_code_byteenable(GPOUT,1487)
    assign avm_lm3693102_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3693102_emscripten_compute_dom_pk_code_enable(GPOUT,1488)
    assign avm_lm3693102_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3693102_emscripten_compute_dom_pk_code_read(GPOUT,1489)
    assign avm_lm3693102_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3693102_emscripten_compute_dom_pk_code_write(GPOUT,1490)
    assign avm_lm3693102_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3693102_emscripten_compute_dom_pk_code_writedata(GPOUT,1491)
    assign avm_lm3693102_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3706103_emscripten_compute_dom_pk_code_address(GPOUT,1492)
    assign avm_lm3706103_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3706103_emscripten_compute_dom_pk_code_burstcount(GPOUT,1493)
    assign avm_lm3706103_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3706103_emscripten_compute_dom_pk_code_byteenable(GPOUT,1494)
    assign avm_lm3706103_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3706103_emscripten_compute_dom_pk_code_enable(GPOUT,1495)
    assign avm_lm3706103_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3706103_emscripten_compute_dom_pk_code_read(GPOUT,1496)
    assign avm_lm3706103_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3706103_emscripten_compute_dom_pk_code_write(GPOUT,1497)
    assign avm_lm3706103_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3706103_emscripten_compute_dom_pk_code_writedata(GPOUT,1498)
    assign avm_lm3706103_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3718104_emscripten_compute_dom_pk_code_address(GPOUT,1499)
    assign avm_lm3718104_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3718104_emscripten_compute_dom_pk_code_burstcount(GPOUT,1500)
    assign avm_lm3718104_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3718104_emscripten_compute_dom_pk_code_byteenable(GPOUT,1501)
    assign avm_lm3718104_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3718104_emscripten_compute_dom_pk_code_enable(GPOUT,1502)
    assign avm_lm3718104_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3718104_emscripten_compute_dom_pk_code_read(GPOUT,1503)
    assign avm_lm3718104_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3718104_emscripten_compute_dom_pk_code_write(GPOUT,1504)
    assign avm_lm3718104_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3718104_emscripten_compute_dom_pk_code_writedata(GPOUT,1505)
    assign avm_lm3718104_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3731105_emscripten_compute_dom_pk_code_address(GPOUT,1506)
    assign avm_lm3731105_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3731105_emscripten_compute_dom_pk_code_burstcount(GPOUT,1507)
    assign avm_lm3731105_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3731105_emscripten_compute_dom_pk_code_byteenable(GPOUT,1508)
    assign avm_lm3731105_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3731105_emscripten_compute_dom_pk_code_enable(GPOUT,1509)
    assign avm_lm3731105_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3731105_emscripten_compute_dom_pk_code_read(GPOUT,1510)
    assign avm_lm3731105_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3731105_emscripten_compute_dom_pk_code_write(GPOUT,1511)
    assign avm_lm3731105_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3731105_emscripten_compute_dom_pk_code_writedata(GPOUT,1512)
    assign avm_lm3731105_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3743106_emscripten_compute_dom_pk_code_address(GPOUT,1513)
    assign avm_lm3743106_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3743106_emscripten_compute_dom_pk_code_burstcount(GPOUT,1514)
    assign avm_lm3743106_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3743106_emscripten_compute_dom_pk_code_byteenable(GPOUT,1515)
    assign avm_lm3743106_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3743106_emscripten_compute_dom_pk_code_enable(GPOUT,1516)
    assign avm_lm3743106_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3743106_emscripten_compute_dom_pk_code_read(GPOUT,1517)
    assign avm_lm3743106_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3743106_emscripten_compute_dom_pk_code_write(GPOUT,1518)
    assign avm_lm3743106_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3743106_emscripten_compute_dom_pk_code_writedata(GPOUT,1519)
    assign avm_lm3743106_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3755107_emscripten_compute_dom_pk_code_address(GPOUT,1520)
    assign avm_lm3755107_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3755107_emscripten_compute_dom_pk_code_burstcount(GPOUT,1521)
    assign avm_lm3755107_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3755107_emscripten_compute_dom_pk_code_byteenable(GPOUT,1522)
    assign avm_lm3755107_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3755107_emscripten_compute_dom_pk_code_enable(GPOUT,1523)
    assign avm_lm3755107_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3755107_emscripten_compute_dom_pk_code_read(GPOUT,1524)
    assign avm_lm3755107_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3755107_emscripten_compute_dom_pk_code_write(GPOUT,1525)
    assign avm_lm3755107_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3755107_emscripten_compute_dom_pk_code_writedata(GPOUT,1526)
    assign avm_lm3755107_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3767108_emscripten_compute_dom_pk_code_address(GPOUT,1527)
    assign avm_lm3767108_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3767108_emscripten_compute_dom_pk_code_burstcount(GPOUT,1528)
    assign avm_lm3767108_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3767108_emscripten_compute_dom_pk_code_byteenable(GPOUT,1529)
    assign avm_lm3767108_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3767108_emscripten_compute_dom_pk_code_enable(GPOUT,1530)
    assign avm_lm3767108_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3767108_emscripten_compute_dom_pk_code_read(GPOUT,1531)
    assign avm_lm3767108_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3767108_emscripten_compute_dom_pk_code_write(GPOUT,1532)
    assign avm_lm3767108_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3767108_emscripten_compute_dom_pk_code_writedata(GPOUT,1533)
    assign avm_lm3767108_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3778109_emscripten_compute_dom_pk_code_address(GPOUT,1534)
    assign avm_lm3778109_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3778109_emscripten_compute_dom_pk_code_burstcount(GPOUT,1535)
    assign avm_lm3778109_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3778109_emscripten_compute_dom_pk_code_byteenable(GPOUT,1536)
    assign avm_lm3778109_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3778109_emscripten_compute_dom_pk_code_enable(GPOUT,1537)
    assign avm_lm3778109_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3778109_emscripten_compute_dom_pk_code_read(GPOUT,1538)
    assign avm_lm3778109_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3778109_emscripten_compute_dom_pk_code_write(GPOUT,1539)
    assign avm_lm3778109_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3778109_emscripten_compute_dom_pk_code_writedata(GPOUT,1540)
    assign avm_lm3778109_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3789110_emscripten_compute_dom_pk_code_address(GPOUT,1541)
    assign avm_lm3789110_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3789110_emscripten_compute_dom_pk_code_burstcount(GPOUT,1542)
    assign avm_lm3789110_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3789110_emscripten_compute_dom_pk_code_byteenable(GPOUT,1543)
    assign avm_lm3789110_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3789110_emscripten_compute_dom_pk_code_enable(GPOUT,1544)
    assign avm_lm3789110_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3789110_emscripten_compute_dom_pk_code_read(GPOUT,1545)
    assign avm_lm3789110_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3789110_emscripten_compute_dom_pk_code_write(GPOUT,1546)
    assign avm_lm3789110_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3789110_emscripten_compute_dom_pk_code_writedata(GPOUT,1547)
    assign avm_lm3789110_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3801111_emscripten_compute_dom_pk_code_address(GPOUT,1548)
    assign avm_lm3801111_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3801111_emscripten_compute_dom_pk_code_burstcount(GPOUT,1549)
    assign avm_lm3801111_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3801111_emscripten_compute_dom_pk_code_byteenable(GPOUT,1550)
    assign avm_lm3801111_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3801111_emscripten_compute_dom_pk_code_enable(GPOUT,1551)
    assign avm_lm3801111_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3801111_emscripten_compute_dom_pk_code_read(GPOUT,1552)
    assign avm_lm3801111_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3801111_emscripten_compute_dom_pk_code_write(GPOUT,1553)
    assign avm_lm3801111_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3801111_emscripten_compute_dom_pk_code_writedata(GPOUT,1554)
    assign avm_lm3801111_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3812112_emscripten_compute_dom_pk_code_address(GPOUT,1555)
    assign avm_lm3812112_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3812112_emscripten_compute_dom_pk_code_burstcount(GPOUT,1556)
    assign avm_lm3812112_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3812112_emscripten_compute_dom_pk_code_byteenable(GPOUT,1557)
    assign avm_lm3812112_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3812112_emscripten_compute_dom_pk_code_enable(GPOUT,1558)
    assign avm_lm3812112_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3812112_emscripten_compute_dom_pk_code_read(GPOUT,1559)
    assign avm_lm3812112_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3812112_emscripten_compute_dom_pk_code_write(GPOUT,1560)
    assign avm_lm3812112_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3812112_emscripten_compute_dom_pk_code_writedata(GPOUT,1561)
    assign avm_lm3812112_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3824113_emscripten_compute_dom_pk_code_address(GPOUT,1562)
    assign avm_lm3824113_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3824113_emscripten_compute_dom_pk_code_burstcount(GPOUT,1563)
    assign avm_lm3824113_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3824113_emscripten_compute_dom_pk_code_byteenable(GPOUT,1564)
    assign avm_lm3824113_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3824113_emscripten_compute_dom_pk_code_enable(GPOUT,1565)
    assign avm_lm3824113_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3824113_emscripten_compute_dom_pk_code_read(GPOUT,1566)
    assign avm_lm3824113_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3824113_emscripten_compute_dom_pk_code_write(GPOUT,1567)
    assign avm_lm3824113_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3824113_emscripten_compute_dom_pk_code_writedata(GPOUT,1568)
    assign avm_lm3824113_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3836114_emscripten_compute_dom_pk_code_address(GPOUT,1569)
    assign avm_lm3836114_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3836114_emscripten_compute_dom_pk_code_burstcount(GPOUT,1570)
    assign avm_lm3836114_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3836114_emscripten_compute_dom_pk_code_byteenable(GPOUT,1571)
    assign avm_lm3836114_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3836114_emscripten_compute_dom_pk_code_enable(GPOUT,1572)
    assign avm_lm3836114_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3836114_emscripten_compute_dom_pk_code_read(GPOUT,1573)
    assign avm_lm3836114_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3836114_emscripten_compute_dom_pk_code_write(GPOUT,1574)
    assign avm_lm3836114_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3836114_emscripten_compute_dom_pk_code_writedata(GPOUT,1575)
    assign avm_lm3836114_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3849115_emscripten_compute_dom_pk_code_address(GPOUT,1576)
    assign avm_lm3849115_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3849115_emscripten_compute_dom_pk_code_burstcount(GPOUT,1577)
    assign avm_lm3849115_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3849115_emscripten_compute_dom_pk_code_byteenable(GPOUT,1578)
    assign avm_lm3849115_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3849115_emscripten_compute_dom_pk_code_enable(GPOUT,1579)
    assign avm_lm3849115_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3849115_emscripten_compute_dom_pk_code_read(GPOUT,1580)
    assign avm_lm3849115_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3849115_emscripten_compute_dom_pk_code_write(GPOUT,1581)
    assign avm_lm3849115_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3849115_emscripten_compute_dom_pk_code_writedata(GPOUT,1582)
    assign avm_lm3849115_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3862116_emscripten_compute_dom_pk_code_address(GPOUT,1583)
    assign avm_lm3862116_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3862116_emscripten_compute_dom_pk_code_burstcount(GPOUT,1584)
    assign avm_lm3862116_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3862116_emscripten_compute_dom_pk_code_byteenable(GPOUT,1585)
    assign avm_lm3862116_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3862116_emscripten_compute_dom_pk_code_enable(GPOUT,1586)
    assign avm_lm3862116_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3862116_emscripten_compute_dom_pk_code_read(GPOUT,1587)
    assign avm_lm3862116_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3862116_emscripten_compute_dom_pk_code_write(GPOUT,1588)
    assign avm_lm3862116_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3862116_emscripten_compute_dom_pk_code_writedata(GPOUT,1589)
    assign avm_lm3862116_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3874117_emscripten_compute_dom_pk_code_address(GPOUT,1590)
    assign avm_lm3874117_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3874117_emscripten_compute_dom_pk_code_burstcount(GPOUT,1591)
    assign avm_lm3874117_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3874117_emscripten_compute_dom_pk_code_byteenable(GPOUT,1592)
    assign avm_lm3874117_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3874117_emscripten_compute_dom_pk_code_enable(GPOUT,1593)
    assign avm_lm3874117_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3874117_emscripten_compute_dom_pk_code_read(GPOUT,1594)
    assign avm_lm3874117_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3874117_emscripten_compute_dom_pk_code_write(GPOUT,1595)
    assign avm_lm3874117_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3874117_emscripten_compute_dom_pk_code_writedata(GPOUT,1596)
    assign avm_lm3874117_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3886118_emscripten_compute_dom_pk_code_address(GPOUT,1597)
    assign avm_lm3886118_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3886118_emscripten_compute_dom_pk_code_burstcount(GPOUT,1598)
    assign avm_lm3886118_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3886118_emscripten_compute_dom_pk_code_byteenable(GPOUT,1599)
    assign avm_lm3886118_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3886118_emscripten_compute_dom_pk_code_enable(GPOUT,1600)
    assign avm_lm3886118_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3886118_emscripten_compute_dom_pk_code_read(GPOUT,1601)
    assign avm_lm3886118_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3886118_emscripten_compute_dom_pk_code_write(GPOUT,1602)
    assign avm_lm3886118_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3886118_emscripten_compute_dom_pk_code_writedata(GPOUT,1603)
    assign avm_lm3886118_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3897119_emscripten_compute_dom_pk_code_address(GPOUT,1604)
    assign avm_lm3897119_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3897119_emscripten_compute_dom_pk_code_burstcount(GPOUT,1605)
    assign avm_lm3897119_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3897119_emscripten_compute_dom_pk_code_byteenable(GPOUT,1606)
    assign avm_lm3897119_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3897119_emscripten_compute_dom_pk_code_enable(GPOUT,1607)
    assign avm_lm3897119_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3897119_emscripten_compute_dom_pk_code_read(GPOUT,1608)
    assign avm_lm3897119_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3897119_emscripten_compute_dom_pk_code_write(GPOUT,1609)
    assign avm_lm3897119_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3897119_emscripten_compute_dom_pk_code_writedata(GPOUT,1610)
    assign avm_lm3897119_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3908120_emscripten_compute_dom_pk_code_address(GPOUT,1611)
    assign avm_lm3908120_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3908120_emscripten_compute_dom_pk_code_burstcount(GPOUT,1612)
    assign avm_lm3908120_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3908120_emscripten_compute_dom_pk_code_byteenable(GPOUT,1613)
    assign avm_lm3908120_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3908120_emscripten_compute_dom_pk_code_enable(GPOUT,1614)
    assign avm_lm3908120_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3908120_emscripten_compute_dom_pk_code_read(GPOUT,1615)
    assign avm_lm3908120_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3908120_emscripten_compute_dom_pk_code_write(GPOUT,1616)
    assign avm_lm3908120_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3908120_emscripten_compute_dom_pk_code_writedata(GPOUT,1617)
    assign avm_lm3908120_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3919121_emscripten_compute_dom_pk_code_address(GPOUT,1618)
    assign avm_lm3919121_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3919121_emscripten_compute_dom_pk_code_burstcount(GPOUT,1619)
    assign avm_lm3919121_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3919121_emscripten_compute_dom_pk_code_byteenable(GPOUT,1620)
    assign avm_lm3919121_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3919121_emscripten_compute_dom_pk_code_enable(GPOUT,1621)
    assign avm_lm3919121_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3919121_emscripten_compute_dom_pk_code_read(GPOUT,1622)
    assign avm_lm3919121_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3919121_emscripten_compute_dom_pk_code_write(GPOUT,1623)
    assign avm_lm3919121_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3919121_emscripten_compute_dom_pk_code_writedata(GPOUT,1624)
    assign avm_lm3919121_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3931122_emscripten_compute_dom_pk_code_address(GPOUT,1625)
    assign avm_lm3931122_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3931122_emscripten_compute_dom_pk_code_burstcount(GPOUT,1626)
    assign avm_lm3931122_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3931122_emscripten_compute_dom_pk_code_byteenable(GPOUT,1627)
    assign avm_lm3931122_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3931122_emscripten_compute_dom_pk_code_enable(GPOUT,1628)
    assign avm_lm3931122_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3931122_emscripten_compute_dom_pk_code_read(GPOUT,1629)
    assign avm_lm3931122_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3931122_emscripten_compute_dom_pk_code_write(GPOUT,1630)
    assign avm_lm3931122_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3931122_emscripten_compute_dom_pk_code_writedata(GPOUT,1631)
    assign avm_lm3931122_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3942123_emscripten_compute_dom_pk_code_address(GPOUT,1632)
    assign avm_lm3942123_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3942123_emscripten_compute_dom_pk_code_burstcount(GPOUT,1633)
    assign avm_lm3942123_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3942123_emscripten_compute_dom_pk_code_byteenable(GPOUT,1634)
    assign avm_lm3942123_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3942123_emscripten_compute_dom_pk_code_enable(GPOUT,1635)
    assign avm_lm3942123_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3942123_emscripten_compute_dom_pk_code_read(GPOUT,1636)
    assign avm_lm3942123_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3942123_emscripten_compute_dom_pk_code_write(GPOUT,1637)
    assign avm_lm3942123_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3942123_emscripten_compute_dom_pk_code_writedata(GPOUT,1638)
    assign avm_lm3942123_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3953124_emscripten_compute_dom_pk_code_address(GPOUT,1639)
    assign avm_lm3953124_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3953124_emscripten_compute_dom_pk_code_burstcount(GPOUT,1640)
    assign avm_lm3953124_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3953124_emscripten_compute_dom_pk_code_byteenable(GPOUT,1641)
    assign avm_lm3953124_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3953124_emscripten_compute_dom_pk_code_enable(GPOUT,1642)
    assign avm_lm3953124_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3953124_emscripten_compute_dom_pk_code_read(GPOUT,1643)
    assign avm_lm3953124_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3953124_emscripten_compute_dom_pk_code_write(GPOUT,1644)
    assign avm_lm3953124_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3953124_emscripten_compute_dom_pk_code_writedata(GPOUT,1645)
    assign avm_lm3953124_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3965125_emscripten_compute_dom_pk_code_address(GPOUT,1646)
    assign avm_lm3965125_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3965125_emscripten_compute_dom_pk_code_burstcount(GPOUT,1647)
    assign avm_lm3965125_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3965125_emscripten_compute_dom_pk_code_byteenable(GPOUT,1648)
    assign avm_lm3965125_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3965125_emscripten_compute_dom_pk_code_enable(GPOUT,1649)
    assign avm_lm3965125_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3965125_emscripten_compute_dom_pk_code_read(GPOUT,1650)
    assign avm_lm3965125_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3965125_emscripten_compute_dom_pk_code_write(GPOUT,1651)
    assign avm_lm3965125_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3965125_emscripten_compute_dom_pk_code_writedata(GPOUT,1652)
    assign avm_lm3965125_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3977126_emscripten_compute_dom_pk_code_address(GPOUT,1653)
    assign avm_lm3977126_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3977126_emscripten_compute_dom_pk_code_burstcount(GPOUT,1654)
    assign avm_lm3977126_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3977126_emscripten_compute_dom_pk_code_byteenable(GPOUT,1655)
    assign avm_lm3977126_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3977126_emscripten_compute_dom_pk_code_enable(GPOUT,1656)
    assign avm_lm3977126_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3977126_emscripten_compute_dom_pk_code_read(GPOUT,1657)
    assign avm_lm3977126_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3977126_emscripten_compute_dom_pk_code_write(GPOUT,1658)
    assign avm_lm3977126_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3977126_emscripten_compute_dom_pk_code_writedata(GPOUT,1659)
    assign avm_lm3977126_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3988127_emscripten_compute_dom_pk_code_address(GPOUT,1660)
    assign avm_lm3988127_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3988127_emscripten_compute_dom_pk_code_burstcount(GPOUT,1661)
    assign avm_lm3988127_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3988127_emscripten_compute_dom_pk_code_byteenable(GPOUT,1662)
    assign avm_lm3988127_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3988127_emscripten_compute_dom_pk_code_enable(GPOUT,1663)
    assign avm_lm3988127_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3988127_emscripten_compute_dom_pk_code_read(GPOUT,1664)
    assign avm_lm3988127_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3988127_emscripten_compute_dom_pk_code_write(GPOUT,1665)
    assign avm_lm3988127_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3988127_emscripten_compute_dom_pk_code_writedata(GPOUT,1666)
    assign avm_lm3988127_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm3_emscripten_compute_dom_pk_code_address(GPOUT,1667)
    assign avm_lm3_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm3_emscripten_compute_dom_pk_code_burstcount(GPOUT,1668)
    assign avm_lm3_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm3_emscripten_compute_dom_pk_code_byteenable(GPOUT,1669)
    assign avm_lm3_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm3_emscripten_compute_dom_pk_code_enable(GPOUT,1670)
    assign avm_lm3_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm3_emscripten_compute_dom_pk_code_read(GPOUT,1671)
    assign avm_lm3_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm3_emscripten_compute_dom_pk_code_write(GPOUT,1672)
    assign avm_lm3_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm3_emscripten_compute_dom_pk_code_writedata(GPOUT,1673)
    assign avm_lm3_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm3_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4000128_emscripten_compute_dom_pk_code_address(GPOUT,1674)
    assign avm_lm4000128_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4000128_emscripten_compute_dom_pk_code_burstcount(GPOUT,1675)
    assign avm_lm4000128_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4000128_emscripten_compute_dom_pk_code_byteenable(GPOUT,1676)
    assign avm_lm4000128_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4000128_emscripten_compute_dom_pk_code_enable(GPOUT,1677)
    assign avm_lm4000128_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4000128_emscripten_compute_dom_pk_code_read(GPOUT,1678)
    assign avm_lm4000128_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4000128_emscripten_compute_dom_pk_code_write(GPOUT,1679)
    assign avm_lm4000128_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4000128_emscripten_compute_dom_pk_code_writedata(GPOUT,1680)
    assign avm_lm4000128_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4012129_emscripten_compute_dom_pk_code_address(GPOUT,1681)
    assign avm_lm4012129_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4012129_emscripten_compute_dom_pk_code_burstcount(GPOUT,1682)
    assign avm_lm4012129_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4012129_emscripten_compute_dom_pk_code_byteenable(GPOUT,1683)
    assign avm_lm4012129_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4012129_emscripten_compute_dom_pk_code_enable(GPOUT,1684)
    assign avm_lm4012129_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4012129_emscripten_compute_dom_pk_code_read(GPOUT,1685)
    assign avm_lm4012129_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4012129_emscripten_compute_dom_pk_code_write(GPOUT,1686)
    assign avm_lm4012129_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4012129_emscripten_compute_dom_pk_code_writedata(GPOUT,1687)
    assign avm_lm4012129_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4024130_emscripten_compute_dom_pk_code_address(GPOUT,1688)
    assign avm_lm4024130_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4024130_emscripten_compute_dom_pk_code_burstcount(GPOUT,1689)
    assign avm_lm4024130_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4024130_emscripten_compute_dom_pk_code_byteenable(GPOUT,1690)
    assign avm_lm4024130_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4024130_emscripten_compute_dom_pk_code_enable(GPOUT,1691)
    assign avm_lm4024130_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4024130_emscripten_compute_dom_pk_code_read(GPOUT,1692)
    assign avm_lm4024130_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4024130_emscripten_compute_dom_pk_code_write(GPOUT,1693)
    assign avm_lm4024130_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4024130_emscripten_compute_dom_pk_code_writedata(GPOUT,1694)
    assign avm_lm4024130_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4036131_emscripten_compute_dom_pk_code_address(GPOUT,1695)
    assign avm_lm4036131_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4036131_emscripten_compute_dom_pk_code_burstcount(GPOUT,1696)
    assign avm_lm4036131_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4036131_emscripten_compute_dom_pk_code_byteenable(GPOUT,1697)
    assign avm_lm4036131_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4036131_emscripten_compute_dom_pk_code_enable(GPOUT,1698)
    assign avm_lm4036131_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4036131_emscripten_compute_dom_pk_code_read(GPOUT,1699)
    assign avm_lm4036131_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4036131_emscripten_compute_dom_pk_code_write(GPOUT,1700)
    assign avm_lm4036131_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4036131_emscripten_compute_dom_pk_code_writedata(GPOUT,1701)
    assign avm_lm4036131_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4047132_emscripten_compute_dom_pk_code_address(GPOUT,1702)
    assign avm_lm4047132_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4047132_emscripten_compute_dom_pk_code_burstcount(GPOUT,1703)
    assign avm_lm4047132_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4047132_emscripten_compute_dom_pk_code_byteenable(GPOUT,1704)
    assign avm_lm4047132_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4047132_emscripten_compute_dom_pk_code_enable(GPOUT,1705)
    assign avm_lm4047132_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4047132_emscripten_compute_dom_pk_code_read(GPOUT,1706)
    assign avm_lm4047132_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4047132_emscripten_compute_dom_pk_code_write(GPOUT,1707)
    assign avm_lm4047132_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4047132_emscripten_compute_dom_pk_code_writedata(GPOUT,1708)
    assign avm_lm4047132_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4058133_emscripten_compute_dom_pk_code_address(GPOUT,1709)
    assign avm_lm4058133_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4058133_emscripten_compute_dom_pk_code_burstcount(GPOUT,1710)
    assign avm_lm4058133_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4058133_emscripten_compute_dom_pk_code_byteenable(GPOUT,1711)
    assign avm_lm4058133_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4058133_emscripten_compute_dom_pk_code_enable(GPOUT,1712)
    assign avm_lm4058133_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4058133_emscripten_compute_dom_pk_code_read(GPOUT,1713)
    assign avm_lm4058133_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4058133_emscripten_compute_dom_pk_code_write(GPOUT,1714)
    assign avm_lm4058133_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4058133_emscripten_compute_dom_pk_code_writedata(GPOUT,1715)
    assign avm_lm4058133_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4070134_emscripten_compute_dom_pk_code_address(GPOUT,1716)
    assign avm_lm4070134_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4070134_emscripten_compute_dom_pk_code_burstcount(GPOUT,1717)
    assign avm_lm4070134_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4070134_emscripten_compute_dom_pk_code_byteenable(GPOUT,1718)
    assign avm_lm4070134_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4070134_emscripten_compute_dom_pk_code_enable(GPOUT,1719)
    assign avm_lm4070134_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4070134_emscripten_compute_dom_pk_code_read(GPOUT,1720)
    assign avm_lm4070134_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4070134_emscripten_compute_dom_pk_code_write(GPOUT,1721)
    assign avm_lm4070134_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4070134_emscripten_compute_dom_pk_code_writedata(GPOUT,1722)
    assign avm_lm4070134_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4081135_emscripten_compute_dom_pk_code_address(GPOUT,1723)
    assign avm_lm4081135_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4081135_emscripten_compute_dom_pk_code_burstcount(GPOUT,1724)
    assign avm_lm4081135_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4081135_emscripten_compute_dom_pk_code_byteenable(GPOUT,1725)
    assign avm_lm4081135_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4081135_emscripten_compute_dom_pk_code_enable(GPOUT,1726)
    assign avm_lm4081135_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4081135_emscripten_compute_dom_pk_code_read(GPOUT,1727)
    assign avm_lm4081135_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4081135_emscripten_compute_dom_pk_code_write(GPOUT,1728)
    assign avm_lm4081135_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4081135_emscripten_compute_dom_pk_code_writedata(GPOUT,1729)
    assign avm_lm4081135_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4092136_emscripten_compute_dom_pk_code_address(GPOUT,1730)
    assign avm_lm4092136_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4092136_emscripten_compute_dom_pk_code_burstcount(GPOUT,1731)
    assign avm_lm4092136_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4092136_emscripten_compute_dom_pk_code_byteenable(GPOUT,1732)
    assign avm_lm4092136_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4092136_emscripten_compute_dom_pk_code_enable(GPOUT,1733)
    assign avm_lm4092136_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4092136_emscripten_compute_dom_pk_code_read(GPOUT,1734)
    assign avm_lm4092136_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4092136_emscripten_compute_dom_pk_code_write(GPOUT,1735)
    assign avm_lm4092136_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4092136_emscripten_compute_dom_pk_code_writedata(GPOUT,1736)
    assign avm_lm4092136_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4103137_emscripten_compute_dom_pk_code_address(GPOUT,1737)
    assign avm_lm4103137_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4103137_emscripten_compute_dom_pk_code_burstcount(GPOUT,1738)
    assign avm_lm4103137_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4103137_emscripten_compute_dom_pk_code_byteenable(GPOUT,1739)
    assign avm_lm4103137_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4103137_emscripten_compute_dom_pk_code_enable(GPOUT,1740)
    assign avm_lm4103137_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4103137_emscripten_compute_dom_pk_code_read(GPOUT,1741)
    assign avm_lm4103137_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4103137_emscripten_compute_dom_pk_code_write(GPOUT,1742)
    assign avm_lm4103137_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4103137_emscripten_compute_dom_pk_code_writedata(GPOUT,1743)
    assign avm_lm4103137_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4115138_emscripten_compute_dom_pk_code_address(GPOUT,1744)
    assign avm_lm4115138_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4115138_emscripten_compute_dom_pk_code_burstcount(GPOUT,1745)
    assign avm_lm4115138_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4115138_emscripten_compute_dom_pk_code_byteenable(GPOUT,1746)
    assign avm_lm4115138_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4115138_emscripten_compute_dom_pk_code_enable(GPOUT,1747)
    assign avm_lm4115138_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4115138_emscripten_compute_dom_pk_code_read(GPOUT,1748)
    assign avm_lm4115138_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4115138_emscripten_compute_dom_pk_code_write(GPOUT,1749)
    assign avm_lm4115138_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4115138_emscripten_compute_dom_pk_code_writedata(GPOUT,1750)
    assign avm_lm4115138_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4126139_emscripten_compute_dom_pk_code_address(GPOUT,1751)
    assign avm_lm4126139_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4126139_emscripten_compute_dom_pk_code_burstcount(GPOUT,1752)
    assign avm_lm4126139_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4126139_emscripten_compute_dom_pk_code_byteenable(GPOUT,1753)
    assign avm_lm4126139_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4126139_emscripten_compute_dom_pk_code_enable(GPOUT,1754)
    assign avm_lm4126139_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4126139_emscripten_compute_dom_pk_code_read(GPOUT,1755)
    assign avm_lm4126139_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4126139_emscripten_compute_dom_pk_code_write(GPOUT,1756)
    assign avm_lm4126139_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4126139_emscripten_compute_dom_pk_code_writedata(GPOUT,1757)
    assign avm_lm4126139_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4137140_emscripten_compute_dom_pk_code_address(GPOUT,1758)
    assign avm_lm4137140_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4137140_emscripten_compute_dom_pk_code_burstcount(GPOUT,1759)
    assign avm_lm4137140_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4137140_emscripten_compute_dom_pk_code_byteenable(GPOUT,1760)
    assign avm_lm4137140_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4137140_emscripten_compute_dom_pk_code_enable(GPOUT,1761)
    assign avm_lm4137140_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4137140_emscripten_compute_dom_pk_code_read(GPOUT,1762)
    assign avm_lm4137140_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4137140_emscripten_compute_dom_pk_code_write(GPOUT,1763)
    assign avm_lm4137140_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4137140_emscripten_compute_dom_pk_code_writedata(GPOUT,1764)
    assign avm_lm4137140_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4148141_emscripten_compute_dom_pk_code_address(GPOUT,1765)
    assign avm_lm4148141_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4148141_emscripten_compute_dom_pk_code_burstcount(GPOUT,1766)
    assign avm_lm4148141_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4148141_emscripten_compute_dom_pk_code_byteenable(GPOUT,1767)
    assign avm_lm4148141_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4148141_emscripten_compute_dom_pk_code_enable(GPOUT,1768)
    assign avm_lm4148141_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4148141_emscripten_compute_dom_pk_code_read(GPOUT,1769)
    assign avm_lm4148141_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4148141_emscripten_compute_dom_pk_code_write(GPOUT,1770)
    assign avm_lm4148141_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4148141_emscripten_compute_dom_pk_code_writedata(GPOUT,1771)
    assign avm_lm4148141_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4160142_emscripten_compute_dom_pk_code_address(GPOUT,1772)
    assign avm_lm4160142_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4160142_emscripten_compute_dom_pk_code_burstcount(GPOUT,1773)
    assign avm_lm4160142_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4160142_emscripten_compute_dom_pk_code_byteenable(GPOUT,1774)
    assign avm_lm4160142_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4160142_emscripten_compute_dom_pk_code_enable(GPOUT,1775)
    assign avm_lm4160142_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4160142_emscripten_compute_dom_pk_code_read(GPOUT,1776)
    assign avm_lm4160142_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4160142_emscripten_compute_dom_pk_code_write(GPOUT,1777)
    assign avm_lm4160142_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4160142_emscripten_compute_dom_pk_code_writedata(GPOUT,1778)
    assign avm_lm4160142_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4172143_emscripten_compute_dom_pk_code_address(GPOUT,1779)
    assign avm_lm4172143_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4172143_emscripten_compute_dom_pk_code_burstcount(GPOUT,1780)
    assign avm_lm4172143_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4172143_emscripten_compute_dom_pk_code_byteenable(GPOUT,1781)
    assign avm_lm4172143_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4172143_emscripten_compute_dom_pk_code_enable(GPOUT,1782)
    assign avm_lm4172143_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4172143_emscripten_compute_dom_pk_code_read(GPOUT,1783)
    assign avm_lm4172143_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4172143_emscripten_compute_dom_pk_code_write(GPOUT,1784)
    assign avm_lm4172143_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4172143_emscripten_compute_dom_pk_code_writedata(GPOUT,1785)
    assign avm_lm4172143_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4185144_emscripten_compute_dom_pk_code_address(GPOUT,1786)
    assign avm_lm4185144_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4185144_emscripten_compute_dom_pk_code_burstcount(GPOUT,1787)
    assign avm_lm4185144_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4185144_emscripten_compute_dom_pk_code_byteenable(GPOUT,1788)
    assign avm_lm4185144_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4185144_emscripten_compute_dom_pk_code_enable(GPOUT,1789)
    assign avm_lm4185144_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4185144_emscripten_compute_dom_pk_code_read(GPOUT,1790)
    assign avm_lm4185144_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4185144_emscripten_compute_dom_pk_code_write(GPOUT,1791)
    assign avm_lm4185144_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4185144_emscripten_compute_dom_pk_code_writedata(GPOUT,1792)
    assign avm_lm4185144_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4198145_emscripten_compute_dom_pk_code_address(GPOUT,1793)
    assign avm_lm4198145_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4198145_emscripten_compute_dom_pk_code_burstcount(GPOUT,1794)
    assign avm_lm4198145_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4198145_emscripten_compute_dom_pk_code_byteenable(GPOUT,1795)
    assign avm_lm4198145_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4198145_emscripten_compute_dom_pk_code_enable(GPOUT,1796)
    assign avm_lm4198145_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4198145_emscripten_compute_dom_pk_code_read(GPOUT,1797)
    assign avm_lm4198145_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4198145_emscripten_compute_dom_pk_code_write(GPOUT,1798)
    assign avm_lm4198145_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4198145_emscripten_compute_dom_pk_code_writedata(GPOUT,1799)
    assign avm_lm4198145_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4210146_emscripten_compute_dom_pk_code_address(GPOUT,1800)
    assign avm_lm4210146_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4210146_emscripten_compute_dom_pk_code_burstcount(GPOUT,1801)
    assign avm_lm4210146_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4210146_emscripten_compute_dom_pk_code_byteenable(GPOUT,1802)
    assign avm_lm4210146_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4210146_emscripten_compute_dom_pk_code_enable(GPOUT,1803)
    assign avm_lm4210146_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4210146_emscripten_compute_dom_pk_code_read(GPOUT,1804)
    assign avm_lm4210146_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4210146_emscripten_compute_dom_pk_code_write(GPOUT,1805)
    assign avm_lm4210146_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4210146_emscripten_compute_dom_pk_code_writedata(GPOUT,1806)
    assign avm_lm4210146_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4221147_emscripten_compute_dom_pk_code_address(GPOUT,1807)
    assign avm_lm4221147_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4221147_emscripten_compute_dom_pk_code_burstcount(GPOUT,1808)
    assign avm_lm4221147_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4221147_emscripten_compute_dom_pk_code_byteenable(GPOUT,1809)
    assign avm_lm4221147_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4221147_emscripten_compute_dom_pk_code_enable(GPOUT,1810)
    assign avm_lm4221147_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4221147_emscripten_compute_dom_pk_code_read(GPOUT,1811)
    assign avm_lm4221147_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4221147_emscripten_compute_dom_pk_code_write(GPOUT,1812)
    assign avm_lm4221147_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4221147_emscripten_compute_dom_pk_code_writedata(GPOUT,1813)
    assign avm_lm4221147_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4233148_emscripten_compute_dom_pk_code_address(GPOUT,1814)
    assign avm_lm4233148_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4233148_emscripten_compute_dom_pk_code_burstcount(GPOUT,1815)
    assign avm_lm4233148_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4233148_emscripten_compute_dom_pk_code_byteenable(GPOUT,1816)
    assign avm_lm4233148_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4233148_emscripten_compute_dom_pk_code_enable(GPOUT,1817)
    assign avm_lm4233148_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4233148_emscripten_compute_dom_pk_code_read(GPOUT,1818)
    assign avm_lm4233148_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4233148_emscripten_compute_dom_pk_code_write(GPOUT,1819)
    assign avm_lm4233148_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4233148_emscripten_compute_dom_pk_code_writedata(GPOUT,1820)
    assign avm_lm4233148_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4245149_emscripten_compute_dom_pk_code_address(GPOUT,1821)
    assign avm_lm4245149_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4245149_emscripten_compute_dom_pk_code_burstcount(GPOUT,1822)
    assign avm_lm4245149_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4245149_emscripten_compute_dom_pk_code_byteenable(GPOUT,1823)
    assign avm_lm4245149_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4245149_emscripten_compute_dom_pk_code_enable(GPOUT,1824)
    assign avm_lm4245149_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4245149_emscripten_compute_dom_pk_code_read(GPOUT,1825)
    assign avm_lm4245149_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4245149_emscripten_compute_dom_pk_code_write(GPOUT,1826)
    assign avm_lm4245149_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4245149_emscripten_compute_dom_pk_code_writedata(GPOUT,1827)
    assign avm_lm4245149_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4257150_emscripten_compute_dom_pk_code_address(GPOUT,1828)
    assign avm_lm4257150_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4257150_emscripten_compute_dom_pk_code_burstcount(GPOUT,1829)
    assign avm_lm4257150_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4257150_emscripten_compute_dom_pk_code_byteenable(GPOUT,1830)
    assign avm_lm4257150_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4257150_emscripten_compute_dom_pk_code_enable(GPOUT,1831)
    assign avm_lm4257150_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4257150_emscripten_compute_dom_pk_code_read(GPOUT,1832)
    assign avm_lm4257150_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4257150_emscripten_compute_dom_pk_code_write(GPOUT,1833)
    assign avm_lm4257150_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4257150_emscripten_compute_dom_pk_code_writedata(GPOUT,1834)
    assign avm_lm4257150_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4268151_emscripten_compute_dom_pk_code_address(GPOUT,1835)
    assign avm_lm4268151_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4268151_emscripten_compute_dom_pk_code_burstcount(GPOUT,1836)
    assign avm_lm4268151_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4268151_emscripten_compute_dom_pk_code_byteenable(GPOUT,1837)
    assign avm_lm4268151_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4268151_emscripten_compute_dom_pk_code_enable(GPOUT,1838)
    assign avm_lm4268151_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4268151_emscripten_compute_dom_pk_code_read(GPOUT,1839)
    assign avm_lm4268151_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4268151_emscripten_compute_dom_pk_code_write(GPOUT,1840)
    assign avm_lm4268151_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4268151_emscripten_compute_dom_pk_code_writedata(GPOUT,1841)
    assign avm_lm4268151_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4279152_emscripten_compute_dom_pk_code_address(GPOUT,1842)
    assign avm_lm4279152_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4279152_emscripten_compute_dom_pk_code_burstcount(GPOUT,1843)
    assign avm_lm4279152_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4279152_emscripten_compute_dom_pk_code_byteenable(GPOUT,1844)
    assign avm_lm4279152_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4279152_emscripten_compute_dom_pk_code_enable(GPOUT,1845)
    assign avm_lm4279152_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4279152_emscripten_compute_dom_pk_code_read(GPOUT,1846)
    assign avm_lm4279152_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4279152_emscripten_compute_dom_pk_code_write(GPOUT,1847)
    assign avm_lm4279152_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4279152_emscripten_compute_dom_pk_code_writedata(GPOUT,1848)
    assign avm_lm4279152_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4290153_emscripten_compute_dom_pk_code_address(GPOUT,1849)
    assign avm_lm4290153_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4290153_emscripten_compute_dom_pk_code_burstcount(GPOUT,1850)
    assign avm_lm4290153_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4290153_emscripten_compute_dom_pk_code_byteenable(GPOUT,1851)
    assign avm_lm4290153_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4290153_emscripten_compute_dom_pk_code_enable(GPOUT,1852)
    assign avm_lm4290153_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4290153_emscripten_compute_dom_pk_code_read(GPOUT,1853)
    assign avm_lm4290153_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4290153_emscripten_compute_dom_pk_code_write(GPOUT,1854)
    assign avm_lm4290153_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4290153_emscripten_compute_dom_pk_code_writedata(GPOUT,1855)
    assign avm_lm4290153_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4302154_emscripten_compute_dom_pk_code_address(GPOUT,1856)
    assign avm_lm4302154_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4302154_emscripten_compute_dom_pk_code_burstcount(GPOUT,1857)
    assign avm_lm4302154_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4302154_emscripten_compute_dom_pk_code_byteenable(GPOUT,1858)
    assign avm_lm4302154_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4302154_emscripten_compute_dom_pk_code_enable(GPOUT,1859)
    assign avm_lm4302154_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4302154_emscripten_compute_dom_pk_code_read(GPOUT,1860)
    assign avm_lm4302154_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4302154_emscripten_compute_dom_pk_code_write(GPOUT,1861)
    assign avm_lm4302154_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4302154_emscripten_compute_dom_pk_code_writedata(GPOUT,1862)
    assign avm_lm4302154_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4314155_emscripten_compute_dom_pk_code_address(GPOUT,1863)
    assign avm_lm4314155_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4314155_emscripten_compute_dom_pk_code_burstcount(GPOUT,1864)
    assign avm_lm4314155_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4314155_emscripten_compute_dom_pk_code_byteenable(GPOUT,1865)
    assign avm_lm4314155_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4314155_emscripten_compute_dom_pk_code_enable(GPOUT,1866)
    assign avm_lm4314155_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4314155_emscripten_compute_dom_pk_code_read(GPOUT,1867)
    assign avm_lm4314155_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4314155_emscripten_compute_dom_pk_code_write(GPOUT,1868)
    assign avm_lm4314155_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4314155_emscripten_compute_dom_pk_code_writedata(GPOUT,1869)
    assign avm_lm4314155_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm4326156_emscripten_compute_dom_pk_code_address(GPOUT,1870)
    assign avm_lm4326156_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm4326156_emscripten_compute_dom_pk_code_burstcount(GPOUT,1871)
    assign avm_lm4326156_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm4326156_emscripten_compute_dom_pk_code_byteenable(GPOUT,1872)
    assign avm_lm4326156_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm4326156_emscripten_compute_dom_pk_code_enable(GPOUT,1873)
    assign avm_lm4326156_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm4326156_emscripten_compute_dom_pk_code_read(GPOUT,1874)
    assign avm_lm4326156_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm4326156_emscripten_compute_dom_pk_code_write(GPOUT,1875)
    assign avm_lm4326156_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm4326156_emscripten_compute_dom_pk_code_writedata(GPOUT,1876)
    assign avm_lm4326156_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm58771_emscripten_compute_dom_pk_code_address(GPOUT,1877)
    assign avm_lm58771_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm58771_emscripten_compute_dom_pk_code_burstcount(GPOUT,1878)
    assign avm_lm58771_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm58771_emscripten_compute_dom_pk_code_byteenable(GPOUT,1879)
    assign avm_lm58771_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm58771_emscripten_compute_dom_pk_code_enable(GPOUT,1880)
    assign avm_lm58771_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm58771_emscripten_compute_dom_pk_code_read(GPOUT,1881)
    assign avm_lm58771_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm58771_emscripten_compute_dom_pk_code_write(GPOUT,1882)
    assign avm_lm58771_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm58771_emscripten_compute_dom_pk_code_writedata(GPOUT,1883)
    assign avm_lm58771_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;

    // avm_lm58812_emscripten_compute_dom_pk_code_address(GPOUT,1884)
    assign avm_lm58812_emscripten_compute_dom_pk_code_address = emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_address;

    // avm_lm58812_emscripten_compute_dom_pk_code_burstcount(GPOUT,1885)
    assign avm_lm58812_emscripten_compute_dom_pk_code_burstcount = emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount;

    // avm_lm58812_emscripten_compute_dom_pk_code_byteenable(GPOUT,1886)
    assign avm_lm58812_emscripten_compute_dom_pk_code_byteenable = emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable;

    // avm_lm58812_emscripten_compute_dom_pk_code_enable(GPOUT,1887)
    assign avm_lm58812_emscripten_compute_dom_pk_code_enable = emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_enable;

    // avm_lm58812_emscripten_compute_dom_pk_code_read(GPOUT,1888)
    assign avm_lm58812_emscripten_compute_dom_pk_code_read = emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_read;

    // avm_lm58812_emscripten_compute_dom_pk_code_write(GPOUT,1889)
    assign avm_lm58812_emscripten_compute_dom_pk_code_write = emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_write;

    // avm_lm58812_emscripten_compute_dom_pk_code_writedata(GPOUT,1890)
    assign avm_lm58812_emscripten_compute_dom_pk_code_writedata = emscripten_compute_dom_pk_code_function_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata;

    // avst_iord_bl_call_emscripten_compute_dom_pk_code_ready(GPOUT,1891)
    assign avst_iord_bl_call_emscripten_compute_dom_pk_code_ready = emscripten_compute_dom_pk_code_function_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready;

    // avst_iowr_bl_return_emscripten_compute_dom_pk_code_data(GPOUT,1892)
    assign avst_iowr_bl_return_emscripten_compute_dom_pk_code_data = emscripten_compute_dom_pk_code_function_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata;

    // avst_iowr_bl_return_emscripten_compute_dom_pk_code_valid(GPOUT,1893)
    assign avst_iowr_bl_return_emscripten_compute_dom_pk_code_valid = emscripten_compute_dom_pk_code_function_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid;

    // not_ready(LOGICAL,797)
    assign not_ready_q = ~ (emscripten_compute_dom_pk_code_function_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,1898)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,1897)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,1894)
    assign busy = busy_or_q;

    // done(GPOUT,1895)
    assign done = emscripten_compute_dom_pk_code_function_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid;

    // returndata(GPOUT,1896)
    assign returndata = emscripten_compute_dom_pk_code_function_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata;

endmodule
