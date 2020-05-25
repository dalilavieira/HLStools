module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] v4l2_detect_cvt_start
	, output logic [0:0] v4l2_detect_cvt_busy
	, output logic [0:0] v4l2_detect_cvt_done
	, input logic [0:0] v4l2_detect_cvt_stall
	, output logic [0:0] v4l2_detect_cvt_returndata
	, input logic [31:0] v4l2_detect_cvt_frame_height
	, input logic [31:0] v4l2_detect_cvt_hfreq
	, input logic [31:0] v4l2_detect_cvt_vsync
	, input logic [31:0] v4l2_detect_cvt_active_width
	, input logic [31:0] v4l2_detect_cvt_polarities
	, input logic [0:0] v4l2_detect_cvt_interlaced
	, input logic [63:0] v4l2_detect_cvt_fmt
	, input logic [63:0] v4l2_detect_cvt_CVT_CELL_GRAN
	, input logic [63:0] v4l2_detect_cvt_CVT_C_PRIME
	, input logic [63:0] v4l2_detect_cvt_CVT_HSYNC_PERCENT
	, input logic [63:0] v4l2_detect_cvt_CVT_MIN_VSYNC_BP
	, input logic [63:0] v4l2_detect_cvt_CVT_MIN_V_BPORCH
	, input logic [63:0] v4l2_detect_cvt_CVT_MIN_V_PORCH_RND
	, input logic [63:0] v4l2_detect_cvt_CVT_M_PRIME
	, input logic [63:0] v4l2_detect_cvt_CVT_PXL_CLK_GRAN
	, input logic [63:0] v4l2_detect_cvt_CVT_PXL_CLK_GRAN_RB_V2
	, input logic [63:0] v4l2_detect_cvt_CVT_RB_H_BLANK
	, input logic [63:0] v4l2_detect_cvt_CVT_RB_H_SYNC
	, input logic [63:0] v4l2_detect_cvt_CVT_RB_MIN_V_BLANK
	, input logic [63:0] v4l2_detect_cvt_CVT_RB_MIN_V_BPORCH
	, input logic [63:0] v4l2_detect_cvt_CVT_RB_V2_H_BLANK
	, input logic [63:0] v4l2_detect_cvt_CVT_RB_V2_MIN_V_FPORCH
	, input logic [63:0] v4l2_detect_cvt_CVT_RB_V_BPORCH
	, input logic [63:0] v4l2_detect_cvt_CVT_RB_V_FPORCH
	, input logic [63:0] v4l2_detect_cvt_V4L2_DV_BT_656_1120
	, input logic [63:0] v4l2_detect_cvt_V4L2_DV_BT_STD_CVT
	, input logic [63:0] v4l2_detect_cvt_V4L2_DV_FL_HALF_LINE
	, input logic [63:0] v4l2_detect_cvt_V4L2_DV_FL_REDUCED_BLANKING
	, input logic [63:0] v4l2_detect_cvt_V4L2_DV_HSYNC_POS_POL
	, input logic [63:0] v4l2_detect_cvt_V4L2_DV_INTERLACED
	, input logic [63:0] v4l2_detect_cvt_V4L2_DV_PROGRESSIVE
	, input logic [63:0] v4l2_detect_cvt_V4L2_DV_VSYNC_POS_POL
	, output logic [63:0] v4l2_detect_cvt_avmm_0_rw_address
	, output logic [7:0] v4l2_detect_cvt_avmm_0_rw_byteenable
	, output logic [0:0] v4l2_detect_cvt_avmm_0_rw_read
	, input logic [63:0] v4l2_detect_cvt_avmm_0_rw_readdata
	, output logic [0:0] v4l2_detect_cvt_avmm_0_rw_write
	, output logic [63:0] v4l2_detect_cvt_avmm_0_rw_writedata
	);

	logic [0:0] v4l2_detect_cvt_start_reg;
	logic [0:0] v4l2_detect_cvt_busy_reg;
	logic [0:0] v4l2_detect_cvt_done_reg;
	logic [0:0] v4l2_detect_cvt_stall_reg;
	logic [0:0] v4l2_detect_cvt_returndata_reg;
	logic [31:0] v4l2_detect_cvt_frame_height_reg;
	logic [31:0] v4l2_detect_cvt_hfreq_reg;
	logic [31:0] v4l2_detect_cvt_vsync_reg;
	logic [31:0] v4l2_detect_cvt_active_width_reg;
	logic [31:0] v4l2_detect_cvt_polarities_reg;
	logic [0:0] v4l2_detect_cvt_interlaced_reg;
	logic [63:0] v4l2_detect_cvt_fmt_reg;
	logic [63:0] v4l2_detect_cvt_CVT_CELL_GRAN_reg;
	logic [63:0] v4l2_detect_cvt_CVT_C_PRIME_reg;
	logic [63:0] v4l2_detect_cvt_CVT_HSYNC_PERCENT_reg;
	logic [63:0] v4l2_detect_cvt_CVT_MIN_VSYNC_BP_reg;
	logic [63:0] v4l2_detect_cvt_CVT_MIN_V_BPORCH_reg;
	logic [63:0] v4l2_detect_cvt_CVT_MIN_V_PORCH_RND_reg;
	logic [63:0] v4l2_detect_cvt_CVT_M_PRIME_reg;
	logic [63:0] v4l2_detect_cvt_CVT_PXL_CLK_GRAN_reg;
	logic [63:0] v4l2_detect_cvt_CVT_PXL_CLK_GRAN_RB_V2_reg;
	logic [63:0] v4l2_detect_cvt_CVT_RB_H_BLANK_reg;
	logic [63:0] v4l2_detect_cvt_CVT_RB_H_SYNC_reg;
	logic [63:0] v4l2_detect_cvt_CVT_RB_MIN_V_BLANK_reg;
	logic [63:0] v4l2_detect_cvt_CVT_RB_MIN_V_BPORCH_reg;
	logic [63:0] v4l2_detect_cvt_CVT_RB_V2_H_BLANK_reg;
	logic [63:0] v4l2_detect_cvt_CVT_RB_V2_MIN_V_FPORCH_reg;
	logic [63:0] v4l2_detect_cvt_CVT_RB_V_BPORCH_reg;
	logic [63:0] v4l2_detect_cvt_CVT_RB_V_FPORCH_reg;
	logic [63:0] v4l2_detect_cvt_V4L2_DV_BT_656_1120_reg;
	logic [63:0] v4l2_detect_cvt_V4L2_DV_BT_STD_CVT_reg;
	logic [63:0] v4l2_detect_cvt_V4L2_DV_FL_HALF_LINE_reg;
	logic [63:0] v4l2_detect_cvt_V4L2_DV_FL_REDUCED_BLANKING_reg;
	logic [63:0] v4l2_detect_cvt_V4L2_DV_HSYNC_POS_POL_reg;
	logic [63:0] v4l2_detect_cvt_V4L2_DV_INTERLACED_reg;
	logic [63:0] v4l2_detect_cvt_V4L2_DV_PROGRESSIVE_reg;
	logic [63:0] v4l2_detect_cvt_V4L2_DV_VSYNC_POS_POL_reg;
	logic [63:0] v4l2_detect_cvt_avmm_0_rw_address_reg;
	logic [7:0] v4l2_detect_cvt_avmm_0_rw_byteenable_reg;
	logic [0:0] v4l2_detect_cvt_avmm_0_rw_read_reg;
	logic [63:0] v4l2_detect_cvt_avmm_0_rw_readdata_reg;
	logic [0:0] v4l2_detect_cvt_avmm_0_rw_write_reg;
	logic [63:0] v4l2_detect_cvt_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		v4l2_detect_cvt_start_reg <= v4l2_detect_cvt_start;
		v4l2_detect_cvt_busy <= v4l2_detect_cvt_busy_reg;
		v4l2_detect_cvt_done <= v4l2_detect_cvt_done_reg;
		v4l2_detect_cvt_stall_reg <= v4l2_detect_cvt_stall;
		v4l2_detect_cvt_returndata <= v4l2_detect_cvt_returndata_reg;
		v4l2_detect_cvt_frame_height_reg <= v4l2_detect_cvt_frame_height;
		v4l2_detect_cvt_hfreq_reg <= v4l2_detect_cvt_hfreq;
		v4l2_detect_cvt_vsync_reg <= v4l2_detect_cvt_vsync;
		v4l2_detect_cvt_active_width_reg <= v4l2_detect_cvt_active_width;
		v4l2_detect_cvt_polarities_reg <= v4l2_detect_cvt_polarities;
		v4l2_detect_cvt_interlaced_reg <= v4l2_detect_cvt_interlaced;
		v4l2_detect_cvt_fmt_reg <= v4l2_detect_cvt_fmt;
		v4l2_detect_cvt_CVT_CELL_GRAN_reg <= v4l2_detect_cvt_CVT_CELL_GRAN;
		v4l2_detect_cvt_CVT_C_PRIME_reg <= v4l2_detect_cvt_CVT_C_PRIME;
		v4l2_detect_cvt_CVT_HSYNC_PERCENT_reg <= v4l2_detect_cvt_CVT_HSYNC_PERCENT;
		v4l2_detect_cvt_CVT_MIN_VSYNC_BP_reg <= v4l2_detect_cvt_CVT_MIN_VSYNC_BP;
		v4l2_detect_cvt_CVT_MIN_V_BPORCH_reg <= v4l2_detect_cvt_CVT_MIN_V_BPORCH;
		v4l2_detect_cvt_CVT_MIN_V_PORCH_RND_reg <= v4l2_detect_cvt_CVT_MIN_V_PORCH_RND;
		v4l2_detect_cvt_CVT_M_PRIME_reg <= v4l2_detect_cvt_CVT_M_PRIME;
		v4l2_detect_cvt_CVT_PXL_CLK_GRAN_reg <= v4l2_detect_cvt_CVT_PXL_CLK_GRAN;
		v4l2_detect_cvt_CVT_PXL_CLK_GRAN_RB_V2_reg <= v4l2_detect_cvt_CVT_PXL_CLK_GRAN_RB_V2;
		v4l2_detect_cvt_CVT_RB_H_BLANK_reg <= v4l2_detect_cvt_CVT_RB_H_BLANK;
		v4l2_detect_cvt_CVT_RB_H_SYNC_reg <= v4l2_detect_cvt_CVT_RB_H_SYNC;
		v4l2_detect_cvt_CVT_RB_MIN_V_BLANK_reg <= v4l2_detect_cvt_CVT_RB_MIN_V_BLANK;
		v4l2_detect_cvt_CVT_RB_MIN_V_BPORCH_reg <= v4l2_detect_cvt_CVT_RB_MIN_V_BPORCH;
		v4l2_detect_cvt_CVT_RB_V2_H_BLANK_reg <= v4l2_detect_cvt_CVT_RB_V2_H_BLANK;
		v4l2_detect_cvt_CVT_RB_V2_MIN_V_FPORCH_reg <= v4l2_detect_cvt_CVT_RB_V2_MIN_V_FPORCH;
		v4l2_detect_cvt_CVT_RB_V_BPORCH_reg <= v4l2_detect_cvt_CVT_RB_V_BPORCH;
		v4l2_detect_cvt_CVT_RB_V_FPORCH_reg <= v4l2_detect_cvt_CVT_RB_V_FPORCH;
		v4l2_detect_cvt_V4L2_DV_BT_656_1120_reg <= v4l2_detect_cvt_V4L2_DV_BT_656_1120;
		v4l2_detect_cvt_V4L2_DV_BT_STD_CVT_reg <= v4l2_detect_cvt_V4L2_DV_BT_STD_CVT;
		v4l2_detect_cvt_V4L2_DV_FL_HALF_LINE_reg <= v4l2_detect_cvt_V4L2_DV_FL_HALF_LINE;
		v4l2_detect_cvt_V4L2_DV_FL_REDUCED_BLANKING_reg <= v4l2_detect_cvt_V4L2_DV_FL_REDUCED_BLANKING;
		v4l2_detect_cvt_V4L2_DV_HSYNC_POS_POL_reg <= v4l2_detect_cvt_V4L2_DV_HSYNC_POS_POL;
		v4l2_detect_cvt_V4L2_DV_INTERLACED_reg <= v4l2_detect_cvt_V4L2_DV_INTERLACED;
		v4l2_detect_cvt_V4L2_DV_PROGRESSIVE_reg <= v4l2_detect_cvt_V4L2_DV_PROGRESSIVE;
		v4l2_detect_cvt_V4L2_DV_VSYNC_POS_POL_reg <= v4l2_detect_cvt_V4L2_DV_VSYNC_POS_POL;
		v4l2_detect_cvt_avmm_0_rw_address <= v4l2_detect_cvt_avmm_0_rw_address_reg;
		v4l2_detect_cvt_avmm_0_rw_byteenable <= v4l2_detect_cvt_avmm_0_rw_byteenable_reg;
		v4l2_detect_cvt_avmm_0_rw_read <= v4l2_detect_cvt_avmm_0_rw_read_reg;
		v4l2_detect_cvt_avmm_0_rw_readdata_reg <= v4l2_detect_cvt_avmm_0_rw_readdata;
		v4l2_detect_cvt_avmm_0_rw_write <= v4l2_detect_cvt_avmm_0_rw_write_reg;
		v4l2_detect_cvt_avmm_0_rw_writedata <= v4l2_detect_cvt_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	v4l2_detect_cvt v4l2_detect_cvt_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(v4l2_detect_cvt_start_reg)
		, .busy(v4l2_detect_cvt_busy_reg)
		, .done(v4l2_detect_cvt_done_reg)
		, .stall(v4l2_detect_cvt_stall_reg)
		, .returndata(v4l2_detect_cvt_returndata_reg)
		, .frame_height(v4l2_detect_cvt_frame_height_reg)
		, .hfreq(v4l2_detect_cvt_hfreq_reg)
		, .vsync(v4l2_detect_cvt_vsync_reg)
		, .active_width(v4l2_detect_cvt_active_width_reg)
		, .polarities(v4l2_detect_cvt_polarities_reg)
		, .interlaced(v4l2_detect_cvt_interlaced_reg)
		, .fmt(v4l2_detect_cvt_fmt_reg)
		, .CVT_CELL_GRAN(v4l2_detect_cvt_CVT_CELL_GRAN_reg)
		, .CVT_C_PRIME(v4l2_detect_cvt_CVT_C_PRIME_reg)
		, .CVT_HSYNC_PERCENT(v4l2_detect_cvt_CVT_HSYNC_PERCENT_reg)
		, .CVT_MIN_VSYNC_BP(v4l2_detect_cvt_CVT_MIN_VSYNC_BP_reg)
		, .CVT_MIN_V_BPORCH(v4l2_detect_cvt_CVT_MIN_V_BPORCH_reg)
		, .CVT_MIN_V_PORCH_RND(v4l2_detect_cvt_CVT_MIN_V_PORCH_RND_reg)
		, .CVT_M_PRIME(v4l2_detect_cvt_CVT_M_PRIME_reg)
		, .CVT_PXL_CLK_GRAN(v4l2_detect_cvt_CVT_PXL_CLK_GRAN_reg)
		, .CVT_PXL_CLK_GRAN_RB_V2(v4l2_detect_cvt_CVT_PXL_CLK_GRAN_RB_V2_reg)
		, .CVT_RB_H_BLANK(v4l2_detect_cvt_CVT_RB_H_BLANK_reg)
		, .CVT_RB_H_SYNC(v4l2_detect_cvt_CVT_RB_H_SYNC_reg)
		, .CVT_RB_MIN_V_BLANK(v4l2_detect_cvt_CVT_RB_MIN_V_BLANK_reg)
		, .CVT_RB_MIN_V_BPORCH(v4l2_detect_cvt_CVT_RB_MIN_V_BPORCH_reg)
		, .CVT_RB_V2_H_BLANK(v4l2_detect_cvt_CVT_RB_V2_H_BLANK_reg)
		, .CVT_RB_V2_MIN_V_FPORCH(v4l2_detect_cvt_CVT_RB_V2_MIN_V_FPORCH_reg)
		, .CVT_RB_V_BPORCH(v4l2_detect_cvt_CVT_RB_V_BPORCH_reg)
		, .CVT_RB_V_FPORCH(v4l2_detect_cvt_CVT_RB_V_FPORCH_reg)
		, .V4L2_DV_BT_656_1120(v4l2_detect_cvt_V4L2_DV_BT_656_1120_reg)
		, .V4L2_DV_BT_STD_CVT(v4l2_detect_cvt_V4L2_DV_BT_STD_CVT_reg)
		, .V4L2_DV_FL_HALF_LINE(v4l2_detect_cvt_V4L2_DV_FL_HALF_LINE_reg)
		, .V4L2_DV_FL_REDUCED_BLANKING(v4l2_detect_cvt_V4L2_DV_FL_REDUCED_BLANKING_reg)
		, .V4L2_DV_HSYNC_POS_POL(v4l2_detect_cvt_V4L2_DV_HSYNC_POS_POL_reg)
		, .V4L2_DV_INTERLACED(v4l2_detect_cvt_V4L2_DV_INTERLACED_reg)
		, .V4L2_DV_PROGRESSIVE(v4l2_detect_cvt_V4L2_DV_PROGRESSIVE_reg)
		, .V4L2_DV_VSYNC_POS_POL(v4l2_detect_cvt_V4L2_DV_VSYNC_POS_POL_reg)
		, .avmm_0_rw_address(v4l2_detect_cvt_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(v4l2_detect_cvt_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(v4l2_detect_cvt_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(v4l2_detect_cvt_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(v4l2_detect_cvt_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(v4l2_detect_cvt_avmm_0_rw_writedata_reg)
	);



endmodule
