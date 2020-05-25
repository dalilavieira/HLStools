	claswp u0 (
		.clock                (_connected_to_clock_),                //   input,   width = 1,      clock.clk
		.resetn               (_connected_to_resetn_),               //   input,   width = 1,      reset.reset_n
		.start                (_connected_to_start_),                //   input,   width = 1,       call.valid
		.busy                 (_connected_to_busy_),                 //  output,   width = 1,           .stall
		.done                 (_connected_to_done_),                 //  output,   width = 1,     return.valid
		.stall                (_connected_to_stall_),                //   input,   width = 1,           .stall
		.returndata           (_connected_to_returndata_),           //  output,  width = 32, returndata.data
		.n                    (_connected_to_n_),                    //   input,  width = 64,          n.data
		.a                    (_connected_to_a_),                    //   input,  width = 64,          a.data
		.lda                  (_connected_to_lda_),                  //   input,  width = 64,        lda.data
		.k1                   (_connected_to_k1_),                   //   input,  width = 64,         k1.data
		.k2                   (_connected_to_k2_),                   //   input,  width = 64,         k2.data
		.ipiv                 (_connected_to_ipiv_),                 //   input,  width = 64,       ipiv.data
		.incx                 (_connected_to_incx_),                 //   input,  width = 64,       incx.data
		.avmm_0_rw_address    (_connected_to_avmm_0_rw_address_),    //  output,  width = 64,  avmm_0_rw.address
		.avmm_0_rw_byteenable (_connected_to_avmm_0_rw_byteenable_), //  output,   width = 8,           .byteenable
		.avmm_0_rw_read       (_connected_to_avmm_0_rw_read_),       //  output,   width = 1,           .read
		.avmm_0_rw_readdata   (_connected_to_avmm_0_rw_readdata_),   //   input,  width = 64,           .readdata
		.avmm_0_rw_write      (_connected_to_avmm_0_rw_write_),      //  output,   width = 1,           .write
		.avmm_0_rw_writedata  (_connected_to_avmm_0_rw_writedata_)   //  output,  width = 64,           .writedata
	);

