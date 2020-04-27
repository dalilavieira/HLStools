	component cat_done is
		port (
			out_conduit  : out std_logic;        -- conduit
			in_conduit_0 : in  std_logic := 'X'  -- conduit
		);
	end component cat_done;

	u0 : component cat_done
		port map (
			out_conduit  => CONNECTED_TO_out_conduit,  --  out_conduit.conduit
			in_conduit_0 => CONNECTED_TO_in_conduit_0  -- in_conduit_0.conduit
		);

