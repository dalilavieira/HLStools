	nfs_open_file_remove_open_find u0 (
		.clock                       (_connected_to_clock_),                       //   input,   width = 1,                       clock.clk
		.resetn                      (_connected_to_resetn_),                      //   input,   width = 1,                       reset.reset_n
		.start                       (_connected_to_start_),                       //   input,   width = 1,                        call.valid
		.busy                        (_connected_to_busy_),                        //  output,   width = 1,                            .stall
		.done                        (_connected_to_done_),                        //  output,   width = 1,                      return.valid
		.stall                       (_connected_to_stall_),                       //   input,   width = 1,                            .stall
		.nofp                        (_connected_to_nofp_),                        //   input,  width = 64,                        nofp.data
		.accessMode                  (_connected_to_accessMode_),                  //   input,  width = 32,                  accessMode.data
		.denyMode                    (_connected_to_denyMode_),                    //   input,  width = 32,                    denyMode.data
		.newAccessMode               (_connected_to_newAccessMode_),               //   input,  width = 64,               newAccessMode.data
		.newDenyMode                 (_connected_to_newDenyMode_),                 //   input,  width = 64,                 newDenyMode.data
		.delegated                   (_connected_to_delegated_),                   //   input,  width = 64,                   delegated.data
		.NFS_OPEN_SHARE_ACCESS_BOTH  (_connected_to_NFS_OPEN_SHARE_ACCESS_BOTH_),  //   input,  width = 64,  NFS_OPEN_SHARE_ACCESS_BOTH.data
		.NFS_OPEN_SHARE_ACCESS_READ  (_connected_to_NFS_OPEN_SHARE_ACCESS_READ_),  //   input,  width = 64,  NFS_OPEN_SHARE_ACCESS_READ.data
		.NFS_OPEN_SHARE_ACCESS_WRITE (_connected_to_NFS_OPEN_SHARE_ACCESS_WRITE_), //   input,  width = 64, NFS_OPEN_SHARE_ACCESS_WRITE.data
		.NFS_OPEN_SHARE_DENY_NONE    (_connected_to_NFS_OPEN_SHARE_DENY_NONE_),    //   input,  width = 64,    NFS_OPEN_SHARE_DENY_NONE.data
		.NFS_OPEN_SHARE_DENY_READ    (_connected_to_NFS_OPEN_SHARE_DENY_READ_),    //   input,  width = 64,    NFS_OPEN_SHARE_DENY_READ.data
		.NFS_OPEN_SHARE_DENY_WRITE   (_connected_to_NFS_OPEN_SHARE_DENY_WRITE_),   //   input,  width = 64,   NFS_OPEN_SHARE_DENY_WRITE.data
		.avmm_0_rw_address           (_connected_to_avmm_0_rw_address_),           //  output,  width = 64,                   avmm_0_rw.address
		.avmm_0_rw_byteenable        (_connected_to_avmm_0_rw_byteenable_),        //  output,   width = 8,                            .byteenable
		.avmm_0_rw_read              (_connected_to_avmm_0_rw_read_),              //  output,   width = 1,                            .read
		.avmm_0_rw_readdata          (_connected_to_avmm_0_rw_readdata_),          //   input,  width = 64,                            .readdata
		.avmm_0_rw_write             (_connected_to_avmm_0_rw_write_),             //  output,   width = 1,                            .write
		.avmm_0_rw_writedata         (_connected_to_avmm_0_rw_writedata_)          //  output,  width = 64,                            .writedata
	);

