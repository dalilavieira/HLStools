module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] foo_start
	, output logic [0:0] foo_busy
	, output logic [0:0] foo_done
	, input logic [0:0] foo_stall
	, output logic [31:0] foo_returndata
	, input logic [31:0] foo_t
	);

	logic [0:0] foo_start_reg;
	logic [0:0] foo_busy_reg;
	logic [0:0] foo_done_reg;
	logic [0:0] foo_stall_reg;
	logic [31:0] foo_returndata_reg;
	logic [31:0] foo_t_reg;


	always @(posedge clock) begin
		foo_start_reg <= foo_start;
		foo_busy <= foo_busy_reg;
		foo_done <= foo_done_reg;
		foo_stall_reg <= foo_stall;
		foo_returndata <= foo_returndata_reg;
		foo_t_reg <= foo_t;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	foo foo_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(foo_start_reg)
		, .busy(foo_busy_reg)
		, .done(foo_done_reg)
		, .stall(foo_stall_reg)
		, .returndata(foo_returndata_reg)
		, .t(foo_t_reg)
	);



endmodule
