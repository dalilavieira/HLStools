	ff_rgb24toyv12_c u0 (
		.clock                (_connected_to_clock_),                //   input,   width = 1,         clock.clk
		.resetn               (_connected_to_resetn_),               //   input,   width = 1,         reset.reset_n
		.start                (_connected_to_start_),                //   input,   width = 1,          call.valid
		.busy                 (_connected_to_busy_),                 //  output,   width = 1,              .stall
		.done                 (_connected_to_done_),                 //  output,   width = 1,        return.valid
		.stall                (_connected_to_stall_),                //   input,   width = 1,              .stall
		.src                  (_connected_to_src_),                  //   input,  width = 64,           src.data
		.ydst                 (_connected_to_ydst_),                 //   input,  width = 64,          ydst.data
		.udst                 (_connected_to_udst_),                 //   input,  width = 64,          udst.data
		.vdst                 (_connected_to_vdst_),                 //   input,  width = 64,          vdst.data
		.width                (_connected_to_width_),                //   input,  width = 32,         width.data
		.height               (_connected_to_height_),               //   input,  width = 32,        height.data
		.lumStride            (_connected_to_lumStride_),            //   input,  width = 32,     lumStride.data
		.chromStride          (_connected_to_chromStride_),          //   input,  width = 32,   chromStride.data
		.srcStride            (_connected_to_srcStride_),            //   input,  width = 32,     srcStride.data
		.rgb2yuv              (_connected_to_rgb2yuv_),              //   input,  width = 64,       rgb2yuv.data
		.BU_IDX               (_connected_to_BU_IDX_),               //   input,  width = 64,        BU_IDX.data
		.BV_IDX               (_connected_to_BV_IDX_),               //   input,  width = 64,        BV_IDX.data
		.BY_IDX               (_connected_to_BY_IDX_),               //   input,  width = 64,        BY_IDX.data
		.GU_IDX               (_connected_to_GU_IDX_),               //   input,  width = 64,        GU_IDX.data
		.GV_IDX               (_connected_to_GV_IDX_),               //   input,  width = 64,        GV_IDX.data
		.GY_IDX               (_connected_to_GY_IDX_),               //   input,  width = 64,        GY_IDX.data
		.RGB2YUV_SHIFT        (_connected_to_RGB2YUV_SHIFT_),        //   input,  width = 64, RGB2YUV_SHIFT.data
		.RU_IDX               (_connected_to_RU_IDX_),               //   input,  width = 64,        RU_IDX.data
		.RV_IDX               (_connected_to_RV_IDX_),               //   input,  width = 64,        RV_IDX.data
		.RY_IDX               (_connected_to_RY_IDX_),               //   input,  width = 64,        RY_IDX.data
		.avmm_0_rw_address    (_connected_to_avmm_0_rw_address_),    //  output,  width = 64,     avmm_0_rw.address
		.avmm_0_rw_byteenable (_connected_to_avmm_0_rw_byteenable_), //  output,   width = 8,              .byteenable
		.avmm_0_rw_read       (_connected_to_avmm_0_rw_read_),       //  output,   width = 1,              .read
		.avmm_0_rw_readdata   (_connected_to_avmm_0_rw_readdata_),   //   input,  width = 64,              .readdata
		.avmm_0_rw_write      (_connected_to_avmm_0_rw_write_),      //  output,   width = 1,              .write
		.avmm_0_rw_writedata  (_connected_to_avmm_0_rw_writedata_)   //  output,  width = 64,              .writedata
	);

