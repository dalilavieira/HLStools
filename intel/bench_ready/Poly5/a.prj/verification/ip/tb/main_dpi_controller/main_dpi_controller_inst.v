	main_dpi_controller u0 (
		.clock                            (_connected_to_clock_),                            //   input,  width = 1,                            clock.clk
		.resetn                           (_connected_to_resetn_),                           //   input,  width = 1,                            reset.reset_n
		.clock2x                          (_connected_to_clock2x_),                          //   input,  width = 1,                          clock2x.clk
		.component_enabled                (_connected_to_component_enabled_),                //  output,  width = 1,                component_enabled.conduit
		.component_done                   (_connected_to_component_done_),                   //   input,  width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (_connected_to_component_wait_for_stream_writes_), //   input,  width = 1, component_wait_for_stream_writes.conduit
		.trigger_reset                    (_connected_to_trigger_reset_)                     //  output,  width = 1,                       reset_ctrl.conduit
	);

