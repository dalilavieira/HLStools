module poly8 (
		input  wire        clock,      //      clock.clk
		input  wire        resetn,     //      reset.reset_n
		input  wire        start,      //       call.valid
		output wire        busy,       //           .stall
		output wire        done,       //     return.valid
		input  wire        stall,      //           .stall
		output wire [31:0] returndata, // returndata.data
		input  wire [31:0] idx         //        idx.data
	);
endmodule

