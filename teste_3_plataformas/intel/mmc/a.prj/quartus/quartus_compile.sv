module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] mmc_start
	, output logic [0:0] mmc_busy
	, output logic [0:0] mmc_done
	, input logic [0:0] mmc_stall
	, output logic [31:0] mmc_returndata
	, input logic [31:0] mmc_a
	, input logic [31:0] mmc_b
	);

	logic [0:0] mmc_start_reg;
	logic [0:0] mmc_busy_reg;
	logic [0:0] mmc_done_reg;
	logic [0:0] mmc_stall_reg;
	logic [31:0] mmc_returndata_reg;
	logic [31:0] mmc_a_reg;
	logic [31:0] mmc_b_reg;


	always @(posedge clock) begin
		mmc_start_reg <= mmc_start;
		mmc_busy <= mmc_busy_reg;
		mmc_done <= mmc_done_reg;
		mmc_stall_reg <= mmc_stall;
		mmc_returndata <= mmc_returndata_reg;
		mmc_a_reg <= mmc_a;
		mmc_b_reg <= mmc_b;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	mmc mmc_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(mmc_start_reg)
		, .busy(mmc_busy_reg)
		, .done(mmc_done_reg)
		, .stall(mmc_stall_reg)
		, .returndata(mmc_returndata_reg)
		, .a(mmc_a_reg)
		, .b(mmc_b_reg)
	);



endmodule
