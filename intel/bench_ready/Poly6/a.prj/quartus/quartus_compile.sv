module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] poly6_start
	, output logic [0:0] poly6_busy
	, output logic [0:0] poly6_done
	, input logic [0:0] poly6_stall
	, output logic [31:0] poly6_returndata
	, input logic [31:0] poly6_idx
	);

	logic [0:0] poly6_start_reg;
	logic [0:0] poly6_busy_reg;
	logic [0:0] poly6_done_reg;
	logic [0:0] poly6_stall_reg;
	logic [31:0] poly6_returndata_reg;
	logic [31:0] poly6_idx_reg;


	always @(posedge clock) begin
		poly6_start_reg <= poly6_start;
		poly6_busy <= poly6_busy_reg;
		poly6_done <= poly6_done_reg;
		poly6_stall_reg <= poly6_stall;
		poly6_returndata <= poly6_returndata_reg;
		poly6_idx_reg <= poly6_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	poly6 poly6_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(poly6_start_reg)
		, .busy(poly6_busy_reg)
		, .done(poly6_done_reg)
		, .stall(poly6_stall_reg)
		, .returndata(poly6_returndata_reg)
		, .idx(poly6_idx_reg)
	);



endmodule
