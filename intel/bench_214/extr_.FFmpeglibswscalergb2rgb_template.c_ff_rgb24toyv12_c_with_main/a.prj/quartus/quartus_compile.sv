module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] ff_rgb24toyv12_c_start
	, output logic [0:0] ff_rgb24toyv12_c_busy
	, output logic [0:0] ff_rgb24toyv12_c_done
	, input logic [0:0] ff_rgb24toyv12_c_stall
	, input logic [63:0] ff_rgb24toyv12_c_src
	, input logic [63:0] ff_rgb24toyv12_c_ydst
	, input logic [63:0] ff_rgb24toyv12_c_udst
	, input logic [63:0] ff_rgb24toyv12_c_vdst
	, input logic [31:0] ff_rgb24toyv12_c_width
	, input logic [31:0] ff_rgb24toyv12_c_height
	, input logic [31:0] ff_rgb24toyv12_c_lumStride
	, input logic [31:0] ff_rgb24toyv12_c_chromStride
	, input logic [31:0] ff_rgb24toyv12_c_srcStride
	, input logic [63:0] ff_rgb24toyv12_c_rgb2yuv
	, input logic [63:0] ff_rgb24toyv12_c_BU_IDX
	, input logic [63:0] ff_rgb24toyv12_c_BV_IDX
	, input logic [63:0] ff_rgb24toyv12_c_BY_IDX
	, input logic [63:0] ff_rgb24toyv12_c_GU_IDX
	, input logic [63:0] ff_rgb24toyv12_c_GV_IDX
	, input logic [63:0] ff_rgb24toyv12_c_GY_IDX
	, input logic [63:0] ff_rgb24toyv12_c_RGB2YUV_SHIFT
	, input logic [63:0] ff_rgb24toyv12_c_RU_IDX
	, input logic [63:0] ff_rgb24toyv12_c_RV_IDX
	, input logic [63:0] ff_rgb24toyv12_c_RY_IDX
	, output logic [63:0] ff_rgb24toyv12_c_avmm_0_rw_address
	, output logic [7:0] ff_rgb24toyv12_c_avmm_0_rw_byteenable
	, output logic [0:0] ff_rgb24toyv12_c_avmm_0_rw_read
	, input logic [63:0] ff_rgb24toyv12_c_avmm_0_rw_readdata
	, output logic [0:0] ff_rgb24toyv12_c_avmm_0_rw_write
	, output logic [63:0] ff_rgb24toyv12_c_avmm_0_rw_writedata
	);

	logic [0:0] ff_rgb24toyv12_c_start_reg;
	logic [0:0] ff_rgb24toyv12_c_busy_reg;
	logic [0:0] ff_rgb24toyv12_c_done_reg;
	logic [0:0] ff_rgb24toyv12_c_stall_reg;
	logic [63:0] ff_rgb24toyv12_c_src_reg;
	logic [63:0] ff_rgb24toyv12_c_ydst_reg;
	logic [63:0] ff_rgb24toyv12_c_udst_reg;
	logic [63:0] ff_rgb24toyv12_c_vdst_reg;
	logic [31:0] ff_rgb24toyv12_c_width_reg;
	logic [31:0] ff_rgb24toyv12_c_height_reg;
	logic [31:0] ff_rgb24toyv12_c_lumStride_reg;
	logic [31:0] ff_rgb24toyv12_c_chromStride_reg;
	logic [31:0] ff_rgb24toyv12_c_srcStride_reg;
	logic [63:0] ff_rgb24toyv12_c_rgb2yuv_reg;
	logic [63:0] ff_rgb24toyv12_c_BU_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_BV_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_BY_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_GU_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_GV_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_GY_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_RGB2YUV_SHIFT_reg;
	logic [63:0] ff_rgb24toyv12_c_RU_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_RV_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_RY_IDX_reg;
	logic [63:0] ff_rgb24toyv12_c_avmm_0_rw_address_reg;
	logic [7:0] ff_rgb24toyv12_c_avmm_0_rw_byteenable_reg;
	logic [0:0] ff_rgb24toyv12_c_avmm_0_rw_read_reg;
	logic [63:0] ff_rgb24toyv12_c_avmm_0_rw_readdata_reg;
	logic [0:0] ff_rgb24toyv12_c_avmm_0_rw_write_reg;
	logic [63:0] ff_rgb24toyv12_c_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		ff_rgb24toyv12_c_start_reg <= ff_rgb24toyv12_c_start;
		ff_rgb24toyv12_c_busy <= ff_rgb24toyv12_c_busy_reg;
		ff_rgb24toyv12_c_done <= ff_rgb24toyv12_c_done_reg;
		ff_rgb24toyv12_c_stall_reg <= ff_rgb24toyv12_c_stall;
		ff_rgb24toyv12_c_src_reg <= ff_rgb24toyv12_c_src;
		ff_rgb24toyv12_c_ydst_reg <= ff_rgb24toyv12_c_ydst;
		ff_rgb24toyv12_c_udst_reg <= ff_rgb24toyv12_c_udst;
		ff_rgb24toyv12_c_vdst_reg <= ff_rgb24toyv12_c_vdst;
		ff_rgb24toyv12_c_width_reg <= ff_rgb24toyv12_c_width;
		ff_rgb24toyv12_c_height_reg <= ff_rgb24toyv12_c_height;
		ff_rgb24toyv12_c_lumStride_reg <= ff_rgb24toyv12_c_lumStride;
		ff_rgb24toyv12_c_chromStride_reg <= ff_rgb24toyv12_c_chromStride;
		ff_rgb24toyv12_c_srcStride_reg <= ff_rgb24toyv12_c_srcStride;
		ff_rgb24toyv12_c_rgb2yuv_reg <= ff_rgb24toyv12_c_rgb2yuv;
		ff_rgb24toyv12_c_BU_IDX_reg <= ff_rgb24toyv12_c_BU_IDX;
		ff_rgb24toyv12_c_BV_IDX_reg <= ff_rgb24toyv12_c_BV_IDX;
		ff_rgb24toyv12_c_BY_IDX_reg <= ff_rgb24toyv12_c_BY_IDX;
		ff_rgb24toyv12_c_GU_IDX_reg <= ff_rgb24toyv12_c_GU_IDX;
		ff_rgb24toyv12_c_GV_IDX_reg <= ff_rgb24toyv12_c_GV_IDX;
		ff_rgb24toyv12_c_GY_IDX_reg <= ff_rgb24toyv12_c_GY_IDX;
		ff_rgb24toyv12_c_RGB2YUV_SHIFT_reg <= ff_rgb24toyv12_c_RGB2YUV_SHIFT;
		ff_rgb24toyv12_c_RU_IDX_reg <= ff_rgb24toyv12_c_RU_IDX;
		ff_rgb24toyv12_c_RV_IDX_reg <= ff_rgb24toyv12_c_RV_IDX;
		ff_rgb24toyv12_c_RY_IDX_reg <= ff_rgb24toyv12_c_RY_IDX;
		ff_rgb24toyv12_c_avmm_0_rw_address <= ff_rgb24toyv12_c_avmm_0_rw_address_reg;
		ff_rgb24toyv12_c_avmm_0_rw_byteenable <= ff_rgb24toyv12_c_avmm_0_rw_byteenable_reg;
		ff_rgb24toyv12_c_avmm_0_rw_read <= ff_rgb24toyv12_c_avmm_0_rw_read_reg;
		ff_rgb24toyv12_c_avmm_0_rw_readdata_reg <= ff_rgb24toyv12_c_avmm_0_rw_readdata;
		ff_rgb24toyv12_c_avmm_0_rw_write <= ff_rgb24toyv12_c_avmm_0_rw_write_reg;
		ff_rgb24toyv12_c_avmm_0_rw_writedata <= ff_rgb24toyv12_c_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	ff_rgb24toyv12_c ff_rgb24toyv12_c_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(ff_rgb24toyv12_c_start_reg)
		, .busy(ff_rgb24toyv12_c_busy_reg)
		, .done(ff_rgb24toyv12_c_done_reg)
		, .stall(ff_rgb24toyv12_c_stall_reg)
		, .src(ff_rgb24toyv12_c_src_reg)
		, .ydst(ff_rgb24toyv12_c_ydst_reg)
		, .udst(ff_rgb24toyv12_c_udst_reg)
		, .vdst(ff_rgb24toyv12_c_vdst_reg)
		, .width(ff_rgb24toyv12_c_width_reg)
		, .height(ff_rgb24toyv12_c_height_reg)
		, .lumStride(ff_rgb24toyv12_c_lumStride_reg)
		, .chromStride(ff_rgb24toyv12_c_chromStride_reg)
		, .srcStride(ff_rgb24toyv12_c_srcStride_reg)
		, .rgb2yuv(ff_rgb24toyv12_c_rgb2yuv_reg)
		, .BU_IDX(ff_rgb24toyv12_c_BU_IDX_reg)
		, .BV_IDX(ff_rgb24toyv12_c_BV_IDX_reg)
		, .BY_IDX(ff_rgb24toyv12_c_BY_IDX_reg)
		, .GU_IDX(ff_rgb24toyv12_c_GU_IDX_reg)
		, .GV_IDX(ff_rgb24toyv12_c_GV_IDX_reg)
		, .GY_IDX(ff_rgb24toyv12_c_GY_IDX_reg)
		, .RGB2YUV_SHIFT(ff_rgb24toyv12_c_RGB2YUV_SHIFT_reg)
		, .RU_IDX(ff_rgb24toyv12_c_RU_IDX_reg)
		, .RV_IDX(ff_rgb24toyv12_c_RV_IDX_reg)
		, .RY_IDX(ff_rgb24toyv12_c_RY_IDX_reg)
		, .avmm_0_rw_address(ff_rgb24toyv12_c_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(ff_rgb24toyv12_c_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(ff_rgb24toyv12_c_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(ff_rgb24toyv12_c_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(ff_rgb24toyv12_c_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(ff_rgb24toyv12_c_avmm_0_rw_writedata_reg)
	);



endmodule
