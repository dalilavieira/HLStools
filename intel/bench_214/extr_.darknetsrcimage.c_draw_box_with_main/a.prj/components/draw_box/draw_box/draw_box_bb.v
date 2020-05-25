module draw_box (
		input  wire         clock,                //     clock.clk
		input  wire         resetn,               //     reset.reset_n
		input  wire         start,                //      call.valid
		output wire         busy,                 //          .stall
		output wire         done,                 //    return.valid
		input  wire         stall,                //          .stall
		input  wire [127:0] a,                    //         a.data
		input  wire [31:0]  x1,                   //        x1.data
		input  wire [31:0]  y1,                   //        y1.data
		input  wire [31:0]  x2,                   //        x2.data
		input  wire [31:0]  y2,                   //        y2.data
		input  wire [31:0]  r,                    //         r.data
		input  wire [31:0]  g,                    //         g.data
		input  wire [31:0]  b,                    //         b.data
		output wire [63:0]  avmm_0_rw_address,    // avmm_0_rw.address
		output wire [7:0]   avmm_0_rw_byteenable, //          .byteenable
		output wire         avmm_0_rw_read,       //          .read
		input  wire [63:0]  avmm_0_rw_readdata,   //          .readdata
		output wire         avmm_0_rw_write,      //          .write
		output wire [63:0]  avmm_0_rw_writedata   //          .writedata
	);
endmodule

