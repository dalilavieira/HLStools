	component v4l2_detect_cvt is
		port (
			clock                       : in  std_logic                     := 'X';             -- clk
			resetn                      : in  std_logic                     := 'X';             -- reset_n
			start                       : in  std_logic                     := 'X';             -- valid
			busy                        : out std_logic;                                        -- stall
			done                        : out std_logic;                                        -- valid
			stall                       : in  std_logic                     := 'X';             -- stall
			returndata                  : out std_logic;                                        -- data
			frame_height                : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			hfreq                       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			vsync                       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			active_width                : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			polarities                  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			interlaced                  : in  std_logic                     := 'X';             -- data
			fmt                         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_CELL_GRAN               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_C_PRIME                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_HSYNC_PERCENT           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_MIN_VSYNC_BP            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_MIN_V_BPORCH            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_MIN_V_PORCH_RND         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_M_PRIME                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_PXL_CLK_GRAN            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_PXL_CLK_GRAN_RB_V2      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_RB_H_BLANK              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_RB_H_SYNC               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_RB_MIN_V_BLANK          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_RB_MIN_V_BPORCH         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_RB_V2_H_BLANK           : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_RB_V2_MIN_V_FPORCH      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_RB_V_BPORCH             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			CVT_RB_V_FPORCH             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			V4L2_DV_BT_656_1120         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			V4L2_DV_BT_STD_CVT          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			V4L2_DV_FL_HALF_LINE        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			V4L2_DV_FL_REDUCED_BLANKING : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			V4L2_DV_HSYNC_POS_POL       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			V4L2_DV_INTERLACED          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			V4L2_DV_PROGRESSIVE         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			V4L2_DV_VSYNC_POS_POL       : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address           : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable        : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read              : out std_logic;                                        -- read
			avmm_0_rw_readdata          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write             : out std_logic;                                        -- write
			avmm_0_rw_writedata         : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component v4l2_detect_cvt;

	u0 : component v4l2_detect_cvt
		port map (
			clock                       => CONNECTED_TO_clock,                       --                       clock.clk
			resetn                      => CONNECTED_TO_resetn,                      --                       reset.reset_n
			start                       => CONNECTED_TO_start,                       --                        call.valid
			busy                        => CONNECTED_TO_busy,                        --                            .stall
			done                        => CONNECTED_TO_done,                        --                      return.valid
			stall                       => CONNECTED_TO_stall,                       --                            .stall
			returndata                  => CONNECTED_TO_returndata,                  --                  returndata.data
			frame_height                => CONNECTED_TO_frame_height,                --                frame_height.data
			hfreq                       => CONNECTED_TO_hfreq,                       --                       hfreq.data
			vsync                       => CONNECTED_TO_vsync,                       --                       vsync.data
			active_width                => CONNECTED_TO_active_width,                --                active_width.data
			polarities                  => CONNECTED_TO_polarities,                  --                  polarities.data
			interlaced                  => CONNECTED_TO_interlaced,                  --                  interlaced.data
			fmt                         => CONNECTED_TO_fmt,                         --                         fmt.data
			CVT_CELL_GRAN               => CONNECTED_TO_CVT_CELL_GRAN,               --               CVT_CELL_GRAN.data
			CVT_C_PRIME                 => CONNECTED_TO_CVT_C_PRIME,                 --                 CVT_C_PRIME.data
			CVT_HSYNC_PERCENT           => CONNECTED_TO_CVT_HSYNC_PERCENT,           --           CVT_HSYNC_PERCENT.data
			CVT_MIN_VSYNC_BP            => CONNECTED_TO_CVT_MIN_VSYNC_BP,            --            CVT_MIN_VSYNC_BP.data
			CVT_MIN_V_BPORCH            => CONNECTED_TO_CVT_MIN_V_BPORCH,            --            CVT_MIN_V_BPORCH.data
			CVT_MIN_V_PORCH_RND         => CONNECTED_TO_CVT_MIN_V_PORCH_RND,         --         CVT_MIN_V_PORCH_RND.data
			CVT_M_PRIME                 => CONNECTED_TO_CVT_M_PRIME,                 --                 CVT_M_PRIME.data
			CVT_PXL_CLK_GRAN            => CONNECTED_TO_CVT_PXL_CLK_GRAN,            --            CVT_PXL_CLK_GRAN.data
			CVT_PXL_CLK_GRAN_RB_V2      => CONNECTED_TO_CVT_PXL_CLK_GRAN_RB_V2,      --      CVT_PXL_CLK_GRAN_RB_V2.data
			CVT_RB_H_BLANK              => CONNECTED_TO_CVT_RB_H_BLANK,              --              CVT_RB_H_BLANK.data
			CVT_RB_H_SYNC               => CONNECTED_TO_CVT_RB_H_SYNC,               --               CVT_RB_H_SYNC.data
			CVT_RB_MIN_V_BLANK          => CONNECTED_TO_CVT_RB_MIN_V_BLANK,          --          CVT_RB_MIN_V_BLANK.data
			CVT_RB_MIN_V_BPORCH         => CONNECTED_TO_CVT_RB_MIN_V_BPORCH,         --         CVT_RB_MIN_V_BPORCH.data
			CVT_RB_V2_H_BLANK           => CONNECTED_TO_CVT_RB_V2_H_BLANK,           --           CVT_RB_V2_H_BLANK.data
			CVT_RB_V2_MIN_V_FPORCH      => CONNECTED_TO_CVT_RB_V2_MIN_V_FPORCH,      --      CVT_RB_V2_MIN_V_FPORCH.data
			CVT_RB_V_BPORCH             => CONNECTED_TO_CVT_RB_V_BPORCH,             --             CVT_RB_V_BPORCH.data
			CVT_RB_V_FPORCH             => CONNECTED_TO_CVT_RB_V_FPORCH,             --             CVT_RB_V_FPORCH.data
			V4L2_DV_BT_656_1120         => CONNECTED_TO_V4L2_DV_BT_656_1120,         --         V4L2_DV_BT_656_1120.data
			V4L2_DV_BT_STD_CVT          => CONNECTED_TO_V4L2_DV_BT_STD_CVT,          --          V4L2_DV_BT_STD_CVT.data
			V4L2_DV_FL_HALF_LINE        => CONNECTED_TO_V4L2_DV_FL_HALF_LINE,        --        V4L2_DV_FL_HALF_LINE.data
			V4L2_DV_FL_REDUCED_BLANKING => CONNECTED_TO_V4L2_DV_FL_REDUCED_BLANKING, -- V4L2_DV_FL_REDUCED_BLANKING.data
			V4L2_DV_HSYNC_POS_POL       => CONNECTED_TO_V4L2_DV_HSYNC_POS_POL,       --       V4L2_DV_HSYNC_POS_POL.data
			V4L2_DV_INTERLACED          => CONNECTED_TO_V4L2_DV_INTERLACED,          --          V4L2_DV_INTERLACED.data
			V4L2_DV_PROGRESSIVE         => CONNECTED_TO_V4L2_DV_PROGRESSIVE,         --         V4L2_DV_PROGRESSIVE.data
			V4L2_DV_VSYNC_POS_POL       => CONNECTED_TO_V4L2_DV_VSYNC_POS_POL,       --       V4L2_DV_VSYNC_POS_POL.data
			avmm_0_rw_address           => CONNECTED_TO_avmm_0_rw_address,           --                   avmm_0_rw.address
			avmm_0_rw_byteenable        => CONNECTED_TO_avmm_0_rw_byteenable,        --                            .byteenable
			avmm_0_rw_read              => CONNECTED_TO_avmm_0_rw_read,              --                            .read
			avmm_0_rw_readdata          => CONNECTED_TO_avmm_0_rw_readdata,          --                            .readdata
			avmm_0_rw_write             => CONNECTED_TO_avmm_0_rw_write,             --                            .write
			avmm_0_rw_writedata         => CONNECTED_TO_avmm_0_rw_writedata          --                            .writedata
		);

