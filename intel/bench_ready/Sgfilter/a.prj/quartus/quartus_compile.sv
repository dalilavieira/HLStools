module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] sgfilter_start
	, output logic [0:0] sgfilter_busy
	, output logic [0:0] sgfilter_done
	, input logic [0:0] sgfilter_stall
	, output logic [31:0] sgfilter_returndata
	, input logic [31:0] sgfilter_idx
	);

	logic [0:0] sgfilter_start_reg;
	logic [0:0] sgfilter_busy_reg;
	logic [0:0] sgfilter_done_reg;
	logic [0:0] sgfilter_stall_reg;
	logic [31:0] sgfilter_returndata_reg;
	logic [31:0] sgfilter_idx_reg;


	always @(posedge clock) begin
		sgfilter_start_reg <= sgfilter_start;
		sgfilter_busy <= sgfilter_busy_reg;
		sgfilter_done <= sgfilter_done_reg;
		sgfilter_stall_reg <= sgfilter_stall;
		sgfilter_returndata <= sgfilter_returndata_reg;
		sgfilter_idx_reg <= sgfilter_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	sgfilter sgfilter_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(sgfilter_start_reg)
		, .busy(sgfilter_busy_reg)
		, .done(sgfilter_done_reg)
		, .stall(sgfilter_stall_reg)
		, .returndata(sgfilter_returndata_reg)
		, .idx(sgfilter_idx_reg)
	);



endmodule
