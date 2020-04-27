module main_dpi_controller (
		input  wire       clock,                            //                            clock.clk
		input  wire       resetn,                           //                            reset.reset_n
		input  wire       clock2x,                          //                          clock2x.clk
		output wire [0:0] component_enabled,                //                component_enabled.conduit
		input  wire [0:0] component_done,                   //                   component_done.conduit
		input  wire [0:0] component_wait_for_stream_writes, // component_wait_for_stream_writes.conduit
		output wire       trigger_reset                     //                       reset_ctrl.conduit
	);
endmodule

