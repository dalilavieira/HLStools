module main (
		input  wire        clock,                 //                 clock.clk
		input  wire        resetn,                //                 reset.reset_n
		input  wire        start,                 //                  call.valid
		output wire        busy,                  //                      .stall
		output wire        done,                  //                return.valid
		input  wire        stall,                 //                      .stall
		output wire [31:0] returndata,            //            returndata.data
		input  wire [63:0] DCB_PFC_UP_ATTR_0,     //     DCB_PFC_UP_ATTR_0.data
		input  wire [63:0] DCB_PFC_UP_ATTR_MAX,   //   DCB_PFC_UP_ATTR_MAX.data
		input  wire [63:0] DCB_PG_ATTR_BW_ID_0,   //   DCB_PG_ATTR_BW_ID_0.data
		input  wire [63:0] DCB_PG_ATTR_BW_ID_MAX, // DCB_PG_ATTR_BW_ID_MAX.data
		output wire [63:0] avmm_0_rw_address,     //             avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable,  //                      .byteenable
		output wire        avmm_0_rw_read,        //                      .read
		input  wire [63:0] avmm_0_rw_readdata,    //                      .readdata
		output wire        avmm_0_rw_write,       //                      .write
		output wire [63:0] avmm_0_rw_writedata    //                      .writedata
	);
endmodule

