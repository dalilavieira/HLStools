module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] c2c_decode_stats_start
	, output logic [0:0] c2c_decode_stats_busy
	, output logic [0:0] c2c_decode_stats_done
	, input logic [0:0] c2c_decode_stats_stall
	, output logic [31:0] c2c_decode_stats_returndata
	, input logic [63:0] c2c_decode_stats_stats
	, input logic [63:0] c2c_decode_stats_mi
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LOCK_LOCKED
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_HIT
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_IO
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_L1
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_L2
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_L3
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_LFB
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_LOC_RAM
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_MISS
	, input logic [63:0] c2c_decode_stats_PERF_MEM_LVL_UNC
	, input logic [63:0] c2c_decode_stats_PERF_MEM_OP_LOAD
	, input logic [63:0] c2c_decode_stats_PERF_MEM_OP_STORE
	, input logic [63:0] c2c_decode_stats_PERF_MEM_SNOOP_HIT
	, input logic [63:0] c2c_decode_stats_PERF_MEM_SNOOP_HITM
	, output logic [63:0] c2c_decode_stats_avmm_0_rw_address
	, output logic [7:0] c2c_decode_stats_avmm_0_rw_byteenable
	, output logic [0:0] c2c_decode_stats_avmm_0_rw_read
	, input logic [63:0] c2c_decode_stats_avmm_0_rw_readdata
	, output logic [0:0] c2c_decode_stats_avmm_0_rw_write
	, output logic [63:0] c2c_decode_stats_avmm_0_rw_writedata
	);

	logic [0:0] c2c_decode_stats_start_reg;
	logic [0:0] c2c_decode_stats_busy_reg;
	logic [0:0] c2c_decode_stats_done_reg;
	logic [0:0] c2c_decode_stats_stall_reg;
	logic [31:0] c2c_decode_stats_returndata_reg;
	logic [63:0] c2c_decode_stats_stats_reg;
	logic [63:0] c2c_decode_stats_mi_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LOCK_LOCKED_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_HIT_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_IO_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_L1_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_L2_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_L3_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_LFB_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_LOC_RAM_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_MISS_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_LVL_UNC_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_OP_LOAD_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_OP_STORE_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_SNOOP_HIT_reg;
	logic [63:0] c2c_decode_stats_PERF_MEM_SNOOP_HITM_reg;
	logic [63:0] c2c_decode_stats_avmm_0_rw_address_reg;
	logic [7:0] c2c_decode_stats_avmm_0_rw_byteenable_reg;
	logic [0:0] c2c_decode_stats_avmm_0_rw_read_reg;
	logic [63:0] c2c_decode_stats_avmm_0_rw_readdata_reg;
	logic [0:0] c2c_decode_stats_avmm_0_rw_write_reg;
	logic [63:0] c2c_decode_stats_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		c2c_decode_stats_start_reg <= c2c_decode_stats_start;
		c2c_decode_stats_busy <= c2c_decode_stats_busy_reg;
		c2c_decode_stats_done <= c2c_decode_stats_done_reg;
		c2c_decode_stats_stall_reg <= c2c_decode_stats_stall;
		c2c_decode_stats_returndata <= c2c_decode_stats_returndata_reg;
		c2c_decode_stats_stats_reg <= c2c_decode_stats_stats;
		c2c_decode_stats_mi_reg <= c2c_decode_stats_mi;
		c2c_decode_stats_PERF_MEM_LOCK_LOCKED_reg <= c2c_decode_stats_PERF_MEM_LOCK_LOCKED;
		c2c_decode_stats_PERF_MEM_LVL_HIT_reg <= c2c_decode_stats_PERF_MEM_LVL_HIT;
		c2c_decode_stats_PERF_MEM_LVL_IO_reg <= c2c_decode_stats_PERF_MEM_LVL_IO;
		c2c_decode_stats_PERF_MEM_LVL_L1_reg <= c2c_decode_stats_PERF_MEM_LVL_L1;
		c2c_decode_stats_PERF_MEM_LVL_L2_reg <= c2c_decode_stats_PERF_MEM_LVL_L2;
		c2c_decode_stats_PERF_MEM_LVL_L3_reg <= c2c_decode_stats_PERF_MEM_LVL_L3;
		c2c_decode_stats_PERF_MEM_LVL_LFB_reg <= c2c_decode_stats_PERF_MEM_LVL_LFB;
		c2c_decode_stats_PERF_MEM_LVL_LOC_RAM_reg <= c2c_decode_stats_PERF_MEM_LVL_LOC_RAM;
		c2c_decode_stats_PERF_MEM_LVL_MISS_reg <= c2c_decode_stats_PERF_MEM_LVL_MISS;
		c2c_decode_stats_PERF_MEM_LVL_UNC_reg <= c2c_decode_stats_PERF_MEM_LVL_UNC;
		c2c_decode_stats_PERF_MEM_OP_LOAD_reg <= c2c_decode_stats_PERF_MEM_OP_LOAD;
		c2c_decode_stats_PERF_MEM_OP_STORE_reg <= c2c_decode_stats_PERF_MEM_OP_STORE;
		c2c_decode_stats_PERF_MEM_SNOOP_HIT_reg <= c2c_decode_stats_PERF_MEM_SNOOP_HIT;
		c2c_decode_stats_PERF_MEM_SNOOP_HITM_reg <= c2c_decode_stats_PERF_MEM_SNOOP_HITM;
		c2c_decode_stats_avmm_0_rw_address <= c2c_decode_stats_avmm_0_rw_address_reg;
		c2c_decode_stats_avmm_0_rw_byteenable <= c2c_decode_stats_avmm_0_rw_byteenable_reg;
		c2c_decode_stats_avmm_0_rw_read <= c2c_decode_stats_avmm_0_rw_read_reg;
		c2c_decode_stats_avmm_0_rw_readdata_reg <= c2c_decode_stats_avmm_0_rw_readdata;
		c2c_decode_stats_avmm_0_rw_write <= c2c_decode_stats_avmm_0_rw_write_reg;
		c2c_decode_stats_avmm_0_rw_writedata <= c2c_decode_stats_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	c2c_decode_stats c2c_decode_stats_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(c2c_decode_stats_start_reg)
		, .busy(c2c_decode_stats_busy_reg)
		, .done(c2c_decode_stats_done_reg)
		, .stall(c2c_decode_stats_stall_reg)
		, .returndata(c2c_decode_stats_returndata_reg)
		, .stats(c2c_decode_stats_stats_reg)
		, .mi(c2c_decode_stats_mi_reg)
		, .PERF_MEM_LOCK_LOCKED(c2c_decode_stats_PERF_MEM_LOCK_LOCKED_reg)
		, .PERF_MEM_LVL_HIT(c2c_decode_stats_PERF_MEM_LVL_HIT_reg)
		, .PERF_MEM_LVL_IO(c2c_decode_stats_PERF_MEM_LVL_IO_reg)
		, .PERF_MEM_LVL_L1(c2c_decode_stats_PERF_MEM_LVL_L1_reg)
		, .PERF_MEM_LVL_L2(c2c_decode_stats_PERF_MEM_LVL_L2_reg)
		, .PERF_MEM_LVL_L3(c2c_decode_stats_PERF_MEM_LVL_L3_reg)
		, .PERF_MEM_LVL_LFB(c2c_decode_stats_PERF_MEM_LVL_LFB_reg)
		, .PERF_MEM_LVL_LOC_RAM(c2c_decode_stats_PERF_MEM_LVL_LOC_RAM_reg)
		, .PERF_MEM_LVL_MISS(c2c_decode_stats_PERF_MEM_LVL_MISS_reg)
		, .PERF_MEM_LVL_UNC(c2c_decode_stats_PERF_MEM_LVL_UNC_reg)
		, .PERF_MEM_OP_LOAD(c2c_decode_stats_PERF_MEM_OP_LOAD_reg)
		, .PERF_MEM_OP_STORE(c2c_decode_stats_PERF_MEM_OP_STORE_reg)
		, .PERF_MEM_SNOOP_HIT(c2c_decode_stats_PERF_MEM_SNOOP_HIT_reg)
		, .PERF_MEM_SNOOP_HITM(c2c_decode_stats_PERF_MEM_SNOOP_HITM_reg)
		, .avmm_0_rw_address(c2c_decode_stats_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(c2c_decode_stats_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(c2c_decode_stats_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(c2c_decode_stats_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(c2c_decode_stats_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(c2c_decode_stats_avmm_0_rw_writedata_reg)
	);



endmodule
