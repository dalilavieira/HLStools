	component emscripten_compute_dom_pk_code is
		port (
			clock                       : in  std_logic                     := 'X';             -- clk
			resetn                      : in  std_logic                     := 'X';             -- reset_n
			start                       : in  std_logic                     := 'X';             -- valid
			busy                        : out std_logic;                                        -- stall
			done                        : out std_logic;                                        -- valid
			stall                       : in  std_logic                     := 'X';             -- stall
			returndata                  : out std_logic_vector(31 downto 0);                    -- data
			keyCodeString               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_0                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_1                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_2                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_3                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_4                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_5                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_6                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_7                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_8                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_9                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_A                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_ALT_LEFT             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_ALT_RIGHT            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_ARROW_DOWN           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_ARROW_LEFT           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_ARROW_RIGHT          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_ARROW_UP             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_AUDIO_VOLUME_DOWN    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_AUDIO_VOLUME_MUTE    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_AUDIO_VOLUME_UP      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_B                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BACKQUOTE            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BACKSLASH            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BACKSPACE            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BRACKET_LEFT         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BRACKET_RIGHT        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BROWSER_BACK         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BROWSER_FAVORITES    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BROWSER_FORWARD      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BROWSER_HOME         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BROWSER_REFRESH      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BROWSER_SEARCH       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_BROWSER_STOP         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_C                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_CAPS_LOCK            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_COMMA                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_CONTEXT_MENU         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_CONTROL_LEFT         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_CONTROL_RIGHT        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_CONVERT              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_COPY                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_CUT                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_D                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_DELETE               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_E                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_EJECT                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_END                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_ENTER                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_EQUAL                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_ESCAPE               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F1                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F10                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F11                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F12                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F13                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F14                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F15                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F16                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F17                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F18                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F19                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F2                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F20                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F21                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F22                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F23                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F24                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F3                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F4                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F5                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F6                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F7                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F8                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_F9                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_G                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_H                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_HELP                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_HOME                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_I                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_INSERT               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_INTL_BACKSLASH       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_INTL_RO              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_INTL_YEN             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_J                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_K                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_KANA_MODE            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_L                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_LANG_1               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_LANG_2               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_LAUNCH_APP_1         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_LAUNCH_APP_2         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_LAUNCH_MAIL          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_LAUNCH_MEDIA_PLAYER  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_M                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_MEDIA_PLAY_PAUSE     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_MEDIA_SELECT         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_MEDIA_STOP           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_MEDIA_TRACK_NEXT     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_MEDIA_TRACK_PREVIOUS : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_META_LEFT            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_META_RIGHT           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_MINUS                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_N                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NON_CONVERT          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_0             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_1             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_2             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_3             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_4             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_5             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_6             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_7             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_8             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_9             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_ADD           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_COMMA         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_DECIMAL       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_DIVIDE        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_ENTER         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_EQUAL         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_MULTIPLY      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUMPAD_SUBTRACT      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_NUM_LOCK             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_O                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_OS_LEFT              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_OS_RIGHT             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_P                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_PAGE_DOWN            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_PAGE_UP              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_PASTE                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_PAUSE                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_PERIOD               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_POWER                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_PRINT_SCREEN         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_Q                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_QUOTE                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_R                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_S                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_SCROLL_LOCK          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_SEMICOLON            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_SHIFT_LEFT           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_SHIFT_RIGHT          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_SLASH                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_SPACE                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_T                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_TAB                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_U                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_UNKNOWN              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_V                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_W                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_X                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_Y                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			DOM_PK_Z                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address           : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable        : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read              : out std_logic;                                        -- read
			avmm_0_rw_readdata          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write             : out std_logic;                                        -- write
			avmm_0_rw_writedata         : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component emscripten_compute_dom_pk_code;

	u0 : component emscripten_compute_dom_pk_code
		port map (
			clock                       => CONNECTED_TO_clock,                       --                       clock.clk
			resetn                      => CONNECTED_TO_resetn,                      --                       reset.reset_n
			start                       => CONNECTED_TO_start,                       --                        call.valid
			busy                        => CONNECTED_TO_busy,                        --                            .stall
			done                        => CONNECTED_TO_done,                        --                      return.valid
			stall                       => CONNECTED_TO_stall,                       --                            .stall
			returndata                  => CONNECTED_TO_returndata,                  --                  returndata.data
			keyCodeString               => CONNECTED_TO_keyCodeString,               --               keyCodeString.data
			DOM_PK_0                    => CONNECTED_TO_DOM_PK_0,                    --                    DOM_PK_0.data
			DOM_PK_1                    => CONNECTED_TO_DOM_PK_1,                    --                    DOM_PK_1.data
			DOM_PK_2                    => CONNECTED_TO_DOM_PK_2,                    --                    DOM_PK_2.data
			DOM_PK_3                    => CONNECTED_TO_DOM_PK_3,                    --                    DOM_PK_3.data
			DOM_PK_4                    => CONNECTED_TO_DOM_PK_4,                    --                    DOM_PK_4.data
			DOM_PK_5                    => CONNECTED_TO_DOM_PK_5,                    --                    DOM_PK_5.data
			DOM_PK_6                    => CONNECTED_TO_DOM_PK_6,                    --                    DOM_PK_6.data
			DOM_PK_7                    => CONNECTED_TO_DOM_PK_7,                    --                    DOM_PK_7.data
			DOM_PK_8                    => CONNECTED_TO_DOM_PK_8,                    --                    DOM_PK_8.data
			DOM_PK_9                    => CONNECTED_TO_DOM_PK_9,                    --                    DOM_PK_9.data
			DOM_PK_A                    => CONNECTED_TO_DOM_PK_A,                    --                    DOM_PK_A.data
			DOM_PK_ALT_LEFT             => CONNECTED_TO_DOM_PK_ALT_LEFT,             --             DOM_PK_ALT_LEFT.data
			DOM_PK_ALT_RIGHT            => CONNECTED_TO_DOM_PK_ALT_RIGHT,            --            DOM_PK_ALT_RIGHT.data
			DOM_PK_ARROW_DOWN           => CONNECTED_TO_DOM_PK_ARROW_DOWN,           --           DOM_PK_ARROW_DOWN.data
			DOM_PK_ARROW_LEFT           => CONNECTED_TO_DOM_PK_ARROW_LEFT,           --           DOM_PK_ARROW_LEFT.data
			DOM_PK_ARROW_RIGHT          => CONNECTED_TO_DOM_PK_ARROW_RIGHT,          --          DOM_PK_ARROW_RIGHT.data
			DOM_PK_ARROW_UP             => CONNECTED_TO_DOM_PK_ARROW_UP,             --             DOM_PK_ARROW_UP.data
			DOM_PK_AUDIO_VOLUME_DOWN    => CONNECTED_TO_DOM_PK_AUDIO_VOLUME_DOWN,    --    DOM_PK_AUDIO_VOLUME_DOWN.data
			DOM_PK_AUDIO_VOLUME_MUTE    => CONNECTED_TO_DOM_PK_AUDIO_VOLUME_MUTE,    --    DOM_PK_AUDIO_VOLUME_MUTE.data
			DOM_PK_AUDIO_VOLUME_UP      => CONNECTED_TO_DOM_PK_AUDIO_VOLUME_UP,      --      DOM_PK_AUDIO_VOLUME_UP.data
			DOM_PK_B                    => CONNECTED_TO_DOM_PK_B,                    --                    DOM_PK_B.data
			DOM_PK_BACKQUOTE            => CONNECTED_TO_DOM_PK_BACKQUOTE,            --            DOM_PK_BACKQUOTE.data
			DOM_PK_BACKSLASH            => CONNECTED_TO_DOM_PK_BACKSLASH,            --            DOM_PK_BACKSLASH.data
			DOM_PK_BACKSPACE            => CONNECTED_TO_DOM_PK_BACKSPACE,            --            DOM_PK_BACKSPACE.data
			DOM_PK_BRACKET_LEFT         => CONNECTED_TO_DOM_PK_BRACKET_LEFT,         --         DOM_PK_BRACKET_LEFT.data
			DOM_PK_BRACKET_RIGHT        => CONNECTED_TO_DOM_PK_BRACKET_RIGHT,        --        DOM_PK_BRACKET_RIGHT.data
			DOM_PK_BROWSER_BACK         => CONNECTED_TO_DOM_PK_BROWSER_BACK,         --         DOM_PK_BROWSER_BACK.data
			DOM_PK_BROWSER_FAVORITES    => CONNECTED_TO_DOM_PK_BROWSER_FAVORITES,    --    DOM_PK_BROWSER_FAVORITES.data
			DOM_PK_BROWSER_FORWARD      => CONNECTED_TO_DOM_PK_BROWSER_FORWARD,      --      DOM_PK_BROWSER_FORWARD.data
			DOM_PK_BROWSER_HOME         => CONNECTED_TO_DOM_PK_BROWSER_HOME,         --         DOM_PK_BROWSER_HOME.data
			DOM_PK_BROWSER_REFRESH      => CONNECTED_TO_DOM_PK_BROWSER_REFRESH,      --      DOM_PK_BROWSER_REFRESH.data
			DOM_PK_BROWSER_SEARCH       => CONNECTED_TO_DOM_PK_BROWSER_SEARCH,       --       DOM_PK_BROWSER_SEARCH.data
			DOM_PK_BROWSER_STOP         => CONNECTED_TO_DOM_PK_BROWSER_STOP,         --         DOM_PK_BROWSER_STOP.data
			DOM_PK_C                    => CONNECTED_TO_DOM_PK_C,                    --                    DOM_PK_C.data
			DOM_PK_CAPS_LOCK            => CONNECTED_TO_DOM_PK_CAPS_LOCK,            --            DOM_PK_CAPS_LOCK.data
			DOM_PK_COMMA                => CONNECTED_TO_DOM_PK_COMMA,                --                DOM_PK_COMMA.data
			DOM_PK_CONTEXT_MENU         => CONNECTED_TO_DOM_PK_CONTEXT_MENU,         --         DOM_PK_CONTEXT_MENU.data
			DOM_PK_CONTROL_LEFT         => CONNECTED_TO_DOM_PK_CONTROL_LEFT,         --         DOM_PK_CONTROL_LEFT.data
			DOM_PK_CONTROL_RIGHT        => CONNECTED_TO_DOM_PK_CONTROL_RIGHT,        --        DOM_PK_CONTROL_RIGHT.data
			DOM_PK_CONVERT              => CONNECTED_TO_DOM_PK_CONVERT,              --              DOM_PK_CONVERT.data
			DOM_PK_COPY                 => CONNECTED_TO_DOM_PK_COPY,                 --                 DOM_PK_COPY.data
			DOM_PK_CUT                  => CONNECTED_TO_DOM_PK_CUT,                  --                  DOM_PK_CUT.data
			DOM_PK_D                    => CONNECTED_TO_DOM_PK_D,                    --                    DOM_PK_D.data
			DOM_PK_DELETE               => CONNECTED_TO_DOM_PK_DELETE,               --               DOM_PK_DELETE.data
			DOM_PK_E                    => CONNECTED_TO_DOM_PK_E,                    --                    DOM_PK_E.data
			DOM_PK_EJECT                => CONNECTED_TO_DOM_PK_EJECT,                --                DOM_PK_EJECT.data
			DOM_PK_END                  => CONNECTED_TO_DOM_PK_END,                  --                  DOM_PK_END.data
			DOM_PK_ENTER                => CONNECTED_TO_DOM_PK_ENTER,                --                DOM_PK_ENTER.data
			DOM_PK_EQUAL                => CONNECTED_TO_DOM_PK_EQUAL,                --                DOM_PK_EQUAL.data
			DOM_PK_ESCAPE               => CONNECTED_TO_DOM_PK_ESCAPE,               --               DOM_PK_ESCAPE.data
			DOM_PK_F                    => CONNECTED_TO_DOM_PK_F,                    --                    DOM_PK_F.data
			DOM_PK_F1                   => CONNECTED_TO_DOM_PK_F1,                   --                   DOM_PK_F1.data
			DOM_PK_F10                  => CONNECTED_TO_DOM_PK_F10,                  --                  DOM_PK_F10.data
			DOM_PK_F11                  => CONNECTED_TO_DOM_PK_F11,                  --                  DOM_PK_F11.data
			DOM_PK_F12                  => CONNECTED_TO_DOM_PK_F12,                  --                  DOM_PK_F12.data
			DOM_PK_F13                  => CONNECTED_TO_DOM_PK_F13,                  --                  DOM_PK_F13.data
			DOM_PK_F14                  => CONNECTED_TO_DOM_PK_F14,                  --                  DOM_PK_F14.data
			DOM_PK_F15                  => CONNECTED_TO_DOM_PK_F15,                  --                  DOM_PK_F15.data
			DOM_PK_F16                  => CONNECTED_TO_DOM_PK_F16,                  --                  DOM_PK_F16.data
			DOM_PK_F17                  => CONNECTED_TO_DOM_PK_F17,                  --                  DOM_PK_F17.data
			DOM_PK_F18                  => CONNECTED_TO_DOM_PK_F18,                  --                  DOM_PK_F18.data
			DOM_PK_F19                  => CONNECTED_TO_DOM_PK_F19,                  --                  DOM_PK_F19.data
			DOM_PK_F2                   => CONNECTED_TO_DOM_PK_F2,                   --                   DOM_PK_F2.data
			DOM_PK_F20                  => CONNECTED_TO_DOM_PK_F20,                  --                  DOM_PK_F20.data
			DOM_PK_F21                  => CONNECTED_TO_DOM_PK_F21,                  --                  DOM_PK_F21.data
			DOM_PK_F22                  => CONNECTED_TO_DOM_PK_F22,                  --                  DOM_PK_F22.data
			DOM_PK_F23                  => CONNECTED_TO_DOM_PK_F23,                  --                  DOM_PK_F23.data
			DOM_PK_F24                  => CONNECTED_TO_DOM_PK_F24,                  --                  DOM_PK_F24.data
			DOM_PK_F3                   => CONNECTED_TO_DOM_PK_F3,                   --                   DOM_PK_F3.data
			DOM_PK_F4                   => CONNECTED_TO_DOM_PK_F4,                   --                   DOM_PK_F4.data
			DOM_PK_F5                   => CONNECTED_TO_DOM_PK_F5,                   --                   DOM_PK_F5.data
			DOM_PK_F6                   => CONNECTED_TO_DOM_PK_F6,                   --                   DOM_PK_F6.data
			DOM_PK_F7                   => CONNECTED_TO_DOM_PK_F7,                   --                   DOM_PK_F7.data
			DOM_PK_F8                   => CONNECTED_TO_DOM_PK_F8,                   --                   DOM_PK_F8.data
			DOM_PK_F9                   => CONNECTED_TO_DOM_PK_F9,                   --                   DOM_PK_F9.data
			DOM_PK_G                    => CONNECTED_TO_DOM_PK_G,                    --                    DOM_PK_G.data
			DOM_PK_H                    => CONNECTED_TO_DOM_PK_H,                    --                    DOM_PK_H.data
			DOM_PK_HELP                 => CONNECTED_TO_DOM_PK_HELP,                 --                 DOM_PK_HELP.data
			DOM_PK_HOME                 => CONNECTED_TO_DOM_PK_HOME,                 --                 DOM_PK_HOME.data
			DOM_PK_I                    => CONNECTED_TO_DOM_PK_I,                    --                    DOM_PK_I.data
			DOM_PK_INSERT               => CONNECTED_TO_DOM_PK_INSERT,               --               DOM_PK_INSERT.data
			DOM_PK_INTL_BACKSLASH       => CONNECTED_TO_DOM_PK_INTL_BACKSLASH,       --       DOM_PK_INTL_BACKSLASH.data
			DOM_PK_INTL_RO              => CONNECTED_TO_DOM_PK_INTL_RO,              --              DOM_PK_INTL_RO.data
			DOM_PK_INTL_YEN             => CONNECTED_TO_DOM_PK_INTL_YEN,             --             DOM_PK_INTL_YEN.data
			DOM_PK_J                    => CONNECTED_TO_DOM_PK_J,                    --                    DOM_PK_J.data
			DOM_PK_K                    => CONNECTED_TO_DOM_PK_K,                    --                    DOM_PK_K.data
			DOM_PK_KANA_MODE            => CONNECTED_TO_DOM_PK_KANA_MODE,            --            DOM_PK_KANA_MODE.data
			DOM_PK_L                    => CONNECTED_TO_DOM_PK_L,                    --                    DOM_PK_L.data
			DOM_PK_LANG_1               => CONNECTED_TO_DOM_PK_LANG_1,               --               DOM_PK_LANG_1.data
			DOM_PK_LANG_2               => CONNECTED_TO_DOM_PK_LANG_2,               --               DOM_PK_LANG_2.data
			DOM_PK_LAUNCH_APP_1         => CONNECTED_TO_DOM_PK_LAUNCH_APP_1,         --         DOM_PK_LAUNCH_APP_1.data
			DOM_PK_LAUNCH_APP_2         => CONNECTED_TO_DOM_PK_LAUNCH_APP_2,         --         DOM_PK_LAUNCH_APP_2.data
			DOM_PK_LAUNCH_MAIL          => CONNECTED_TO_DOM_PK_LAUNCH_MAIL,          --          DOM_PK_LAUNCH_MAIL.data
			DOM_PK_LAUNCH_MEDIA_PLAYER  => CONNECTED_TO_DOM_PK_LAUNCH_MEDIA_PLAYER,  --  DOM_PK_LAUNCH_MEDIA_PLAYER.data
			DOM_PK_M                    => CONNECTED_TO_DOM_PK_M,                    --                    DOM_PK_M.data
			DOM_PK_MEDIA_PLAY_PAUSE     => CONNECTED_TO_DOM_PK_MEDIA_PLAY_PAUSE,     --     DOM_PK_MEDIA_PLAY_PAUSE.data
			DOM_PK_MEDIA_SELECT         => CONNECTED_TO_DOM_PK_MEDIA_SELECT,         --         DOM_PK_MEDIA_SELECT.data
			DOM_PK_MEDIA_STOP           => CONNECTED_TO_DOM_PK_MEDIA_STOP,           --           DOM_PK_MEDIA_STOP.data
			DOM_PK_MEDIA_TRACK_NEXT     => CONNECTED_TO_DOM_PK_MEDIA_TRACK_NEXT,     --     DOM_PK_MEDIA_TRACK_NEXT.data
			DOM_PK_MEDIA_TRACK_PREVIOUS => CONNECTED_TO_DOM_PK_MEDIA_TRACK_PREVIOUS, -- DOM_PK_MEDIA_TRACK_PREVIOUS.data
			DOM_PK_META_LEFT            => CONNECTED_TO_DOM_PK_META_LEFT,            --            DOM_PK_META_LEFT.data
			DOM_PK_META_RIGHT           => CONNECTED_TO_DOM_PK_META_RIGHT,           --           DOM_PK_META_RIGHT.data
			DOM_PK_MINUS                => CONNECTED_TO_DOM_PK_MINUS,                --                DOM_PK_MINUS.data
			DOM_PK_N                    => CONNECTED_TO_DOM_PK_N,                    --                    DOM_PK_N.data
			DOM_PK_NON_CONVERT          => CONNECTED_TO_DOM_PK_NON_CONVERT,          --          DOM_PK_NON_CONVERT.data
			DOM_PK_NUMPAD_0             => CONNECTED_TO_DOM_PK_NUMPAD_0,             --             DOM_PK_NUMPAD_0.data
			DOM_PK_NUMPAD_1             => CONNECTED_TO_DOM_PK_NUMPAD_1,             --             DOM_PK_NUMPAD_1.data
			DOM_PK_NUMPAD_2             => CONNECTED_TO_DOM_PK_NUMPAD_2,             --             DOM_PK_NUMPAD_2.data
			DOM_PK_NUMPAD_3             => CONNECTED_TO_DOM_PK_NUMPAD_3,             --             DOM_PK_NUMPAD_3.data
			DOM_PK_NUMPAD_4             => CONNECTED_TO_DOM_PK_NUMPAD_4,             --             DOM_PK_NUMPAD_4.data
			DOM_PK_NUMPAD_5             => CONNECTED_TO_DOM_PK_NUMPAD_5,             --             DOM_PK_NUMPAD_5.data
			DOM_PK_NUMPAD_6             => CONNECTED_TO_DOM_PK_NUMPAD_6,             --             DOM_PK_NUMPAD_6.data
			DOM_PK_NUMPAD_7             => CONNECTED_TO_DOM_PK_NUMPAD_7,             --             DOM_PK_NUMPAD_7.data
			DOM_PK_NUMPAD_8             => CONNECTED_TO_DOM_PK_NUMPAD_8,             --             DOM_PK_NUMPAD_8.data
			DOM_PK_NUMPAD_9             => CONNECTED_TO_DOM_PK_NUMPAD_9,             --             DOM_PK_NUMPAD_9.data
			DOM_PK_NUMPAD_ADD           => CONNECTED_TO_DOM_PK_NUMPAD_ADD,           --           DOM_PK_NUMPAD_ADD.data
			DOM_PK_NUMPAD_COMMA         => CONNECTED_TO_DOM_PK_NUMPAD_COMMA,         --         DOM_PK_NUMPAD_COMMA.data
			DOM_PK_NUMPAD_DECIMAL       => CONNECTED_TO_DOM_PK_NUMPAD_DECIMAL,       --       DOM_PK_NUMPAD_DECIMAL.data
			DOM_PK_NUMPAD_DIVIDE        => CONNECTED_TO_DOM_PK_NUMPAD_DIVIDE,        --        DOM_PK_NUMPAD_DIVIDE.data
			DOM_PK_NUMPAD_ENTER         => CONNECTED_TO_DOM_PK_NUMPAD_ENTER,         --         DOM_PK_NUMPAD_ENTER.data
			DOM_PK_NUMPAD_EQUAL         => CONNECTED_TO_DOM_PK_NUMPAD_EQUAL,         --         DOM_PK_NUMPAD_EQUAL.data
			DOM_PK_NUMPAD_MULTIPLY      => CONNECTED_TO_DOM_PK_NUMPAD_MULTIPLY,      --      DOM_PK_NUMPAD_MULTIPLY.data
			DOM_PK_NUMPAD_SUBTRACT      => CONNECTED_TO_DOM_PK_NUMPAD_SUBTRACT,      --      DOM_PK_NUMPAD_SUBTRACT.data
			DOM_PK_NUM_LOCK             => CONNECTED_TO_DOM_PK_NUM_LOCK,             --             DOM_PK_NUM_LOCK.data
			DOM_PK_O                    => CONNECTED_TO_DOM_PK_O,                    --                    DOM_PK_O.data
			DOM_PK_OS_LEFT              => CONNECTED_TO_DOM_PK_OS_LEFT,              --              DOM_PK_OS_LEFT.data
			DOM_PK_OS_RIGHT             => CONNECTED_TO_DOM_PK_OS_RIGHT,             --             DOM_PK_OS_RIGHT.data
			DOM_PK_P                    => CONNECTED_TO_DOM_PK_P,                    --                    DOM_PK_P.data
			DOM_PK_PAGE_DOWN            => CONNECTED_TO_DOM_PK_PAGE_DOWN,            --            DOM_PK_PAGE_DOWN.data
			DOM_PK_PAGE_UP              => CONNECTED_TO_DOM_PK_PAGE_UP,              --              DOM_PK_PAGE_UP.data
			DOM_PK_PASTE                => CONNECTED_TO_DOM_PK_PASTE,                --                DOM_PK_PASTE.data
			DOM_PK_PAUSE                => CONNECTED_TO_DOM_PK_PAUSE,                --                DOM_PK_PAUSE.data
			DOM_PK_PERIOD               => CONNECTED_TO_DOM_PK_PERIOD,               --               DOM_PK_PERIOD.data
			DOM_PK_POWER                => CONNECTED_TO_DOM_PK_POWER,                --                DOM_PK_POWER.data
			DOM_PK_PRINT_SCREEN         => CONNECTED_TO_DOM_PK_PRINT_SCREEN,         --         DOM_PK_PRINT_SCREEN.data
			DOM_PK_Q                    => CONNECTED_TO_DOM_PK_Q,                    --                    DOM_PK_Q.data
			DOM_PK_QUOTE                => CONNECTED_TO_DOM_PK_QUOTE,                --                DOM_PK_QUOTE.data
			DOM_PK_R                    => CONNECTED_TO_DOM_PK_R,                    --                    DOM_PK_R.data
			DOM_PK_S                    => CONNECTED_TO_DOM_PK_S,                    --                    DOM_PK_S.data
			DOM_PK_SCROLL_LOCK          => CONNECTED_TO_DOM_PK_SCROLL_LOCK,          --          DOM_PK_SCROLL_LOCK.data
			DOM_PK_SEMICOLON            => CONNECTED_TO_DOM_PK_SEMICOLON,            --            DOM_PK_SEMICOLON.data
			DOM_PK_SHIFT_LEFT           => CONNECTED_TO_DOM_PK_SHIFT_LEFT,           --           DOM_PK_SHIFT_LEFT.data
			DOM_PK_SHIFT_RIGHT          => CONNECTED_TO_DOM_PK_SHIFT_RIGHT,          --          DOM_PK_SHIFT_RIGHT.data
			DOM_PK_SLASH                => CONNECTED_TO_DOM_PK_SLASH,                --                DOM_PK_SLASH.data
			DOM_PK_SPACE                => CONNECTED_TO_DOM_PK_SPACE,                --                DOM_PK_SPACE.data
			DOM_PK_T                    => CONNECTED_TO_DOM_PK_T,                    --                    DOM_PK_T.data
			DOM_PK_TAB                  => CONNECTED_TO_DOM_PK_TAB,                  --                  DOM_PK_TAB.data
			DOM_PK_U                    => CONNECTED_TO_DOM_PK_U,                    --                    DOM_PK_U.data
			DOM_PK_UNKNOWN              => CONNECTED_TO_DOM_PK_UNKNOWN,              --              DOM_PK_UNKNOWN.data
			DOM_PK_V                    => CONNECTED_TO_DOM_PK_V,                    --                    DOM_PK_V.data
			DOM_PK_W                    => CONNECTED_TO_DOM_PK_W,                    --                    DOM_PK_W.data
			DOM_PK_X                    => CONNECTED_TO_DOM_PK_X,                    --                    DOM_PK_X.data
			DOM_PK_Y                    => CONNECTED_TO_DOM_PK_Y,                    --                    DOM_PK_Y.data
			DOM_PK_Z                    => CONNECTED_TO_DOM_PK_Z,                    --                    DOM_PK_Z.data
			avmm_0_rw_address           => CONNECTED_TO_avmm_0_rw_address,           --                   avmm_0_rw.address
			avmm_0_rw_byteenable        => CONNECTED_TO_avmm_0_rw_byteenable,        --                            .byteenable
			avmm_0_rw_read              => CONNECTED_TO_avmm_0_rw_read,              --                            .read
			avmm_0_rw_readdata          => CONNECTED_TO_avmm_0_rw_readdata,          --                            .readdata
			avmm_0_rw_write             => CONNECTED_TO_avmm_0_rw_write,             --                            .write
			avmm_0_rw_writedata         => CONNECTED_TO_avmm_0_rw_writedata          --                            .writedata
		);

