	component obs_key_to_virtual_key is
		port (
			clock                   : in  std_logic                     := 'X';             -- clk
			resetn                  : in  std_logic                     := 'X';             -- reset_n
			start                   : in  std_logic                     := 'X';             -- valid
			busy                    : out std_logic;                                        -- stall
			done                    : out std_logic;                                        -- valid
			stall                   : in  std_logic                     := 'X';             -- stall
			returndata              : out std_logic_vector(31 downto 0);                    -- data
			code                    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			INVALID_KEY             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_0              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_1              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_2              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_3              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_4              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_5              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_6              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_7              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_8              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_9              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_A              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_B              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Backslash      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_C              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Comma          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_D              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_E              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Equal          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_F              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_G              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Grave          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_H              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_I              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_J              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_K              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad0        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad1        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad2        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad3        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad4        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad5        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad6        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad7        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad8        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Keypad9        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_KeypadClear    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_KeypadDecimal  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_KeypadDivide   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_KeypadEnter    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_KeypadEquals   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_KeypadMinus    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_KeypadMultiply : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_KeypadPlus     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_L              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_LeftBracket    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_M              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Minus          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_N              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_O              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_P              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Period         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Q              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Quote          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_R              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_RightBracket   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_S              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Semicolon      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Slash          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_T              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_U              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_V              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_W              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_X              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Y              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ANSI_Z              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_CapsLock            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Command             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Control             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Delete              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_DownArrow           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_End                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Escape              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F1                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F10                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F11                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F12                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F13                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F14                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F15                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F16                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F17                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F18                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F19                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F2                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F20                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F3                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F4                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F5                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F6                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F7                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F8                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_F9                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ForwardDelete       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Help                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Home                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_ISO_Section         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_LeftArrow           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Option              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_PageDown            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_PageUp              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Return              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_RightArrow          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Shift               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Space               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_Tab                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			kVK_UpArrow             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address       : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable    : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read          : out std_logic;                                        -- read
			avmm_0_rw_readdata      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write         : out std_logic;                                        -- write
			avmm_0_rw_writedata     : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component obs_key_to_virtual_key;

	u0 : component obs_key_to_virtual_key
		port map (
			clock                   => CONNECTED_TO_clock,                   --                   clock.clk
			resetn                  => CONNECTED_TO_resetn,                  --                   reset.reset_n
			start                   => CONNECTED_TO_start,                   --                    call.valid
			busy                    => CONNECTED_TO_busy,                    --                        .stall
			done                    => CONNECTED_TO_done,                    --                  return.valid
			stall                   => CONNECTED_TO_stall,                   --                        .stall
			returndata              => CONNECTED_TO_returndata,              --              returndata.data
			code                    => CONNECTED_TO_code,                    --                    code.data
			INVALID_KEY             => CONNECTED_TO_INVALID_KEY,             --             INVALID_KEY.data
			kVK_ANSI_0              => CONNECTED_TO_kVK_ANSI_0,              --              kVK_ANSI_0.data
			kVK_ANSI_1              => CONNECTED_TO_kVK_ANSI_1,              --              kVK_ANSI_1.data
			kVK_ANSI_2              => CONNECTED_TO_kVK_ANSI_2,              --              kVK_ANSI_2.data
			kVK_ANSI_3              => CONNECTED_TO_kVK_ANSI_3,              --              kVK_ANSI_3.data
			kVK_ANSI_4              => CONNECTED_TO_kVK_ANSI_4,              --              kVK_ANSI_4.data
			kVK_ANSI_5              => CONNECTED_TO_kVK_ANSI_5,              --              kVK_ANSI_5.data
			kVK_ANSI_6              => CONNECTED_TO_kVK_ANSI_6,              --              kVK_ANSI_6.data
			kVK_ANSI_7              => CONNECTED_TO_kVK_ANSI_7,              --              kVK_ANSI_7.data
			kVK_ANSI_8              => CONNECTED_TO_kVK_ANSI_8,              --              kVK_ANSI_8.data
			kVK_ANSI_9              => CONNECTED_TO_kVK_ANSI_9,              --              kVK_ANSI_9.data
			kVK_ANSI_A              => CONNECTED_TO_kVK_ANSI_A,              --              kVK_ANSI_A.data
			kVK_ANSI_B              => CONNECTED_TO_kVK_ANSI_B,              --              kVK_ANSI_B.data
			kVK_ANSI_Backslash      => CONNECTED_TO_kVK_ANSI_Backslash,      --      kVK_ANSI_Backslash.data
			kVK_ANSI_C              => CONNECTED_TO_kVK_ANSI_C,              --              kVK_ANSI_C.data
			kVK_ANSI_Comma          => CONNECTED_TO_kVK_ANSI_Comma,          --          kVK_ANSI_Comma.data
			kVK_ANSI_D              => CONNECTED_TO_kVK_ANSI_D,              --              kVK_ANSI_D.data
			kVK_ANSI_E              => CONNECTED_TO_kVK_ANSI_E,              --              kVK_ANSI_E.data
			kVK_ANSI_Equal          => CONNECTED_TO_kVK_ANSI_Equal,          --          kVK_ANSI_Equal.data
			kVK_ANSI_F              => CONNECTED_TO_kVK_ANSI_F,              --              kVK_ANSI_F.data
			kVK_ANSI_G              => CONNECTED_TO_kVK_ANSI_G,              --              kVK_ANSI_G.data
			kVK_ANSI_Grave          => CONNECTED_TO_kVK_ANSI_Grave,          --          kVK_ANSI_Grave.data
			kVK_ANSI_H              => CONNECTED_TO_kVK_ANSI_H,              --              kVK_ANSI_H.data
			kVK_ANSI_I              => CONNECTED_TO_kVK_ANSI_I,              --              kVK_ANSI_I.data
			kVK_ANSI_J              => CONNECTED_TO_kVK_ANSI_J,              --              kVK_ANSI_J.data
			kVK_ANSI_K              => CONNECTED_TO_kVK_ANSI_K,              --              kVK_ANSI_K.data
			kVK_ANSI_Keypad0        => CONNECTED_TO_kVK_ANSI_Keypad0,        --        kVK_ANSI_Keypad0.data
			kVK_ANSI_Keypad1        => CONNECTED_TO_kVK_ANSI_Keypad1,        --        kVK_ANSI_Keypad1.data
			kVK_ANSI_Keypad2        => CONNECTED_TO_kVK_ANSI_Keypad2,        --        kVK_ANSI_Keypad2.data
			kVK_ANSI_Keypad3        => CONNECTED_TO_kVK_ANSI_Keypad3,        --        kVK_ANSI_Keypad3.data
			kVK_ANSI_Keypad4        => CONNECTED_TO_kVK_ANSI_Keypad4,        --        kVK_ANSI_Keypad4.data
			kVK_ANSI_Keypad5        => CONNECTED_TO_kVK_ANSI_Keypad5,        --        kVK_ANSI_Keypad5.data
			kVK_ANSI_Keypad6        => CONNECTED_TO_kVK_ANSI_Keypad6,        --        kVK_ANSI_Keypad6.data
			kVK_ANSI_Keypad7        => CONNECTED_TO_kVK_ANSI_Keypad7,        --        kVK_ANSI_Keypad7.data
			kVK_ANSI_Keypad8        => CONNECTED_TO_kVK_ANSI_Keypad8,        --        kVK_ANSI_Keypad8.data
			kVK_ANSI_Keypad9        => CONNECTED_TO_kVK_ANSI_Keypad9,        --        kVK_ANSI_Keypad9.data
			kVK_ANSI_KeypadClear    => CONNECTED_TO_kVK_ANSI_KeypadClear,    --    kVK_ANSI_KeypadClear.data
			kVK_ANSI_KeypadDecimal  => CONNECTED_TO_kVK_ANSI_KeypadDecimal,  --  kVK_ANSI_KeypadDecimal.data
			kVK_ANSI_KeypadDivide   => CONNECTED_TO_kVK_ANSI_KeypadDivide,   --   kVK_ANSI_KeypadDivide.data
			kVK_ANSI_KeypadEnter    => CONNECTED_TO_kVK_ANSI_KeypadEnter,    --    kVK_ANSI_KeypadEnter.data
			kVK_ANSI_KeypadEquals   => CONNECTED_TO_kVK_ANSI_KeypadEquals,   --   kVK_ANSI_KeypadEquals.data
			kVK_ANSI_KeypadMinus    => CONNECTED_TO_kVK_ANSI_KeypadMinus,    --    kVK_ANSI_KeypadMinus.data
			kVK_ANSI_KeypadMultiply => CONNECTED_TO_kVK_ANSI_KeypadMultiply, -- kVK_ANSI_KeypadMultiply.data
			kVK_ANSI_KeypadPlus     => CONNECTED_TO_kVK_ANSI_KeypadPlus,     --     kVK_ANSI_KeypadPlus.data
			kVK_ANSI_L              => CONNECTED_TO_kVK_ANSI_L,              --              kVK_ANSI_L.data
			kVK_ANSI_LeftBracket    => CONNECTED_TO_kVK_ANSI_LeftBracket,    --    kVK_ANSI_LeftBracket.data
			kVK_ANSI_M              => CONNECTED_TO_kVK_ANSI_M,              --              kVK_ANSI_M.data
			kVK_ANSI_Minus          => CONNECTED_TO_kVK_ANSI_Minus,          --          kVK_ANSI_Minus.data
			kVK_ANSI_N              => CONNECTED_TO_kVK_ANSI_N,              --              kVK_ANSI_N.data
			kVK_ANSI_O              => CONNECTED_TO_kVK_ANSI_O,              --              kVK_ANSI_O.data
			kVK_ANSI_P              => CONNECTED_TO_kVK_ANSI_P,              --              kVK_ANSI_P.data
			kVK_ANSI_Period         => CONNECTED_TO_kVK_ANSI_Period,         --         kVK_ANSI_Period.data
			kVK_ANSI_Q              => CONNECTED_TO_kVK_ANSI_Q,              --              kVK_ANSI_Q.data
			kVK_ANSI_Quote          => CONNECTED_TO_kVK_ANSI_Quote,          --          kVK_ANSI_Quote.data
			kVK_ANSI_R              => CONNECTED_TO_kVK_ANSI_R,              --              kVK_ANSI_R.data
			kVK_ANSI_RightBracket   => CONNECTED_TO_kVK_ANSI_RightBracket,   --   kVK_ANSI_RightBracket.data
			kVK_ANSI_S              => CONNECTED_TO_kVK_ANSI_S,              --              kVK_ANSI_S.data
			kVK_ANSI_Semicolon      => CONNECTED_TO_kVK_ANSI_Semicolon,      --      kVK_ANSI_Semicolon.data
			kVK_ANSI_Slash          => CONNECTED_TO_kVK_ANSI_Slash,          --          kVK_ANSI_Slash.data
			kVK_ANSI_T              => CONNECTED_TO_kVK_ANSI_T,              --              kVK_ANSI_T.data
			kVK_ANSI_U              => CONNECTED_TO_kVK_ANSI_U,              --              kVK_ANSI_U.data
			kVK_ANSI_V              => CONNECTED_TO_kVK_ANSI_V,              --              kVK_ANSI_V.data
			kVK_ANSI_W              => CONNECTED_TO_kVK_ANSI_W,              --              kVK_ANSI_W.data
			kVK_ANSI_X              => CONNECTED_TO_kVK_ANSI_X,              --              kVK_ANSI_X.data
			kVK_ANSI_Y              => CONNECTED_TO_kVK_ANSI_Y,              --              kVK_ANSI_Y.data
			kVK_ANSI_Z              => CONNECTED_TO_kVK_ANSI_Z,              --              kVK_ANSI_Z.data
			kVK_CapsLock            => CONNECTED_TO_kVK_CapsLock,            --            kVK_CapsLock.data
			kVK_Command             => CONNECTED_TO_kVK_Command,             --             kVK_Command.data
			kVK_Control             => CONNECTED_TO_kVK_Control,             --             kVK_Control.data
			kVK_Delete              => CONNECTED_TO_kVK_Delete,              --              kVK_Delete.data
			kVK_DownArrow           => CONNECTED_TO_kVK_DownArrow,           --           kVK_DownArrow.data
			kVK_End                 => CONNECTED_TO_kVK_End,                 --                 kVK_End.data
			kVK_Escape              => CONNECTED_TO_kVK_Escape,              --              kVK_Escape.data
			kVK_F1                  => CONNECTED_TO_kVK_F1,                  --                  kVK_F1.data
			kVK_F10                 => CONNECTED_TO_kVK_F10,                 --                 kVK_F10.data
			kVK_F11                 => CONNECTED_TO_kVK_F11,                 --                 kVK_F11.data
			kVK_F12                 => CONNECTED_TO_kVK_F12,                 --                 kVK_F12.data
			kVK_F13                 => CONNECTED_TO_kVK_F13,                 --                 kVK_F13.data
			kVK_F14                 => CONNECTED_TO_kVK_F14,                 --                 kVK_F14.data
			kVK_F15                 => CONNECTED_TO_kVK_F15,                 --                 kVK_F15.data
			kVK_F16                 => CONNECTED_TO_kVK_F16,                 --                 kVK_F16.data
			kVK_F17                 => CONNECTED_TO_kVK_F17,                 --                 kVK_F17.data
			kVK_F18                 => CONNECTED_TO_kVK_F18,                 --                 kVK_F18.data
			kVK_F19                 => CONNECTED_TO_kVK_F19,                 --                 kVK_F19.data
			kVK_F2                  => CONNECTED_TO_kVK_F2,                  --                  kVK_F2.data
			kVK_F20                 => CONNECTED_TO_kVK_F20,                 --                 kVK_F20.data
			kVK_F3                  => CONNECTED_TO_kVK_F3,                  --                  kVK_F3.data
			kVK_F4                  => CONNECTED_TO_kVK_F4,                  --                  kVK_F4.data
			kVK_F5                  => CONNECTED_TO_kVK_F5,                  --                  kVK_F5.data
			kVK_F6                  => CONNECTED_TO_kVK_F6,                  --                  kVK_F6.data
			kVK_F7                  => CONNECTED_TO_kVK_F7,                  --                  kVK_F7.data
			kVK_F8                  => CONNECTED_TO_kVK_F8,                  --                  kVK_F8.data
			kVK_F9                  => CONNECTED_TO_kVK_F9,                  --                  kVK_F9.data
			kVK_ForwardDelete       => CONNECTED_TO_kVK_ForwardDelete,       --       kVK_ForwardDelete.data
			kVK_Help                => CONNECTED_TO_kVK_Help,                --                kVK_Help.data
			kVK_Home                => CONNECTED_TO_kVK_Home,                --                kVK_Home.data
			kVK_ISO_Section         => CONNECTED_TO_kVK_ISO_Section,         --         kVK_ISO_Section.data
			kVK_LeftArrow           => CONNECTED_TO_kVK_LeftArrow,           --           kVK_LeftArrow.data
			kVK_Option              => CONNECTED_TO_kVK_Option,              --              kVK_Option.data
			kVK_PageDown            => CONNECTED_TO_kVK_PageDown,            --            kVK_PageDown.data
			kVK_PageUp              => CONNECTED_TO_kVK_PageUp,              --              kVK_PageUp.data
			kVK_Return              => CONNECTED_TO_kVK_Return,              --              kVK_Return.data
			kVK_RightArrow          => CONNECTED_TO_kVK_RightArrow,          --          kVK_RightArrow.data
			kVK_Shift               => CONNECTED_TO_kVK_Shift,               --               kVK_Shift.data
			kVK_Space               => CONNECTED_TO_kVK_Space,               --               kVK_Space.data
			kVK_Tab                 => CONNECTED_TO_kVK_Tab,                 --                 kVK_Tab.data
			kVK_UpArrow             => CONNECTED_TO_kVK_UpArrow,             --             kVK_UpArrow.data
			avmm_0_rw_address       => CONNECTED_TO_avmm_0_rw_address,       --               avmm_0_rw.address
			avmm_0_rw_byteenable    => CONNECTED_TO_avmm_0_rw_byteenable,    --                        .byteenable
			avmm_0_rw_read          => CONNECTED_TO_avmm_0_rw_read,          --                        .read
			avmm_0_rw_readdata      => CONNECTED_TO_avmm_0_rw_readdata,      --                        .readdata
			avmm_0_rw_write         => CONNECTED_TO_avmm_0_rw_write,         --                        .write
			avmm_0_rw_writedata     => CONNECTED_TO_avmm_0_rw_writedata      --                        .writedata
		);

