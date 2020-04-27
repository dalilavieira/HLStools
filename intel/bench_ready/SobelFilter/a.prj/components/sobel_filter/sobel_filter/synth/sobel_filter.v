// sobel_filter.v

// Generated using ACDS version 19.4 64

`timescale 1 ps / 1 ps
module sobel_filter (
		input  wire        clock,      //      clock.clk
		input  wire        resetn,     //      reset.reset_n
		input  wire        clock2x,    //    clock2x.clk
		input  wire        start,      //       call.valid
		output wire        busy,       //           .stall
		output wire        done,       //     return.valid
		input  wire        stall,      //           .stall
		output wire [31:0] returndata, // returndata.data
		input  wire [31:0] idx         //        idx.data
	);

	sobel_filter_internal sobel_filter_internal_inst (
		.clock      (clock),      //   input,   width = 1,      clock.clk
		.resetn     (resetn),     //   input,   width = 1,      reset.reset_n
		.clock2x    (clock2x),    //   input,   width = 1,    clock2x.clk
		.start      (start),      //   input,   width = 1,       call.valid
		.busy       (busy),       //  output,   width = 1,           .stall
		.done       (done),       //  output,   width = 1,     return.valid
		.stall      (stall),      //   input,   width = 1,           .stall
		.returndata (returndata), //  output,  width = 32, returndata.data
		.idx        (idx)         //   input,  width = 32,        idx.data
	);

endmodule
