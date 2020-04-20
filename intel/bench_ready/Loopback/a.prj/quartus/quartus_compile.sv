module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] loopback_start
	, output logic [0:0] loopback_busy
	, output logic [0:0] loopback_done
	, input logic [0:0] loopback_stall
	, output logic [31:0] loopback_returndata
	, input logic [31:0] loopback_idx
	);

	logic [0:0] loopback_start_reg;
	logic [0:0] loopback_busy_reg;
	logic [0:0] loopback_done_reg;
	logic [0:0] loopback_stall_reg;
	logic [31:0] loopback_returndata_reg;
	logic [31:0] loopback_idx_reg;


	always @(posedge clock) begin
		loopback_start_reg <= loopback_start;
		loopback_busy <= loopback_busy_reg;
		loopback_done <= loopback_done_reg;
		loopback_stall_reg <= loopback_stall;
		loopback_returndata <= loopback_returndata_reg;
		loopback_idx_reg <= loopback_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	loopback loopback_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(loopback_start_reg)
		, .busy(loopback_busy_reg)
		, .done(loopback_done_reg)
		, .stall(loopback_stall_reg)
		, .returndata(loopback_returndata_reg)
		, .idx(loopback_idx_reg)
	);



endmodule
