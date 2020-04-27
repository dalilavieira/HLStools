// poly5_ir_cfan.v

// Generated using ACDS version 19.4 64

`timescale 1 ps / 1 ps
module poly5_ir_cfan (
		input  wire  in_conduit,    //    in_conduit.conduit
		output wire  out_conduit_0  // out_conduit_0.conduit
	);

	poly5_ir_cfan_avalon_conduit_fanout_10_kjtx3wq poly5_ir_cfan (
		.in_conduit    (in_conduit),    //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (out_conduit_0)  //  output,  width = 1, out_conduit_0.conduit
	);

endmodule
