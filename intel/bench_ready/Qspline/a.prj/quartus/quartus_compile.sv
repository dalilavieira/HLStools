module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] qspline_start
	, output logic [0:0] qspline_busy
	, output logic [0:0] qspline_done
	, input logic [0:0] qspline_stall
	, output logic [31:0] qspline_returndata
	, input logic [31:0] qspline_idx
	);

	logic [0:0] qspline_start_reg;
	logic [0:0] qspline_busy_reg;
	logic [0:0] qspline_done_reg;
	logic [0:0] qspline_stall_reg;
	logic [31:0] qspline_returndata_reg;
	logic [31:0] qspline_idx_reg;


	always @(posedge clock) begin
		qspline_start_reg <= qspline_start;
		qspline_busy <= qspline_busy_reg;
		qspline_done <= qspline_done_reg;
		qspline_stall_reg <= qspline_stall;
		qspline_returndata <= qspline_returndata_reg;
		qspline_idx_reg <= qspline_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	qspline qspline_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(qspline_start_reg)
		, .busy(qspline_busy_reg)
		, .done(qspline_done_reg)
		, .stall(qspline_stall_reg)
		, .returndata(qspline_returndata_reg)
		, .idx(qspline_idx_reg)
	);



endmodule
