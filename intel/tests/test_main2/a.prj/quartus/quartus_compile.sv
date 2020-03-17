module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] cmain_start
	, output logic [0:0] cmain_busy
	, output logic [0:0] cmain_done
	, input logic [0:0] cmain_stall
	);

	logic [0:0] cmain_start_reg;
	logic [0:0] cmain_busy_reg;
	logic [0:0] cmain_done_reg;
	logic [0:0] cmain_stall_reg;


	always @(posedge clock) begin
		cmain_start_reg <= cmain_start;
		cmain_busy <= cmain_busy_reg;
		cmain_done <= cmain_done_reg;
		cmain_stall_reg <= cmain_stall;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	cmain cmain_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(cmain_start_reg)
		, .busy(cmain_busy_reg)
		, .done(cmain_done_reg)
		, .stall(cmain_stall_reg)
	);



endmodule
