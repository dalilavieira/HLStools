	component SiS_Generic_ConvertCRData is
		port (
			clock                : in  std_logic                     := 'X';             -- clk
			resetn               : in  std_logic                     := 'X';             -- reset_n
			start                : in  std_logic                     := 'X';             -- valid
			busy                 : out std_logic;                                        -- stall
			done                 : out std_logic;                                        -- valid
			stall                : in  std_logic                     := 'X';             -- stall
			SiS_Pr               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			crdata               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			xres                 : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			yres                 : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			var0                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			writeres             : in  std_logic                     := 'X';             -- data
			avmm_0_rw_address    : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read       : out std_logic;                                        -- read
			avmm_0_rw_readdata   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write      : out std_logic;                                        -- write
			avmm_0_rw_writedata  : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component SiS_Generic_ConvertCRData;

	u0 : component SiS_Generic_ConvertCRData
		port map (
			clock                => CONNECTED_TO_clock,                --     clock.clk
			resetn               => CONNECTED_TO_resetn,               --     reset.reset_n
			start                => CONNECTED_TO_start,                --      call.valid
			busy                 => CONNECTED_TO_busy,                 --          .stall
			done                 => CONNECTED_TO_done,                 --    return.valid
			stall                => CONNECTED_TO_stall,                --          .stall
			SiS_Pr               => CONNECTED_TO_SiS_Pr,               --    SiS_Pr.data
			crdata               => CONNECTED_TO_crdata,               --    crdata.data
			xres                 => CONNECTED_TO_xres,                 --      xres.data
			yres                 => CONNECTED_TO_yres,                 --      yres.data
			var0                 => CONNECTED_TO_var0,                 --      var0.data
			writeres             => CONNECTED_TO_writeres,             --  writeres.data
			avmm_0_rw_address    => CONNECTED_TO_avmm_0_rw_address,    -- avmm_0_rw.address
			avmm_0_rw_byteenable => CONNECTED_TO_avmm_0_rw_byteenable, --          .byteenable
			avmm_0_rw_read       => CONNECTED_TO_avmm_0_rw_read,       --          .read
			avmm_0_rw_readdata   => CONNECTED_TO_avmm_0_rw_readdata,   --          .readdata
			avmm_0_rw_write      => CONNECTED_TO_avmm_0_rw_write,      --          .write
			avmm_0_rw_writedata  => CONNECTED_TO_avmm_0_rw_writedata   --          .writedata
		);

