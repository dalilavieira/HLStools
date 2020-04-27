module dpic_kmeans (
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
endmodule

