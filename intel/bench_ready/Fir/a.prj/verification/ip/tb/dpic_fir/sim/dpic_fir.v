// dpic_fir.v

// Generated using ACDS version 19.4 64

`timescale 1 ps / 1 ps
module dpic_fir (
		input  wire        clock,                            //                            clock.clk
		input  wire        resetn,                           //                            reset.reset_n
		input  wire        clock2x,                          //                          clock2x.clk
		output wire        bind_interfaces,                  //                 dpi_control_bind.conduit
		output wire        enable_interfaces,                //               dpi_control_enable.conduit
		input  wire        component_enabled,                //                component_enabled.conduit
		output wire        component_done,                   //                   component_done.conduit
		output wire        component_wait_for_stream_writes, // component_wait_for_stream_writes.conduit
		input  wire        slave_busy,                       //                       slave_busy.conduit
		output wire        read_implicit_streams,            //            read_implicit_streams.conduit
		output wire        readback_from_slaves,             //             readback_from_slaves.conduit
		output wire        start,                            //                   component_call.valid
		input  wire        busy,                             //                                 .stall
		input  wire        done,                             //                 component_return.valid
		output wire        stall,                            //                                 .stall
		input  wire        done_irq,                         //                    component_irq.irq
		input  wire [31:0] returndata                        //                       returndata.data
	);

	hls_sim_component_dpi_controller #(
		.COMPONENT_NAME               ("fir"),
		.COMPONENT_MANGLED_NAME       ("_Z3firii"),
		.RETURN_DATAWIDTH             (32),
		.COMPONENT_NUM_SLAVES         (0),
		.COMPONENT_HAS_SLAVE_RETURN   (0),
		.COMPONENT_NUM_OUTPUT_STREAMS (0)
	) dpic_fir (
		.clock                            (clock),                            //   input,   width = 1,                            clock.clk
		.resetn                           (resetn),                           //   input,   width = 1,                            reset.reset_n
		.clock2x                          (clock2x),                          //   input,   width = 1,                          clock2x.clk
		.bind_interfaces                  (bind_interfaces),                  //  output,   width = 1,                 dpi_control_bind.conduit
		.enable_interfaces                (enable_interfaces),                //  output,   width = 1,               dpi_control_enable.conduit
		.component_enabled                (component_enabled),                //   input,   width = 1,                component_enabled.conduit
		.component_done                   (component_done),                   //  output,   width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (component_wait_for_stream_writes), //  output,   width = 1, component_wait_for_stream_writes.conduit
		.slave_busy                       (slave_busy),                       //   input,   width = 1,                       slave_busy.conduit
		.read_implicit_streams            (read_implicit_streams),            //  output,   width = 1,            read_implicit_streams.conduit
		.readback_from_slaves             (readback_from_slaves),             //  output,   width = 1,             readback_from_slaves.conduit
		.start                            (start),                            //  output,   width = 1,                   component_call.valid
		.busy                             (busy),                             //   input,   width = 1,                                 .stall
		.done                             (done),                             //   input,   width = 1,                 component_return.valid
		.stall                            (stall),                            //  output,   width = 1,                                 .stall
		.done_irq                         (done_irq),                         //   input,   width = 1,                    component_irq.irq
		.returndata                       (returndata)                        //   input,  width = 32,                       returndata.data
	);

endmodule
