module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] mibench_start
	, output logic [0:0] mibench_busy
	, output logic [0:0] mibench_done
	, input logic [0:0] mibench_stall
	, output logic [31:0] mibench_returndata
	, input logic [31:0] mibench_idx
	);

	logic [0:0] mibench_start_reg;
	logic [0:0] mibench_busy_reg;
	logic [0:0] mibench_done_reg;
	logic [0:0] mibench_stall_reg;
	logic [31:0] mibench_returndata_reg;
	logic [31:0] mibench_idx_reg;


	always @(posedge clock) begin
		mibench_start_reg <= mibench_start;
		mibench_busy <= mibench_busy_reg;
		mibench_done <= mibench_done_reg;
		mibench_stall_reg <= mibench_stall;
		mibench_returndata <= mibench_returndata_reg;
		mibench_idx_reg <= mibench_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	mibench mibench_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(mibench_start_reg)
		, .busy(mibench_busy_reg)
		, .done(mibench_done_reg)
		, .stall(mibench_stall_reg)
		, .returndata(mibench_returndata_reg)
		, .idx(mibench_idx_reg)
	);



endmodule
