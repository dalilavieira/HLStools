module v4l2_detect_cvt (
		input  wire        clock,                       //                       clock.clk
		input  wire        resetn,                      //                       reset.reset_n
		input  wire        start,                       //                        call.valid
		output wire        busy,                        //                            .stall
		output wire        done,                        //                      return.valid
		input  wire        stall,                       //                            .stall
		output wire        returndata,                  //                  returndata.data
		input  wire [31:0] frame_height,                //                frame_height.data
		input  wire [31:0] hfreq,                       //                       hfreq.data
		input  wire [31:0] vsync,                       //                       vsync.data
		input  wire [31:0] active_width,                //                active_width.data
		input  wire [31:0] polarities,                  //                  polarities.data
		input  wire        interlaced,                  //                  interlaced.data
		input  wire [63:0] fmt,                         //                         fmt.data
		input  wire [63:0] CVT_CELL_GRAN,               //               CVT_CELL_GRAN.data
		input  wire [63:0] CVT_C_PRIME,                 //                 CVT_C_PRIME.data
		input  wire [63:0] CVT_HSYNC_PERCENT,           //           CVT_HSYNC_PERCENT.data
		input  wire [63:0] CVT_MIN_VSYNC_BP,            //            CVT_MIN_VSYNC_BP.data
		input  wire [63:0] CVT_MIN_V_BPORCH,            //            CVT_MIN_V_BPORCH.data
		input  wire [63:0] CVT_MIN_V_PORCH_RND,         //         CVT_MIN_V_PORCH_RND.data
		input  wire [63:0] CVT_M_PRIME,                 //                 CVT_M_PRIME.data
		input  wire [63:0] CVT_PXL_CLK_GRAN,            //            CVT_PXL_CLK_GRAN.data
		input  wire [63:0] CVT_PXL_CLK_GRAN_RB_V2,      //      CVT_PXL_CLK_GRAN_RB_V2.data
		input  wire [63:0] CVT_RB_H_BLANK,              //              CVT_RB_H_BLANK.data
		input  wire [63:0] CVT_RB_H_SYNC,               //               CVT_RB_H_SYNC.data
		input  wire [63:0] CVT_RB_MIN_V_BLANK,          //          CVT_RB_MIN_V_BLANK.data
		input  wire [63:0] CVT_RB_MIN_V_BPORCH,         //         CVT_RB_MIN_V_BPORCH.data
		input  wire [63:0] CVT_RB_V2_H_BLANK,           //           CVT_RB_V2_H_BLANK.data
		input  wire [63:0] CVT_RB_V2_MIN_V_FPORCH,      //      CVT_RB_V2_MIN_V_FPORCH.data
		input  wire [63:0] CVT_RB_V_BPORCH,             //             CVT_RB_V_BPORCH.data
		input  wire [63:0] CVT_RB_V_FPORCH,             //             CVT_RB_V_FPORCH.data
		input  wire [63:0] V4L2_DV_BT_656_1120,         //         V4L2_DV_BT_656_1120.data
		input  wire [63:0] V4L2_DV_BT_STD_CVT,          //          V4L2_DV_BT_STD_CVT.data
		input  wire [63:0] V4L2_DV_FL_HALF_LINE,        //        V4L2_DV_FL_HALF_LINE.data
		input  wire [63:0] V4L2_DV_FL_REDUCED_BLANKING, // V4L2_DV_FL_REDUCED_BLANKING.data
		input  wire [63:0] V4L2_DV_HSYNC_POS_POL,       //       V4L2_DV_HSYNC_POS_POL.data
		input  wire [63:0] V4L2_DV_INTERLACED,          //          V4L2_DV_INTERLACED.data
		input  wire [63:0] V4L2_DV_PROGRESSIVE,         //         V4L2_DV_PROGRESSIVE.data
		input  wire [63:0] V4L2_DV_VSYNC_POS_POL,       //       V4L2_DV_VSYNC_POS_POL.data
		output wire [63:0] avmm_0_rw_address,           //                   avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable,        //                            .byteenable
		output wire        avmm_0_rw_read,              //                            .read
		input  wire [63:0] avmm_0_rw_readdata,          //                            .readdata
		output wire        avmm_0_rw_write,             //                            .write
		output wire [63:0] avmm_0_rw_writedata          //                            .writedata
	);
endmodule

