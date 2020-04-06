module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] euler_start
	, output logic [0:0] euler_busy
	, output logic [0:0] euler_done
	, input logic [0:0] euler_stall
	, output logic [63:0] euler_returndata
	, input logic [31:0] euler_n
	);

	logic [0:0] euler_start_reg;
	logic [0:0] euler_busy_reg;
	logic [0:0] euler_done_reg;
	logic [0:0] euler_stall_reg;
	logic [63:0] euler_returndata_reg;
	logic [31:0] euler_n_reg;


	always @(posedge clock) begin
		euler_start_reg <= euler_start;
		euler_busy <= euler_busy_reg;
		euler_done <= euler_done_reg;
		euler_stall_reg <= euler_stall;
		euler_returndata <= euler_returndata_reg;
		euler_n_reg <= euler_n;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	euler euler_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(euler_start_reg)
		, .busy(euler_busy_reg)
		, .done(euler_done_reg)
		, .stall(euler_stall_reg)
		, .returndata(euler_returndata_reg)
		, .n(euler_n_reg)
	);



endmodule
