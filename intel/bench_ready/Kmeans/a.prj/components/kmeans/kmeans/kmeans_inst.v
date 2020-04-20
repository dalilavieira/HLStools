	kmeans u0 (
		.clock        (_connected_to_clock_),        //   input,   width = 1,        clock.clk
		.resetn       (_connected_to_resetn_),       //   input,   width = 1,        reset.reset_n
		.start        (_connected_to_start_),        //   input,   width = 1,         call.valid
		.busy         (_connected_to_busy_),         //  output,   width = 1,             .stall
		.done         (_connected_to_done_),         //  output,   width = 1,       return.valid
		.stall        (_connected_to_stall_),        //   input,   width = 1,             .stall
		.returndata   (_connected_to_returndata_),   //  output,  width = 32,   returndata.data
		.idx          (_connected_to_idx_),          //   input,  width = 32,          idx.data
		.num_clusters (_connected_to_num_clusters_), //   input,  width = 32, num_clusters.data
		.num_dim      (_connected_to_num_dim_)       //   input,  width = 32,      num_dim.data
	);

