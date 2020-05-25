module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] draw_box_start
	, output logic [0:0] draw_box_busy
	, output logic [0:0] draw_box_done
	, input logic [0:0] draw_box_stall
	, input logic [127:0] draw_box_a
	, input logic [31:0] draw_box_x1
	, input logic [31:0] draw_box_y1
	, input logic [31:0] draw_box_x2
	, input logic [31:0] draw_box_y2
	, input logic [31:0] draw_box_r
	, input logic [31:0] draw_box_g
	, input logic [31:0] draw_box_b
	, output logic [63:0] draw_box_avmm_0_rw_address
	, output logic [7:0] draw_box_avmm_0_rw_byteenable
	, output logic [0:0] draw_box_avmm_0_rw_read
	, input logic [63:0] draw_box_avmm_0_rw_readdata
	, output logic [0:0] draw_box_avmm_0_rw_write
	, output logic [63:0] draw_box_avmm_0_rw_writedata
	);

	logic [0:0] draw_box_start_reg;
	logic [0:0] draw_box_busy_reg;
	logic [0:0] draw_box_done_reg;
	logic [0:0] draw_box_stall_reg;
	logic [127:0] draw_box_a_reg;
	logic [31:0] draw_box_x1_reg;
	logic [31:0] draw_box_y1_reg;
	logic [31:0] draw_box_x2_reg;
	logic [31:0] draw_box_y2_reg;
	logic [31:0] draw_box_r_reg;
	logic [31:0] draw_box_g_reg;
	logic [31:0] draw_box_b_reg;
	logic [63:0] draw_box_avmm_0_rw_address_reg;
	logic [7:0] draw_box_avmm_0_rw_byteenable_reg;
	logic [0:0] draw_box_avmm_0_rw_read_reg;
	logic [63:0] draw_box_avmm_0_rw_readdata_reg;
	logic [0:0] draw_box_avmm_0_rw_write_reg;
	logic [63:0] draw_box_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		draw_box_start_reg <= draw_box_start;
		draw_box_busy <= draw_box_busy_reg;
		draw_box_done <= draw_box_done_reg;
		draw_box_stall_reg <= draw_box_stall;
		draw_box_a_reg <= draw_box_a;
		draw_box_x1_reg <= draw_box_x1;
		draw_box_y1_reg <= draw_box_y1;
		draw_box_x2_reg <= draw_box_x2;
		draw_box_y2_reg <= draw_box_y2;
		draw_box_r_reg <= draw_box_r;
		draw_box_g_reg <= draw_box_g;
		draw_box_b_reg <= draw_box_b;
		draw_box_avmm_0_rw_address <= draw_box_avmm_0_rw_address_reg;
		draw_box_avmm_0_rw_byteenable <= draw_box_avmm_0_rw_byteenable_reg;
		draw_box_avmm_0_rw_read <= draw_box_avmm_0_rw_read_reg;
		draw_box_avmm_0_rw_readdata_reg <= draw_box_avmm_0_rw_readdata;
		draw_box_avmm_0_rw_write <= draw_box_avmm_0_rw_write_reg;
		draw_box_avmm_0_rw_writedata <= draw_box_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	draw_box draw_box_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(draw_box_start_reg)
		, .busy(draw_box_busy_reg)
		, .done(draw_box_done_reg)
		, .stall(draw_box_stall_reg)
		, .a(draw_box_a_reg)
		, .x1(draw_box_x1_reg)
		, .y1(draw_box_y1_reg)
		, .x2(draw_box_x2_reg)
		, .y2(draw_box_y2_reg)
		, .r(draw_box_r_reg)
		, .g(draw_box_g_reg)
		, .b(draw_box_b_reg)
		, .avmm_0_rw_address(draw_box_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(draw_box_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(draw_box_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(draw_box_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(draw_box_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(draw_box_avmm_0_rw_writedata_reg)
	);



endmodule
