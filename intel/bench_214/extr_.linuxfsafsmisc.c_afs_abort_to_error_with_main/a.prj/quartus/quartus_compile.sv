module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] afs_abort_to_error_start
	, output logic [0:0] afs_abort_to_error_busy
	, output logic [0:0] afs_abort_to_error_done
	, input logic [0:0] afs_abort_to_error_stall
	, output logic [31:0] afs_abort_to_error_returndata
	, input logic [31:0] afs_abort_to_error_abort_code
	, input logic [63:0] afs_abort_to_error_EACCES
	, input logic [63:0] afs_abort_to_error_EAGAIN
	, input logic [63:0] afs_abort_to_error_EBADRQC
	, input logic [63:0] afs_abort_to_error_EBUSY
	, input logic [63:0] afs_abort_to_error_EDEADLK
	, input logic [63:0] afs_abort_to_error_EDOM
	, input logic [63:0] afs_abort_to_error_EDQUOT
	, input logic [63:0] afs_abort_to_error_EEXIST
	, input logic [63:0] afs_abort_to_error_EFBIG
	, input logic [63:0] afs_abort_to_error_EINVAL
	, input logic [63:0] afs_abort_to_error_EIO
	, input logic [63:0] afs_abort_to_error_EISDIR
	, input logic [63:0] afs_abort_to_error_EKEYEXPIRED
	, input logic [63:0] afs_abort_to_error_EKEYREJECTED
	, input logic [63:0] afs_abort_to_error_EMLINK
	, input logic [63:0] afs_abort_to_error_ENAMETOOLONG
	, input logic [63:0] afs_abort_to_error_ENODEV
	, input logic [63:0] afs_abort_to_error_ENOENT
	, input logic [63:0] afs_abort_to_error_ENOLCK
	, input logic [63:0] afs_abort_to_error_ENOMEDIUM
	, input logic [63:0] afs_abort_to_error_ENOMEM
	, input logic [63:0] afs_abort_to_error_ENOSPC
	, input logic [63:0] afs_abort_to_error_ENOTCONN
	, input logic [63:0] afs_abort_to_error_ENOTDIR
	, input logic [63:0] afs_abort_to_error_ENOTEMPTY
	, input logic [63:0] afs_abort_to_error_ENOTSUPP
	, input logic [63:0] afs_abort_to_error_ENXIO
	, input logic [63:0] afs_abort_to_error_EPERM
	, input logic [63:0] afs_abort_to_error_EPROTO
	, input logic [63:0] afs_abort_to_error_ERANGE
	, input logic [63:0] afs_abort_to_error_EREMOTEIO
	, input logic [63:0] afs_abort_to_error_EROFS
	, input logic [63:0] afs_abort_to_error_ETIMEDOUT
	, input logic [63:0] afs_abort_to_error_EWOULDBLOCK
	, input logic [63:0] afs_abort_to_error_EXDEV
	, output logic [63:0] afs_abort_to_error_avmm_0_rw_address
	, output logic [7:0] afs_abort_to_error_avmm_0_rw_byteenable
	, output logic [0:0] afs_abort_to_error_avmm_0_rw_read
	, input logic [63:0] afs_abort_to_error_avmm_0_rw_readdata
	, output logic [0:0] afs_abort_to_error_avmm_0_rw_write
	, output logic [63:0] afs_abort_to_error_avmm_0_rw_writedata
	);

	logic [0:0] afs_abort_to_error_start_reg;
	logic [0:0] afs_abort_to_error_busy_reg;
	logic [0:0] afs_abort_to_error_done_reg;
	logic [0:0] afs_abort_to_error_stall_reg;
	logic [31:0] afs_abort_to_error_returndata_reg;
	logic [31:0] afs_abort_to_error_abort_code_reg;
	logic [63:0] afs_abort_to_error_EACCES_reg;
	logic [63:0] afs_abort_to_error_EAGAIN_reg;
	logic [63:0] afs_abort_to_error_EBADRQC_reg;
	logic [63:0] afs_abort_to_error_EBUSY_reg;
	logic [63:0] afs_abort_to_error_EDEADLK_reg;
	logic [63:0] afs_abort_to_error_EDOM_reg;
	logic [63:0] afs_abort_to_error_EDQUOT_reg;
	logic [63:0] afs_abort_to_error_EEXIST_reg;
	logic [63:0] afs_abort_to_error_EFBIG_reg;
	logic [63:0] afs_abort_to_error_EINVAL_reg;
	logic [63:0] afs_abort_to_error_EIO_reg;
	logic [63:0] afs_abort_to_error_EISDIR_reg;
	logic [63:0] afs_abort_to_error_EKEYEXPIRED_reg;
	logic [63:0] afs_abort_to_error_EKEYREJECTED_reg;
	logic [63:0] afs_abort_to_error_EMLINK_reg;
	logic [63:0] afs_abort_to_error_ENAMETOOLONG_reg;
	logic [63:0] afs_abort_to_error_ENODEV_reg;
	logic [63:0] afs_abort_to_error_ENOENT_reg;
	logic [63:0] afs_abort_to_error_ENOLCK_reg;
	logic [63:0] afs_abort_to_error_ENOMEDIUM_reg;
	logic [63:0] afs_abort_to_error_ENOMEM_reg;
	logic [63:0] afs_abort_to_error_ENOSPC_reg;
	logic [63:0] afs_abort_to_error_ENOTCONN_reg;
	logic [63:0] afs_abort_to_error_ENOTDIR_reg;
	logic [63:0] afs_abort_to_error_ENOTEMPTY_reg;
	logic [63:0] afs_abort_to_error_ENOTSUPP_reg;
	logic [63:0] afs_abort_to_error_ENXIO_reg;
	logic [63:0] afs_abort_to_error_EPERM_reg;
	logic [63:0] afs_abort_to_error_EPROTO_reg;
	logic [63:0] afs_abort_to_error_ERANGE_reg;
	logic [63:0] afs_abort_to_error_EREMOTEIO_reg;
	logic [63:0] afs_abort_to_error_EROFS_reg;
	logic [63:0] afs_abort_to_error_ETIMEDOUT_reg;
	logic [63:0] afs_abort_to_error_EWOULDBLOCK_reg;
	logic [63:0] afs_abort_to_error_EXDEV_reg;
	logic [63:0] afs_abort_to_error_avmm_0_rw_address_reg;
	logic [7:0] afs_abort_to_error_avmm_0_rw_byteenable_reg;
	logic [0:0] afs_abort_to_error_avmm_0_rw_read_reg;
	logic [63:0] afs_abort_to_error_avmm_0_rw_readdata_reg;
	logic [0:0] afs_abort_to_error_avmm_0_rw_write_reg;
	logic [63:0] afs_abort_to_error_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		afs_abort_to_error_start_reg <= afs_abort_to_error_start;
		afs_abort_to_error_busy <= afs_abort_to_error_busy_reg;
		afs_abort_to_error_done <= afs_abort_to_error_done_reg;
		afs_abort_to_error_stall_reg <= afs_abort_to_error_stall;
		afs_abort_to_error_returndata <= afs_abort_to_error_returndata_reg;
		afs_abort_to_error_abort_code_reg <= afs_abort_to_error_abort_code;
		afs_abort_to_error_EACCES_reg <= afs_abort_to_error_EACCES;
		afs_abort_to_error_EAGAIN_reg <= afs_abort_to_error_EAGAIN;
		afs_abort_to_error_EBADRQC_reg <= afs_abort_to_error_EBADRQC;
		afs_abort_to_error_EBUSY_reg <= afs_abort_to_error_EBUSY;
		afs_abort_to_error_EDEADLK_reg <= afs_abort_to_error_EDEADLK;
		afs_abort_to_error_EDOM_reg <= afs_abort_to_error_EDOM;
		afs_abort_to_error_EDQUOT_reg <= afs_abort_to_error_EDQUOT;
		afs_abort_to_error_EEXIST_reg <= afs_abort_to_error_EEXIST;
		afs_abort_to_error_EFBIG_reg <= afs_abort_to_error_EFBIG;
		afs_abort_to_error_EINVAL_reg <= afs_abort_to_error_EINVAL;
		afs_abort_to_error_EIO_reg <= afs_abort_to_error_EIO;
		afs_abort_to_error_EISDIR_reg <= afs_abort_to_error_EISDIR;
		afs_abort_to_error_EKEYEXPIRED_reg <= afs_abort_to_error_EKEYEXPIRED;
		afs_abort_to_error_EKEYREJECTED_reg <= afs_abort_to_error_EKEYREJECTED;
		afs_abort_to_error_EMLINK_reg <= afs_abort_to_error_EMLINK;
		afs_abort_to_error_ENAMETOOLONG_reg <= afs_abort_to_error_ENAMETOOLONG;
		afs_abort_to_error_ENODEV_reg <= afs_abort_to_error_ENODEV;
		afs_abort_to_error_ENOENT_reg <= afs_abort_to_error_ENOENT;
		afs_abort_to_error_ENOLCK_reg <= afs_abort_to_error_ENOLCK;
		afs_abort_to_error_ENOMEDIUM_reg <= afs_abort_to_error_ENOMEDIUM;
		afs_abort_to_error_ENOMEM_reg <= afs_abort_to_error_ENOMEM;
		afs_abort_to_error_ENOSPC_reg <= afs_abort_to_error_ENOSPC;
		afs_abort_to_error_ENOTCONN_reg <= afs_abort_to_error_ENOTCONN;
		afs_abort_to_error_ENOTDIR_reg <= afs_abort_to_error_ENOTDIR;
		afs_abort_to_error_ENOTEMPTY_reg <= afs_abort_to_error_ENOTEMPTY;
		afs_abort_to_error_ENOTSUPP_reg <= afs_abort_to_error_ENOTSUPP;
		afs_abort_to_error_ENXIO_reg <= afs_abort_to_error_ENXIO;
		afs_abort_to_error_EPERM_reg <= afs_abort_to_error_EPERM;
		afs_abort_to_error_EPROTO_reg <= afs_abort_to_error_EPROTO;
		afs_abort_to_error_ERANGE_reg <= afs_abort_to_error_ERANGE;
		afs_abort_to_error_EREMOTEIO_reg <= afs_abort_to_error_EREMOTEIO;
		afs_abort_to_error_EROFS_reg <= afs_abort_to_error_EROFS;
		afs_abort_to_error_ETIMEDOUT_reg <= afs_abort_to_error_ETIMEDOUT;
		afs_abort_to_error_EWOULDBLOCK_reg <= afs_abort_to_error_EWOULDBLOCK;
		afs_abort_to_error_EXDEV_reg <= afs_abort_to_error_EXDEV;
		afs_abort_to_error_avmm_0_rw_address <= afs_abort_to_error_avmm_0_rw_address_reg;
		afs_abort_to_error_avmm_0_rw_byteenable <= afs_abort_to_error_avmm_0_rw_byteenable_reg;
		afs_abort_to_error_avmm_0_rw_read <= afs_abort_to_error_avmm_0_rw_read_reg;
		afs_abort_to_error_avmm_0_rw_readdata_reg <= afs_abort_to_error_avmm_0_rw_readdata;
		afs_abort_to_error_avmm_0_rw_write <= afs_abort_to_error_avmm_0_rw_write_reg;
		afs_abort_to_error_avmm_0_rw_writedata <= afs_abort_to_error_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	afs_abort_to_error afs_abort_to_error_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(afs_abort_to_error_start_reg)
		, .busy(afs_abort_to_error_busy_reg)
		, .done(afs_abort_to_error_done_reg)
		, .stall(afs_abort_to_error_stall_reg)
		, .returndata(afs_abort_to_error_returndata_reg)
		, .abort_code(afs_abort_to_error_abort_code_reg)
		, .EACCES(afs_abort_to_error_EACCES_reg)
		, .EAGAIN(afs_abort_to_error_EAGAIN_reg)
		, .EBADRQC(afs_abort_to_error_EBADRQC_reg)
		, .EBUSY(afs_abort_to_error_EBUSY_reg)
		, .EDEADLK(afs_abort_to_error_EDEADLK_reg)
		, .EDOM(afs_abort_to_error_EDOM_reg)
		, .EDQUOT(afs_abort_to_error_EDQUOT_reg)
		, .EEXIST(afs_abort_to_error_EEXIST_reg)
		, .EFBIG(afs_abort_to_error_EFBIG_reg)
		, .EINVAL(afs_abort_to_error_EINVAL_reg)
		, .EIO(afs_abort_to_error_EIO_reg)
		, .EISDIR(afs_abort_to_error_EISDIR_reg)
		, .EKEYEXPIRED(afs_abort_to_error_EKEYEXPIRED_reg)
		, .EKEYREJECTED(afs_abort_to_error_EKEYREJECTED_reg)
		, .EMLINK(afs_abort_to_error_EMLINK_reg)
		, .ENAMETOOLONG(afs_abort_to_error_ENAMETOOLONG_reg)
		, .ENODEV(afs_abort_to_error_ENODEV_reg)
		, .ENOENT(afs_abort_to_error_ENOENT_reg)
		, .ENOLCK(afs_abort_to_error_ENOLCK_reg)
		, .ENOMEDIUM(afs_abort_to_error_ENOMEDIUM_reg)
		, .ENOMEM(afs_abort_to_error_ENOMEM_reg)
		, .ENOSPC(afs_abort_to_error_ENOSPC_reg)
		, .ENOTCONN(afs_abort_to_error_ENOTCONN_reg)
		, .ENOTDIR(afs_abort_to_error_ENOTDIR_reg)
		, .ENOTEMPTY(afs_abort_to_error_ENOTEMPTY_reg)
		, .ENOTSUPP(afs_abort_to_error_ENOTSUPP_reg)
		, .ENXIO(afs_abort_to_error_ENXIO_reg)
		, .EPERM(afs_abort_to_error_EPERM_reg)
		, .EPROTO(afs_abort_to_error_EPROTO_reg)
		, .ERANGE(afs_abort_to_error_ERANGE_reg)
		, .EREMOTEIO(afs_abort_to_error_EREMOTEIO_reg)
		, .EROFS(afs_abort_to_error_EROFS_reg)
		, .ETIMEDOUT(afs_abort_to_error_ETIMEDOUT_reg)
		, .EWOULDBLOCK(afs_abort_to_error_EWOULDBLOCK_reg)
		, .EXDEV(afs_abort_to_error_EXDEV_reg)
		, .avmm_0_rw_address(afs_abort_to_error_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(afs_abort_to_error_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(afs_abort_to_error_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(afs_abort_to_error_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(afs_abort_to_error_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(afs_abort_to_error_avmm_0_rw_writedata_reg)
	);



endmodule
