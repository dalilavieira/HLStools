// tb.v

// Generated using ACDS version 19.4 64

`timescale 1 ps / 1 ps
module tb (
	);

	wire         clock_reset_inst_clock_clk;                                                                 // clock_reset_inst:clock -> [component_dpi_controller_loopback_inst:clock, irq_mapper:clk, loopback_inst:clock, main_dpi_controller_inst:clock, stream_source_dpi_bfm_loopback_idx_inst:clock]
	wire         clock_reset_inst_clock2x_clk;                                                               // clock_reset_inst:clock2x -> [component_dpi_controller_loopback_inst:clock2x, main_dpi_controller_inst:clock2x, stream_source_dpi_bfm_loopback_idx_inst:clock2x]
	wire         component_dpi_controller_loopback_inst_component_call_valid;                                // component_dpi_controller_loopback_inst:start -> loopback_inst:start
	wire         loopback_inst_call_stall;                                                                   // loopback_inst:busy -> component_dpi_controller_loopback_inst:busy
	wire         component_dpi_controller_loopback_inst_component_done_conduit;                              // component_dpi_controller_loopback_inst:component_done -> concatenate_component_done_inst:in_conduit_0
	wire   [0:0] main_dpi_controller_inst_component_enabled_conduit;                                         // main_dpi_controller_inst:component_enabled -> split_component_start_inst:in_conduit
	wire         component_dpi_controller_loopback_inst_component_wait_for_stream_writes_conduit;            // component_dpi_controller_loopback_inst:component_wait_for_stream_writes -> concatenate_component_wait_for_stream_writes_inst:in_conduit_0
	wire         component_dpi_controller_loopback_inst_dpi_control_bind_conduit;                            // component_dpi_controller_loopback_inst:bind_interfaces -> loopback_component_dpi_controller_bind_conduit_fanout_inst:in_conduit
	wire         component_dpi_controller_loopback_inst_dpi_control_enable_conduit;                          // component_dpi_controller_loopback_inst:enable_interfaces -> loopback_component_dpi_controller_enable_conduit_fanout_inst:in_conduit
	wire         concatenate_component_done_inst_out_conduit_conduit;                                        // concatenate_component_done_inst:out_conduit -> main_dpi_controller_inst:component_done
	wire         concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit;                      // concatenate_component_wait_for_stream_writes_inst:out_conduit -> main_dpi_controller_inst:component_wait_for_stream_writes
	wire         split_component_start_inst_out_conduit_0_conduit;                                           // split_component_start_inst:out_conduit_0 -> component_dpi_controller_loopback_inst:component_enabled
	wire         loopback_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit;           // loopback_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_loopback_idx_inst:do_bind
	wire         loopback_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit;         // loopback_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_loopback_idx_inst:enable
	wire         loopback_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit; // loopback_component_dpi_controller_implicit_ready_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_loopback_idx_inst:source_ready
	wire         component_dpi_controller_loopback_inst_read_implicit_streams_conduit;                       // component_dpi_controller_loopback_inst:read_implicit_streams -> loopback_component_dpi_controller_implicit_ready_conduit_fanout_inst:in_conduit
	wire         main_dpi_controller_inst_reset_ctrl_conduit;                                                // main_dpi_controller_inst:trigger_reset -> clock_reset_inst:trigger_reset
	wire         loopback_inst_return_valid;                                                                 // loopback_inst:done -> component_dpi_controller_loopback_inst:done
	wire         component_dpi_controller_loopback_inst_component_return_stall;                              // component_dpi_controller_loopback_inst:stall -> loopback_inst:stall
	wire  [31:0] loopback_inst_returndata_data;                                                              // loopback_inst:returndata -> component_dpi_controller_loopback_inst:returndata
	wire  [31:0] stream_source_dpi_bfm_loopback_idx_inst_source_data_data;                                   // stream_source_dpi_bfm_loopback_idx_inst:source_data -> loopback_inst:idx
	wire         clock_reset_inst_reset_reset;                                                               // clock_reset_inst:resetn -> [component_dpi_controller_loopback_inst:resetn, irq_mapper:reset, loopback_inst:resetn, main_dpi_controller_inst:resetn, stream_source_dpi_bfm_loopback_idx_inst:resetn]
	wire         component_dpi_controller_loopback_inst_component_irq_irq;                                   // irq_mapper:sender_irq -> component_dpi_controller_loopback_inst:done_irq

	clock_reset clock_reset_inst (
		.clock         (clock_reset_inst_clock_clk),                  //  output,  width = 1,      clock.clk
		.resetn        (clock_reset_inst_reset_reset),                //  output,  width = 1,      reset.reset_n
		.clock2x       (clock_reset_inst_clock2x_clk),                //  output,  width = 1,    clock2x.clk
		.trigger_reset (main_dpi_controller_inst_reset_ctrl_conduit)  //   input,  width = 1, reset_ctrl.conduit
	);

	dpic_loopback component_dpi_controller_loopback_inst (
		.clock                            (clock_reset_inst_clock_clk),                                                      //   input,   width = 1,                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                                    //   input,   width = 1,                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                                    //   input,   width = 1,                          clock2x.clk
		.bind_interfaces                  (component_dpi_controller_loopback_inst_dpi_control_bind_conduit),                 //  output,   width = 1,                 dpi_control_bind.conduit
		.enable_interfaces                (component_dpi_controller_loopback_inst_dpi_control_enable_conduit),               //  output,   width = 1,               dpi_control_enable.conduit
		.component_enabled                (split_component_start_inst_out_conduit_0_conduit),                                //   input,   width = 1,                component_enabled.conduit
		.component_done                   (component_dpi_controller_loopback_inst_component_done_conduit),                   //  output,   width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (component_dpi_controller_loopback_inst_component_wait_for_stream_writes_conduit), //  output,   width = 1, component_wait_for_stream_writes.conduit
		.slave_busy                       (),                                                                                //   input,   width = 1,                       slave_busy.conduit
		.read_implicit_streams            (component_dpi_controller_loopback_inst_read_implicit_streams_conduit),            //  output,   width = 1,            read_implicit_streams.conduit
		.readback_from_slaves             (),                                                                                //  output,   width = 1,             readback_from_slaves.conduit
		.start                            (component_dpi_controller_loopback_inst_component_call_valid),                     //  output,   width = 1,                   component_call.valid
		.busy                             (loopback_inst_call_stall),                                                        //   input,   width = 1,                                 .stall
		.done                             (loopback_inst_return_valid),                                                      //   input,   width = 1,                 component_return.valid
		.stall                            (component_dpi_controller_loopback_inst_component_return_stall),                   //  output,   width = 1,                                 .stall
		.done_irq                         (component_dpi_controller_loopback_inst_component_irq_irq),                        //   input,   width = 1,                    component_irq.irq
		.returndata                       (loopback_inst_returndata_data)                                                    //   input,  width = 32,                       returndata.data
	);

	cat_done concatenate_component_done_inst (
		.out_conduit  (concatenate_component_done_inst_out_conduit_conduit),           //  output,  width = 1,  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_loopback_inst_component_done_conduit)  //   input,  width = 1, in_conduit_0.conduit
	);

	cat_cwfsw concatenate_component_wait_for_stream_writes_inst (
		.out_conduit  (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit),           //  output,  width = 1,  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_loopback_inst_component_wait_for_stream_writes_conduit)  //   input,  width = 1, in_conduit_0.conduit
	);

	loopback_cfan loopback_component_dpi_controller_bind_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_loopback_inst_dpi_control_bind_conduit),                  //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (loopback_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit)  //  output,  width = 1, out_conduit_0.conduit
	);

	loopback_en_cfan loopback_component_dpi_controller_enable_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_loopback_inst_dpi_control_enable_conduit),                  //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (loopback_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit)  //  output,  width = 1, out_conduit_0.conduit
	);

	loopback_ir_cfan loopback_component_dpi_controller_implicit_ready_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_loopback_inst_read_implicit_streams_conduit),                       //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (loopback_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit)  //  output,  width = 1, out_conduit_0.conduit
	);

	loopback loopback_inst (
		.clock      (clock_reset_inst_clock_clk),                                    //   input,   width = 1,      clock.clk
		.resetn     (clock_reset_inst_reset_reset),                                  //   input,   width = 1,      reset.reset_n
		.start      (component_dpi_controller_loopback_inst_component_call_valid),   //   input,   width = 1,       call.valid
		.busy       (loopback_inst_call_stall),                                      //  output,   width = 1,           .stall
		.done       (loopback_inst_return_valid),                                    //  output,   width = 1,     return.valid
		.stall      (component_dpi_controller_loopback_inst_component_return_stall), //   input,   width = 1,           .stall
		.returndata (loopback_inst_returndata_data),                                 //  output,  width = 32, returndata.data
		.idx        (stream_source_dpi_bfm_loopback_idx_inst_source_data_data)       //   input,  width = 32,        idx.data
	);

	main_dpi_controller main_dpi_controller_inst (
		.clock                            (clock_reset_inst_clock_clk),                                            //   input,  width = 1,                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                          //   input,  width = 1,                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                          //   input,  width = 1,                          clock2x.clk
		.component_enabled                (main_dpi_controller_inst_component_enabled_conduit),                    //  output,  width = 1,                component_enabled.conduit
		.component_done                   (concatenate_component_done_inst_out_conduit_conduit),                   //   input,  width = 1,                   component_done.conduit
		.component_wait_for_stream_writes (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit), //   input,  width = 1, component_wait_for_stream_writes.conduit
		.trigger_reset                    (main_dpi_controller_inst_reset_ctrl_conduit)                            //  output,  width = 1,                       reset_ctrl.conduit
	);

	sp_cstart split_component_start_inst (
		.in_conduit    (main_dpi_controller_inst_component_enabled_conduit), //   input,  width = 1,    in_conduit.conduit
		.out_conduit_0 (split_component_start_inst_out_conduit_0_conduit)    //  output,  width = 1, out_conduit_0.conduit
	);

	sso_loopback_idx stream_source_dpi_bfm_loopback_idx_inst (
		.clock        (clock_reset_inst_clock_clk),                                                                 //   input,   width = 1,              clock.clk
		.resetn       (clock_reset_inst_reset_reset),                                                               //   input,   width = 1,              reset.reset_n
		.clock2x      (clock_reset_inst_clock2x_clk),                                                               //   input,   width = 1,            clock2x.clk
		.do_bind      (loopback_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit),           //   input,   width = 1,   dpi_control_bind.conduit
		.enable       (loopback_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit),         //   input,   width = 1, dpi_control_enable.conduit
		.source_data  (stream_source_dpi_bfm_loopback_idx_inst_source_data_data),                                   //  output,  width = 32,        source_data.data
		.source_ready (loopback_component_dpi_controller_implicit_ready_conduit_fanout_inst_out_conduit_0_conduit), //   input,   width = 1,       source_ready.conduit
		.source_valid ()                                                                                            //  output,   width = 1,             source.conduit
	);

	tb_altera_irq_mapper_191_u6o76qa irq_mapper (
		.clk        (clock_reset_inst_clock_clk),                               //   input,  width = 1,       clk.clk
		.reset      (~clock_reset_inst_reset_reset),                            //   input,  width = 1, clk_reset.reset
		.sender_irq (component_dpi_controller_loopback_inst_component_irq_irq)  //  output,  width = 1,    sender.irq
	);

endmodule
