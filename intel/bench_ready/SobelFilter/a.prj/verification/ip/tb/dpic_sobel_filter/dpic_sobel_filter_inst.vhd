	component dpic_sobel_filter is
		port (
			clock                            : in  std_logic                     := 'X';             -- clk
			resetn                           : in  std_logic                     := 'X';             -- reset_n
			clock2x                          : in  std_logic                     := 'X';             -- clk
			bind_interfaces                  : out std_logic;                                        -- conduit
			enable_interfaces                : out std_logic;                                        -- conduit
			component_enabled                : in  std_logic                     := 'X';             -- conduit
			component_done                   : out std_logic;                                        -- conduit
			component_wait_for_stream_writes : out std_logic;                                        -- conduit
			slave_busy                       : in  std_logic                     := 'X';             -- conduit
			read_implicit_streams            : out std_logic;                                        -- conduit
			readback_from_slaves             : out std_logic;                                        -- conduit
			start                            : out std_logic;                                        -- valid
			busy                             : in  std_logic                     := 'X';             -- stall
			done                             : in  std_logic                     := 'X';             -- valid
			stall                            : out std_logic;                                        -- stall
			done_irq                         : in  std_logic                     := 'X';             -- irq
			returndata                       : in  std_logic_vector(31 downto 0) := (others => 'X')  -- data
		);
	end component dpic_sobel_filter;

	u0 : component dpic_sobel_filter
		port map (
			clock                            => CONNECTED_TO_clock,                            --                            clock.clk
			resetn                           => CONNECTED_TO_resetn,                           --                            reset.reset_n
			clock2x                          => CONNECTED_TO_clock2x,                          --                          clock2x.clk
			bind_interfaces                  => CONNECTED_TO_bind_interfaces,                  --                 dpi_control_bind.conduit
			enable_interfaces                => CONNECTED_TO_enable_interfaces,                --               dpi_control_enable.conduit
			component_enabled                => CONNECTED_TO_component_enabled,                --                component_enabled.conduit
			component_done                   => CONNECTED_TO_component_done,                   --                   component_done.conduit
			component_wait_for_stream_writes => CONNECTED_TO_component_wait_for_stream_writes, -- component_wait_for_stream_writes.conduit
			slave_busy                       => CONNECTED_TO_slave_busy,                       --                       slave_busy.conduit
			read_implicit_streams            => CONNECTED_TO_read_implicit_streams,            --            read_implicit_streams.conduit
			readback_from_slaves             => CONNECTED_TO_readback_from_slaves,             --             readback_from_slaves.conduit
			start                            => CONNECTED_TO_start,                            --                   component_call.valid
			busy                             => CONNECTED_TO_busy,                             --                                 .stall
			done                             => CONNECTED_TO_done,                             --                 component_return.valid
			stall                            => CONNECTED_TO_stall,                            --                                 .stall
			done_irq                         => CONNECTED_TO_done_irq,                         --                    component_irq.irq
			returndata                       => CONNECTED_TO_returndata                        --                       returndata.data
		);

