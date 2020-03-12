module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] test_start
	, output logic [0:0] test_busy
	, output logic [0:0] test_done
	, input logic [0:0] test_stall
	, output logic [31:0] test_returndata
	);

	logic [0:0] test_start_reg;
	logic [0:0] test_busy_reg;
	logic [0:0] test_done_reg;
	logic [0:0] test_stall_reg;
	logic [31:0] test_returndata_reg;


	always @(posedge clock) begin
		test_start_reg <= test_start;
		test_busy <= test_busy_reg;
		test_done <= test_done_reg;
		test_stall_reg <= test_stall;
		test_returndata <= test_returndata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	test test_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(test_start_reg)
		, .busy(test_busy_reg)
		, .done(test_done_reg)
		, .stall(test_stall_reg)
		, .returndata(test_returndata_reg)
	);



endmodule
