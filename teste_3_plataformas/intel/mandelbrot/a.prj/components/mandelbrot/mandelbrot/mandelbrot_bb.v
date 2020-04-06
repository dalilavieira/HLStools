module mandelbrot (
		input  wire        clock,   //   clock.clk
		input  wire        resetn,  //   reset.reset_n
		input  wire        start,   //    call.valid
		output wire        busy,    //        .stall
		output wire        done,    //  return.valid
		input  wire        stall,   //        .stall
		input  wire [31:0] xmax,    //    xmax.data
		input  wire [31:0] xmin,    //    xmin.data
		input  wire [31:0] ymax,    //    ymax.data
		input  wire [31:0] ymin,    //    ymin.data
		input  wire [31:0] maxiter, // maxiter.data
		input  wire [31:0] xres,    //    xres.data
		input  wire [31:0] yres,    //    yres.data
		input  wire [31:0] dx,      //      dx.data
		input  wire [31:0] dy       //      dy.data
	);
endmodule

