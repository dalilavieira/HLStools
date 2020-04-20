module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] poly5_start
	, output logic [0:0] poly5_busy
	, output logic [0:0] poly5_done
	, input logic [0:0] poly5_stall
	, output logic [31:0] poly5_returndata
	, input logic [31:0] poly5_idx
	);

	logic [0:0] poly5_start_reg;
	logic [0:0] poly5_busy_reg;
	logic [0:0] poly5_done_reg;
	logic [0:0] poly5_stall_reg;
	logic [31:0] poly5_returndata_reg;
	logic [31:0] poly5_idx_reg;


	always @(posedge clock) begin
		poly5_start_reg <= poly5_start;
		poly5_busy <= poly5_busy_reg;
		poly5_done <= poly5_done_reg;
		poly5_stall_reg <= poly5_stall;
		poly5_returndata <= poly5_returndata_reg;
		poly5_idx_reg <= poly5_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	poly5 poly5_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(poly5_start_reg)
		, .busy(poly5_busy_reg)
		, .done(poly5_done_reg)
		, .stall(poly5_stall_reg)
		, .returndata(poly5_returndata_reg)
		, .idx(poly5_idx_reg)
	);



endmodule
