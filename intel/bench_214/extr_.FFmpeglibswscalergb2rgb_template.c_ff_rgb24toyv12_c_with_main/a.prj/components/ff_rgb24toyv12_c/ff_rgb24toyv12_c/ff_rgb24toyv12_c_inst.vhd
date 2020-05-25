	component ff_rgb24toyv12_c is
		port (
			clock                : in  std_logic                     := 'X';             -- clk
			resetn               : in  std_logic                     := 'X';             -- reset_n
			start                : in  std_logic                     := 'X';             -- valid
			busy                 : out std_logic;                                        -- stall
			done                 : out std_logic;                                        -- valid
			stall                : in  std_logic                     := 'X';             -- stall
			src                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ydst                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			udst                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			vdst                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			width                : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			height               : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			lumStride            : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			chromStride          : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			srcStride            : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			rgb2yuv              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			BU_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			BV_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			BY_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			GU_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			GV_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			GY_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			RGB2YUV_SHIFT        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			RU_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			RV_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			RY_IDX               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address    : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read       : out std_logic;                                        -- read
			avmm_0_rw_readdata   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write      : out std_logic;                                        -- write
			avmm_0_rw_writedata  : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component ff_rgb24toyv12_c;

	u0 : component ff_rgb24toyv12_c
		port map (
			clock                => CONNECTED_TO_clock,                --         clock.clk
			resetn               => CONNECTED_TO_resetn,               --         reset.reset_n
			start                => CONNECTED_TO_start,                --          call.valid
			busy                 => CONNECTED_TO_busy,                 --              .stall
			done                 => CONNECTED_TO_done,                 --        return.valid
			stall                => CONNECTED_TO_stall,                --              .stall
			src                  => CONNECTED_TO_src,                  --           src.data
			ydst                 => CONNECTED_TO_ydst,                 --          ydst.data
			udst                 => CONNECTED_TO_udst,                 --          udst.data
			vdst                 => CONNECTED_TO_vdst,                 --          vdst.data
			width                => CONNECTED_TO_width,                --         width.data
			height               => CONNECTED_TO_height,               --        height.data
			lumStride            => CONNECTED_TO_lumStride,            --     lumStride.data
			chromStride          => CONNECTED_TO_chromStride,          --   chromStride.data
			srcStride            => CONNECTED_TO_srcStride,            --     srcStride.data
			rgb2yuv              => CONNECTED_TO_rgb2yuv,              --       rgb2yuv.data
			BU_IDX               => CONNECTED_TO_BU_IDX,               --        BU_IDX.data
			BV_IDX               => CONNECTED_TO_BV_IDX,               --        BV_IDX.data
			BY_IDX               => CONNECTED_TO_BY_IDX,               --        BY_IDX.data
			GU_IDX               => CONNECTED_TO_GU_IDX,               --        GU_IDX.data
			GV_IDX               => CONNECTED_TO_GV_IDX,               --        GV_IDX.data
			GY_IDX               => CONNECTED_TO_GY_IDX,               --        GY_IDX.data
			RGB2YUV_SHIFT        => CONNECTED_TO_RGB2YUV_SHIFT,        -- RGB2YUV_SHIFT.data
			RU_IDX               => CONNECTED_TO_RU_IDX,               --        RU_IDX.data
			RV_IDX               => CONNECTED_TO_RV_IDX,               --        RV_IDX.data
			RY_IDX               => CONNECTED_TO_RY_IDX,               --        RY_IDX.data
			avmm_0_rw_address    => CONNECTED_TO_avmm_0_rw_address,    --     avmm_0_rw.address
			avmm_0_rw_byteenable => CONNECTED_TO_avmm_0_rw_byteenable, --              .byteenable
			avmm_0_rw_read       => CONNECTED_TO_avmm_0_rw_read,       --              .read
			avmm_0_rw_readdata   => CONNECTED_TO_avmm_0_rw_readdata,   --              .readdata
			avmm_0_rw_write      => CONNECTED_TO_avmm_0_rw_write,      --              .write
			avmm_0_rw_writedata  => CONNECTED_TO_avmm_0_rw_writedata   --              .writedata
		);

