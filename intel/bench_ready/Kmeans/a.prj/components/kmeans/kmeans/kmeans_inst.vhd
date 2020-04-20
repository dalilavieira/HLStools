	component kmeans is
		port (
			clock        : in  std_logic                     := 'X';             -- clk
			resetn       : in  std_logic                     := 'X';             -- reset_n
			start        : in  std_logic                     := 'X';             -- valid
			busy         : out std_logic;                                        -- stall
			done         : out std_logic;                                        -- valid
			stall        : in  std_logic                     := 'X';             -- stall
			returndata   : out std_logic_vector(31 downto 0);                    -- data
			idx          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			num_clusters : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			num_dim      : in  std_logic_vector(31 downto 0) := (others => 'X')  -- data
		);
	end component kmeans;

	u0 : component kmeans
		port map (
			clock        => CONNECTED_TO_clock,        --        clock.clk
			resetn       => CONNECTED_TO_resetn,       --        reset.reset_n
			start        => CONNECTED_TO_start,        --         call.valid
			busy         => CONNECTED_TO_busy,         --             .stall
			done         => CONNECTED_TO_done,         --       return.valid
			stall        => CONNECTED_TO_stall,        --             .stall
			returndata   => CONNECTED_TO_returndata,   --   returndata.data
			idx          => CONNECTED_TO_idx,          --          idx.data
			num_clusters => CONNECTED_TO_num_clusters, -- num_clusters.data
			num_dim      => CONNECTED_TO_num_dim       --      num_dim.data
		);

