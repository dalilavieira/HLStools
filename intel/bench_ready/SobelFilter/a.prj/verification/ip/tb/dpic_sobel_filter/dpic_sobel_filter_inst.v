	dpic_sobel_filter u0 (
		.clock                            (_connected_to_clock_),                            //   input,   width = 1,                            clock.clk
		.resetn                           (_connected_to_resetn_),                           //   input,   width = 1,                            reset.reset_n
		.clock2x                          (_connected_to_clock2x_),                          //   input,   width = 1,                          clock2x.clk
		.bind_interfaces                  (_connected_to_bind_interfaces_),                  //  output,   width = 1,                 dpi_control_bind.conduit
		.enable_interfaces                (_connected_to_enable_interfaces_),                //  output,   width = 1,               dpi_control_enable.conduit
		.component_enabled                (_connected_to_component_enabled_),                //   input,   width = 1,                component_enabled.conduit
		.component_done                   (_connected_to_component_done_),                   //  output,   width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (_connected_to_component_wait_for_stream_writes_), //  output,   width = 1, component_wait_for_stream_writes.conduit
		.slave_busy                       (_connected_to_slave_busy_),                       //   input,   width = 1,                       slave_busy.conduit
		.read_implicit_streams            (_connected_to_read_implicit_streams_),            //  output,   width = 1,            read_implicit_streams.conduit
		.readback_from_slaves             (_connected_to_readback_from_slaves_),             //  output,   width = 1,             readback_from_slaves.conduit
		.start                            (_connected_to_start_),                            //  output,   width = 1,                   component_call.valid
		.busy                             (_connected_to_busy_),                             //   input,   width = 1,                                 .stall
		.done                             (_connected_to_done_),                             //   input,   width = 1,                 component_return.valid
		.stall                            (_connected_to_stall_),                            //  output,   width = 1,                                 .stall
		.done_irq                         (_connected_to_done_irq_),                         //   input,   width = 1,                    component_irq.irq
		.returndata                       (_connected_to_returndata_)                        //   input,  width = 32,                       returndata.data
	);

