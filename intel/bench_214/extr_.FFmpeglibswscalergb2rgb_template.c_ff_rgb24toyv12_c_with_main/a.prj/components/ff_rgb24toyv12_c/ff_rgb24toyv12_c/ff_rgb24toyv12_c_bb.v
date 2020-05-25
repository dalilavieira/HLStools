module ff_rgb24toyv12_c (
		input  wire        clock,                //         clock.clk
		input  wire        resetn,               //         reset.reset_n
		input  wire        start,                //          call.valid
		output wire        busy,                 //              .stall
		output wire        done,                 //        return.valid
		input  wire        stall,                //              .stall
		input  wire [63:0] src,                  //           src.data
		input  wire [63:0] ydst,                 //          ydst.data
		input  wire [63:0] udst,                 //          udst.data
		input  wire [63:0] vdst,                 //          vdst.data
		input  wire [31:0] width,                //         width.data
		input  wire [31:0] height,               //        height.data
		input  wire [31:0] lumStride,            //     lumStride.data
		input  wire [31:0] chromStride,          //   chromStride.data
		input  wire [31:0] srcStride,            //     srcStride.data
		input  wire [63:0] rgb2yuv,              //       rgb2yuv.data
		input  wire [63:0] BU_IDX,               //        BU_IDX.data
		input  wire [63:0] BV_IDX,               //        BV_IDX.data
		input  wire [63:0] BY_IDX,               //        BY_IDX.data
		input  wire [63:0] GU_IDX,               //        GU_IDX.data
		input  wire [63:0] GV_IDX,               //        GV_IDX.data
		input  wire [63:0] GY_IDX,               //        GY_IDX.data
		input  wire [63:0] RGB2YUV_SHIFT,        // RGB2YUV_SHIFT.data
		input  wire [63:0] RU_IDX,               //        RU_IDX.data
		input  wire [63:0] RV_IDX,               //        RV_IDX.data
		input  wire [63:0] RY_IDX,               //        RY_IDX.data
		output wire [63:0] avmm_0_rw_address,    //     avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable, //              .byteenable
		output wire        avmm_0_rw_read,       //              .read
		input  wire [63:0] avmm_0_rw_readdata,   //              .readdata
		output wire        avmm_0_rw_write,      //              .write
		output wire [63:0] avmm_0_rw_writedata   //              .writedata
	);
endmodule

