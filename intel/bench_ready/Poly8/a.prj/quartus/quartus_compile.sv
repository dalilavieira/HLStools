module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] poly8_start
	, output logic [0:0] poly8_busy
	, output logic [0:0] poly8_done
	, input logic [0:0] poly8_stall
	, output logic [31:0] poly8_returndata
	, input logic [31:0] poly8_idx
	);

	logic [0:0] poly8_start_reg;
	logic [0:0] poly8_busy_reg;
	logic [0:0] poly8_done_reg;
	logic [0:0] poly8_stall_reg;
	logic [31:0] poly8_returndata_reg;
	logic [31:0] poly8_idx_reg;


	always @(posedge clock) begin
		poly8_start_reg <= poly8_start;
		poly8_busy <= poly8_busy_reg;
		poly8_done <= poly8_done_reg;
		poly8_stall_reg <= poly8_stall;
		poly8_returndata <= poly8_returndata_reg;
		poly8_idx_reg <= poly8_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	poly8 poly8_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(poly8_start_reg)
		, .busy(poly8_busy_reg)
		, .done(poly8_done_reg)
		, .stall(poly8_stall_reg)
		, .returndata(poly8_returndata_reg)
		, .idx(poly8_idx_reg)
	);



endmodule
