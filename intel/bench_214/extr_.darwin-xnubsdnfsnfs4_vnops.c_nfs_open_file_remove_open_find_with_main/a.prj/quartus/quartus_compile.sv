module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] nfs_open_file_remove_open_find_start
	, output logic [0:0] nfs_open_file_remove_open_find_busy
	, output logic [0:0] nfs_open_file_remove_open_find_done
	, input logic [0:0] nfs_open_file_remove_open_find_stall
	, input logic [63:0] nfs_open_file_remove_open_find_nofp
	, input logic [31:0] nfs_open_file_remove_open_find_accessMode
	, input logic [31:0] nfs_open_file_remove_open_find_denyMode
	, input logic [63:0] nfs_open_file_remove_open_find_newAccessMode
	, input logic [63:0] nfs_open_file_remove_open_find_newDenyMode
	, input logic [63:0] nfs_open_file_remove_open_find_delegated
	, input logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_BOTH
	, input logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_READ
	, input logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_WRITE
	, input logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_NONE
	, input logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_READ
	, input logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_WRITE
	, output logic [63:0] nfs_open_file_remove_open_find_avmm_0_rw_address
	, output logic [7:0] nfs_open_file_remove_open_find_avmm_0_rw_byteenable
	, output logic [0:0] nfs_open_file_remove_open_find_avmm_0_rw_read
	, input logic [63:0] nfs_open_file_remove_open_find_avmm_0_rw_readdata
	, output logic [0:0] nfs_open_file_remove_open_find_avmm_0_rw_write
	, output logic [63:0] nfs_open_file_remove_open_find_avmm_0_rw_writedata
	);

	logic [0:0] nfs_open_file_remove_open_find_start_reg;
	logic [0:0] nfs_open_file_remove_open_find_busy_reg;
	logic [0:0] nfs_open_file_remove_open_find_done_reg;
	logic [0:0] nfs_open_file_remove_open_find_stall_reg;
	logic [63:0] nfs_open_file_remove_open_find_nofp_reg;
	logic [31:0] nfs_open_file_remove_open_find_accessMode_reg;
	logic [31:0] nfs_open_file_remove_open_find_denyMode_reg;
	logic [63:0] nfs_open_file_remove_open_find_newAccessMode_reg;
	logic [63:0] nfs_open_file_remove_open_find_newDenyMode_reg;
	logic [63:0] nfs_open_file_remove_open_find_delegated_reg;
	logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_BOTH_reg;
	logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_READ_reg;
	logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_WRITE_reg;
	logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_NONE_reg;
	logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_READ_reg;
	logic [63:0] nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_WRITE_reg;
	logic [63:0] nfs_open_file_remove_open_find_avmm_0_rw_address_reg;
	logic [7:0] nfs_open_file_remove_open_find_avmm_0_rw_byteenable_reg;
	logic [0:0] nfs_open_file_remove_open_find_avmm_0_rw_read_reg;
	logic [63:0] nfs_open_file_remove_open_find_avmm_0_rw_readdata_reg;
	logic [0:0] nfs_open_file_remove_open_find_avmm_0_rw_write_reg;
	logic [63:0] nfs_open_file_remove_open_find_avmm_0_rw_writedata_reg;


	always @(posedge clock) begin
		nfs_open_file_remove_open_find_start_reg <= nfs_open_file_remove_open_find_start;
		nfs_open_file_remove_open_find_busy <= nfs_open_file_remove_open_find_busy_reg;
		nfs_open_file_remove_open_find_done <= nfs_open_file_remove_open_find_done_reg;
		nfs_open_file_remove_open_find_stall_reg <= nfs_open_file_remove_open_find_stall;
		nfs_open_file_remove_open_find_nofp_reg <= nfs_open_file_remove_open_find_nofp;
		nfs_open_file_remove_open_find_accessMode_reg <= nfs_open_file_remove_open_find_accessMode;
		nfs_open_file_remove_open_find_denyMode_reg <= nfs_open_file_remove_open_find_denyMode;
		nfs_open_file_remove_open_find_newAccessMode_reg <= nfs_open_file_remove_open_find_newAccessMode;
		nfs_open_file_remove_open_find_newDenyMode_reg <= nfs_open_file_remove_open_find_newDenyMode;
		nfs_open_file_remove_open_find_delegated_reg <= nfs_open_file_remove_open_find_delegated;
		nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_BOTH_reg <= nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_BOTH;
		nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_READ_reg <= nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_READ;
		nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_WRITE_reg <= nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_WRITE;
		nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_NONE_reg <= nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_NONE;
		nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_READ_reg <= nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_READ;
		nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_WRITE_reg <= nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_WRITE;
		nfs_open_file_remove_open_find_avmm_0_rw_address <= nfs_open_file_remove_open_find_avmm_0_rw_address_reg;
		nfs_open_file_remove_open_find_avmm_0_rw_byteenable <= nfs_open_file_remove_open_find_avmm_0_rw_byteenable_reg;
		nfs_open_file_remove_open_find_avmm_0_rw_read <= nfs_open_file_remove_open_find_avmm_0_rw_read_reg;
		nfs_open_file_remove_open_find_avmm_0_rw_readdata_reg <= nfs_open_file_remove_open_find_avmm_0_rw_readdata;
		nfs_open_file_remove_open_find_avmm_0_rw_write <= nfs_open_file_remove_open_find_avmm_0_rw_write_reg;
		nfs_open_file_remove_open_find_avmm_0_rw_writedata <= nfs_open_file_remove_open_find_avmm_0_rw_writedata_reg;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	nfs_open_file_remove_open_find nfs_open_file_remove_open_find_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .start(nfs_open_file_remove_open_find_start_reg)
		, .busy(nfs_open_file_remove_open_find_busy_reg)
		, .done(nfs_open_file_remove_open_find_done_reg)
		, .stall(nfs_open_file_remove_open_find_stall_reg)
		, .nofp(nfs_open_file_remove_open_find_nofp_reg)
		, .accessMode(nfs_open_file_remove_open_find_accessMode_reg)
		, .denyMode(nfs_open_file_remove_open_find_denyMode_reg)
		, .newAccessMode(nfs_open_file_remove_open_find_newAccessMode_reg)
		, .newDenyMode(nfs_open_file_remove_open_find_newDenyMode_reg)
		, .delegated(nfs_open_file_remove_open_find_delegated_reg)
		, .NFS_OPEN_SHARE_ACCESS_BOTH(nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_BOTH_reg)
		, .NFS_OPEN_SHARE_ACCESS_READ(nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_READ_reg)
		, .NFS_OPEN_SHARE_ACCESS_WRITE(nfs_open_file_remove_open_find_NFS_OPEN_SHARE_ACCESS_WRITE_reg)
		, .NFS_OPEN_SHARE_DENY_NONE(nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_NONE_reg)
		, .NFS_OPEN_SHARE_DENY_READ(nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_READ_reg)
		, .NFS_OPEN_SHARE_DENY_WRITE(nfs_open_file_remove_open_find_NFS_OPEN_SHARE_DENY_WRITE_reg)
		, .avmm_0_rw_address(nfs_open_file_remove_open_find_avmm_0_rw_address_reg)
		, .avmm_0_rw_byteenable(nfs_open_file_remove_open_find_avmm_0_rw_byteenable_reg)
		, .avmm_0_rw_read(nfs_open_file_remove_open_find_avmm_0_rw_read_reg)
		, .avmm_0_rw_readdata(nfs_open_file_remove_open_find_avmm_0_rw_readdata_reg)
		, .avmm_0_rw_write(nfs_open_file_remove_open_find_avmm_0_rw_write_reg)
		, .avmm_0_rw_writedata(nfs_open_file_remove_open_find_avmm_0_rw_writedata_reg)
	);



endmodule
