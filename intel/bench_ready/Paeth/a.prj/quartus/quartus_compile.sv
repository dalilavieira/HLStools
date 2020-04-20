module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] paeth_start
	, output logic [0:0] paeth_busy
	, output logic [0:0] paeth_done
	, input logic [0:0] paeth_stall
	, output logic [31:0] paeth_returndata
	, input logic [31:0] paeth_idx
	);

	logic [0:0] paeth_start_reg;
	logic [0:0] paeth_busy_reg;
	logic [0:0] paeth_done_reg;
	logic [0:0] paeth_stall_reg;
	logic [31:0] paeth_returndata_reg;
	logic [31:0] paeth_idx_reg;


	always @(posedge clock) begin
		paeth_start_reg <= paeth_start;
		paeth_busy <= paeth_busy_reg;
		paeth_done <= paeth_done_reg;
		paeth_stall_reg <= paeth_stall;
		paeth_returndata <= paeth_returndata_reg;
		paeth_idx_reg <= paeth_idx;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	paeth paeth_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(paeth_start_reg)
		, .busy(paeth_busy_reg)
		, .done(paeth_done_reg)
		, .stall(paeth_stall_reg)
		, .returndata(paeth_returndata_reg)
		, .idx(paeth_idx_reg)
	);



endmodule
