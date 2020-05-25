module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] mark_for_codepoint_start
	, output logic [0:0] mark_for_codepoint_busy
	, output logic [0:0] mark_for_codepoint_done
	, input logic [0:0] mark_for_codepoint_stall
	, output logic [31:0] mark_for_codepoint_returndata
	, input logic [31:0] mark_for_codepoint_c
	);

	logic [0:0] mark_for_codepoint_start_reg;
	logic [0:0] mark_for_codepoint_busy_reg;
	logic [0:0] mark_for_codepoint_done_reg;
	logic [0:0] mark_for_codepoint_stall_reg;
	logic [31:0] mark_for_codepoint_returndata_reg;
	logic [31:0] mark_for_codepoint_c_reg;


	always @(posedge clock) begin
		mark_for_codepoint_start_reg <= mark_for_codepoint_start;
		mark_for_codepoint_busy <= mark_for_codepoint_busy_reg;
		mark_for_codepoint_done <= mark_for_codepoint_done_reg;
		mark_for_codepoint_stall_reg <= mark_for_codepoint_stall;
		mark_for_codepoint_returndata <= mark_for_codepoint_returndata_reg;
		mark_for_codepoint_c_reg <= mark_for_codepoint_c;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	mark_for_codepoint mark_for_codepoint_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(mark_for_codepoint_start_reg)
		, .busy(mark_for_codepoint_busy_reg)
		, .done(mark_for_codepoint_done_reg)
		, .stall(mark_for_codepoint_stall_reg)
		, .returndata(mark_for_codepoint_returndata_reg)
		, .c(mark_for_codepoint_c_reg)
	);



endmodule
