module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] obs_key_to_virtual_key_start
	, output logic [0:0] obs_key_to_virtual_key_busy
	, output logic [0:0] obs_key_to_virtual_key_done
	, input logic [0:0] obs_key_to_virtual_key_stall
	, output logic [31:0] obs_key_to_virtual_key_returndata
	, input logic [31:0] obs_key_to_virtual_key_code
	, input logic [63:0] obs_key_to_virtual_key_INVALID_KEY
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_0
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_1
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_2
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_3
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_4
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_5
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_6
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_7
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_8
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_9
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_A
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_B
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Backslash
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_C
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Comma
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_D
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_E
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Equal
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_F
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_G
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Grave
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_H
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_I
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_J
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_K
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad0
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad1
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad2
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad3
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad4
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad5
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad6
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad7
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad8
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad9
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadClear
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadDecimal
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadDivide
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadEnter
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadEquals
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadMinus
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadMultiply
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadPlus
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_L
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_LeftBracket
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_M
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Minus
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_N
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_O
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_P
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Period
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Q
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Quote
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_R
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_RightBracket
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_S
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Semicolon
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Slash
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_T
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_U
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_V
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_W
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_X
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Y
	, input logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Z
	, input logic [63:0] obs_key_to_virtual_key_kVK_CapsLock
	, input logic [63:0] obs_key_to_virtual_key_kVK_Command
	, input logic [63:0] obs_key_to_virtual_key_kVK_Control
	, input logic [63:0] obs_key_to_virtual_key_kVK_Delete
	, input logic [63:0] obs_key_to_virtual_key_kVK_DownArrow
	, input logic [63:0] obs_key_to_virtual_key_kVK_End
	, input logic [63:0] obs_key_to_virtual_key_kVK_Escape
	, input logic [63:0] obs_key_to_virtual_key_kVK_F1
	, input logic [63:0] obs_key_to_virtual_key_kVK_F10
	, input logic [63:0] obs_key_to_virtual_key_kVK_F11
	, input logic [63:0] obs_key_to_virtual_key_kVK_F12
	, input logic [63:0] obs_key_to_virtual_key_kVK_F13
	, input logic [63:0] obs_key_to_virtual_key_kVK_F14
	, input logic [63:0] obs_key_to_virtual_key_kVK_F15
	, input logic [63:0] obs_key_to_virtual_key_kVK_F16
	, input logic [63:0] obs_key_to_virtual_key_kVK_F17
	, input logic [63:0] obs_key_to_virtual_key_kVK_F18
	, input logic [63:0] obs_key_to_virtual_key_kVK_F19
	, input logic [63:0] obs_key_to_virtual_key_kVK_F2
	, input logic [63:0] obs_key_to_virtual_key_kVK_F20
	, input logic [63:0] obs_key_to_virtual_key_kVK_F3
	, input logic [63:0] obs_key_to_virtual_key_kVK_F4
	, input logic [63:0] obs_key_to_virtual_key_kVK_F5
	, input logic [63:0] obs_key_to_virtual_key_kVK_F6
	, input logic [63:0] obs_key_to_virtual_key_kVK_F7
	, input logic [63:0] obs_key_to_virtual_key_kVK_F8
	, input logic [63:0] obs_key_to_virtual_key_kVK_F9
	, input logic [63:0] obs_key_to_virtual_key_kVK_ForwardDelete
	, input logic [63:0] obs_key_to_virtual_key_kVK_Help
	, input logic [63:0] obs_key_to_virtual_key_kVK_Home
	, input logic [63:0] obs_key_to_virtual_key_kVK_ISO_Section
	, input logic [63:0] obs_key_to_virtual_key_kVK_LeftArrow
	, input logic [63:0] obs_key_to_virtual_key_kVK_Option
	, input logic [63:0] obs_key_to_virtual_key_kVK_PageDown
	, input logic [63:0] obs_key_to_virtual_key_kVK_PageUp
	, input logic [63:0] obs_key_to_virtual_key_kVK_Return
	, input logic [63:0] obs_key_to_virtual_key_kVK_RightArrow
	, input logic [63:0] obs_key_to_virtual_key_kVK_Shift
	, input logic [63:0] obs_key_to_virtual_key_kVK_Space
	, input logic [63:0] obs_key_to_virtual_key_kVK_Tab
	, input logic [63:0] obs_key_to_virtual_key_kVK_UpArrow
	, output logic [63:0] obs_key_to_virtual_key_avmm_0_rw_address
	, output logic [7:0] obs_key_to_virtual_key_avmm_0_rw_byteenable
	, output logic [0:0] obs_key_to_virtual_key_avmm_0_rw_read
	, input logic [63:0] obs_key_to_virtual_key_avmm_0_rw_readdata
	, output logic [0:0] obs_key_to_virtual_key_avmm_0_rw_write
	, output logic [63:0] obs_key_to_virtual_key_avmm_0_rw_writedata
	);

	logic [0:0] obs_key_to_virtual_key_start_reg;
	logic [0:0] obs_key_to_virtual_key_busy_reg;
	logic [0:0] obs_key_to_virtual_key_done_reg;
	logic [0:0] obs_key_to_virtual_key_stall_reg;
	logic [31:0] obs_key_to_virtual_key_returndata_reg;
	logic [31:0] obs_key_to_virtual_key_code_reg;
	logic [63:0] obs_key_to_virtual_key_INVALID_KEY_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_0_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_1_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_2_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_3_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_4_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_5_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_6_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_7_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_8_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_9_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_A_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_B_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Backslash_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_C_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Comma_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_D_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_E_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Equal_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_F_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_G_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Grave_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_H_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_I_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_J_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_K_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad0_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad1_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad2_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad3_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad4_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad5_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad6_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad7_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad8_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Keypad9_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadClear_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadDecimal_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadDivide_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadEnter_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadEquals_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadMinus_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadMultiply_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_KeypadPlus_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_L_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_LeftBracket_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_M_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Minus_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_N_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_O_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_P_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Period_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Q_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Quote_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_R_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_RightBracket_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_S_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Semicolon_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Slash_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_T_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_U_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_V_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_W_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_X_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Y_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ANSI_Z_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_CapsLock_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Command_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Control_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Delete_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_DownArrow_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_End_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Escape_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F1_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F10_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F11_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F12_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F13_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F14_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F15_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F16_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F17_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F18_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F19_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F2_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F20_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F3_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F4_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F5_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F6_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F7_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F8_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_F9_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ForwardDelete_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Help_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Home_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_ISO_Section_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_LeftArrow_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Option_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_PageDown_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_PageUp_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Return_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_RightArrow_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Shift_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Space_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_Tab_reg;
	logic [63:0] obs_key_to_virtual_key_kVK_UpArrow_reg;
	logic [63:0] obs_key_to_virtual_key_avmm_0_rw_address_reg;
	logic [7:0] obs_key_to_virtual_key_avmm_0_rw_byteenable_reg;
	logic [0:0] obs_key_to_virtual_key_avmm_0_rw_read_reg;
	logic [63:0] obs_key_to_virtual_key_avmm_0_rw_readdata_reg;
	logic [0:0] obs_key_to_virtual_key_avmm_0_rw_write_reg;
	logic [63:0] obs_key_to_virtual_key_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		obs_key_to_virtual_key_start_reg <= obs_key_to_virtual_key_start;
		obs_key_to_virtual_key_busy <= obs_key_to_virtual_key_busy_reg;
		obs_key_to_virtual_key_done <= obs_key_to_virtual_key_done_reg;
		obs_key_to_virtual_key_stall_reg <= obs_key_to_virtual_key_stall;
		obs_key_to_virtual_key_returndata <= obs_key_to_virtual_key_returndata_reg;
		obs_key_to_virtual_key_code_reg <= obs_key_to_virtual_key_code;
		obs_key_to_virtual_key_INVALID_KEY_reg <= obs_key_to_virtual_key_INVALID_KEY;
		obs_key_to_virtual_key_kVK_ANSI_0_reg <= obs_key_to_virtual_key_kVK_ANSI_0;
		obs_key_to_virtual_key_kVK_ANSI_1_reg <= obs_key_to_virtual_key_kVK_ANSI_1;
		obs_key_to_virtual_key_kVK_ANSI_2_reg <= obs_key_to_virtual_key_kVK_ANSI_2;
		obs_key_to_virtual_key_kVK_ANSI_3_reg <= obs_key_to_virtual_key_kVK_ANSI_3;
		obs_key_to_virtual_key_kVK_ANSI_4_reg <= obs_key_to_virtual_key_kVK_ANSI_4;
		obs_key_to_virtual_key_kVK_ANSI_5_reg <= obs_key_to_virtual_key_kVK_ANSI_5;
		obs_key_to_virtual_key_kVK_ANSI_6_reg <= obs_key_to_virtual_key_kVK_ANSI_6;
		obs_key_to_virtual_key_kVK_ANSI_7_reg <= obs_key_to_virtual_key_kVK_ANSI_7;
		obs_key_to_virtual_key_kVK_ANSI_8_reg <= obs_key_to_virtual_key_kVK_ANSI_8;
		obs_key_to_virtual_key_kVK_ANSI_9_reg <= obs_key_to_virtual_key_kVK_ANSI_9;
		obs_key_to_virtual_key_kVK_ANSI_A_reg <= obs_key_to_virtual_key_kVK_ANSI_A;
		obs_key_to_virtual_key_kVK_ANSI_B_reg <= obs_key_to_virtual_key_kVK_ANSI_B;
		obs_key_to_virtual_key_kVK_ANSI_Backslash_reg <= obs_key_to_virtual_key_kVK_ANSI_Backslash;
		obs_key_to_virtual_key_kVK_ANSI_C_reg <= obs_key_to_virtual_key_kVK_ANSI_C;
		obs_key_to_virtual_key_kVK_ANSI_Comma_reg <= obs_key_to_virtual_key_kVK_ANSI_Comma;
		obs_key_to_virtual_key_kVK_ANSI_D_reg <= obs_key_to_virtual_key_kVK_ANSI_D;
		obs_key_to_virtual_key_kVK_ANSI_E_reg <= obs_key_to_virtual_key_kVK_ANSI_E;
		obs_key_to_virtual_key_kVK_ANSI_Equal_reg <= obs_key_to_virtual_key_kVK_ANSI_Equal;
		obs_key_to_virtual_key_kVK_ANSI_F_reg <= obs_key_to_virtual_key_kVK_ANSI_F;
		obs_key_to_virtual_key_kVK_ANSI_G_reg <= obs_key_to_virtual_key_kVK_ANSI_G;
		obs_key_to_virtual_key_kVK_ANSI_Grave_reg <= obs_key_to_virtual_key_kVK_ANSI_Grave;
		obs_key_to_virtual_key_kVK_ANSI_H_reg <= obs_key_to_virtual_key_kVK_ANSI_H;
		obs_key_to_virtual_key_kVK_ANSI_I_reg <= obs_key_to_virtual_key_kVK_ANSI_I;
		obs_key_to_virtual_key_kVK_ANSI_J_reg <= obs_key_to_virtual_key_kVK_ANSI_J;
		obs_key_to_virtual_key_kVK_ANSI_K_reg <= obs_key_to_virtual_key_kVK_ANSI_K;
		obs_key_to_virtual_key_kVK_ANSI_Keypad0_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad0;
		obs_key_to_virtual_key_kVK_ANSI_Keypad1_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad1;
		obs_key_to_virtual_key_kVK_ANSI_Keypad2_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad2;
		obs_key_to_virtual_key_kVK_ANSI_Keypad3_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad3;
		obs_key_to_virtual_key_kVK_ANSI_Keypad4_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad4;
		obs_key_to_virtual_key_kVK_ANSI_Keypad5_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad5;
		obs_key_to_virtual_key_kVK_ANSI_Keypad6_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad6;
		obs_key_to_virtual_key_kVK_ANSI_Keypad7_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad7;
		obs_key_to_virtual_key_kVK_ANSI_Keypad8_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad8;
		obs_key_to_virtual_key_kVK_ANSI_Keypad9_reg <= obs_key_to_virtual_key_kVK_ANSI_Keypad9;
		obs_key_to_virtual_key_kVK_ANSI_KeypadClear_reg <= obs_key_to_virtual_key_kVK_ANSI_KeypadClear;
		obs_key_to_virtual_key_kVK_ANSI_KeypadDecimal_reg <= obs_key_to_virtual_key_kVK_ANSI_KeypadDecimal;
		obs_key_to_virtual_key_kVK_ANSI_KeypadDivide_reg <= obs_key_to_virtual_key_kVK_ANSI_KeypadDivide;
		obs_key_to_virtual_key_kVK_ANSI_KeypadEnter_reg <= obs_key_to_virtual_key_kVK_ANSI_KeypadEnter;
		obs_key_to_virtual_key_kVK_ANSI_KeypadEquals_reg <= obs_key_to_virtual_key_kVK_ANSI_KeypadEquals;
		obs_key_to_virtual_key_kVK_ANSI_KeypadMinus_reg <= obs_key_to_virtual_key_kVK_ANSI_KeypadMinus;
		obs_key_to_virtual_key_kVK_ANSI_KeypadMultiply_reg <= obs_key_to_virtual_key_kVK_ANSI_KeypadMultiply;
		obs_key_to_virtual_key_kVK_ANSI_KeypadPlus_reg <= obs_key_to_virtual_key_kVK_ANSI_KeypadPlus;
		obs_key_to_virtual_key_kVK_ANSI_L_reg <= obs_key_to_virtual_key_kVK_ANSI_L;
		obs_key_to_virtual_key_kVK_ANSI_LeftBracket_reg <= obs_key_to_virtual_key_kVK_ANSI_LeftBracket;
		obs_key_to_virtual_key_kVK_ANSI_M_reg <= obs_key_to_virtual_key_kVK_ANSI_M;
		obs_key_to_virtual_key_kVK_ANSI_Minus_reg <= obs_key_to_virtual_key_kVK_ANSI_Minus;
		obs_key_to_virtual_key_kVK_ANSI_N_reg <= obs_key_to_virtual_key_kVK_ANSI_N;
		obs_key_to_virtual_key_kVK_ANSI_O_reg <= obs_key_to_virtual_key_kVK_ANSI_O;
		obs_key_to_virtual_key_kVK_ANSI_P_reg <= obs_key_to_virtual_key_kVK_ANSI_P;
		obs_key_to_virtual_key_kVK_ANSI_Period_reg <= obs_key_to_virtual_key_kVK_ANSI_Period;
		obs_key_to_virtual_key_kVK_ANSI_Q_reg <= obs_key_to_virtual_key_kVK_ANSI_Q;
		obs_key_to_virtual_key_kVK_ANSI_Quote_reg <= obs_key_to_virtual_key_kVK_ANSI_Quote;
		obs_key_to_virtual_key_kVK_ANSI_R_reg <= obs_key_to_virtual_key_kVK_ANSI_R;
		obs_key_to_virtual_key_kVK_ANSI_RightBracket_reg <= obs_key_to_virtual_key_kVK_ANSI_RightBracket;
		obs_key_to_virtual_key_kVK_ANSI_S_reg <= obs_key_to_virtual_key_kVK_ANSI_S;
		obs_key_to_virtual_key_kVK_ANSI_Semicolon_reg <= obs_key_to_virtual_key_kVK_ANSI_Semicolon;
		obs_key_to_virtual_key_kVK_ANSI_Slash_reg <= obs_key_to_virtual_key_kVK_ANSI_Slash;
		obs_key_to_virtual_key_kVK_ANSI_T_reg <= obs_key_to_virtual_key_kVK_ANSI_T;
		obs_key_to_virtual_key_kVK_ANSI_U_reg <= obs_key_to_virtual_key_kVK_ANSI_U;
		obs_key_to_virtual_key_kVK_ANSI_V_reg <= obs_key_to_virtual_key_kVK_ANSI_V;
		obs_key_to_virtual_key_kVK_ANSI_W_reg <= obs_key_to_virtual_key_kVK_ANSI_W;
		obs_key_to_virtual_key_kVK_ANSI_X_reg <= obs_key_to_virtual_key_kVK_ANSI_X;
		obs_key_to_virtual_key_kVK_ANSI_Y_reg <= obs_key_to_virtual_key_kVK_ANSI_Y;
		obs_key_to_virtual_key_kVK_ANSI_Z_reg <= obs_key_to_virtual_key_kVK_ANSI_Z;
		obs_key_to_virtual_key_kVK_CapsLock_reg <= obs_key_to_virtual_key_kVK_CapsLock;
		obs_key_to_virtual_key_kVK_Command_reg <= obs_key_to_virtual_key_kVK_Command;
		obs_key_to_virtual_key_kVK_Control_reg <= obs_key_to_virtual_key_kVK_Control;
		obs_key_to_virtual_key_kVK_Delete_reg <= obs_key_to_virtual_key_kVK_Delete;
		obs_key_to_virtual_key_kVK_DownArrow_reg <= obs_key_to_virtual_key_kVK_DownArrow;
		obs_key_to_virtual_key_kVK_End_reg <= obs_key_to_virtual_key_kVK_End;
		obs_key_to_virtual_key_kVK_Escape_reg <= obs_key_to_virtual_key_kVK_Escape;
		obs_key_to_virtual_key_kVK_F1_reg <= obs_key_to_virtual_key_kVK_F1;
		obs_key_to_virtual_key_kVK_F10_reg <= obs_key_to_virtual_key_kVK_F10;
		obs_key_to_virtual_key_kVK_F11_reg <= obs_key_to_virtual_key_kVK_F11;
		obs_key_to_virtual_key_kVK_F12_reg <= obs_key_to_virtual_key_kVK_F12;
		obs_key_to_virtual_key_kVK_F13_reg <= obs_key_to_virtual_key_kVK_F13;
		obs_key_to_virtual_key_kVK_F14_reg <= obs_key_to_virtual_key_kVK_F14;
		obs_key_to_virtual_key_kVK_F15_reg <= obs_key_to_virtual_key_kVK_F15;
		obs_key_to_virtual_key_kVK_F16_reg <= obs_key_to_virtual_key_kVK_F16;
		obs_key_to_virtual_key_kVK_F17_reg <= obs_key_to_virtual_key_kVK_F17;
		obs_key_to_virtual_key_kVK_F18_reg <= obs_key_to_virtual_key_kVK_F18;
		obs_key_to_virtual_key_kVK_F19_reg <= obs_key_to_virtual_key_kVK_F19;
		obs_key_to_virtual_key_kVK_F2_reg <= obs_key_to_virtual_key_kVK_F2;
		obs_key_to_virtual_key_kVK_F20_reg <= obs_key_to_virtual_key_kVK_F20;
		obs_key_to_virtual_key_kVK_F3_reg <= obs_key_to_virtual_key_kVK_F3;
		obs_key_to_virtual_key_kVK_F4_reg <= obs_key_to_virtual_key_kVK_F4;
		obs_key_to_virtual_key_kVK_F5_reg <= obs_key_to_virtual_key_kVK_F5;
		obs_key_to_virtual_key_kVK_F6_reg <= obs_key_to_virtual_key_kVK_F6;
		obs_key_to_virtual_key_kVK_F7_reg <= obs_key_to_virtual_key_kVK_F7;
		obs_key_to_virtual_key_kVK_F8_reg <= obs_key_to_virtual_key_kVK_F8;
		obs_key_to_virtual_key_kVK_F9_reg <= obs_key_to_virtual_key_kVK_F9;
		obs_key_to_virtual_key_kVK_ForwardDelete_reg <= obs_key_to_virtual_key_kVK_ForwardDelete;
		obs_key_to_virtual_key_kVK_Help_reg <= obs_key_to_virtual_key_kVK_Help;
		obs_key_to_virtual_key_kVK_Home_reg <= obs_key_to_virtual_key_kVK_Home;
		obs_key_to_virtual_key_kVK_ISO_Section_reg <= obs_key_to_virtual_key_kVK_ISO_Section;
		obs_key_to_virtual_key_kVK_LeftArrow_reg <= obs_key_to_virtual_key_kVK_LeftArrow;
		obs_key_to_virtual_key_kVK_Option_reg <= obs_key_to_virtual_key_kVK_Option;
		obs_key_to_virtual_key_kVK_PageDown_reg <= obs_key_to_virtual_key_kVK_PageDown;
		obs_key_to_virtual_key_kVK_PageUp_reg <= obs_key_to_virtual_key_kVK_PageUp;
		obs_key_to_virtual_key_kVK_Return_reg <= obs_key_to_virtual_key_kVK_Return;
		obs_key_to_virtual_key_kVK_RightArrow_reg <= obs_key_to_virtual_key_kVK_RightArrow;
		obs_key_to_virtual_key_kVK_Shift_reg <= obs_key_to_virtual_key_kVK_Shift;
		obs_key_to_virtual_key_kVK_Space_reg <= obs_key_to_virtual_key_kVK_Space;
		obs_key_to_virtual_key_kVK_Tab_reg <= obs_key_to_virtual_key_kVK_Tab;
		obs_key_to_virtual_key_kVK_UpArrow_reg <= obs_key_to_virtual_key_kVK_UpArrow;
		obs_key_to_virtual_key_avmm_0_rw_address <= obs_key_to_virtual_key_avmm_0_rw_address_reg;
		obs_key_to_virtual_key_avmm_0_rw_byteenable <= obs_key_to_virtual_key_avmm_0_rw_byteenable_reg;
		obs_key_to_virtual_key_avmm_0_rw_read <= obs_key_to_virtual_key_avmm_0_rw_read_reg;
		obs_key_to_virtual_key_avmm_0_rw_readdata_reg <= obs_key_to_virtual_key_avmm_0_rw_readdata;
		obs_key_to_virtual_key_avmm_0_rw_write <= obs_key_to_virtual_key_avmm_0_rw_write_reg;
		obs_key_to_virtual_key_avmm_0_rw_writedata <= obs_key_to_virtual_key_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	obs_key_to_virtual_key obs_key_to_virtual_key_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(obs_key_to_virtual_key_start_reg)
		, .busy(obs_key_to_virtual_key_busy_reg)
		, .done(obs_key_to_virtual_key_done_reg)
		, .stall(obs_key_to_virtual_key_stall_reg)
		, .returndata(obs_key_to_virtual_key_returndata_reg)
		, .code(obs_key_to_virtual_key_code_reg)
		, .INVALID_KEY(obs_key_to_virtual_key_INVALID_KEY_reg)
		, .kVK_ANSI_0(obs_key_to_virtual_key_kVK_ANSI_0_reg)
		, .kVK_ANSI_1(obs_key_to_virtual_key_kVK_ANSI_1_reg)
		, .kVK_ANSI_2(obs_key_to_virtual_key_kVK_ANSI_2_reg)
		, .kVK_ANSI_3(obs_key_to_virtual_key_kVK_ANSI_3_reg)
		, .kVK_ANSI_4(obs_key_to_virtual_key_kVK_ANSI_4_reg)
		, .kVK_ANSI_5(obs_key_to_virtual_key_kVK_ANSI_5_reg)
		, .kVK_ANSI_6(obs_key_to_virtual_key_kVK_ANSI_6_reg)
		, .kVK_ANSI_7(obs_key_to_virtual_key_kVK_ANSI_7_reg)
		, .kVK_ANSI_8(obs_key_to_virtual_key_kVK_ANSI_8_reg)
		, .kVK_ANSI_9(obs_key_to_virtual_key_kVK_ANSI_9_reg)
		, .kVK_ANSI_A(obs_key_to_virtual_key_kVK_ANSI_A_reg)
		, .kVK_ANSI_B(obs_key_to_virtual_key_kVK_ANSI_B_reg)
		, .kVK_ANSI_Backslash(obs_key_to_virtual_key_kVK_ANSI_Backslash_reg)
		, .kVK_ANSI_C(obs_key_to_virtual_key_kVK_ANSI_C_reg)
		, .kVK_ANSI_Comma(obs_key_to_virtual_key_kVK_ANSI_Comma_reg)
		, .kVK_ANSI_D(obs_key_to_virtual_key_kVK_ANSI_D_reg)
		, .kVK_ANSI_E(obs_key_to_virtual_key_kVK_ANSI_E_reg)
		, .kVK_ANSI_Equal(obs_key_to_virtual_key_kVK_ANSI_Equal_reg)
		, .kVK_ANSI_F(obs_key_to_virtual_key_kVK_ANSI_F_reg)
		, .kVK_ANSI_G(obs_key_to_virtual_key_kVK_ANSI_G_reg)
		, .kVK_ANSI_Grave(obs_key_to_virtual_key_kVK_ANSI_Grave_reg)
		, .kVK_ANSI_H(obs_key_to_virtual_key_kVK_ANSI_H_reg)
		, .kVK_ANSI_I(obs_key_to_virtual_key_kVK_ANSI_I_reg)
		, .kVK_ANSI_J(obs_key_to_virtual_key_kVK_ANSI_J_reg)
		, .kVK_ANSI_K(obs_key_to_virtual_key_kVK_ANSI_K_reg)
		, .kVK_ANSI_Keypad0(obs_key_to_virtual_key_kVK_ANSI_Keypad0_reg)
		, .kVK_ANSI_Keypad1(obs_key_to_virtual_key_kVK_ANSI_Keypad1_reg)
		, .kVK_ANSI_Keypad2(obs_key_to_virtual_key_kVK_ANSI_Keypad2_reg)
		, .kVK_ANSI_Keypad3(obs_key_to_virtual_key_kVK_ANSI_Keypad3_reg)
		, .kVK_ANSI_Keypad4(obs_key_to_virtual_key_kVK_ANSI_Keypad4_reg)
		, .kVK_ANSI_Keypad5(obs_key_to_virtual_key_kVK_ANSI_Keypad5_reg)
		, .kVK_ANSI_Keypad6(obs_key_to_virtual_key_kVK_ANSI_Keypad6_reg)
		, .kVK_ANSI_Keypad7(obs_key_to_virtual_key_kVK_ANSI_Keypad7_reg)
		, .kVK_ANSI_Keypad8(obs_key_to_virtual_key_kVK_ANSI_Keypad8_reg)
		, .kVK_ANSI_Keypad9(obs_key_to_virtual_key_kVK_ANSI_Keypad9_reg)
		, .kVK_ANSI_KeypadClear(obs_key_to_virtual_key_kVK_ANSI_KeypadClear_reg)
		, .kVK_ANSI_KeypadDecimal(obs_key_to_virtual_key_kVK_ANSI_KeypadDecimal_reg)
		, .kVK_ANSI_KeypadDivide(obs_key_to_virtual_key_kVK_ANSI_KeypadDivide_reg)
		, .kVK_ANSI_KeypadEnter(obs_key_to_virtual_key_kVK_ANSI_KeypadEnter_reg)
		, .kVK_ANSI_KeypadEquals(obs_key_to_virtual_key_kVK_ANSI_KeypadEquals_reg)
		, .kVK_ANSI_KeypadMinus(obs_key_to_virtual_key_kVK_ANSI_KeypadMinus_reg)
		, .kVK_ANSI_KeypadMultiply(obs_key_to_virtual_key_kVK_ANSI_KeypadMultiply_reg)
		, .kVK_ANSI_KeypadPlus(obs_key_to_virtual_key_kVK_ANSI_KeypadPlus_reg)
		, .kVK_ANSI_L(obs_key_to_virtual_key_kVK_ANSI_L_reg)
		, .kVK_ANSI_LeftBracket(obs_key_to_virtual_key_kVK_ANSI_LeftBracket_reg)
		, .kVK_ANSI_M(obs_key_to_virtual_key_kVK_ANSI_M_reg)
		, .kVK_ANSI_Minus(obs_key_to_virtual_key_kVK_ANSI_Minus_reg)
		, .kVK_ANSI_N(obs_key_to_virtual_key_kVK_ANSI_N_reg)
		, .kVK_ANSI_O(obs_key_to_virtual_key_kVK_ANSI_O_reg)
		, .kVK_ANSI_P(obs_key_to_virtual_key_kVK_ANSI_P_reg)
		, .kVK_ANSI_Period(obs_key_to_virtual_key_kVK_ANSI_Period_reg)
		, .kVK_ANSI_Q(obs_key_to_virtual_key_kVK_ANSI_Q_reg)
		, .kVK_ANSI_Quote(obs_key_to_virtual_key_kVK_ANSI_Quote_reg)
		, .kVK_ANSI_R(obs_key_to_virtual_key_kVK_ANSI_R_reg)
		, .kVK_ANSI_RightBracket(obs_key_to_virtual_key_kVK_ANSI_RightBracket_reg)
		, .kVK_ANSI_S(obs_key_to_virtual_key_kVK_ANSI_S_reg)
		, .kVK_ANSI_Semicolon(obs_key_to_virtual_key_kVK_ANSI_Semicolon_reg)
		, .kVK_ANSI_Slash(obs_key_to_virtual_key_kVK_ANSI_Slash_reg)
		, .kVK_ANSI_T(obs_key_to_virtual_key_kVK_ANSI_T_reg)
		, .kVK_ANSI_U(obs_key_to_virtual_key_kVK_ANSI_U_reg)
		, .kVK_ANSI_V(obs_key_to_virtual_key_kVK_ANSI_V_reg)
		, .kVK_ANSI_W(obs_key_to_virtual_key_kVK_ANSI_W_reg)
		, .kVK_ANSI_X(obs_key_to_virtual_key_kVK_ANSI_X_reg)
		, .kVK_ANSI_Y(obs_key_to_virtual_key_kVK_ANSI_Y_reg)
		, .kVK_ANSI_Z(obs_key_to_virtual_key_kVK_ANSI_Z_reg)
		, .kVK_CapsLock(obs_key_to_virtual_key_kVK_CapsLock_reg)
		, .kVK_Command(obs_key_to_virtual_key_kVK_Command_reg)
		, .kVK_Control(obs_key_to_virtual_key_kVK_Control_reg)
		, .kVK_Delete(obs_key_to_virtual_key_kVK_Delete_reg)
		, .kVK_DownArrow(obs_key_to_virtual_key_kVK_DownArrow_reg)
		, .kVK_End(obs_key_to_virtual_key_kVK_End_reg)
		, .kVK_Escape(obs_key_to_virtual_key_kVK_Escape_reg)
		, .kVK_F1(obs_key_to_virtual_key_kVK_F1_reg)
		, .kVK_F10(obs_key_to_virtual_key_kVK_F10_reg)
		, .kVK_F11(obs_key_to_virtual_key_kVK_F11_reg)
		, .kVK_F12(obs_key_to_virtual_key_kVK_F12_reg)
		, .kVK_F13(obs_key_to_virtual_key_kVK_F13_reg)
		, .kVK_F14(obs_key_to_virtual_key_kVK_F14_reg)
		, .kVK_F15(obs_key_to_virtual_key_kVK_F15_reg)
		, .kVK_F16(obs_key_to_virtual_key_kVK_F16_reg)
		, .kVK_F17(obs_key_to_virtual_key_kVK_F17_reg)
		, .kVK_F18(obs_key_to_virtual_key_kVK_F18_reg)
		, .kVK_F19(obs_key_to_virtual_key_kVK_F19_reg)
		, .kVK_F2(obs_key_to_virtual_key_kVK_F2_reg)
		, .kVK_F20(obs_key_to_virtual_key_kVK_F20_reg)
		, .kVK_F3(obs_key_to_virtual_key_kVK_F3_reg)
		, .kVK_F4(obs_key_to_virtual_key_kVK_F4_reg)
		, .kVK_F5(obs_key_to_virtual_key_kVK_F5_reg)
		, .kVK_F6(obs_key_to_virtual_key_kVK_F6_reg)
		, .kVK_F7(obs_key_to_virtual_key_kVK_F7_reg)
		, .kVK_F8(obs_key_to_virtual_key_kVK_F8_reg)
		, .kVK_F9(obs_key_to_virtual_key_kVK_F9_reg)
		, .kVK_ForwardDelete(obs_key_to_virtual_key_kVK_ForwardDelete_reg)
		, .kVK_Help(obs_key_to_virtual_key_kVK_Help_reg)
		, .kVK_Home(obs_key_to_virtual_key_kVK_Home_reg)
		, .kVK_ISO_Section(obs_key_to_virtual_key_kVK_ISO_Section_reg)
		, .kVK_LeftArrow(obs_key_to_virtual_key_kVK_LeftArrow_reg)
		, .kVK_Option(obs_key_to_virtual_key_kVK_Option_reg)
		, .kVK_PageDown(obs_key_to_virtual_key_kVK_PageDown_reg)
		, .kVK_PageUp(obs_key_to_virtual_key_kVK_PageUp_reg)
		, .kVK_Return(obs_key_to_virtual_key_kVK_Return_reg)
		, .kVK_RightArrow(obs_key_to_virtual_key_kVK_RightArrow_reg)
		, .kVK_Shift(obs_key_to_virtual_key_kVK_Shift_reg)
		, .kVK_Space(obs_key_to_virtual_key_kVK_Space_reg)
		, .kVK_Tab(obs_key_to_virtual_key_kVK_Tab_reg)
		, .kVK_UpArrow(obs_key_to_virtual_key_kVK_UpArrow_reg)
		, .avmm_0_rw_address(obs_key_to_virtual_key_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(obs_key_to_virtual_key_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(obs_key_to_virtual_key_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(obs_key_to_virtual_key_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(obs_key_to_virtual_key_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(obs_key_to_virtual_key_avmm_0_rw_writedata_reg)
	);



endmodule
