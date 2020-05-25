	component obs_key_from_virtual_key is
		port (
			clock                : in  std_logic                     := 'X';             -- clk
			resetn               : in  std_logic                     := 'X';             -- reset_n
			start                : in  std_logic                     := 'X';             -- valid
			busy                 : out std_logic;                                        -- stall
			done                 : out std_logic;                                        -- valid
			stall                : in  std_logic                     := 'X';             -- stall
			returndata           : out std_logic_vector(31 downto 0);                    -- data
			code                 : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			OBS_KEY_0            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_1            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_2            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_3            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_4            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_5            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_6            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_7            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_8            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_9            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_A            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_ALT          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_B            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_BACKSLASH    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_BACKSPACE    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_BRACKETLEFT  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_BRACKETRIGHT : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_C            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_CAPSLOCK     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_CLEAR        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_COMMA        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_CONTROL      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_D            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_DEAD_GRAVE   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_DELETE       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_DOWN         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_E            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_END          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_ENTER        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_EQUAL        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_ESCAPE       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F1           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F10          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F11          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F12          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F13          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F14          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F15          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F16          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F17          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F18          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F19          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F2           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F20          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F3           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F4           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F5           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F6           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F7           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F8           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_F9           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_G            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_H            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_HELP         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_HOME         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_I            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_J            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_K            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_L            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_LEFT         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_M            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_META         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_MINUS        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_N            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NONE         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM0         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM1         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM2         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM3         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM4         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM5         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM6         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM7         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM8         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUM9         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUMASTERISK  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUMEQUAL     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUMMINUS     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUMPERIOD    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUMPLUS      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_NUMSLASH     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_O            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_P            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_PAGEDOWN     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_PAGEUP       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_PERIOD       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_Q            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_QUOTE        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_R            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_RETURN       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_RIGHT        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_S            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_SECTION      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_SEMICOLON    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_SHIFT        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_SLASH        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_SPACE        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_T            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_TAB          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_U            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_UP           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_V            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_W            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_X            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_Y            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			OBS_KEY_Z            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address    : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read       : out std_logic;                                        -- read
			avmm_0_rw_readdata   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write      : out std_logic;                                        -- write
			avmm_0_rw_writedata  : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component obs_key_from_virtual_key;

	u0 : component obs_key_from_virtual_key
		port map (
			clock                => CONNECTED_TO_clock,                --                clock.clk
			resetn               => CONNECTED_TO_resetn,               --                reset.reset_n
			start                => CONNECTED_TO_start,                --                 call.valid
			busy                 => CONNECTED_TO_busy,                 --                     .stall
			done                 => CONNECTED_TO_done,                 --               return.valid
			stall                => CONNECTED_TO_stall,                --                     .stall
			returndata           => CONNECTED_TO_returndata,           --           returndata.data
			code                 => CONNECTED_TO_code,                 --                 code.data
			OBS_KEY_0            => CONNECTED_TO_OBS_KEY_0,            --            OBS_KEY_0.data
			OBS_KEY_1            => CONNECTED_TO_OBS_KEY_1,            --            OBS_KEY_1.data
			OBS_KEY_2            => CONNECTED_TO_OBS_KEY_2,            --            OBS_KEY_2.data
			OBS_KEY_3            => CONNECTED_TO_OBS_KEY_3,            --            OBS_KEY_3.data
			OBS_KEY_4            => CONNECTED_TO_OBS_KEY_4,            --            OBS_KEY_4.data
			OBS_KEY_5            => CONNECTED_TO_OBS_KEY_5,            --            OBS_KEY_5.data
			OBS_KEY_6            => CONNECTED_TO_OBS_KEY_6,            --            OBS_KEY_6.data
			OBS_KEY_7            => CONNECTED_TO_OBS_KEY_7,            --            OBS_KEY_7.data
			OBS_KEY_8            => CONNECTED_TO_OBS_KEY_8,            --            OBS_KEY_8.data
			OBS_KEY_9            => CONNECTED_TO_OBS_KEY_9,            --            OBS_KEY_9.data
			OBS_KEY_A            => CONNECTED_TO_OBS_KEY_A,            --            OBS_KEY_A.data
			OBS_KEY_ALT          => CONNECTED_TO_OBS_KEY_ALT,          --          OBS_KEY_ALT.data
			OBS_KEY_B            => CONNECTED_TO_OBS_KEY_B,            --            OBS_KEY_B.data
			OBS_KEY_BACKSLASH    => CONNECTED_TO_OBS_KEY_BACKSLASH,    --    OBS_KEY_BACKSLASH.data
			OBS_KEY_BACKSPACE    => CONNECTED_TO_OBS_KEY_BACKSPACE,    --    OBS_KEY_BACKSPACE.data
			OBS_KEY_BRACKETLEFT  => CONNECTED_TO_OBS_KEY_BRACKETLEFT,  --  OBS_KEY_BRACKETLEFT.data
			OBS_KEY_BRACKETRIGHT => CONNECTED_TO_OBS_KEY_BRACKETRIGHT, -- OBS_KEY_BRACKETRIGHT.data
			OBS_KEY_C            => CONNECTED_TO_OBS_KEY_C,            --            OBS_KEY_C.data
			OBS_KEY_CAPSLOCK     => CONNECTED_TO_OBS_KEY_CAPSLOCK,     --     OBS_KEY_CAPSLOCK.data
			OBS_KEY_CLEAR        => CONNECTED_TO_OBS_KEY_CLEAR,        --        OBS_KEY_CLEAR.data
			OBS_KEY_COMMA        => CONNECTED_TO_OBS_KEY_COMMA,        --        OBS_KEY_COMMA.data
			OBS_KEY_CONTROL      => CONNECTED_TO_OBS_KEY_CONTROL,      --      OBS_KEY_CONTROL.data
			OBS_KEY_D            => CONNECTED_TO_OBS_KEY_D,            --            OBS_KEY_D.data
			OBS_KEY_DEAD_GRAVE   => CONNECTED_TO_OBS_KEY_DEAD_GRAVE,   --   OBS_KEY_DEAD_GRAVE.data
			OBS_KEY_DELETE       => CONNECTED_TO_OBS_KEY_DELETE,       --       OBS_KEY_DELETE.data
			OBS_KEY_DOWN         => CONNECTED_TO_OBS_KEY_DOWN,         --         OBS_KEY_DOWN.data
			OBS_KEY_E            => CONNECTED_TO_OBS_KEY_E,            --            OBS_KEY_E.data
			OBS_KEY_END          => CONNECTED_TO_OBS_KEY_END,          --          OBS_KEY_END.data
			OBS_KEY_ENTER        => CONNECTED_TO_OBS_KEY_ENTER,        --        OBS_KEY_ENTER.data
			OBS_KEY_EQUAL        => CONNECTED_TO_OBS_KEY_EQUAL,        --        OBS_KEY_EQUAL.data
			OBS_KEY_ESCAPE       => CONNECTED_TO_OBS_KEY_ESCAPE,       --       OBS_KEY_ESCAPE.data
			OBS_KEY_F            => CONNECTED_TO_OBS_KEY_F,            --            OBS_KEY_F.data
			OBS_KEY_F1           => CONNECTED_TO_OBS_KEY_F1,           --           OBS_KEY_F1.data
			OBS_KEY_F10          => CONNECTED_TO_OBS_KEY_F10,          --          OBS_KEY_F10.data
			OBS_KEY_F11          => CONNECTED_TO_OBS_KEY_F11,          --          OBS_KEY_F11.data
			OBS_KEY_F12          => CONNECTED_TO_OBS_KEY_F12,          --          OBS_KEY_F12.data
			OBS_KEY_F13          => CONNECTED_TO_OBS_KEY_F13,          --          OBS_KEY_F13.data
			OBS_KEY_F14          => CONNECTED_TO_OBS_KEY_F14,          --          OBS_KEY_F14.data
			OBS_KEY_F15          => CONNECTED_TO_OBS_KEY_F15,          --          OBS_KEY_F15.data
			OBS_KEY_F16          => CONNECTED_TO_OBS_KEY_F16,          --          OBS_KEY_F16.data
			OBS_KEY_F17          => CONNECTED_TO_OBS_KEY_F17,          --          OBS_KEY_F17.data
			OBS_KEY_F18          => CONNECTED_TO_OBS_KEY_F18,          --          OBS_KEY_F18.data
			OBS_KEY_F19          => CONNECTED_TO_OBS_KEY_F19,          --          OBS_KEY_F19.data
			OBS_KEY_F2           => CONNECTED_TO_OBS_KEY_F2,           --           OBS_KEY_F2.data
			OBS_KEY_F20          => CONNECTED_TO_OBS_KEY_F20,          --          OBS_KEY_F20.data
			OBS_KEY_F3           => CONNECTED_TO_OBS_KEY_F3,           --           OBS_KEY_F3.data
			OBS_KEY_F4           => CONNECTED_TO_OBS_KEY_F4,           --           OBS_KEY_F4.data
			OBS_KEY_F5           => CONNECTED_TO_OBS_KEY_F5,           --           OBS_KEY_F5.data
			OBS_KEY_F6           => CONNECTED_TO_OBS_KEY_F6,           --           OBS_KEY_F6.data
			OBS_KEY_F7           => CONNECTED_TO_OBS_KEY_F7,           --           OBS_KEY_F7.data
			OBS_KEY_F8           => CONNECTED_TO_OBS_KEY_F8,           --           OBS_KEY_F8.data
			OBS_KEY_F9           => CONNECTED_TO_OBS_KEY_F9,           --           OBS_KEY_F9.data
			OBS_KEY_G            => CONNECTED_TO_OBS_KEY_G,            --            OBS_KEY_G.data
			OBS_KEY_H            => CONNECTED_TO_OBS_KEY_H,            --            OBS_KEY_H.data
			OBS_KEY_HELP         => CONNECTED_TO_OBS_KEY_HELP,         --         OBS_KEY_HELP.data
			OBS_KEY_HOME         => CONNECTED_TO_OBS_KEY_HOME,         --         OBS_KEY_HOME.data
			OBS_KEY_I            => CONNECTED_TO_OBS_KEY_I,            --            OBS_KEY_I.data
			OBS_KEY_J            => CONNECTED_TO_OBS_KEY_J,            --            OBS_KEY_J.data
			OBS_KEY_K            => CONNECTED_TO_OBS_KEY_K,            --            OBS_KEY_K.data
			OBS_KEY_L            => CONNECTED_TO_OBS_KEY_L,            --            OBS_KEY_L.data
			OBS_KEY_LEFT         => CONNECTED_TO_OBS_KEY_LEFT,         --         OBS_KEY_LEFT.data
			OBS_KEY_M            => CONNECTED_TO_OBS_KEY_M,            --            OBS_KEY_M.data
			OBS_KEY_META         => CONNECTED_TO_OBS_KEY_META,         --         OBS_KEY_META.data
			OBS_KEY_MINUS        => CONNECTED_TO_OBS_KEY_MINUS,        --        OBS_KEY_MINUS.data
			OBS_KEY_N            => CONNECTED_TO_OBS_KEY_N,            --            OBS_KEY_N.data
			OBS_KEY_NONE         => CONNECTED_TO_OBS_KEY_NONE,         --         OBS_KEY_NONE.data
			OBS_KEY_NUM0         => CONNECTED_TO_OBS_KEY_NUM0,         --         OBS_KEY_NUM0.data
			OBS_KEY_NUM1         => CONNECTED_TO_OBS_KEY_NUM1,         --         OBS_KEY_NUM1.data
			OBS_KEY_NUM2         => CONNECTED_TO_OBS_KEY_NUM2,         --         OBS_KEY_NUM2.data
			OBS_KEY_NUM3         => CONNECTED_TO_OBS_KEY_NUM3,         --         OBS_KEY_NUM3.data
			OBS_KEY_NUM4         => CONNECTED_TO_OBS_KEY_NUM4,         --         OBS_KEY_NUM4.data
			OBS_KEY_NUM5         => CONNECTED_TO_OBS_KEY_NUM5,         --         OBS_KEY_NUM5.data
			OBS_KEY_NUM6         => CONNECTED_TO_OBS_KEY_NUM6,         --         OBS_KEY_NUM6.data
			OBS_KEY_NUM7         => CONNECTED_TO_OBS_KEY_NUM7,         --         OBS_KEY_NUM7.data
			OBS_KEY_NUM8         => CONNECTED_TO_OBS_KEY_NUM8,         --         OBS_KEY_NUM8.data
			OBS_KEY_NUM9         => CONNECTED_TO_OBS_KEY_NUM9,         --         OBS_KEY_NUM9.data
			OBS_KEY_NUMASTERISK  => CONNECTED_TO_OBS_KEY_NUMASTERISK,  --  OBS_KEY_NUMASTERISK.data
			OBS_KEY_NUMEQUAL     => CONNECTED_TO_OBS_KEY_NUMEQUAL,     --     OBS_KEY_NUMEQUAL.data
			OBS_KEY_NUMMINUS     => CONNECTED_TO_OBS_KEY_NUMMINUS,     --     OBS_KEY_NUMMINUS.data
			OBS_KEY_NUMPERIOD    => CONNECTED_TO_OBS_KEY_NUMPERIOD,    --    OBS_KEY_NUMPERIOD.data
			OBS_KEY_NUMPLUS      => CONNECTED_TO_OBS_KEY_NUMPLUS,      --      OBS_KEY_NUMPLUS.data
			OBS_KEY_NUMSLASH     => CONNECTED_TO_OBS_KEY_NUMSLASH,     --     OBS_KEY_NUMSLASH.data
			OBS_KEY_O            => CONNECTED_TO_OBS_KEY_O,            --            OBS_KEY_O.data
			OBS_KEY_P            => CONNECTED_TO_OBS_KEY_P,            --            OBS_KEY_P.data
			OBS_KEY_PAGEDOWN     => CONNECTED_TO_OBS_KEY_PAGEDOWN,     --     OBS_KEY_PAGEDOWN.data
			OBS_KEY_PAGEUP       => CONNECTED_TO_OBS_KEY_PAGEUP,       --       OBS_KEY_PAGEUP.data
			OBS_KEY_PERIOD       => CONNECTED_TO_OBS_KEY_PERIOD,       --       OBS_KEY_PERIOD.data
			OBS_KEY_Q            => CONNECTED_TO_OBS_KEY_Q,            --            OBS_KEY_Q.data
			OBS_KEY_QUOTE        => CONNECTED_TO_OBS_KEY_QUOTE,        --        OBS_KEY_QUOTE.data
			OBS_KEY_R            => CONNECTED_TO_OBS_KEY_R,            --            OBS_KEY_R.data
			OBS_KEY_RETURN       => CONNECTED_TO_OBS_KEY_RETURN,       --       OBS_KEY_RETURN.data
			OBS_KEY_RIGHT        => CONNECTED_TO_OBS_KEY_RIGHT,        --        OBS_KEY_RIGHT.data
			OBS_KEY_S            => CONNECTED_TO_OBS_KEY_S,            --            OBS_KEY_S.data
			OBS_KEY_SECTION      => CONNECTED_TO_OBS_KEY_SECTION,      --      OBS_KEY_SECTION.data
			OBS_KEY_SEMICOLON    => CONNECTED_TO_OBS_KEY_SEMICOLON,    --    OBS_KEY_SEMICOLON.data
			OBS_KEY_SHIFT        => CONNECTED_TO_OBS_KEY_SHIFT,        --        OBS_KEY_SHIFT.data
			OBS_KEY_SLASH        => CONNECTED_TO_OBS_KEY_SLASH,        --        OBS_KEY_SLASH.data
			OBS_KEY_SPACE        => CONNECTED_TO_OBS_KEY_SPACE,        --        OBS_KEY_SPACE.data
			OBS_KEY_T            => CONNECTED_TO_OBS_KEY_T,            --            OBS_KEY_T.data
			OBS_KEY_TAB          => CONNECTED_TO_OBS_KEY_TAB,          --          OBS_KEY_TAB.data
			OBS_KEY_U            => CONNECTED_TO_OBS_KEY_U,            --            OBS_KEY_U.data
			OBS_KEY_UP           => CONNECTED_TO_OBS_KEY_UP,           --           OBS_KEY_UP.data
			OBS_KEY_V            => CONNECTED_TO_OBS_KEY_V,            --            OBS_KEY_V.data
			OBS_KEY_W            => CONNECTED_TO_OBS_KEY_W,            --            OBS_KEY_W.data
			OBS_KEY_X            => CONNECTED_TO_OBS_KEY_X,            --            OBS_KEY_X.data
			OBS_KEY_Y            => CONNECTED_TO_OBS_KEY_Y,            --            OBS_KEY_Y.data
			OBS_KEY_Z            => CONNECTED_TO_OBS_KEY_Z,            --            OBS_KEY_Z.data
			avmm_0_rw_address    => CONNECTED_TO_avmm_0_rw_address,    --            avmm_0_rw.address
			avmm_0_rw_byteenable => CONNECTED_TO_avmm_0_rw_byteenable, --                     .byteenable
			avmm_0_rw_read       => CONNECTED_TO_avmm_0_rw_read,       --                     .read
			avmm_0_rw_readdata   => CONNECTED_TO_avmm_0_rw_readdata,   --                     .readdata
			avmm_0_rw_write      => CONNECTED_TO_avmm_0_rw_write,      --                     .write
			avmm_0_rw_writedata  => CONNECTED_TO_avmm_0_rw_writedata   --                     .writedata
		);

