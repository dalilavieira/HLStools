module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] get_hashfunc_02_start
	, output logic [0:0] get_hashfunc_02_busy
	, output logic [0:0] get_hashfunc_02_done
	, input logic [0:0] get_hashfunc_02_stall
	, output logic [31:0] get_hashfunc_02_returndata
	, input logic [31:0] get_hashfunc_02_arg1
	, input logic [31:0] get_hashfunc_02_arg2
	);

	logic [0:0] get_hashfunc_02_start_reg;
	logic [0:0] get_hashfunc_02_busy_reg;
	logic [0:0] get_hashfunc_02_done_reg;
	logic [0:0] get_hashfunc_02_stall_reg;
	logic [31:0] get_hashfunc_02_returndata_reg;
	logic [31:0] get_hashfunc_02_arg1_reg;
	logic [31:0] get_hashfunc_02_arg2_reg;


	always @(posedge clock) begin
		get_hashfunc_02_start_reg <= get_hashfunc_02_start;
		get_hashfunc_02_busy <= get_hashfunc_02_busy_reg;
		get_hashfunc_02_done <= get_hashfunc_02_done_reg;
		get_hashfunc_02_stall_reg <= get_hashfunc_02_stall;
		get_hashfunc_02_returndata <= get_hashfunc_02_returndata_reg;
		get_hashfunc_02_arg1_reg <= get_hashfunc_02_arg1;
		get_hashfunc_02_arg2_reg <= get_hashfunc_02_arg2;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	get_hashfunc_02 get_hashfunc_02_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(get_hashfunc_02_start_reg)
		, .busy(get_hashfunc_02_busy_reg)
		, .done(get_hashfunc_02_done_reg)
		, .stall(get_hashfunc_02_stall_reg)
		, .returndata(get_hashfunc_02_returndata_reg)
		, .arg1(get_hashfunc_02_arg1_reg)
		, .arg2(get_hashfunc_02_arg2_reg)
	);



endmodule
