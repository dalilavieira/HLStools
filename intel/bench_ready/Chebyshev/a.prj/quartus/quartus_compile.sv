module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] chebyshev_start
	, output logic [0:0] chebyshev_busy
	, output logic [0:0] chebyshev_done
	, input logic [0:0] chebyshev_stall
	, output logic [31:0] chebyshev_returndata
	, input logic [31:0] chebyshev_idx
	);

	logic [0:0] chebyshev_start_reg;
	logic [0:0] chebyshev_busy_reg;
	logic [0:0] chebyshev_done_reg;
	logic [0:0] chebyshev_stall_reg;
	logic [31:0] chebyshev_returndata_reg;
	logic [31:0] chebyshev_idx_reg;


	always @(posedge clock) begin
		chebyshev_start_reg <= chebyshev_start;
		chebyshev_busy <= chebyshev_busy_reg;
		chebyshev_done <= chebyshev_done_reg;
		chebyshev_stall_reg <= chebyshev_stall;
		chebyshev_returndata <= chebyshev_returndata_reg;
		chebyshev_idx_reg <= chebyshev_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	chebyshev chebyshev_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(chebyshev_start_reg)
		, .busy(chebyshev_busy_reg)
		, .done(chebyshev_done_reg)
		, .stall(chebyshev_stall_reg)
		, .returndata(chebyshev_returndata_reg)
		, .idx(chebyshev_idx_reg)
	);



endmodule
