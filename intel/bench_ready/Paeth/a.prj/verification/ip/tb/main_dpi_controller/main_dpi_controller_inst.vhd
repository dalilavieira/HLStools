	component main_dpi_controller is
		port (
			clock                            : in  std_logic                    := 'X';             -- clk
			resetn                           : in  std_logic                    := 'X';             -- reset_n
			clock2x                          : in  std_logic                    := 'X';             -- clk
			component_enabled                : out std_logic_vector(0 downto 0);                    -- conduit
			component_done                   : in  std_logic_vector(0 downto 0) := (others => 'X'); -- conduit
			component_wait_for_stream_writes : in  std_logic_vector(0 downto 0) := (others => 'X'); -- conduit
			trigger_reset                    : out std_logic                                        -- conduit
		);
	end component main_dpi_controller;

	u0 : component main_dpi_controller
		port map (
			clock                            => CONNECTED_TO_clock,                            --                            clock.clk
			resetn                           => CONNECTED_TO_resetn,                           --                            reset.reset_n
			clock2x                          => CONNECTED_TO_clock2x,                          --                          clock2x.clk
			component_enabled                => CONNECTED_TO_component_enabled,                --                component_enabled.conduit
			component_done                   => CONNECTED_TO_component_done,                   --                   component_done.conduit
			component_wait_for_stream_writes => CONNECTED_TO_component_wait_for_stream_writes, -- component_wait_for_stream_writes.conduit
			trigger_reset                    => CONNECTED_TO_trigger_reset                     --                       reset_ctrl.conduit
		);

