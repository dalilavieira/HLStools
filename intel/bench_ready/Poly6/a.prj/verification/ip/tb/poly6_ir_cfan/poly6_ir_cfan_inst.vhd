	component poly6_ir_cfan is
		port (
			in_conduit    : in  std_logic := 'X'; -- conduit
			out_conduit_0 : out std_logic         -- conduit
		);
	end component poly6_ir_cfan;

	u0 : component poly6_ir_cfan
		port map (
			in_conduit    => CONNECTED_TO_in_conduit,    --    in_conduit.conduit
			out_conduit_0 => CONNECTED_TO_out_conduit_0  -- out_conduit_0.conduit
		);

