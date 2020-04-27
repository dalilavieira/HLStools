	clock_reset #(
		.RESET_CYCLE_HOLD (INTEGER_VALUE_FOR_RESET_CYCLE_HOLD)
	) u0 (
		.clock         (_connected_to_clock_),         //  output,  width = 1,      clock.clk
		.resetn        (_connected_to_resetn_),        //  output,  width = 1,      reset.reset_n
		.clock2x       (_connected_to_clock2x_),       //  output,  width = 1,    clock2x.clk
		.trigger_reset (_connected_to_trigger_reset_)  //   input,  width = 1, reset_ctrl.conduit
	);

