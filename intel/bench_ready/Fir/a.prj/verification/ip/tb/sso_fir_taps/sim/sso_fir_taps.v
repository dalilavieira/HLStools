// sso_fir_taps.v

// Generated using ACDS version 19.4 64

`timescale 1 ps / 1 ps
module sso_fir_taps #(
		parameter COMPONENT_NAME                  = "fir",
		parameter INTERFACE_NAME                  = "taps",
		parameter STREAM_DATAWIDTH                = 32,
		parameter STREAM_BITSPERSYMBOL            = 1,
		parameter EMPTY_WIDTH                     = 0,
		parameter FIRST_SYMBOL_IN_HIGH_ORDER_BITS = 0
	) (
		input  wire        clock,        //              clock.clk
		input  wire        resetn,       //              reset.reset_n
		input  wire        clock2x,      //            clock2x.clk
		input  wire        do_bind,      //   dpi_control_bind.conduit
		input  wire        enable,       // dpi_control_enable.conduit
		output wire [31:0] source_data,  //        source_data.data
		input  wire        source_ready, //       source_ready.conduit
		output wire        source_valid  //             source.conduit
	);

	hls_sim_stream_source_dpi_bfm #(
		.COMPONENT_NAME                  (COMPONENT_NAME),
		.INTERFACE_NAME                  (INTERFACE_NAME),
		.STREAM_DATAWIDTH                (STREAM_DATAWIDTH),
		.STREAM_BITSPERSYMBOL            (STREAM_BITSPERSYMBOL),
		.EMPTY_WIDTH                     (EMPTY_WIDTH),
		.FIRST_SYMBOL_IN_HIGH_ORDER_BITS (FIRST_SYMBOL_IN_HIGH_ORDER_BITS)
	) sso_fir_taps (
		.clock        (clock),        //   input,   width = 1,              clock.clk
		.resetn       (resetn),       //   input,   width = 1,              reset.reset_n
		.clock2x      (clock2x),      //   input,   width = 1,            clock2x.clk
		.do_bind      (do_bind),      //   input,   width = 1,   dpi_control_bind.conduit
		.enable       (enable),       //   input,   width = 1, dpi_control_enable.conduit
		.source_data  (source_data),  //  output,  width = 32,        source_data.data
		.source_ready (source_ready), //   input,   width = 1,       source_ready.conduit
		.source_valid (source_valid)  //  output,   width = 1,             source.conduit
	);

endmodule
