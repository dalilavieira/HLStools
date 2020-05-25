	c2c_decode_stats u0 (
		.clock                (_connected_to_clock_),                //   input,   width = 1,                clock.clk
		.resetn               (_connected_to_resetn_),               //   input,   width = 1,                reset.reset_n
		.start                (_connected_to_start_),                //   input,   width = 1,                 call.valid
		.busy                 (_connected_to_busy_),                 //  output,   width = 1,                     .stall
		.done                 (_connected_to_done_),                 //  output,   width = 1,               return.valid
		.stall                (_connected_to_stall_),                //   input,   width = 1,                     .stall
		.returndata           (_connected_to_returndata_),           //  output,  width = 32,           returndata.data
		.stats                (_connected_to_stats_),                //   input,  width = 64,                stats.data
		.mi                   (_connected_to_mi_),                   //   input,  width = 64,                   mi.data
		.PERF_MEM_LOCK_LOCKED (_connected_to_PERF_MEM_LOCK_LOCKED_), //   input,  width = 64, PERF_MEM_LOCK_LOCKED.data
		.PERF_MEM_LVL_HIT     (_connected_to_PERF_MEM_LVL_HIT_),     //   input,  width = 64,     PERF_MEM_LVL_HIT.data
		.PERF_MEM_LVL_IO      (_connected_to_PERF_MEM_LVL_IO_),      //   input,  width = 64,      PERF_MEM_LVL_IO.data
		.PERF_MEM_LVL_L1      (_connected_to_PERF_MEM_LVL_L1_),      //   input,  width = 64,      PERF_MEM_LVL_L1.data
		.PERF_MEM_LVL_L2      (_connected_to_PERF_MEM_LVL_L2_),      //   input,  width = 64,      PERF_MEM_LVL_L2.data
		.PERF_MEM_LVL_L3      (_connected_to_PERF_MEM_LVL_L3_),      //   input,  width = 64,      PERF_MEM_LVL_L3.data
		.PERF_MEM_LVL_LFB     (_connected_to_PERF_MEM_LVL_LFB_),     //   input,  width = 64,     PERF_MEM_LVL_LFB.data
		.PERF_MEM_LVL_LOC_RAM (_connected_to_PERF_MEM_LVL_LOC_RAM_), //   input,  width = 64, PERF_MEM_LVL_LOC_RAM.data
		.PERF_MEM_LVL_MISS    (_connected_to_PERF_MEM_LVL_MISS_),    //   input,  width = 64,    PERF_MEM_LVL_MISS.data
		.PERF_MEM_LVL_UNC     (_connected_to_PERF_MEM_LVL_UNC_),     //   input,  width = 64,     PERF_MEM_LVL_UNC.data
		.PERF_MEM_OP_LOAD     (_connected_to_PERF_MEM_OP_LOAD_),     //   input,  width = 64,     PERF_MEM_OP_LOAD.data
		.PERF_MEM_OP_STORE    (_connected_to_PERF_MEM_OP_STORE_),    //   input,  width = 64,    PERF_MEM_OP_STORE.data
		.PERF_MEM_SNOOP_HIT   (_connected_to_PERF_MEM_SNOOP_HIT_),   //   input,  width = 64,   PERF_MEM_SNOOP_HIT.data
		.PERF_MEM_SNOOP_HITM  (_connected_to_PERF_MEM_SNOOP_HITM_),  //   input,  width = 64,  PERF_MEM_SNOOP_HITM.data
		.avmm_0_rw_address    (_connected_to_avmm_0_rw_address_),    //  output,  width = 64,            avmm_0_rw.address
		.avmm_0_rw_byteenable (_connected_to_avmm_0_rw_byteenable_), //  output,   width = 8,                     .byteenable
		.avmm_0_rw_read       (_connected_to_avmm_0_rw_read_),       //  output,   width = 1,                     .read
		.avmm_0_rw_readdata   (_connected_to_avmm_0_rw_readdata_),   //   input,  width = 64,                     .readdata
		.avmm_0_rw_write      (_connected_to_avmm_0_rw_write_),      //  output,   width = 1,                     .write
		.avmm_0_rw_writedata  (_connected_to_avmm_0_rw_writedata_)   //  output,  width = 64,                     .writedata
	);

