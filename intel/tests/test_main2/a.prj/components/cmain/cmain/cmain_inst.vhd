	component cmain is
		port (
			clock  : in  std_logic := 'X'; -- clk
			resetn : in  std_logic := 'X'; -- reset_n
			start  : in  std_logic := 'X'; -- valid
			busy   : out std_logic;        -- stall
			done   : out std_logic;        -- valid
			stall  : in  std_logic := 'X'  -- stall
		);
	end component cmain;

	u0 : component cmain
		port map (
			clock  => CONNECTED_TO_clock,  --  clock.clk
			resetn => CONNECTED_TO_resetn, --  reset.reset_n
			start  => CONNECTED_TO_start,  --   call.valid
			busy   => CONNECTED_TO_busy,   --       .stall
			done   => CONNECTED_TO_done,   -- return.valid
			stall  => CONNECTED_TO_stall   --       .stall
		);

