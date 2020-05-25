	component c2c_decode_stats is
		port (
			clock                : in  std_logic                     := 'X';             -- clk
			resetn               : in  std_logic                     := 'X';             -- reset_n
			start                : in  std_logic                     := 'X';             -- valid
			busy                 : out std_logic;                                        -- stall
			done                 : out std_logic;                                        -- valid
			stall                : in  std_logic                     := 'X';             -- stall
			returndata           : out std_logic_vector(31 downto 0);                    -- data
			stats                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			mi                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LOCK_LOCKED : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_HIT     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_IO      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_L1      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_L2      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_L3      : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_LFB     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_LOC_RAM : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_MISS    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_LVL_UNC     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_OP_LOAD     : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_OP_STORE    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_SNOOP_HIT   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			PERF_MEM_SNOOP_HITM  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address    : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read       : out std_logic;                                        -- read
			avmm_0_rw_readdata   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write      : out std_logic;                                        -- write
			avmm_0_rw_writedata  : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component c2c_decode_stats;

	u0 : component c2c_decode_stats
		port map (
			clock                => CONNECTED_TO_clock,                --                clock.clk
			resetn               => CONNECTED_TO_resetn,               --                reset.reset_n
			start                => CONNECTED_TO_start,                --                 call.valid
			busy                 => CONNECTED_TO_busy,                 --                     .stall
			done                 => CONNECTED_TO_done,                 --               return.valid
			stall                => CONNECTED_TO_stall,                --                     .stall
			returndata           => CONNECTED_TO_returndata,           --           returndata.data
			stats                => CONNECTED_TO_stats,                --                stats.data
			mi                   => CONNECTED_TO_mi,                   --                   mi.data
			PERF_MEM_LOCK_LOCKED => CONNECTED_TO_PERF_MEM_LOCK_LOCKED, -- PERF_MEM_LOCK_LOCKED.data
			PERF_MEM_LVL_HIT     => CONNECTED_TO_PERF_MEM_LVL_HIT,     --     PERF_MEM_LVL_HIT.data
			PERF_MEM_LVL_IO      => CONNECTED_TO_PERF_MEM_LVL_IO,      --      PERF_MEM_LVL_IO.data
			PERF_MEM_LVL_L1      => CONNECTED_TO_PERF_MEM_LVL_L1,      --      PERF_MEM_LVL_L1.data
			PERF_MEM_LVL_L2      => CONNECTED_TO_PERF_MEM_LVL_L2,      --      PERF_MEM_LVL_L2.data
			PERF_MEM_LVL_L3      => CONNECTED_TO_PERF_MEM_LVL_L3,      --      PERF_MEM_LVL_L3.data
			PERF_MEM_LVL_LFB     => CONNECTED_TO_PERF_MEM_LVL_LFB,     --     PERF_MEM_LVL_LFB.data
			PERF_MEM_LVL_LOC_RAM => CONNECTED_TO_PERF_MEM_LVL_LOC_RAM, -- PERF_MEM_LVL_LOC_RAM.data
			PERF_MEM_LVL_MISS    => CONNECTED_TO_PERF_MEM_LVL_MISS,    --    PERF_MEM_LVL_MISS.data
			PERF_MEM_LVL_UNC     => CONNECTED_TO_PERF_MEM_LVL_UNC,     --     PERF_MEM_LVL_UNC.data
			PERF_MEM_OP_LOAD     => CONNECTED_TO_PERF_MEM_OP_LOAD,     --     PERF_MEM_OP_LOAD.data
			PERF_MEM_OP_STORE    => CONNECTED_TO_PERF_MEM_OP_STORE,    --    PERF_MEM_OP_STORE.data
			PERF_MEM_SNOOP_HIT   => CONNECTED_TO_PERF_MEM_SNOOP_HIT,   --   PERF_MEM_SNOOP_HIT.data
			PERF_MEM_SNOOP_HITM  => CONNECTED_TO_PERF_MEM_SNOOP_HITM,  --  PERF_MEM_SNOOP_HITM.data
			avmm_0_rw_address    => CONNECTED_TO_avmm_0_rw_address,    --            avmm_0_rw.address
			avmm_0_rw_byteenable => CONNECTED_TO_avmm_0_rw_byteenable, --                     .byteenable
			avmm_0_rw_read       => CONNECTED_TO_avmm_0_rw_read,       --                     .read
			avmm_0_rw_readdata   => CONNECTED_TO_avmm_0_rw_readdata,   --                     .readdata
			avmm_0_rw_write      => CONNECTED_TO_avmm_0_rw_write,      --                     .write
			avmm_0_rw_writedata  => CONNECTED_TO_avmm_0_rw_writedata   --                     .writedata
		);

