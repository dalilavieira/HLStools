module afs_abort_to_error (
		input  wire        clock,                //        clock.clk
		input  wire        resetn,               //        reset.reset_n
		input  wire        start,                //         call.valid
		output wire        busy,                 //             .stall
		output wire        done,                 //       return.valid
		input  wire        stall,                //             .stall
		output wire [31:0] returndata,           //   returndata.data
		input  wire [31:0] abort_code,           //   abort_code.data
		input  wire [63:0] EACCES,               //       EACCES.data
		input  wire [63:0] EAGAIN,               //       EAGAIN.data
		input  wire [63:0] EBADRQC,              //      EBADRQC.data
		input  wire [63:0] EBUSY,                //        EBUSY.data
		input  wire [63:0] EDEADLK,              //      EDEADLK.data
		input  wire [63:0] EDOM,                 //         EDOM.data
		input  wire [63:0] EDQUOT,               //       EDQUOT.data
		input  wire [63:0] EEXIST,               //       EEXIST.data
		input  wire [63:0] EFBIG,                //        EFBIG.data
		input  wire [63:0] EINVAL,               //       EINVAL.data
		input  wire [63:0] EIO,                  //          EIO.data
		input  wire [63:0] EISDIR,               //       EISDIR.data
		input  wire [63:0] EKEYEXPIRED,          //  EKEYEXPIRED.data
		input  wire [63:0] EKEYREJECTED,         // EKEYREJECTED.data
		input  wire [63:0] EMLINK,               //       EMLINK.data
		input  wire [63:0] ENAMETOOLONG,         // ENAMETOOLONG.data
		input  wire [63:0] ENODEV,               //       ENODEV.data
		input  wire [63:0] ENOENT,               //       ENOENT.data
		input  wire [63:0] ENOLCK,               //       ENOLCK.data
		input  wire [63:0] ENOMEDIUM,            //    ENOMEDIUM.data
		input  wire [63:0] ENOMEM,               //       ENOMEM.data
		input  wire [63:0] ENOSPC,               //       ENOSPC.data
		input  wire [63:0] ENOTCONN,             //     ENOTCONN.data
		input  wire [63:0] ENOTDIR,              //      ENOTDIR.data
		input  wire [63:0] ENOTEMPTY,            //    ENOTEMPTY.data
		input  wire [63:0] ENOTSUPP,             //     ENOTSUPP.data
		input  wire [63:0] ENXIO,                //        ENXIO.data
		input  wire [63:0] EPERM,                //        EPERM.data
		input  wire [63:0] EPROTO,               //       EPROTO.data
		input  wire [63:0] ERANGE,               //       ERANGE.data
		input  wire [63:0] EREMOTEIO,            //    EREMOTEIO.data
		input  wire [63:0] EROFS,                //        EROFS.data
		input  wire [63:0] ETIMEDOUT,            //    ETIMEDOUT.data
		input  wire [63:0] EWOULDBLOCK,          //  EWOULDBLOCK.data
		input  wire [63:0] EXDEV,                //        EXDEV.data
		output wire [63:0] avmm_0_rw_address,    //    avmm_0_rw.address
		output wire [7:0]  avmm_0_rw_byteenable, //             .byteenable
		output wire        avmm_0_rw_read,       //             .read
		input  wire [63:0] avmm_0_rw_readdata,   //             .readdata
		output wire        avmm_0_rw_write,      //             .write
		output wire [63:0] avmm_0_rw_writedata   //             .writedata
	);
endmodule

