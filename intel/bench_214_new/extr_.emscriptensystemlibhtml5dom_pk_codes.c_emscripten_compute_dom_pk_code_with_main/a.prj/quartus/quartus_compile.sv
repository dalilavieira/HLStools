module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] emscripten_compute_dom_pk_code_start
	, output logic [0:0] emscripten_compute_dom_pk_code_busy
	, output logic [0:0] emscripten_compute_dom_pk_code_done
	, input logic [0:0] emscripten_compute_dom_pk_code_stall
	, output logic [31:0] emscripten_compute_dom_pk_code_returndata
	, input logic [63:0] emscripten_compute_dom_pk_code_keyCodeString
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_0
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_1
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_2
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_3
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_4
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_5
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_6
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_7
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_8
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_9
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_A
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ALT_LEFT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ALT_RIGHT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ARROW_DOWN
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ARROW_LEFT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ARROW_RIGHT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ARROW_UP
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_DOWN
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_MUTE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_UP
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_B
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BACKQUOTE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BACKSLASH
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BACKSPACE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BRACKET_LEFT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BRACKET_RIGHT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_BACK
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FAVORITES
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FORWARD
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_HOME
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_REFRESH
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_SEARCH
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_STOP
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_C
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CAPS_LOCK
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_COMMA
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CONTEXT_MENU
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CONTROL_LEFT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CONTROL_RIGHT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CONVERT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_COPY
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CUT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_D
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_DELETE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_E
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_EJECT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_END
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ENTER
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_EQUAL
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ESCAPE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F1
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F10
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F11
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F12
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F13
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F14
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F15
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F16
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F17
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F18
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F19
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F2
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F20
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F21
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F22
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F23
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F24
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F3
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F4
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F5
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F6
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F7
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F8
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F9
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_G
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_H
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_HELP
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_HOME
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_I
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_INSERT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_INTL_BACKSLASH
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_INTL_RO
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_INTL_YEN
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_J
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_K
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_KANA_MODE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_L
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LANG_1
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LANG_2
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_1
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_2
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MAIL
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MEDIA_PLAYER
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_M
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_PLAY_PAUSE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_SELECT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_STOP
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_NEXT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_PREVIOUS
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_META_LEFT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_META_RIGHT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MINUS
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_N
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NON_CONVERT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_0
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_1
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_2
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_3
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_4
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_5
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_6
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_7
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_8
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_9
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ADD
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_COMMA
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DECIMAL
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DIVIDE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ENTER
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_EQUAL
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_MULTIPLY
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_SUBTRACT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUM_LOCK
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_O
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_OS_LEFT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_OS_RIGHT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_P
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PAGE_DOWN
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PAGE_UP
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PASTE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PAUSE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PERIOD
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_POWER
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PRINT_SCREEN
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_Q
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_QUOTE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_R
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_S
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SCROLL_LOCK
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SEMICOLON
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SHIFT_LEFT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SHIFT_RIGHT
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SLASH
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SPACE
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_T
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_TAB
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_U
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_UNKNOWN
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_V
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_W
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_X
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_Y
	, input logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_Z
	, output logic [63:0] emscripten_compute_dom_pk_code_avmm_0_rw_address
	, output logic [7:0] emscripten_compute_dom_pk_code_avmm_0_rw_byteenable
	, output logic [0:0] emscripten_compute_dom_pk_code_avmm_0_rw_read
	, input logic [63:0] emscripten_compute_dom_pk_code_avmm_0_rw_readdata
	, output logic [0:0] emscripten_compute_dom_pk_code_avmm_0_rw_write
	, output logic [63:0] emscripten_compute_dom_pk_code_avmm_0_rw_writedata
	);

	logic [0:0] emscripten_compute_dom_pk_code_start_reg;
	logic [0:0] emscripten_compute_dom_pk_code_busy_reg;
	logic [0:0] emscripten_compute_dom_pk_code_done_reg;
	logic [0:0] emscripten_compute_dom_pk_code_stall_reg;
	logic [31:0] emscripten_compute_dom_pk_code_returndata_reg;
	logic [63:0] emscripten_compute_dom_pk_code_keyCodeString_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_0_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_1_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_2_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_3_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_4_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_5_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_6_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_7_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_8_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_9_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_A_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ALT_LEFT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ALT_RIGHT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ARROW_DOWN_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ARROW_LEFT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ARROW_RIGHT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ARROW_UP_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_DOWN_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_MUTE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_UP_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_B_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BACKQUOTE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BACKSLASH_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BACKSPACE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BRACKET_LEFT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BRACKET_RIGHT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_BACK_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FAVORITES_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FORWARD_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_HOME_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_REFRESH_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_SEARCH_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_BROWSER_STOP_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_C_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CAPS_LOCK_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_COMMA_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CONTEXT_MENU_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CONTROL_LEFT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CONTROL_RIGHT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CONVERT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_COPY_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_CUT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_D_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_DELETE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_E_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_EJECT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_END_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ENTER_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_EQUAL_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_ESCAPE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F1_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F10_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F11_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F12_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F13_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F14_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F15_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F16_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F17_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F18_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F19_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F2_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F20_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F21_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F22_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F23_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F24_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F3_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F4_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F5_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F6_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F7_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F8_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_F9_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_G_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_H_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_HELP_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_HOME_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_I_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_INSERT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_INTL_BACKSLASH_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_INTL_RO_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_INTL_YEN_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_J_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_K_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_KANA_MODE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_L_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LANG_1_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LANG_2_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_1_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_2_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MAIL_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MEDIA_PLAYER_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_M_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_PLAY_PAUSE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_SELECT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_STOP_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_NEXT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_PREVIOUS_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_META_LEFT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_META_RIGHT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_MINUS_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_N_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NON_CONVERT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_0_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_1_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_2_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_3_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_4_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_5_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_6_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_7_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_8_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_9_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ADD_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_COMMA_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DECIMAL_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DIVIDE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ENTER_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_EQUAL_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_MULTIPLY_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_SUBTRACT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_NUM_LOCK_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_O_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_OS_LEFT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_OS_RIGHT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_P_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PAGE_DOWN_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PAGE_UP_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PASTE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PAUSE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PERIOD_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_POWER_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_PRINT_SCREEN_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_Q_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_QUOTE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_R_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_S_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SCROLL_LOCK_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SEMICOLON_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SHIFT_LEFT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SHIFT_RIGHT_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SLASH_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_SPACE_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_T_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_TAB_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_U_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_UNKNOWN_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_V_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_W_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_X_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_Y_reg;
	logic [63:0] emscripten_compute_dom_pk_code_DOM_PK_Z_reg;
	logic [63:0] emscripten_compute_dom_pk_code_avmm_0_rw_address_reg;
	logic [7:0] emscripten_compute_dom_pk_code_avmm_0_rw_byteenable_reg;
	logic [0:0] emscripten_compute_dom_pk_code_avmm_0_rw_read_reg;
	logic [63:0] emscripten_compute_dom_pk_code_avmm_0_rw_readdata_reg;
	logic [0:0] emscripten_compute_dom_pk_code_avmm_0_rw_write_reg;
	logic [63:0] emscripten_compute_dom_pk_code_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		emscripten_compute_dom_pk_code_start_reg <= emscripten_compute_dom_pk_code_start;
		emscripten_compute_dom_pk_code_busy <= emscripten_compute_dom_pk_code_busy_reg;
		emscripten_compute_dom_pk_code_done <= emscripten_compute_dom_pk_code_done_reg;
		emscripten_compute_dom_pk_code_stall_reg <= emscripten_compute_dom_pk_code_stall;
		emscripten_compute_dom_pk_code_returndata <= emscripten_compute_dom_pk_code_returndata_reg;
		emscripten_compute_dom_pk_code_keyCodeString_reg <= emscripten_compute_dom_pk_code_keyCodeString;
		emscripten_compute_dom_pk_code_DOM_PK_0_reg <= emscripten_compute_dom_pk_code_DOM_PK_0;
		emscripten_compute_dom_pk_code_DOM_PK_1_reg <= emscripten_compute_dom_pk_code_DOM_PK_1;
		emscripten_compute_dom_pk_code_DOM_PK_2_reg <= emscripten_compute_dom_pk_code_DOM_PK_2;
		emscripten_compute_dom_pk_code_DOM_PK_3_reg <= emscripten_compute_dom_pk_code_DOM_PK_3;
		emscripten_compute_dom_pk_code_DOM_PK_4_reg <= emscripten_compute_dom_pk_code_DOM_PK_4;
		emscripten_compute_dom_pk_code_DOM_PK_5_reg <= emscripten_compute_dom_pk_code_DOM_PK_5;
		emscripten_compute_dom_pk_code_DOM_PK_6_reg <= emscripten_compute_dom_pk_code_DOM_PK_6;
		emscripten_compute_dom_pk_code_DOM_PK_7_reg <= emscripten_compute_dom_pk_code_DOM_PK_7;
		emscripten_compute_dom_pk_code_DOM_PK_8_reg <= emscripten_compute_dom_pk_code_DOM_PK_8;
		emscripten_compute_dom_pk_code_DOM_PK_9_reg <= emscripten_compute_dom_pk_code_DOM_PK_9;
		emscripten_compute_dom_pk_code_DOM_PK_A_reg <= emscripten_compute_dom_pk_code_DOM_PK_A;
		emscripten_compute_dom_pk_code_DOM_PK_ALT_LEFT_reg <= emscripten_compute_dom_pk_code_DOM_PK_ALT_LEFT;
		emscripten_compute_dom_pk_code_DOM_PK_ALT_RIGHT_reg <= emscripten_compute_dom_pk_code_DOM_PK_ALT_RIGHT;
		emscripten_compute_dom_pk_code_DOM_PK_ARROW_DOWN_reg <= emscripten_compute_dom_pk_code_DOM_PK_ARROW_DOWN;
		emscripten_compute_dom_pk_code_DOM_PK_ARROW_LEFT_reg <= emscripten_compute_dom_pk_code_DOM_PK_ARROW_LEFT;
		emscripten_compute_dom_pk_code_DOM_PK_ARROW_RIGHT_reg <= emscripten_compute_dom_pk_code_DOM_PK_ARROW_RIGHT;
		emscripten_compute_dom_pk_code_DOM_PK_ARROW_UP_reg <= emscripten_compute_dom_pk_code_DOM_PK_ARROW_UP;
		emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_DOWN_reg <= emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_DOWN;
		emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_MUTE_reg <= emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_MUTE;
		emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_UP_reg <= emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_UP;
		emscripten_compute_dom_pk_code_DOM_PK_B_reg <= emscripten_compute_dom_pk_code_DOM_PK_B;
		emscripten_compute_dom_pk_code_DOM_PK_BACKQUOTE_reg <= emscripten_compute_dom_pk_code_DOM_PK_BACKQUOTE;
		emscripten_compute_dom_pk_code_DOM_PK_BACKSLASH_reg <= emscripten_compute_dom_pk_code_DOM_PK_BACKSLASH;
		emscripten_compute_dom_pk_code_DOM_PK_BACKSPACE_reg <= emscripten_compute_dom_pk_code_DOM_PK_BACKSPACE;
		emscripten_compute_dom_pk_code_DOM_PK_BRACKET_LEFT_reg <= emscripten_compute_dom_pk_code_DOM_PK_BRACKET_LEFT;
		emscripten_compute_dom_pk_code_DOM_PK_BRACKET_RIGHT_reg <= emscripten_compute_dom_pk_code_DOM_PK_BRACKET_RIGHT;
		emscripten_compute_dom_pk_code_DOM_PK_BROWSER_BACK_reg <= emscripten_compute_dom_pk_code_DOM_PK_BROWSER_BACK;
		emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FAVORITES_reg <= emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FAVORITES;
		emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FORWARD_reg <= emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FORWARD;
		emscripten_compute_dom_pk_code_DOM_PK_BROWSER_HOME_reg <= emscripten_compute_dom_pk_code_DOM_PK_BROWSER_HOME;
		emscripten_compute_dom_pk_code_DOM_PK_BROWSER_REFRESH_reg <= emscripten_compute_dom_pk_code_DOM_PK_BROWSER_REFRESH;
		emscripten_compute_dom_pk_code_DOM_PK_BROWSER_SEARCH_reg <= emscripten_compute_dom_pk_code_DOM_PK_BROWSER_SEARCH;
		emscripten_compute_dom_pk_code_DOM_PK_BROWSER_STOP_reg <= emscripten_compute_dom_pk_code_DOM_PK_BROWSER_STOP;
		emscripten_compute_dom_pk_code_DOM_PK_C_reg <= emscripten_compute_dom_pk_code_DOM_PK_C;
		emscripten_compute_dom_pk_code_DOM_PK_CAPS_LOCK_reg <= emscripten_compute_dom_pk_code_DOM_PK_CAPS_LOCK;
		emscripten_compute_dom_pk_code_DOM_PK_COMMA_reg <= emscripten_compute_dom_pk_code_DOM_PK_COMMA;
		emscripten_compute_dom_pk_code_DOM_PK_CONTEXT_MENU_reg <= emscripten_compute_dom_pk_code_DOM_PK_CONTEXT_MENU;
		emscripten_compute_dom_pk_code_DOM_PK_CONTROL_LEFT_reg <= emscripten_compute_dom_pk_code_DOM_PK_CONTROL_LEFT;
		emscripten_compute_dom_pk_code_DOM_PK_CONTROL_RIGHT_reg <= emscripten_compute_dom_pk_code_DOM_PK_CONTROL_RIGHT;
		emscripten_compute_dom_pk_code_DOM_PK_CONVERT_reg <= emscripten_compute_dom_pk_code_DOM_PK_CONVERT;
		emscripten_compute_dom_pk_code_DOM_PK_COPY_reg <= emscripten_compute_dom_pk_code_DOM_PK_COPY;
		emscripten_compute_dom_pk_code_DOM_PK_CUT_reg <= emscripten_compute_dom_pk_code_DOM_PK_CUT;
		emscripten_compute_dom_pk_code_DOM_PK_D_reg <= emscripten_compute_dom_pk_code_DOM_PK_D;
		emscripten_compute_dom_pk_code_DOM_PK_DELETE_reg <= emscripten_compute_dom_pk_code_DOM_PK_DELETE;
		emscripten_compute_dom_pk_code_DOM_PK_E_reg <= emscripten_compute_dom_pk_code_DOM_PK_E;
		emscripten_compute_dom_pk_code_DOM_PK_EJECT_reg <= emscripten_compute_dom_pk_code_DOM_PK_EJECT;
		emscripten_compute_dom_pk_code_DOM_PK_END_reg <= emscripten_compute_dom_pk_code_DOM_PK_END;
		emscripten_compute_dom_pk_code_DOM_PK_ENTER_reg <= emscripten_compute_dom_pk_code_DOM_PK_ENTER;
		emscripten_compute_dom_pk_code_DOM_PK_EQUAL_reg <= emscripten_compute_dom_pk_code_DOM_PK_EQUAL;
		emscripten_compute_dom_pk_code_DOM_PK_ESCAPE_reg <= emscripten_compute_dom_pk_code_DOM_PK_ESCAPE;
		emscripten_compute_dom_pk_code_DOM_PK_F_reg <= emscripten_compute_dom_pk_code_DOM_PK_F;
		emscripten_compute_dom_pk_code_DOM_PK_F1_reg <= emscripten_compute_dom_pk_code_DOM_PK_F1;
		emscripten_compute_dom_pk_code_DOM_PK_F10_reg <= emscripten_compute_dom_pk_code_DOM_PK_F10;
		emscripten_compute_dom_pk_code_DOM_PK_F11_reg <= emscripten_compute_dom_pk_code_DOM_PK_F11;
		emscripten_compute_dom_pk_code_DOM_PK_F12_reg <= emscripten_compute_dom_pk_code_DOM_PK_F12;
		emscripten_compute_dom_pk_code_DOM_PK_F13_reg <= emscripten_compute_dom_pk_code_DOM_PK_F13;
		emscripten_compute_dom_pk_code_DOM_PK_F14_reg <= emscripten_compute_dom_pk_code_DOM_PK_F14;
		emscripten_compute_dom_pk_code_DOM_PK_F15_reg <= emscripten_compute_dom_pk_code_DOM_PK_F15;
		emscripten_compute_dom_pk_code_DOM_PK_F16_reg <= emscripten_compute_dom_pk_code_DOM_PK_F16;
		emscripten_compute_dom_pk_code_DOM_PK_F17_reg <= emscripten_compute_dom_pk_code_DOM_PK_F17;
		emscripten_compute_dom_pk_code_DOM_PK_F18_reg <= emscripten_compute_dom_pk_code_DOM_PK_F18;
		emscripten_compute_dom_pk_code_DOM_PK_F19_reg <= emscripten_compute_dom_pk_code_DOM_PK_F19;
		emscripten_compute_dom_pk_code_DOM_PK_F2_reg <= emscripten_compute_dom_pk_code_DOM_PK_F2;
		emscripten_compute_dom_pk_code_DOM_PK_F20_reg <= emscripten_compute_dom_pk_code_DOM_PK_F20;
		emscripten_compute_dom_pk_code_DOM_PK_F21_reg <= emscripten_compute_dom_pk_code_DOM_PK_F21;
		emscripten_compute_dom_pk_code_DOM_PK_F22_reg <= emscripten_compute_dom_pk_code_DOM_PK_F22;
		emscripten_compute_dom_pk_code_DOM_PK_F23_reg <= emscripten_compute_dom_pk_code_DOM_PK_F23;
		emscripten_compute_dom_pk_code_DOM_PK_F24_reg <= emscripten_compute_dom_pk_code_DOM_PK_F24;
		emscripten_compute_dom_pk_code_DOM_PK_F3_reg <= emscripten_compute_dom_pk_code_DOM_PK_F3;
		emscripten_compute_dom_pk_code_DOM_PK_F4_reg <= emscripten_compute_dom_pk_code_DOM_PK_F4;
		emscripten_compute_dom_pk_code_DOM_PK_F5_reg <= emscripten_compute_dom_pk_code_DOM_PK_F5;
		emscripten_compute_dom_pk_code_DOM_PK_F6_reg <= emscripten_compute_dom_pk_code_DOM_PK_F6;
		emscripten_compute_dom_pk_code_DOM_PK_F7_reg <= emscripten_compute_dom_pk_code_DOM_PK_F7;
		emscripten_compute_dom_pk_code_DOM_PK_F8_reg <= emscripten_compute_dom_pk_code_DOM_PK_F8;
		emscripten_compute_dom_pk_code_DOM_PK_F9_reg <= emscripten_compute_dom_pk_code_DOM_PK_F9;
		emscripten_compute_dom_pk_code_DOM_PK_G_reg <= emscripten_compute_dom_pk_code_DOM_PK_G;
		emscripten_compute_dom_pk_code_DOM_PK_H_reg <= emscripten_compute_dom_pk_code_DOM_PK_H;
		emscripten_compute_dom_pk_code_DOM_PK_HELP_reg <= emscripten_compute_dom_pk_code_DOM_PK_HELP;
		emscripten_compute_dom_pk_code_DOM_PK_HOME_reg <= emscripten_compute_dom_pk_code_DOM_PK_HOME;
		emscripten_compute_dom_pk_code_DOM_PK_I_reg <= emscripten_compute_dom_pk_code_DOM_PK_I;
		emscripten_compute_dom_pk_code_DOM_PK_INSERT_reg <= emscripten_compute_dom_pk_code_DOM_PK_INSERT;
		emscripten_compute_dom_pk_code_DOM_PK_INTL_BACKSLASH_reg <= emscripten_compute_dom_pk_code_DOM_PK_INTL_BACKSLASH;
		emscripten_compute_dom_pk_code_DOM_PK_INTL_RO_reg <= emscripten_compute_dom_pk_code_DOM_PK_INTL_RO;
		emscripten_compute_dom_pk_code_DOM_PK_INTL_YEN_reg <= emscripten_compute_dom_pk_code_DOM_PK_INTL_YEN;
		emscripten_compute_dom_pk_code_DOM_PK_J_reg <= emscripten_compute_dom_pk_code_DOM_PK_J;
		emscripten_compute_dom_pk_code_DOM_PK_K_reg <= emscripten_compute_dom_pk_code_DOM_PK_K;
		emscripten_compute_dom_pk_code_DOM_PK_KANA_MODE_reg <= emscripten_compute_dom_pk_code_DOM_PK_KANA_MODE;
		emscripten_compute_dom_pk_code_DOM_PK_L_reg <= emscripten_compute_dom_pk_code_DOM_PK_L;
		emscripten_compute_dom_pk_code_DOM_PK_LANG_1_reg <= emscripten_compute_dom_pk_code_DOM_PK_LANG_1;
		emscripten_compute_dom_pk_code_DOM_PK_LANG_2_reg <= emscripten_compute_dom_pk_code_DOM_PK_LANG_2;
		emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_1_reg <= emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_1;
		emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_2_reg <= emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_2;
		emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MAIL_reg <= emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MAIL;
		emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MEDIA_PLAYER_reg <= emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MEDIA_PLAYER;
		emscripten_compute_dom_pk_code_DOM_PK_M_reg <= emscripten_compute_dom_pk_code_DOM_PK_M;
		emscripten_compute_dom_pk_code_DOM_PK_MEDIA_PLAY_PAUSE_reg <= emscripten_compute_dom_pk_code_DOM_PK_MEDIA_PLAY_PAUSE;
		emscripten_compute_dom_pk_code_DOM_PK_MEDIA_SELECT_reg <= emscripten_compute_dom_pk_code_DOM_PK_MEDIA_SELECT;
		emscripten_compute_dom_pk_code_DOM_PK_MEDIA_STOP_reg <= emscripten_compute_dom_pk_code_DOM_PK_MEDIA_STOP;
		emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_NEXT_reg <= emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_NEXT;
		emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_PREVIOUS_reg <= emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_PREVIOUS;
		emscripten_compute_dom_pk_code_DOM_PK_META_LEFT_reg <= emscripten_compute_dom_pk_code_DOM_PK_META_LEFT;
		emscripten_compute_dom_pk_code_DOM_PK_META_RIGHT_reg <= emscripten_compute_dom_pk_code_DOM_PK_META_RIGHT;
		emscripten_compute_dom_pk_code_DOM_PK_MINUS_reg <= emscripten_compute_dom_pk_code_DOM_PK_MINUS;
		emscripten_compute_dom_pk_code_DOM_PK_N_reg <= emscripten_compute_dom_pk_code_DOM_PK_N;
		emscripten_compute_dom_pk_code_DOM_PK_NON_CONVERT_reg <= emscripten_compute_dom_pk_code_DOM_PK_NON_CONVERT;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_0_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_0;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_1_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_1;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_2_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_2;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_3_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_3;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_4_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_4;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_5_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_5;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_6_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_6;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_7_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_7;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_8_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_8;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_9_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_9;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ADD_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ADD;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_COMMA_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_COMMA;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DECIMAL_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DECIMAL;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DIVIDE_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DIVIDE;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ENTER_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ENTER;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_EQUAL_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_EQUAL;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_MULTIPLY_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_MULTIPLY;
		emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_SUBTRACT_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_SUBTRACT;
		emscripten_compute_dom_pk_code_DOM_PK_NUM_LOCK_reg <= emscripten_compute_dom_pk_code_DOM_PK_NUM_LOCK;
		emscripten_compute_dom_pk_code_DOM_PK_O_reg <= emscripten_compute_dom_pk_code_DOM_PK_O;
		emscripten_compute_dom_pk_code_DOM_PK_OS_LEFT_reg <= emscripten_compute_dom_pk_code_DOM_PK_OS_LEFT;
		emscripten_compute_dom_pk_code_DOM_PK_OS_RIGHT_reg <= emscripten_compute_dom_pk_code_DOM_PK_OS_RIGHT;
		emscripten_compute_dom_pk_code_DOM_PK_P_reg <= emscripten_compute_dom_pk_code_DOM_PK_P;
		emscripten_compute_dom_pk_code_DOM_PK_PAGE_DOWN_reg <= emscripten_compute_dom_pk_code_DOM_PK_PAGE_DOWN;
		emscripten_compute_dom_pk_code_DOM_PK_PAGE_UP_reg <= emscripten_compute_dom_pk_code_DOM_PK_PAGE_UP;
		emscripten_compute_dom_pk_code_DOM_PK_PASTE_reg <= emscripten_compute_dom_pk_code_DOM_PK_PASTE;
		emscripten_compute_dom_pk_code_DOM_PK_PAUSE_reg <= emscripten_compute_dom_pk_code_DOM_PK_PAUSE;
		emscripten_compute_dom_pk_code_DOM_PK_PERIOD_reg <= emscripten_compute_dom_pk_code_DOM_PK_PERIOD;
		emscripten_compute_dom_pk_code_DOM_PK_POWER_reg <= emscripten_compute_dom_pk_code_DOM_PK_POWER;
		emscripten_compute_dom_pk_code_DOM_PK_PRINT_SCREEN_reg <= emscripten_compute_dom_pk_code_DOM_PK_PRINT_SCREEN;
		emscripten_compute_dom_pk_code_DOM_PK_Q_reg <= emscripten_compute_dom_pk_code_DOM_PK_Q;
		emscripten_compute_dom_pk_code_DOM_PK_QUOTE_reg <= emscripten_compute_dom_pk_code_DOM_PK_QUOTE;
		emscripten_compute_dom_pk_code_DOM_PK_R_reg <= emscripten_compute_dom_pk_code_DOM_PK_R;
		emscripten_compute_dom_pk_code_DOM_PK_S_reg <= emscripten_compute_dom_pk_code_DOM_PK_S;
		emscripten_compute_dom_pk_code_DOM_PK_SCROLL_LOCK_reg <= emscripten_compute_dom_pk_code_DOM_PK_SCROLL_LOCK;
		emscripten_compute_dom_pk_code_DOM_PK_SEMICOLON_reg <= emscripten_compute_dom_pk_code_DOM_PK_SEMICOLON;
		emscripten_compute_dom_pk_code_DOM_PK_SHIFT_LEFT_reg <= emscripten_compute_dom_pk_code_DOM_PK_SHIFT_LEFT;
		emscripten_compute_dom_pk_code_DOM_PK_SHIFT_RIGHT_reg <= emscripten_compute_dom_pk_code_DOM_PK_SHIFT_RIGHT;
		emscripten_compute_dom_pk_code_DOM_PK_SLASH_reg <= emscripten_compute_dom_pk_code_DOM_PK_SLASH;
		emscripten_compute_dom_pk_code_DOM_PK_SPACE_reg <= emscripten_compute_dom_pk_code_DOM_PK_SPACE;
		emscripten_compute_dom_pk_code_DOM_PK_T_reg <= emscripten_compute_dom_pk_code_DOM_PK_T;
		emscripten_compute_dom_pk_code_DOM_PK_TAB_reg <= emscripten_compute_dom_pk_code_DOM_PK_TAB;
		emscripten_compute_dom_pk_code_DOM_PK_U_reg <= emscripten_compute_dom_pk_code_DOM_PK_U;
		emscripten_compute_dom_pk_code_DOM_PK_UNKNOWN_reg <= emscripten_compute_dom_pk_code_DOM_PK_UNKNOWN;
		emscripten_compute_dom_pk_code_DOM_PK_V_reg <= emscripten_compute_dom_pk_code_DOM_PK_V;
		emscripten_compute_dom_pk_code_DOM_PK_W_reg <= emscripten_compute_dom_pk_code_DOM_PK_W;
		emscripten_compute_dom_pk_code_DOM_PK_X_reg <= emscripten_compute_dom_pk_code_DOM_PK_X;
		emscripten_compute_dom_pk_code_DOM_PK_Y_reg <= emscripten_compute_dom_pk_code_DOM_PK_Y;
		emscripten_compute_dom_pk_code_DOM_PK_Z_reg <= emscripten_compute_dom_pk_code_DOM_PK_Z;
		emscripten_compute_dom_pk_code_avmm_0_rw_address <= emscripten_compute_dom_pk_code_avmm_0_rw_address_reg;
		emscripten_compute_dom_pk_code_avmm_0_rw_byteenable <= emscripten_compute_dom_pk_code_avmm_0_rw_byteenable_reg;
		emscripten_compute_dom_pk_code_avmm_0_rw_read <= emscripten_compute_dom_pk_code_avmm_0_rw_read_reg;
		emscripten_compute_dom_pk_code_avmm_0_rw_readdata_reg <= emscripten_compute_dom_pk_code_avmm_0_rw_readdata;
		emscripten_compute_dom_pk_code_avmm_0_rw_write <= emscripten_compute_dom_pk_code_avmm_0_rw_write_reg;
		emscripten_compute_dom_pk_code_avmm_0_rw_writedata <= emscripten_compute_dom_pk_code_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	emscripten_compute_dom_pk_code emscripten_compute_dom_pk_code_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(emscripten_compute_dom_pk_code_start_reg)
		, .busy(emscripten_compute_dom_pk_code_busy_reg)
		, .done(emscripten_compute_dom_pk_code_done_reg)
		, .stall(emscripten_compute_dom_pk_code_stall_reg)
		, .returndata(emscripten_compute_dom_pk_code_returndata_reg)
		, .keyCodeString(emscripten_compute_dom_pk_code_keyCodeString_reg)
		, .DOM_PK_0(emscripten_compute_dom_pk_code_DOM_PK_0_reg)
		, .DOM_PK_1(emscripten_compute_dom_pk_code_DOM_PK_1_reg)
		, .DOM_PK_2(emscripten_compute_dom_pk_code_DOM_PK_2_reg)
		, .DOM_PK_3(emscripten_compute_dom_pk_code_DOM_PK_3_reg)
		, .DOM_PK_4(emscripten_compute_dom_pk_code_DOM_PK_4_reg)
		, .DOM_PK_5(emscripten_compute_dom_pk_code_DOM_PK_5_reg)
		, .DOM_PK_6(emscripten_compute_dom_pk_code_DOM_PK_6_reg)
		, .DOM_PK_7(emscripten_compute_dom_pk_code_DOM_PK_7_reg)
		, .DOM_PK_8(emscripten_compute_dom_pk_code_DOM_PK_8_reg)
		, .DOM_PK_9(emscripten_compute_dom_pk_code_DOM_PK_9_reg)
		, .DOM_PK_A(emscripten_compute_dom_pk_code_DOM_PK_A_reg)
		, .DOM_PK_ALT_LEFT(emscripten_compute_dom_pk_code_DOM_PK_ALT_LEFT_reg)
		, .DOM_PK_ALT_RIGHT(emscripten_compute_dom_pk_code_DOM_PK_ALT_RIGHT_reg)
		, .DOM_PK_ARROW_DOWN(emscripten_compute_dom_pk_code_DOM_PK_ARROW_DOWN_reg)
		, .DOM_PK_ARROW_LEFT(emscripten_compute_dom_pk_code_DOM_PK_ARROW_LEFT_reg)
		, .DOM_PK_ARROW_RIGHT(emscripten_compute_dom_pk_code_DOM_PK_ARROW_RIGHT_reg)
		, .DOM_PK_ARROW_UP(emscripten_compute_dom_pk_code_DOM_PK_ARROW_UP_reg)
		, .DOM_PK_AUDIO_VOLUME_DOWN(emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_DOWN_reg)
		, .DOM_PK_AUDIO_VOLUME_MUTE(emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_MUTE_reg)
		, .DOM_PK_AUDIO_VOLUME_UP(emscripten_compute_dom_pk_code_DOM_PK_AUDIO_VOLUME_UP_reg)
		, .DOM_PK_B(emscripten_compute_dom_pk_code_DOM_PK_B_reg)
		, .DOM_PK_BACKQUOTE(emscripten_compute_dom_pk_code_DOM_PK_BACKQUOTE_reg)
		, .DOM_PK_BACKSLASH(emscripten_compute_dom_pk_code_DOM_PK_BACKSLASH_reg)
		, .DOM_PK_BACKSPACE(emscripten_compute_dom_pk_code_DOM_PK_BACKSPACE_reg)
		, .DOM_PK_BRACKET_LEFT(emscripten_compute_dom_pk_code_DOM_PK_BRACKET_LEFT_reg)
		, .DOM_PK_BRACKET_RIGHT(emscripten_compute_dom_pk_code_DOM_PK_BRACKET_RIGHT_reg)
		, .DOM_PK_BROWSER_BACK(emscripten_compute_dom_pk_code_DOM_PK_BROWSER_BACK_reg)
		, .DOM_PK_BROWSER_FAVORITES(emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FAVORITES_reg)
		, .DOM_PK_BROWSER_FORWARD(emscripten_compute_dom_pk_code_DOM_PK_BROWSER_FORWARD_reg)
		, .DOM_PK_BROWSER_HOME(emscripten_compute_dom_pk_code_DOM_PK_BROWSER_HOME_reg)
		, .DOM_PK_BROWSER_REFRESH(emscripten_compute_dom_pk_code_DOM_PK_BROWSER_REFRESH_reg)
		, .DOM_PK_BROWSER_SEARCH(emscripten_compute_dom_pk_code_DOM_PK_BROWSER_SEARCH_reg)
		, .DOM_PK_BROWSER_STOP(emscripten_compute_dom_pk_code_DOM_PK_BROWSER_STOP_reg)
		, .DOM_PK_C(emscripten_compute_dom_pk_code_DOM_PK_C_reg)
		, .DOM_PK_CAPS_LOCK(emscripten_compute_dom_pk_code_DOM_PK_CAPS_LOCK_reg)
		, .DOM_PK_COMMA(emscripten_compute_dom_pk_code_DOM_PK_COMMA_reg)
		, .DOM_PK_CONTEXT_MENU(emscripten_compute_dom_pk_code_DOM_PK_CONTEXT_MENU_reg)
		, .DOM_PK_CONTROL_LEFT(emscripten_compute_dom_pk_code_DOM_PK_CONTROL_LEFT_reg)
		, .DOM_PK_CONTROL_RIGHT(emscripten_compute_dom_pk_code_DOM_PK_CONTROL_RIGHT_reg)
		, .DOM_PK_CONVERT(emscripten_compute_dom_pk_code_DOM_PK_CONVERT_reg)
		, .DOM_PK_COPY(emscripten_compute_dom_pk_code_DOM_PK_COPY_reg)
		, .DOM_PK_CUT(emscripten_compute_dom_pk_code_DOM_PK_CUT_reg)
		, .DOM_PK_D(emscripten_compute_dom_pk_code_DOM_PK_D_reg)
		, .DOM_PK_DELETE(emscripten_compute_dom_pk_code_DOM_PK_DELETE_reg)
		, .DOM_PK_E(emscripten_compute_dom_pk_code_DOM_PK_E_reg)
		, .DOM_PK_EJECT(emscripten_compute_dom_pk_code_DOM_PK_EJECT_reg)
		, .DOM_PK_END(emscripten_compute_dom_pk_code_DOM_PK_END_reg)
		, .DOM_PK_ENTER(emscripten_compute_dom_pk_code_DOM_PK_ENTER_reg)
		, .DOM_PK_EQUAL(emscripten_compute_dom_pk_code_DOM_PK_EQUAL_reg)
		, .DOM_PK_ESCAPE(emscripten_compute_dom_pk_code_DOM_PK_ESCAPE_reg)
		, .DOM_PK_F(emscripten_compute_dom_pk_code_DOM_PK_F_reg)
		, .DOM_PK_F1(emscripten_compute_dom_pk_code_DOM_PK_F1_reg)
		, .DOM_PK_F10(emscripten_compute_dom_pk_code_DOM_PK_F10_reg)
		, .DOM_PK_F11(emscripten_compute_dom_pk_code_DOM_PK_F11_reg)
		, .DOM_PK_F12(emscripten_compute_dom_pk_code_DOM_PK_F12_reg)
		, .DOM_PK_F13(emscripten_compute_dom_pk_code_DOM_PK_F13_reg)
		, .DOM_PK_F14(emscripten_compute_dom_pk_code_DOM_PK_F14_reg)
		, .DOM_PK_F15(emscripten_compute_dom_pk_code_DOM_PK_F15_reg)
		, .DOM_PK_F16(emscripten_compute_dom_pk_code_DOM_PK_F16_reg)
		, .DOM_PK_F17(emscripten_compute_dom_pk_code_DOM_PK_F17_reg)
		, .DOM_PK_F18(emscripten_compute_dom_pk_code_DOM_PK_F18_reg)
		, .DOM_PK_F19(emscripten_compute_dom_pk_code_DOM_PK_F19_reg)
		, .DOM_PK_F2(emscripten_compute_dom_pk_code_DOM_PK_F2_reg)
		, .DOM_PK_F20(emscripten_compute_dom_pk_code_DOM_PK_F20_reg)
		, .DOM_PK_F21(emscripten_compute_dom_pk_code_DOM_PK_F21_reg)
		, .DOM_PK_F22(emscripten_compute_dom_pk_code_DOM_PK_F22_reg)
		, .DOM_PK_F23(emscripten_compute_dom_pk_code_DOM_PK_F23_reg)
		, .DOM_PK_F24(emscripten_compute_dom_pk_code_DOM_PK_F24_reg)
		, .DOM_PK_F3(emscripten_compute_dom_pk_code_DOM_PK_F3_reg)
		, .DOM_PK_F4(emscripten_compute_dom_pk_code_DOM_PK_F4_reg)
		, .DOM_PK_F5(emscripten_compute_dom_pk_code_DOM_PK_F5_reg)
		, .DOM_PK_F6(emscripten_compute_dom_pk_code_DOM_PK_F6_reg)
		, .DOM_PK_F7(emscripten_compute_dom_pk_code_DOM_PK_F7_reg)
		, .DOM_PK_F8(emscripten_compute_dom_pk_code_DOM_PK_F8_reg)
		, .DOM_PK_F9(emscripten_compute_dom_pk_code_DOM_PK_F9_reg)
		, .DOM_PK_G(emscripten_compute_dom_pk_code_DOM_PK_G_reg)
		, .DOM_PK_H(emscripten_compute_dom_pk_code_DOM_PK_H_reg)
		, .DOM_PK_HELP(emscripten_compute_dom_pk_code_DOM_PK_HELP_reg)
		, .DOM_PK_HOME(emscripten_compute_dom_pk_code_DOM_PK_HOME_reg)
		, .DOM_PK_I(emscripten_compute_dom_pk_code_DOM_PK_I_reg)
		, .DOM_PK_INSERT(emscripten_compute_dom_pk_code_DOM_PK_INSERT_reg)
		, .DOM_PK_INTL_BACKSLASH(emscripten_compute_dom_pk_code_DOM_PK_INTL_BACKSLASH_reg)
		, .DOM_PK_INTL_RO(emscripten_compute_dom_pk_code_DOM_PK_INTL_RO_reg)
		, .DOM_PK_INTL_YEN(emscripten_compute_dom_pk_code_DOM_PK_INTL_YEN_reg)
		, .DOM_PK_J(emscripten_compute_dom_pk_code_DOM_PK_J_reg)
		, .DOM_PK_K(emscripten_compute_dom_pk_code_DOM_PK_K_reg)
		, .DOM_PK_KANA_MODE(emscripten_compute_dom_pk_code_DOM_PK_KANA_MODE_reg)
		, .DOM_PK_L(emscripten_compute_dom_pk_code_DOM_PK_L_reg)
		, .DOM_PK_LANG_1(emscripten_compute_dom_pk_code_DOM_PK_LANG_1_reg)
		, .DOM_PK_LANG_2(emscripten_compute_dom_pk_code_DOM_PK_LANG_2_reg)
		, .DOM_PK_LAUNCH_APP_1(emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_1_reg)
		, .DOM_PK_LAUNCH_APP_2(emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_APP_2_reg)
		, .DOM_PK_LAUNCH_MAIL(emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MAIL_reg)
		, .DOM_PK_LAUNCH_MEDIA_PLAYER(emscripten_compute_dom_pk_code_DOM_PK_LAUNCH_MEDIA_PLAYER_reg)
		, .DOM_PK_M(emscripten_compute_dom_pk_code_DOM_PK_M_reg)
		, .DOM_PK_MEDIA_PLAY_PAUSE(emscripten_compute_dom_pk_code_DOM_PK_MEDIA_PLAY_PAUSE_reg)
		, .DOM_PK_MEDIA_SELECT(emscripten_compute_dom_pk_code_DOM_PK_MEDIA_SELECT_reg)
		, .DOM_PK_MEDIA_STOP(emscripten_compute_dom_pk_code_DOM_PK_MEDIA_STOP_reg)
		, .DOM_PK_MEDIA_TRACK_NEXT(emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_NEXT_reg)
		, .DOM_PK_MEDIA_TRACK_PREVIOUS(emscripten_compute_dom_pk_code_DOM_PK_MEDIA_TRACK_PREVIOUS_reg)
		, .DOM_PK_META_LEFT(emscripten_compute_dom_pk_code_DOM_PK_META_LEFT_reg)
		, .DOM_PK_META_RIGHT(emscripten_compute_dom_pk_code_DOM_PK_META_RIGHT_reg)
		, .DOM_PK_MINUS(emscripten_compute_dom_pk_code_DOM_PK_MINUS_reg)
		, .DOM_PK_N(emscripten_compute_dom_pk_code_DOM_PK_N_reg)
		, .DOM_PK_NON_CONVERT(emscripten_compute_dom_pk_code_DOM_PK_NON_CONVERT_reg)
		, .DOM_PK_NUMPAD_0(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_0_reg)
		, .DOM_PK_NUMPAD_1(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_1_reg)
		, .DOM_PK_NUMPAD_2(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_2_reg)
		, .DOM_PK_NUMPAD_3(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_3_reg)
		, .DOM_PK_NUMPAD_4(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_4_reg)
		, .DOM_PK_NUMPAD_5(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_5_reg)
		, .DOM_PK_NUMPAD_6(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_6_reg)
		, .DOM_PK_NUMPAD_7(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_7_reg)
		, .DOM_PK_NUMPAD_8(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_8_reg)
		, .DOM_PK_NUMPAD_9(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_9_reg)
		, .DOM_PK_NUMPAD_ADD(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ADD_reg)
		, .DOM_PK_NUMPAD_COMMA(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_COMMA_reg)
		, .DOM_PK_NUMPAD_DECIMAL(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DECIMAL_reg)
		, .DOM_PK_NUMPAD_DIVIDE(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_DIVIDE_reg)
		, .DOM_PK_NUMPAD_ENTER(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_ENTER_reg)
		, .DOM_PK_NUMPAD_EQUAL(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_EQUAL_reg)
		, .DOM_PK_NUMPAD_MULTIPLY(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_MULTIPLY_reg)
		, .DOM_PK_NUMPAD_SUBTRACT(emscripten_compute_dom_pk_code_DOM_PK_NUMPAD_SUBTRACT_reg)
		, .DOM_PK_NUM_LOCK(emscripten_compute_dom_pk_code_DOM_PK_NUM_LOCK_reg)
		, .DOM_PK_O(emscripten_compute_dom_pk_code_DOM_PK_O_reg)
		, .DOM_PK_OS_LEFT(emscripten_compute_dom_pk_code_DOM_PK_OS_LEFT_reg)
		, .DOM_PK_OS_RIGHT(emscripten_compute_dom_pk_code_DOM_PK_OS_RIGHT_reg)
		, .DOM_PK_P(emscripten_compute_dom_pk_code_DOM_PK_P_reg)
		, .DOM_PK_PAGE_DOWN(emscripten_compute_dom_pk_code_DOM_PK_PAGE_DOWN_reg)
		, .DOM_PK_PAGE_UP(emscripten_compute_dom_pk_code_DOM_PK_PAGE_UP_reg)
		, .DOM_PK_PASTE(emscripten_compute_dom_pk_code_DOM_PK_PASTE_reg)
		, .DOM_PK_PAUSE(emscripten_compute_dom_pk_code_DOM_PK_PAUSE_reg)
		, .DOM_PK_PERIOD(emscripten_compute_dom_pk_code_DOM_PK_PERIOD_reg)
		, .DOM_PK_POWER(emscripten_compute_dom_pk_code_DOM_PK_POWER_reg)
		, .DOM_PK_PRINT_SCREEN(emscripten_compute_dom_pk_code_DOM_PK_PRINT_SCREEN_reg)
		, .DOM_PK_Q(emscripten_compute_dom_pk_code_DOM_PK_Q_reg)
		, .DOM_PK_QUOTE(emscripten_compute_dom_pk_code_DOM_PK_QUOTE_reg)
		, .DOM_PK_R(emscripten_compute_dom_pk_code_DOM_PK_R_reg)
		, .DOM_PK_S(emscripten_compute_dom_pk_code_DOM_PK_S_reg)
		, .DOM_PK_SCROLL_LOCK(emscripten_compute_dom_pk_code_DOM_PK_SCROLL_LOCK_reg)
		, .DOM_PK_SEMICOLON(emscripten_compute_dom_pk_code_DOM_PK_SEMICOLON_reg)
		, .DOM_PK_SHIFT_LEFT(emscripten_compute_dom_pk_code_DOM_PK_SHIFT_LEFT_reg)
		, .DOM_PK_SHIFT_RIGHT(emscripten_compute_dom_pk_code_DOM_PK_SHIFT_RIGHT_reg)
		, .DOM_PK_SLASH(emscripten_compute_dom_pk_code_DOM_PK_SLASH_reg)
		, .DOM_PK_SPACE(emscripten_compute_dom_pk_code_DOM_PK_SPACE_reg)
		, .DOM_PK_T(emscripten_compute_dom_pk_code_DOM_PK_T_reg)
		, .DOM_PK_TAB(emscripten_compute_dom_pk_code_DOM_PK_TAB_reg)
		, .DOM_PK_U(emscripten_compute_dom_pk_code_DOM_PK_U_reg)
		, .DOM_PK_UNKNOWN(emscripten_compute_dom_pk_code_DOM_PK_UNKNOWN_reg)
		, .DOM_PK_V(emscripten_compute_dom_pk_code_DOM_PK_V_reg)
		, .DOM_PK_W(emscripten_compute_dom_pk_code_DOM_PK_W_reg)
		, .DOM_PK_X(emscripten_compute_dom_pk_code_DOM_PK_X_reg)
		, .DOM_PK_Y(emscripten_compute_dom_pk_code_DOM_PK_Y_reg)
		, .DOM_PK_Z(emscripten_compute_dom_pk_code_DOM_PK_Z_reg)
		, .avmm_0_rw_address(emscripten_compute_dom_pk_code_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(emscripten_compute_dom_pk_code_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(emscripten_compute_dom_pk_code_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(emscripten_compute_dom_pk_code_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(emscripten_compute_dom_pk_code_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(emscripten_compute_dom_pk_code_avmm_0_rw_writedata_reg)
	);



endmodule
