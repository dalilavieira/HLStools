	mandelbrot u0 (
		.clock   (_connected_to_clock_),   //   input,   width = 1,   clock.clk
		.resetn  (_connected_to_resetn_),  //   input,   width = 1,   reset.reset_n
		.start   (_connected_to_start_),   //   input,   width = 1,    call.valid
		.busy    (_connected_to_busy_),    //  output,   width = 1,        .stall
		.done    (_connected_to_done_),    //  output,   width = 1,  return.valid
		.stall   (_connected_to_stall_),   //   input,   width = 1,        .stall
		.xmax    (_connected_to_xmax_),    //   input,  width = 32,    xmax.data
		.xmin    (_connected_to_xmin_),    //   input,  width = 32,    xmin.data
		.ymax    (_connected_to_ymax_),    //   input,  width = 32,    ymax.data
		.ymin    (_connected_to_ymin_),    //   input,  width = 32,    ymin.data
		.maxiter (_connected_to_maxiter_), //   input,  width = 32, maxiter.data
		.xres    (_connected_to_xres_),    //   input,  width = 32,    xres.data
		.yres    (_connected_to_yres_),    //   input,  width = 32,    yres.data
		.dx      (_connected_to_dx_),      //   input,  width = 32,      dx.data
		.dy      (_connected_to_dy_)       //   input,  width = 32,      dy.data
	);

