module c2c_decode_stats (
		input  wire        clock,                //                clock.clk
		input  wire        resetn,               //                reset.reset_n
		input  wire        start,                //                 call.valid
		output wire        busy,                 //                     .stall
		output wire        done,                 //               return.valid
		input  wire        stall,                //                     .stall
		output wire [31:0] returndata,           //           returndata.data
		input  wire [63:0] stats,                //                stats.data
		input  wire [63:0] mi,                   //                   mi.data
		input  wire [63:0] PERF_MEM_LOCK_LOCKED, // PERF_MEM_LOCK_LOCKED.data
		input  wire [63:0] PERF_MEM_LVL_HIT,     //     PERF_MEM_LVL_HIT.data
		input  wire [63:0] PERF_MEM_LVL_IO,      //      PERF_MEM_LVL_IO.data
		input  wire [63:0] PERF_MEM_LVL_L1,      //      PERF_MEM_LVL_L1.data
		input  wire [63:0] PERF_MEM_LVL_L2,      //      PERF_MEM_LVL_L2.data
		input  wire [63:0] PERF_MEM_LVL_L3,      //      PERF_MEM_LVL_L3.data
		input  wire [63:0] PERF_MEM_LVL_LFB,     //     PERF_MEM_LVL_LFB.data
		input  wire [63:0] PERF_MEM_LVL_LOC_RAM, // PERF_MEM_LVL_LOC_RAM.data
		input  wire [63:0] PERF_MEM_LVL_MISS,    //    PERF_MEM_LVL_MISS.data
		input  wire [63:0] PERF_MEM_LVL_UNC,     //     PERF_MEM_LVL_UNC.data
		input  wire [63:0] PERF_MEM_OP_LOAD,     //     PERF_MEM_OP_LOAD.data
		input  wire [63:0] PERF_MEM_OP_STORE,    //    PERF_MEM_OP_STORE.data
		input  wire [63:0] PERF_MEM_SNOOP_HIT,   //   PERF_MEM_SNOOP_HIT.data
		input  wire [63:0] PERF_MEM_SNOOP_HITM,  //  PERF_MEM_SNOOP_HITM.data
		output wire [63:0] avmm_0_rw_address,    //            avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable, //                     .byteenable
		output wire        avmm_0_rw_read,       //                     .read
		input  wire [63:0] avmm_0_rw_readdata,   //                     .readdata
		output wire        avmm_0_rw_write,      //                     .write
		output wire [63:0] avmm_0_rw_writedata   //                     .writedata
	);
endmodule

