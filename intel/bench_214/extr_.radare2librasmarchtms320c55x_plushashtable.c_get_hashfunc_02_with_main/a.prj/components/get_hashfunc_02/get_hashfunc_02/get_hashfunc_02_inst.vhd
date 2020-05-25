	component get_hashfunc_02 is
		port (
			clock      : in  std_logic                     := 'X';             -- clk
			resetn     : in  std_logic                     := 'X';             -- reset_n
			start      : in  std_logic                     := 'X';             -- valid
			busy       : out std_logic;                                        -- stall
			done       : out std_logic;                                        -- valid
			stall      : in  std_logic                     := 'X';             -- stall
			returndata : out std_logic_vector(31 downto 0);                    -- data
			arg1       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			arg2       : in  std_logic_vector(31 downto 0) := (others => 'X')  -- data
		);
	end component get_hashfunc_02;

	u0 : component get_hashfunc_02
		port map (
			clock      => CONNECTED_TO_clock,      --      clock.clk
			resetn     => CONNECTED_TO_resetn,     --      reset.reset_n
			start      => CONNECTED_TO_start,      --       call.valid
			busy       => CONNECTED_TO_busy,       --           .stall
			done       => CONNECTED_TO_done,       --     return.valid
			stall      => CONNECTED_TO_stall,      --           .stall
			returndata => CONNECTED_TO_returndata, -- returndata.data
			arg1       => CONNECTED_TO_arg1,       --       arg1.data
			arg2       => CONNECTED_TO_arg2        --       arg2.data
		);

