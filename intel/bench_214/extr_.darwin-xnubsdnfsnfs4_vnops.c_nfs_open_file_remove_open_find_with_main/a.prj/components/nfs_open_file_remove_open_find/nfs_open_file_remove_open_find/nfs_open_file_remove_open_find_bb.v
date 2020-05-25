module nfs_open_file_remove_open_find (
		input  wire        clock,                       //                       clock.clk
		input  wire        resetn,                      //                       reset.reset_n
		input  wire        start,                       //                        call.valid
		output wire        busy,                        //                            .stall
		output wire        done,                        //                      return.valid
		input  wire        stall,                       //                            .stall
		input  wire [63:0] nofp,                        //                        nofp.data
		input  wire [31:0] accessMode,                  //                  accessMode.data
		input  wire [31:0] denyMode,                    //                    denyMode.data
		input  wire [63:0] newAccessMode,               //               newAccessMode.data
		input  wire [63:0] newDenyMode,                 //                 newDenyMode.data
		input  wire [63:0] delegated,                   //                   delegated.data
		input  wire [63:0] NFS_OPEN_SHARE_ACCESS_BOTH,  //  NFS_OPEN_SHARE_ACCESS_BOTH.data
		input  wire [63:0] NFS_OPEN_SHARE_ACCESS_READ,  //  NFS_OPEN_SHARE_ACCESS_READ.data
		input  wire [63:0] NFS_OPEN_SHARE_ACCESS_WRITE, // NFS_OPEN_SHARE_ACCESS_WRITE.data
		input  wire [63:0] NFS_OPEN_SHARE_DENY_NONE,    //    NFS_OPEN_SHARE_DENY_NONE.data
		input  wire [63:0] NFS_OPEN_SHARE_DENY_READ,    //    NFS_OPEN_SHARE_DENY_READ.data
		input  wire [63:0] NFS_OPEN_SHARE_DENY_WRITE,   //   NFS_OPEN_SHARE_DENY_WRITE.data
		output wire [63:0] avmm_0_rw_address,           //                   avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable,        //                            .byteenable
		output wire        avmm_0_rw_read,              //                            .read
		input  wire [63:0] avmm_0_rw_readdata,          //                            .readdata
		output wire        avmm_0_rw_write,             //                            .write
		output wire [63:0] avmm_0_rw_writedata          //                            .writedata
	);
endmodule

