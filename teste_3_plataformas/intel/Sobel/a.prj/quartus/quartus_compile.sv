module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] sobel_start
	, output logic [0:0] sobel_busy
	, output logic [0:0] sobel_done
	, input logic [0:0] sobel_stall
	, input logic [63:0] sobel_image1
	, input logic [63:0] sobel_image2
	, output logic [63:0] sobel_avmm_0_rw_address
	, output logic [7:0] sobel_avmm_0_rw_byteenable
	, output logic [0:0] sobel_avmm_0_rw_read
	, input logic [63:0] sobel_avmm_0_rw_readdata
	, output logic [0:0] sobel_avmm_0_rw_write
	, output logic [63:0] sobel_avmm_0_rw_writedata
	);

	logic [0:0] sobel_start_reg;
	logic [0:0] sobel_busy_reg;
	logic [0:0] sobel_done_reg;
	logic [0:0] sobel_stall_reg;
	logic [63:0] sobel_image1_reg;
	logic [63:0] sobel_image2_reg;
	logic [63:0] sobel_avmm_0_rw_address_reg;
	logic [7:0] sobel_avmm_0_rw_byteenable_reg;
	logic [0:0] sobel_avmm_0_rw_read_reg;
	logic [63:0] sobel_avmm_0_rw_readdata_reg;
	logic [0:0] sobel_avmm_0_rw_write_reg;
	logic [63:0] sobel_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		sobel_start_reg <= sobel_start;
		sobel_busy <= sobel_busy_reg;
		sobel_done <= sobel_done_reg;
		sobel_stall_reg <= sobel_stall;
		sobel_image1_reg <= sobel_image1;
		sobel_image2_reg <= sobel_image2;
		sobel_avmm_0_rw_address <= sobel_avmm_0_rw_address_reg;
		sobel_avmm_0_rw_byteenable <= sobel_avmm_0_rw_byteenable_reg;
		sobel_avmm_0_rw_read <= sobel_avmm_0_rw_read_reg;
		sobel_avmm_0_rw_readdata_reg <= sobel_avmm_0_rw_readdata;
		sobel_avmm_0_rw_write <= sobel_avmm_0_rw_write_reg;
		sobel_avmm_0_rw_writedata <= sobel_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	sobel sobel_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(sobel_start_reg)
		, .busy(sobel_busy_reg)
		, .done(sobel_done_reg)
		, .stall(sobel_stall_reg)
		, .image1(sobel_image1_reg)
		, .image2(sobel_image2_reg)
		, .avmm_0_rw_address(sobel_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(sobel_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(sobel_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(sobel_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(sobel_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(sobel_avmm_0_rw_writedata_reg)
	);



endmodule
