	sso_kmeans_idx #(
		.COMPONENT_NAME                  (STRING_VALUE_FOR_COMPONENT_NAME),
		.INTERFACE_NAME                  (STRING_VALUE_FOR_INTERFACE_NAME),
		.STREAM_DATAWIDTH                (INTEGER_VALUE_FOR_STREAM_DATAWIDTH),
		.STREAM_BITSPERSYMBOL            (INTEGER_VALUE_FOR_STREAM_BITSPERSYMBOL),
		.EMPTY_WIDTH                     (INTEGER_VALUE_FOR_EMPTY_WIDTH),
		.FIRST_SYMBOL_IN_HIGH_ORDER_BITS (INTEGER_VALUE_FOR_FIRST_SYMBOL_IN_HIGH_ORDER_BITS)
	) u0 (
		.clock        (_connected_to_clock_),        //   input,   width = 1,              clock.clk
		.resetn       (_connected_to_resetn_),       //   input,   width = 1,              reset.reset_n
		.clock2x      (_connected_to_clock2x_),      //   input,   width = 1,            clock2x.clk
		.do_bind      (_connected_to_do_bind_),      //   input,   width = 1,   dpi_control_bind.conduit
		.enable       (_connected_to_enable_),       //   input,   width = 1, dpi_control_enable.conduit
		.source_data  (_connected_to_source_data_),  //  output,  width = 32,        source_data.data
		.source_ready (_connected_to_source_ready_), //   input,   width = 1,       source_ready.conduit
		.source_valid (_connected_to_source_valid_)  //  output,   width = 1,             source.conduit
	);

