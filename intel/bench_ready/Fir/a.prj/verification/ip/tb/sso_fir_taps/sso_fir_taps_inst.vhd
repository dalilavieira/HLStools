	component sso_fir_taps is
		generic (
			COMPONENT_NAME                  : string  := "dut";
			INTERFACE_NAME                  : string  := "a";
			STREAM_DATAWIDTH                : integer := 1;
			STREAM_BITSPERSYMBOL            : integer := 1;
			EMPTY_WIDTH                     : integer := 0;
			FIRST_SYMBOL_IN_HIGH_ORDER_BITS : integer := 0
		);
		port (
			clock        : in  std_logic                     := 'X'; -- clk
			resetn       : in  std_logic                     := 'X'; -- reset_n
			clock2x      : in  std_logic                     := 'X'; -- clk
			do_bind      : in  std_logic                     := 'X'; -- conduit
			enable       : in  std_logic                     := 'X'; -- conduit
			source_data  : out std_logic_vector(31 downto 0);        -- data
			source_ready : in  std_logic                     := 'X'; -- conduit
			source_valid : out std_logic                             -- conduit
		);
	end component sso_fir_taps;

	u0 : component sso_fir_taps
		generic map (
			COMPONENT_NAME                  => STRING_VALUE_FOR_COMPONENT_NAME,
			INTERFACE_NAME                  => STRING_VALUE_FOR_INTERFACE_NAME,
			STREAM_DATAWIDTH                => INTEGER_VALUE_FOR_STREAM_DATAWIDTH,
			STREAM_BITSPERSYMBOL            => INTEGER_VALUE_FOR_STREAM_BITSPERSYMBOL,
			EMPTY_WIDTH                     => INTEGER_VALUE_FOR_EMPTY_WIDTH,
			FIRST_SYMBOL_IN_HIGH_ORDER_BITS => INTEGER_VALUE_FOR_FIRST_SYMBOL_IN_HIGH_ORDER_BITS
		)
		port map (
			clock        => CONNECTED_TO_clock,        --              clock.clk
			resetn       => CONNECTED_TO_resetn,       --              reset.reset_n
			clock2x      => CONNECTED_TO_clock2x,      --            clock2x.clk
			do_bind      => CONNECTED_TO_do_bind,      --   dpi_control_bind.conduit
			enable       => CONNECTED_TO_enable,       -- dpi_control_enable.conduit
			source_data  => CONNECTED_TO_source_data,  --        source_data.data
			source_ready => CONNECTED_TO_source_ready, --       source_ready.conduit
			source_valid => CONNECTED_TO_source_valid  --             source.conduit
		);

