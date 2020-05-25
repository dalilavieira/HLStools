	ff_snow_horizontal_compose97i u0 (
		.clock                (_connected_to_clock_),                //   input,   width = 1,     clock.clk
		.resetn               (_connected_to_resetn_),               //   input,   width = 1,     reset.reset_n
		.start                (_connected_to_start_),                //   input,   width = 1,      call.valid
		.busy                 (_connected_to_busy_),                 //  output,   width = 1,          .stall
		.done                 (_connected_to_done_),                 //  output,   width = 1,    return.valid
		.stall                (_connected_to_stall_),                //   input,   width = 1,          .stall
		.b                    (_connected_to_b_),                    //   input,  width = 64,         b.data
		.temp                 (_connected_to_temp_),                 //   input,  width = 64,      temp.data
		.width                (_connected_to_width_),                //   input,  width = 32,     width.data
		.avmm_0_rw_address    (_connected_to_avmm_0_rw_address_),    //  output,  width = 64, avmm_0_rw.address
		.avmm_0_rw_byteenable (_connected_to_avmm_0_rw_byteenable_), //  output,   width = 8,          .byteenable
		.avmm_0_rw_read       (_connected_to_avmm_0_rw_read_),       //  output,   width = 1,          .read
		.avmm_0_rw_readdata   (_connected_to_avmm_0_rw_readdata_),   //   input,  width = 64,          .readdata
		.avmm_0_rw_write      (_connected_to_avmm_0_rw_write_),      //  output,   width = 1,          .write
		.avmm_0_rw_writedata  (_connected_to_avmm_0_rw_writedata_)   //  output,  width = 64,          .writedata
	);

