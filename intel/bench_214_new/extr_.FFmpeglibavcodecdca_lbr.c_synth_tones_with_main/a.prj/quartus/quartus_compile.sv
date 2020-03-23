module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] main_start
	, output logic [0:0] main_busy
	, output logic [0:0] main_done
	, input logic [0:0] main_stall
	, output logic [31:0] main_returndata
	);

	logic [0:0] main_start_reg;
	logic [0:0] main_busy_reg;
	logic [0:0] main_done_reg;
	logic [0:0] main_stall_reg;
	logic [31:0] main_returndata_reg;


	always @(posedge clock) begin
		main_start_reg <= main_start;
		main_busy <= main_busy_reg;
		main_done <= main_done_reg;
		main_stall_reg <= main_stall;
		main_returndata <= main_returndata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	main main_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(main_start_reg)
		, .busy(main_busy_reg)
		, .done(main_done_reg)
		, .stall(main_stall_reg)
		, .returndata(main_returndata_reg)
	);



endmodule
