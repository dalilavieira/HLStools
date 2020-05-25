module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] obs_key_from_virtual_key_start
	, output logic [0:0] obs_key_from_virtual_key_busy
	, output logic [0:0] obs_key_from_virtual_key_done
	, input logic [0:0] obs_key_from_virtual_key_stall
	, output logic [31:0] obs_key_from_virtual_key_returndata
	, input logic [31:0] obs_key_from_virtual_key_code
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_0
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_1
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_2
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_3
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_4
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_5
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_6
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_7
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_8
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_9
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_A
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_ALT
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_B
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_BACKSLASH
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_BACKSPACE
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_BRACKETLEFT
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_BRACKETRIGHT
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_C
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_CAPSLOCK
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_CLEAR
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_COMMA
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_CONTROL
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_D
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_DEAD_GRAVE
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_DELETE
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_DOWN
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_E
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_END
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_ENTER
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_EQUAL
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_ESCAPE
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F1
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F10
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F11
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F12
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F13
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F14
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F15
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F16
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F17
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F18
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F19
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F2
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F20
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F3
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F4
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F5
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F6
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F7
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F8
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_F9
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_G
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_H
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_HELP
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_HOME
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_I
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_J
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_K
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_L
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_LEFT
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_M
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_META
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_MINUS
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_N
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NONE
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM0
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM1
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM2
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM3
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM4
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM5
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM6
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM7
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM8
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM9
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMASTERISK
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMEQUAL
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMMINUS
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMPERIOD
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMPLUS
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMSLASH
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_O
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_P
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_PAGEDOWN
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_PAGEUP
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_PERIOD
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_Q
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_QUOTE
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_R
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_RETURN
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_RIGHT
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_S
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_SECTION
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_SEMICOLON
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_SHIFT
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_SLASH
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_SPACE
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_T
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_TAB
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_U
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_UP
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_V
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_W
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_X
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_Y
	, input logic [63:0] obs_key_from_virtual_key_OBS_KEY_Z
	, output logic [63:0] obs_key_from_virtual_key_avmm_0_rw_address
	, output logic [7:0] obs_key_from_virtual_key_avmm_0_rw_byteenable
	, output logic [0:0] obs_key_from_virtual_key_avmm_0_rw_read
	, input logic [63:0] obs_key_from_virtual_key_avmm_0_rw_readdata
	, output logic [0:0] obs_key_from_virtual_key_avmm_0_rw_write
	, output logic [63:0] obs_key_from_virtual_key_avmm_0_rw_writedata
	);

	logic [0:0] obs_key_from_virtual_key_start_reg;
	logic [0:0] obs_key_from_virtual_key_busy_reg;
	logic [0:0] obs_key_from_virtual_key_done_reg;
	logic [0:0] obs_key_from_virtual_key_stall_reg;
	logic [31:0] obs_key_from_virtual_key_returndata_reg;
	logic [31:0] obs_key_from_virtual_key_code_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_0_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_1_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_2_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_3_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_4_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_5_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_6_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_7_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_8_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_9_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_A_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_ALT_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_B_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_BACKSLASH_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_BACKSPACE_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_BRACKETLEFT_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_BRACKETRIGHT_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_C_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_CAPSLOCK_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_CLEAR_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_COMMA_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_CONTROL_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_D_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_DEAD_GRAVE_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_DELETE_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_DOWN_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_E_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_END_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_ENTER_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_EQUAL_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_ESCAPE_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F1_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F10_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F11_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F12_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F13_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F14_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F15_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F16_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F17_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F18_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F19_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F2_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F20_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F3_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F4_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F5_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F6_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F7_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F8_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_F9_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_G_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_H_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_HELP_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_HOME_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_I_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_J_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_K_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_L_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_LEFT_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_M_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_META_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_MINUS_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_N_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NONE_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM0_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM1_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM2_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM3_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM4_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM5_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM6_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM7_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM8_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUM9_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMASTERISK_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMEQUAL_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMMINUS_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMPERIOD_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMPLUS_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_NUMSLASH_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_O_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_P_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_PAGEDOWN_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_PAGEUP_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_PERIOD_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_Q_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_QUOTE_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_R_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_RETURN_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_RIGHT_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_S_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_SECTION_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_SEMICOLON_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_SHIFT_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_SLASH_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_SPACE_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_T_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_TAB_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_U_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_UP_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_V_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_W_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_X_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_Y_reg;
	logic [63:0] obs_key_from_virtual_key_OBS_KEY_Z_reg;
	logic [63:0] obs_key_from_virtual_key_avmm_0_rw_address_reg;
	logic [7:0] obs_key_from_virtual_key_avmm_0_rw_byteenable_reg;
	logic [0:0] obs_key_from_virtual_key_avmm_0_rw_read_reg;
	logic [63:0] obs_key_from_virtual_key_avmm_0_rw_readdata_reg;
	logic [0:0] obs_key_from_virtual_key_avmm_0_rw_write_reg;
	logic [63:0] obs_key_from_virtual_key_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		obs_key_from_virtual_key_start_reg <= obs_key_from_virtual_key_start;
		obs_key_from_virtual_key_busy <= obs_key_from_virtual_key_busy_reg;
		obs_key_from_virtual_key_done <= obs_key_from_virtual_key_done_reg;
		obs_key_from_virtual_key_stall_reg <= obs_key_from_virtual_key_stall;
		obs_key_from_virtual_key_returndata <= obs_key_from_virtual_key_returndata_reg;
		obs_key_from_virtual_key_code_reg <= obs_key_from_virtual_key_code;
		obs_key_from_virtual_key_OBS_KEY_0_reg <= obs_key_from_virtual_key_OBS_KEY_0;
		obs_key_from_virtual_key_OBS_KEY_1_reg <= obs_key_from_virtual_key_OBS_KEY_1;
		obs_key_from_virtual_key_OBS_KEY_2_reg <= obs_key_from_virtual_key_OBS_KEY_2;
		obs_key_from_virtual_key_OBS_KEY_3_reg <= obs_key_from_virtual_key_OBS_KEY_3;
		obs_key_from_virtual_key_OBS_KEY_4_reg <= obs_key_from_virtual_key_OBS_KEY_4;
		obs_key_from_virtual_key_OBS_KEY_5_reg <= obs_key_from_virtual_key_OBS_KEY_5;
		obs_key_from_virtual_key_OBS_KEY_6_reg <= obs_key_from_virtual_key_OBS_KEY_6;
		obs_key_from_virtual_key_OBS_KEY_7_reg <= obs_key_from_virtual_key_OBS_KEY_7;
		obs_key_from_virtual_key_OBS_KEY_8_reg <= obs_key_from_virtual_key_OBS_KEY_8;
		obs_key_from_virtual_key_OBS_KEY_9_reg <= obs_key_from_virtual_key_OBS_KEY_9;
		obs_key_from_virtual_key_OBS_KEY_A_reg <= obs_key_from_virtual_key_OBS_KEY_A;
		obs_key_from_virtual_key_OBS_KEY_ALT_reg <= obs_key_from_virtual_key_OBS_KEY_ALT;
		obs_key_from_virtual_key_OBS_KEY_B_reg <= obs_key_from_virtual_key_OBS_KEY_B;
		obs_key_from_virtual_key_OBS_KEY_BACKSLASH_reg <= obs_key_from_virtual_key_OBS_KEY_BACKSLASH;
		obs_key_from_virtual_key_OBS_KEY_BACKSPACE_reg <= obs_key_from_virtual_key_OBS_KEY_BACKSPACE;
		obs_key_from_virtual_key_OBS_KEY_BRACKETLEFT_reg <= obs_key_from_virtual_key_OBS_KEY_BRACKETLEFT;
		obs_key_from_virtual_key_OBS_KEY_BRACKETRIGHT_reg <= obs_key_from_virtual_key_OBS_KEY_BRACKETRIGHT;
		obs_key_from_virtual_key_OBS_KEY_C_reg <= obs_key_from_virtual_key_OBS_KEY_C;
		obs_key_from_virtual_key_OBS_KEY_CAPSLOCK_reg <= obs_key_from_virtual_key_OBS_KEY_CAPSLOCK;
		obs_key_from_virtual_key_OBS_KEY_CLEAR_reg <= obs_key_from_virtual_key_OBS_KEY_CLEAR;
		obs_key_from_virtual_key_OBS_KEY_COMMA_reg <= obs_key_from_virtual_key_OBS_KEY_COMMA;
		obs_key_from_virtual_key_OBS_KEY_CONTROL_reg <= obs_key_from_virtual_key_OBS_KEY_CONTROL;
		obs_key_from_virtual_key_OBS_KEY_D_reg <= obs_key_from_virtual_key_OBS_KEY_D;
		obs_key_from_virtual_key_OBS_KEY_DEAD_GRAVE_reg <= obs_key_from_virtual_key_OBS_KEY_DEAD_GRAVE;
		obs_key_from_virtual_key_OBS_KEY_DELETE_reg <= obs_key_from_virtual_key_OBS_KEY_DELETE;
		obs_key_from_virtual_key_OBS_KEY_DOWN_reg <= obs_key_from_virtual_key_OBS_KEY_DOWN;
		obs_key_from_virtual_key_OBS_KEY_E_reg <= obs_key_from_virtual_key_OBS_KEY_E;
		obs_key_from_virtual_key_OBS_KEY_END_reg <= obs_key_from_virtual_key_OBS_KEY_END;
		obs_key_from_virtual_key_OBS_KEY_ENTER_reg <= obs_key_from_virtual_key_OBS_KEY_ENTER;
		obs_key_from_virtual_key_OBS_KEY_EQUAL_reg <= obs_key_from_virtual_key_OBS_KEY_EQUAL;
		obs_key_from_virtual_key_OBS_KEY_ESCAPE_reg <= obs_key_from_virtual_key_OBS_KEY_ESCAPE;
		obs_key_from_virtual_key_OBS_KEY_F_reg <= obs_key_from_virtual_key_OBS_KEY_F;
		obs_key_from_virtual_key_OBS_KEY_F1_reg <= obs_key_from_virtual_key_OBS_KEY_F1;
		obs_key_from_virtual_key_OBS_KEY_F10_reg <= obs_key_from_virtual_key_OBS_KEY_F10;
		obs_key_from_virtual_key_OBS_KEY_F11_reg <= obs_key_from_virtual_key_OBS_KEY_F11;
		obs_key_from_virtual_key_OBS_KEY_F12_reg <= obs_key_from_virtual_key_OBS_KEY_F12;
		obs_key_from_virtual_key_OBS_KEY_F13_reg <= obs_key_from_virtual_key_OBS_KEY_F13;
		obs_key_from_virtual_key_OBS_KEY_F14_reg <= obs_key_from_virtual_key_OBS_KEY_F14;
		obs_key_from_virtual_key_OBS_KEY_F15_reg <= obs_key_from_virtual_key_OBS_KEY_F15;
		obs_key_from_virtual_key_OBS_KEY_F16_reg <= obs_key_from_virtual_key_OBS_KEY_F16;
		obs_key_from_virtual_key_OBS_KEY_F17_reg <= obs_key_from_virtual_key_OBS_KEY_F17;
		obs_key_from_virtual_key_OBS_KEY_F18_reg <= obs_key_from_virtual_key_OBS_KEY_F18;
		obs_key_from_virtual_key_OBS_KEY_F19_reg <= obs_key_from_virtual_key_OBS_KEY_F19;
		obs_key_from_virtual_key_OBS_KEY_F2_reg <= obs_key_from_virtual_key_OBS_KEY_F2;
		obs_key_from_virtual_key_OBS_KEY_F20_reg <= obs_key_from_virtual_key_OBS_KEY_F20;
		obs_key_from_virtual_key_OBS_KEY_F3_reg <= obs_key_from_virtual_key_OBS_KEY_F3;
		obs_key_from_virtual_key_OBS_KEY_F4_reg <= obs_key_from_virtual_key_OBS_KEY_F4;
		obs_key_from_virtual_key_OBS_KEY_F5_reg <= obs_key_from_virtual_key_OBS_KEY_F5;
		obs_key_from_virtual_key_OBS_KEY_F6_reg <= obs_key_from_virtual_key_OBS_KEY_F6;
		obs_key_from_virtual_key_OBS_KEY_F7_reg <= obs_key_from_virtual_key_OBS_KEY_F7;
		obs_key_from_virtual_key_OBS_KEY_F8_reg <= obs_key_from_virtual_key_OBS_KEY_F8;
		obs_key_from_virtual_key_OBS_KEY_F9_reg <= obs_key_from_virtual_key_OBS_KEY_F9;
		obs_key_from_virtual_key_OBS_KEY_G_reg <= obs_key_from_virtual_key_OBS_KEY_G;
		obs_key_from_virtual_key_OBS_KEY_H_reg <= obs_key_from_virtual_key_OBS_KEY_H;
		obs_key_from_virtual_key_OBS_KEY_HELP_reg <= obs_key_from_virtual_key_OBS_KEY_HELP;
		obs_key_from_virtual_key_OBS_KEY_HOME_reg <= obs_key_from_virtual_key_OBS_KEY_HOME;
		obs_key_from_virtual_key_OBS_KEY_I_reg <= obs_key_from_virtual_key_OBS_KEY_I;
		obs_key_from_virtual_key_OBS_KEY_J_reg <= obs_key_from_virtual_key_OBS_KEY_J;
		obs_key_from_virtual_key_OBS_KEY_K_reg <= obs_key_from_virtual_key_OBS_KEY_K;
		obs_key_from_virtual_key_OBS_KEY_L_reg <= obs_key_from_virtual_key_OBS_KEY_L;
		obs_key_from_virtual_key_OBS_KEY_LEFT_reg <= obs_key_from_virtual_key_OBS_KEY_LEFT;
		obs_key_from_virtual_key_OBS_KEY_M_reg <= obs_key_from_virtual_key_OBS_KEY_M;
		obs_key_from_virtual_key_OBS_KEY_META_reg <= obs_key_from_virtual_key_OBS_KEY_META;
		obs_key_from_virtual_key_OBS_KEY_MINUS_reg <= obs_key_from_virtual_key_OBS_KEY_MINUS;
		obs_key_from_virtual_key_OBS_KEY_N_reg <= obs_key_from_virtual_key_OBS_KEY_N;
		obs_key_from_virtual_key_OBS_KEY_NONE_reg <= obs_key_from_virtual_key_OBS_KEY_NONE;
		obs_key_from_virtual_key_OBS_KEY_NUM0_reg <= obs_key_from_virtual_key_OBS_KEY_NUM0;
		obs_key_from_virtual_key_OBS_KEY_NUM1_reg <= obs_key_from_virtual_key_OBS_KEY_NUM1;
		obs_key_from_virtual_key_OBS_KEY_NUM2_reg <= obs_key_from_virtual_key_OBS_KEY_NUM2;
		obs_key_from_virtual_key_OBS_KEY_NUM3_reg <= obs_key_from_virtual_key_OBS_KEY_NUM3;
		obs_key_from_virtual_key_OBS_KEY_NUM4_reg <= obs_key_from_virtual_key_OBS_KEY_NUM4;
		obs_key_from_virtual_key_OBS_KEY_NUM5_reg <= obs_key_from_virtual_key_OBS_KEY_NUM5;
		obs_key_from_virtual_key_OBS_KEY_NUM6_reg <= obs_key_from_virtual_key_OBS_KEY_NUM6;
		obs_key_from_virtual_key_OBS_KEY_NUM7_reg <= obs_key_from_virtual_key_OBS_KEY_NUM7;
		obs_key_from_virtual_key_OBS_KEY_NUM8_reg <= obs_key_from_virtual_key_OBS_KEY_NUM8;
		obs_key_from_virtual_key_OBS_KEY_NUM9_reg <= obs_key_from_virtual_key_OBS_KEY_NUM9;
		obs_key_from_virtual_key_OBS_KEY_NUMASTERISK_reg <= obs_key_from_virtual_key_OBS_KEY_NUMASTERISK;
		obs_key_from_virtual_key_OBS_KEY_NUMEQUAL_reg <= obs_key_from_virtual_key_OBS_KEY_NUMEQUAL;
		obs_key_from_virtual_key_OBS_KEY_NUMMINUS_reg <= obs_key_from_virtual_key_OBS_KEY_NUMMINUS;
		obs_key_from_virtual_key_OBS_KEY_NUMPERIOD_reg <= obs_key_from_virtual_key_OBS_KEY_NUMPERIOD;
		obs_key_from_virtual_key_OBS_KEY_NUMPLUS_reg <= obs_key_from_virtual_key_OBS_KEY_NUMPLUS;
		obs_key_from_virtual_key_OBS_KEY_NUMSLASH_reg <= obs_key_from_virtual_key_OBS_KEY_NUMSLASH;
		obs_key_from_virtual_key_OBS_KEY_O_reg <= obs_key_from_virtual_key_OBS_KEY_O;
		obs_key_from_virtual_key_OBS_KEY_P_reg <= obs_key_from_virtual_key_OBS_KEY_P;
		obs_key_from_virtual_key_OBS_KEY_PAGEDOWN_reg <= obs_key_from_virtual_key_OBS_KEY_PAGEDOWN;
		obs_key_from_virtual_key_OBS_KEY_PAGEUP_reg <= obs_key_from_virtual_key_OBS_KEY_PAGEUP;
		obs_key_from_virtual_key_OBS_KEY_PERIOD_reg <= obs_key_from_virtual_key_OBS_KEY_PERIOD;
		obs_key_from_virtual_key_OBS_KEY_Q_reg <= obs_key_from_virtual_key_OBS_KEY_Q;
		obs_key_from_virtual_key_OBS_KEY_QUOTE_reg <= obs_key_from_virtual_key_OBS_KEY_QUOTE;
		obs_key_from_virtual_key_OBS_KEY_R_reg <= obs_key_from_virtual_key_OBS_KEY_R;
		obs_key_from_virtual_key_OBS_KEY_RETURN_reg <= obs_key_from_virtual_key_OBS_KEY_RETURN;
		obs_key_from_virtual_key_OBS_KEY_RIGHT_reg <= obs_key_from_virtual_key_OBS_KEY_RIGHT;
		obs_key_from_virtual_key_OBS_KEY_S_reg <= obs_key_from_virtual_key_OBS_KEY_S;
		obs_key_from_virtual_key_OBS_KEY_SECTION_reg <= obs_key_from_virtual_key_OBS_KEY_SECTION;
		obs_key_from_virtual_key_OBS_KEY_SEMICOLON_reg <= obs_key_from_virtual_key_OBS_KEY_SEMICOLON;
		obs_key_from_virtual_key_OBS_KEY_SHIFT_reg <= obs_key_from_virtual_key_OBS_KEY_SHIFT;
		obs_key_from_virtual_key_OBS_KEY_SLASH_reg <= obs_key_from_virtual_key_OBS_KEY_SLASH;
		obs_key_from_virtual_key_OBS_KEY_SPACE_reg <= obs_key_from_virtual_key_OBS_KEY_SPACE;
		obs_key_from_virtual_key_OBS_KEY_T_reg <= obs_key_from_virtual_key_OBS_KEY_T;
		obs_key_from_virtual_key_OBS_KEY_TAB_reg <= obs_key_from_virtual_key_OBS_KEY_TAB;
		obs_key_from_virtual_key_OBS_KEY_U_reg <= obs_key_from_virtual_key_OBS_KEY_U;
		obs_key_from_virtual_key_OBS_KEY_UP_reg <= obs_key_from_virtual_key_OBS_KEY_UP;
		obs_key_from_virtual_key_OBS_KEY_V_reg <= obs_key_from_virtual_key_OBS_KEY_V;
		obs_key_from_virtual_key_OBS_KEY_W_reg <= obs_key_from_virtual_key_OBS_KEY_W;
		obs_key_from_virtual_key_OBS_KEY_X_reg <= obs_key_from_virtual_key_OBS_KEY_X;
		obs_key_from_virtual_key_OBS_KEY_Y_reg <= obs_key_from_virtual_key_OBS_KEY_Y;
		obs_key_from_virtual_key_OBS_KEY_Z_reg <= obs_key_from_virtual_key_OBS_KEY_Z;
		obs_key_from_virtual_key_avmm_0_rw_address <= obs_key_from_virtual_key_avmm_0_rw_address_reg;
		obs_key_from_virtual_key_avmm_0_rw_byteenable <= obs_key_from_virtual_key_avmm_0_rw_byteenable_reg;
		obs_key_from_virtual_key_avmm_0_rw_read <= obs_key_from_virtual_key_avmm_0_rw_read_reg;
		obs_key_from_virtual_key_avmm_0_rw_readdata_reg <= obs_key_from_virtual_key_avmm_0_rw_readdata;
		obs_key_from_virtual_key_avmm_0_rw_write <= obs_key_from_virtual_key_avmm_0_rw_write_reg;
		obs_key_from_virtual_key_avmm_0_rw_writedata <= obs_key_from_virtual_key_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	obs_key_from_virtual_key obs_key_from_virtual_key_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(obs_key_from_virtual_key_start_reg)
		, .busy(obs_key_from_virtual_key_busy_reg)
		, .done(obs_key_from_virtual_key_done_reg)
		, .stall(obs_key_from_virtual_key_stall_reg)
		, .returndata(obs_key_from_virtual_key_returndata_reg)
		, .code(obs_key_from_virtual_key_code_reg)
		, .OBS_KEY_0(obs_key_from_virtual_key_OBS_KEY_0_reg)
		, .OBS_KEY_1(obs_key_from_virtual_key_OBS_KEY_1_reg)
		, .OBS_KEY_2(obs_key_from_virtual_key_OBS_KEY_2_reg)
		, .OBS_KEY_3(obs_key_from_virtual_key_OBS_KEY_3_reg)
		, .OBS_KEY_4(obs_key_from_virtual_key_OBS_KEY_4_reg)
		, .OBS_KEY_5(obs_key_from_virtual_key_OBS_KEY_5_reg)
		, .OBS_KEY_6(obs_key_from_virtual_key_OBS_KEY_6_reg)
		, .OBS_KEY_7(obs_key_from_virtual_key_OBS_KEY_7_reg)
		, .OBS_KEY_8(obs_key_from_virtual_key_OBS_KEY_8_reg)
		, .OBS_KEY_9(obs_key_from_virtual_key_OBS_KEY_9_reg)
		, .OBS_KEY_A(obs_key_from_virtual_key_OBS_KEY_A_reg)
		, .OBS_KEY_ALT(obs_key_from_virtual_key_OBS_KEY_ALT_reg)
		, .OBS_KEY_B(obs_key_from_virtual_key_OBS_KEY_B_reg)
		, .OBS_KEY_BACKSLASH(obs_key_from_virtual_key_OBS_KEY_BACKSLASH_reg)
		, .OBS_KEY_BACKSPACE(obs_key_from_virtual_key_OBS_KEY_BACKSPACE_reg)
		, .OBS_KEY_BRACKETLEFT(obs_key_from_virtual_key_OBS_KEY_BRACKETLEFT_reg)
		, .OBS_KEY_BRACKETRIGHT(obs_key_from_virtual_key_OBS_KEY_BRACKETRIGHT_reg)
		, .OBS_KEY_C(obs_key_from_virtual_key_OBS_KEY_C_reg)
		, .OBS_KEY_CAPSLOCK(obs_key_from_virtual_key_OBS_KEY_CAPSLOCK_reg)
		, .OBS_KEY_CLEAR(obs_key_from_virtual_key_OBS_KEY_CLEAR_reg)
		, .OBS_KEY_COMMA(obs_key_from_virtual_key_OBS_KEY_COMMA_reg)
		, .OBS_KEY_CONTROL(obs_key_from_virtual_key_OBS_KEY_CONTROL_reg)
		, .OBS_KEY_D(obs_key_from_virtual_key_OBS_KEY_D_reg)
		, .OBS_KEY_DEAD_GRAVE(obs_key_from_virtual_key_OBS_KEY_DEAD_GRAVE_reg)
		, .OBS_KEY_DELETE(obs_key_from_virtual_key_OBS_KEY_DELETE_reg)
		, .OBS_KEY_DOWN(obs_key_from_virtual_key_OBS_KEY_DOWN_reg)
		, .OBS_KEY_E(obs_key_from_virtual_key_OBS_KEY_E_reg)
		, .OBS_KEY_END(obs_key_from_virtual_key_OBS_KEY_END_reg)
		, .OBS_KEY_ENTER(obs_key_from_virtual_key_OBS_KEY_ENTER_reg)
		, .OBS_KEY_EQUAL(obs_key_from_virtual_key_OBS_KEY_EQUAL_reg)
		, .OBS_KEY_ESCAPE(obs_key_from_virtual_key_OBS_KEY_ESCAPE_reg)
		, .OBS_KEY_F(obs_key_from_virtual_key_OBS_KEY_F_reg)
		, .OBS_KEY_F1(obs_key_from_virtual_key_OBS_KEY_F1_reg)
		, .OBS_KEY_F10(obs_key_from_virtual_key_OBS_KEY_F10_reg)
		, .OBS_KEY_F11(obs_key_from_virtual_key_OBS_KEY_F11_reg)
		, .OBS_KEY_F12(obs_key_from_virtual_key_OBS_KEY_F12_reg)
		, .OBS_KEY_F13(obs_key_from_virtual_key_OBS_KEY_F13_reg)
		, .OBS_KEY_F14(obs_key_from_virtual_key_OBS_KEY_F14_reg)
		, .OBS_KEY_F15(obs_key_from_virtual_key_OBS_KEY_F15_reg)
		, .OBS_KEY_F16(obs_key_from_virtual_key_OBS_KEY_F16_reg)
		, .OBS_KEY_F17(obs_key_from_virtual_key_OBS_KEY_F17_reg)
		, .OBS_KEY_F18(obs_key_from_virtual_key_OBS_KEY_F18_reg)
		, .OBS_KEY_F19(obs_key_from_virtual_key_OBS_KEY_F19_reg)
		, .OBS_KEY_F2(obs_key_from_virtual_key_OBS_KEY_F2_reg)
		, .OBS_KEY_F20(obs_key_from_virtual_key_OBS_KEY_F20_reg)
		, .OBS_KEY_F3(obs_key_from_virtual_key_OBS_KEY_F3_reg)
		, .OBS_KEY_F4(obs_key_from_virtual_key_OBS_KEY_F4_reg)
		, .OBS_KEY_F5(obs_key_from_virtual_key_OBS_KEY_F5_reg)
		, .OBS_KEY_F6(obs_key_from_virtual_key_OBS_KEY_F6_reg)
		, .OBS_KEY_F7(obs_key_from_virtual_key_OBS_KEY_F7_reg)
		, .OBS_KEY_F8(obs_key_from_virtual_key_OBS_KEY_F8_reg)
		, .OBS_KEY_F9(obs_key_from_virtual_key_OBS_KEY_F9_reg)
		, .OBS_KEY_G(obs_key_from_virtual_key_OBS_KEY_G_reg)
		, .OBS_KEY_H(obs_key_from_virtual_key_OBS_KEY_H_reg)
		, .OBS_KEY_HELP(obs_key_from_virtual_key_OBS_KEY_HELP_reg)
		, .OBS_KEY_HOME(obs_key_from_virtual_key_OBS_KEY_HOME_reg)
		, .OBS_KEY_I(obs_key_from_virtual_key_OBS_KEY_I_reg)
		, .OBS_KEY_J(obs_key_from_virtual_key_OBS_KEY_J_reg)
		, .OBS_KEY_K(obs_key_from_virtual_key_OBS_KEY_K_reg)
		, .OBS_KEY_L(obs_key_from_virtual_key_OBS_KEY_L_reg)
		, .OBS_KEY_LEFT(obs_key_from_virtual_key_OBS_KEY_LEFT_reg)
		, .OBS_KEY_M(obs_key_from_virtual_key_OBS_KEY_M_reg)
		, .OBS_KEY_META(obs_key_from_virtual_key_OBS_KEY_META_reg)
		, .OBS_KEY_MINUS(obs_key_from_virtual_key_OBS_KEY_MINUS_reg)
		, .OBS_KEY_N(obs_key_from_virtual_key_OBS_KEY_N_reg)
		, .OBS_KEY_NONE(obs_key_from_virtual_key_OBS_KEY_NONE_reg)
		, .OBS_KEY_NUM0(obs_key_from_virtual_key_OBS_KEY_NUM0_reg)
		, .OBS_KEY_NUM1(obs_key_from_virtual_key_OBS_KEY_NUM1_reg)
		, .OBS_KEY_NUM2(obs_key_from_virtual_key_OBS_KEY_NUM2_reg)
		, .OBS_KEY_NUM3(obs_key_from_virtual_key_OBS_KEY_NUM3_reg)
		, .OBS_KEY_NUM4(obs_key_from_virtual_key_OBS_KEY_NUM4_reg)
		, .OBS_KEY_NUM5(obs_key_from_virtual_key_OBS_KEY_NUM5_reg)
		, .OBS_KEY_NUM6(obs_key_from_virtual_key_OBS_KEY_NUM6_reg)
		, .OBS_KEY_NUM7(obs_key_from_virtual_key_OBS_KEY_NUM7_reg)
		, .OBS_KEY_NUM8(obs_key_from_virtual_key_OBS_KEY_NUM8_reg)
		, .OBS_KEY_NUM9(obs_key_from_virtual_key_OBS_KEY_NUM9_reg)
		, .OBS_KEY_NUMASTERISK(obs_key_from_virtual_key_OBS_KEY_NUMASTERISK_reg)
		, .OBS_KEY_NUMEQUAL(obs_key_from_virtual_key_OBS_KEY_NUMEQUAL_reg)
		, .OBS_KEY_NUMMINUS(obs_key_from_virtual_key_OBS_KEY_NUMMINUS_reg)
		, .OBS_KEY_NUMPERIOD(obs_key_from_virtual_key_OBS_KEY_NUMPERIOD_reg)
		, .OBS_KEY_NUMPLUS(obs_key_from_virtual_key_OBS_KEY_NUMPLUS_reg)
		, .OBS_KEY_NUMSLASH(obs_key_from_virtual_key_OBS_KEY_NUMSLASH_reg)
		, .OBS_KEY_O(obs_key_from_virtual_key_OBS_KEY_O_reg)
		, .OBS_KEY_P(obs_key_from_virtual_key_OBS_KEY_P_reg)
		, .OBS_KEY_PAGEDOWN(obs_key_from_virtual_key_OBS_KEY_PAGEDOWN_reg)
		, .OBS_KEY_PAGEUP(obs_key_from_virtual_key_OBS_KEY_PAGEUP_reg)
		, .OBS_KEY_PERIOD(obs_key_from_virtual_key_OBS_KEY_PERIOD_reg)
		, .OBS_KEY_Q(obs_key_from_virtual_key_OBS_KEY_Q_reg)
		, .OBS_KEY_QUOTE(obs_key_from_virtual_key_OBS_KEY_QUOTE_reg)
		, .OBS_KEY_R(obs_key_from_virtual_key_OBS_KEY_R_reg)
		, .OBS_KEY_RETURN(obs_key_from_virtual_key_OBS_KEY_RETURN_reg)
		, .OBS_KEY_RIGHT(obs_key_from_virtual_key_OBS_KEY_RIGHT_reg)
		, .OBS_KEY_S(obs_key_from_virtual_key_OBS_KEY_S_reg)
		, .OBS_KEY_SECTION(obs_key_from_virtual_key_OBS_KEY_SECTION_reg)
		, .OBS_KEY_SEMICOLON(obs_key_from_virtual_key_OBS_KEY_SEMICOLON_reg)
		, .OBS_KEY_SHIFT(obs_key_from_virtual_key_OBS_KEY_SHIFT_reg)
		, .OBS_KEY_SLASH(obs_key_from_virtual_key_OBS_KEY_SLASH_reg)
		, .OBS_KEY_SPACE(obs_key_from_virtual_key_OBS_KEY_SPACE_reg)
		, .OBS_KEY_T(obs_key_from_virtual_key_OBS_KEY_T_reg)
		, .OBS_KEY_TAB(obs_key_from_virtual_key_OBS_KEY_TAB_reg)
		, .OBS_KEY_U(obs_key_from_virtual_key_OBS_KEY_U_reg)
		, .OBS_KEY_UP(obs_key_from_virtual_key_OBS_KEY_UP_reg)
		, .OBS_KEY_V(obs_key_from_virtual_key_OBS_KEY_V_reg)
		, .OBS_KEY_W(obs_key_from_virtual_key_OBS_KEY_W_reg)
		, .OBS_KEY_X(obs_key_from_virtual_key_OBS_KEY_X_reg)
		, .OBS_KEY_Y(obs_key_from_virtual_key_OBS_KEY_Y_reg)
		, .OBS_KEY_Z(obs_key_from_virtual_key_OBS_KEY_Z_reg)
		, .avmm_0_rw_address(obs_key_from_virtual_key_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(obs_key_from_virtual_key_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(obs_key_from_virtual_key_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(obs_key_from_virtual_key_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(obs_key_from_virtual_key_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(obs_key_from_virtual_key_avmm_0_rw_writedata_reg)
	);



endmodule
