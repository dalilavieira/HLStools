module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic clock2x
	, input logic [0:0] sobel_filter_start
	, output logic [0:0] sobel_filter_busy
	, output logic [0:0] sobel_filter_done
	, input logic [0:0] sobel_filter_stall
	, output logic [31:0] sobel_filter_returndata
	, input logic [31:0] sobel_filter_idx
	);

	logic [0:0] sobel_filter_start_reg;
	logic [0:0] sobel_filter_busy_reg;
	logic [0:0] sobel_filter_done_reg;
	logic [0:0] sobel_filter_stall_reg;
	logic [31:0] sobel_filter_returndata_reg;
	logic [31:0] sobel_filter_idx_reg;


	always @(posedge clock) begin
		sobel_filter_start_reg <= sobel_filter_start;
		sobel_filter_busy <= sobel_filter_busy_reg;
		sobel_filter_done <= sobel_filter_done_reg;
		sobel_filter_stall_reg <= sobel_filter_stall;
		sobel_filter_returndata <= sobel_filter_returndata_reg;
		sobel_filter_idx_reg <= sobel_filter_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	sobel_filter sobel_filter_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .clock2x(clock2x)
		, .start(sobel_filter_start_reg)
		, .busy(sobel_filter_busy_reg)
		, .done(sobel_filter_done_reg)
		, .stall(sobel_filter_stall_reg)
		, .returndata(sobel_filter_returndata_reg)
		, .idx(sobel_filter_idx_reg)
	);



endmodule
