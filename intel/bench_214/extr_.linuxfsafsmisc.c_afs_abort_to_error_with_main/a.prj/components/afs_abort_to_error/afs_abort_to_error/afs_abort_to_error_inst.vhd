	component afs_abort_to_error is
		port (
			clock                : in  std_logic                     := 'X';             -- clk
			resetn               : in  std_logic                     := 'X';             -- reset_n
			start                : in  std_logic                     := 'X';             -- valid
			busy                 : out std_logic;                                        -- stall
			done                 : out std_logic;                                        -- valid
			stall                : in  std_logic                     := 'X';             -- stall
			returndata           : out std_logic_vector(31 downto 0);                    -- data
			abort_code           : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			EACCES               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EAGAIN               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EBADRQC              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EBUSY                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EDEADLK              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EDOM                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EDQUOT               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EEXIST               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EFBIG                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EINVAL               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EIO                  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EISDIR               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EKEYEXPIRED          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EKEYREJECTED         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EMLINK               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENAMETOOLONG         : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENODEV               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOENT               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOLCK               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOMEDIUM            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOMEM               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOSPC               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOTCONN             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOTDIR              : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOTEMPTY            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENOTSUPP             : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ENXIO                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EPERM                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EPROTO               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ERANGE               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EREMOTEIO            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EROFS                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			ETIMEDOUT            : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EWOULDBLOCK          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			EXDEV                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address    : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read       : out std_logic;                                        -- read
			avmm_0_rw_readdata   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write      : out std_logic;                                        -- write
			avmm_0_rw_writedata  : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component afs_abort_to_error;

	u0 : component afs_abort_to_error
		port map (
			clock                => CONNECTED_TO_clock,                --        clock.clk
			resetn               => CONNECTED_TO_resetn,               --        reset.reset_n
			start                => CONNECTED_TO_start,                --         call.valid
			busy                 => CONNECTED_TO_busy,                 --             .stall
			done                 => CONNECTED_TO_done,                 --       return.valid
			stall                => CONNECTED_TO_stall,                --             .stall
			returndata           => CONNECTED_TO_returndata,           --   returndata.data
			abort_code           => CONNECTED_TO_abort_code,           --   abort_code.data
			EACCES               => CONNECTED_TO_EACCES,               --       EACCES.data
			EAGAIN               => CONNECTED_TO_EAGAIN,               --       EAGAIN.data
			EBADRQC              => CONNECTED_TO_EBADRQC,              --      EBADRQC.data
			EBUSY                => CONNECTED_TO_EBUSY,                --        EBUSY.data
			EDEADLK              => CONNECTED_TO_EDEADLK,              --      EDEADLK.data
			EDOM                 => CONNECTED_TO_EDOM,                 --         EDOM.data
			EDQUOT               => CONNECTED_TO_EDQUOT,               --       EDQUOT.data
			EEXIST               => CONNECTED_TO_EEXIST,               --       EEXIST.data
			EFBIG                => CONNECTED_TO_EFBIG,                --        EFBIG.data
			EINVAL               => CONNECTED_TO_EINVAL,               --       EINVAL.data
			EIO                  => CONNECTED_TO_EIO,                  --          EIO.data
			EISDIR               => CONNECTED_TO_EISDIR,               --       EISDIR.data
			EKEYEXPIRED          => CONNECTED_TO_EKEYEXPIRED,          --  EKEYEXPIRED.data
			EKEYREJECTED         => CONNECTED_TO_EKEYREJECTED,         -- EKEYREJECTED.data
			EMLINK               => CONNECTED_TO_EMLINK,               --       EMLINK.data
			ENAMETOOLONG         => CONNECTED_TO_ENAMETOOLONG,         -- ENAMETOOLONG.data
			ENODEV               => CONNECTED_TO_ENODEV,               --       ENODEV.data
			ENOENT               => CONNECTED_TO_ENOENT,               --       ENOENT.data
			ENOLCK               => CONNECTED_TO_ENOLCK,               --       ENOLCK.data
			ENOMEDIUM            => CONNECTED_TO_ENOMEDIUM,            --    ENOMEDIUM.data
			ENOMEM               => CONNECTED_TO_ENOMEM,               --       ENOMEM.data
			ENOSPC               => CONNECTED_TO_ENOSPC,               --       ENOSPC.data
			ENOTCONN             => CONNECTED_TO_ENOTCONN,             --     ENOTCONN.data
			ENOTDIR              => CONNECTED_TO_ENOTDIR,              --      ENOTDIR.data
			ENOTEMPTY            => CONNECTED_TO_ENOTEMPTY,            --    ENOTEMPTY.data
			ENOTSUPP             => CONNECTED_TO_ENOTSUPP,             --     ENOTSUPP.data
			ENXIO                => CONNECTED_TO_ENXIO,                --        ENXIO.data
			EPERM                => CONNECTED_TO_EPERM,                --        EPERM.data
			EPROTO               => CONNECTED_TO_EPROTO,               --       EPROTO.data
			ERANGE               => CONNECTED_TO_ERANGE,               --       ERANGE.data
			EREMOTEIO            => CONNECTED_TO_EREMOTEIO,            --    EREMOTEIO.data
			EROFS                => CONNECTED_TO_EROFS,                --        EROFS.data
			ETIMEDOUT            => CONNECTED_TO_ETIMEDOUT,            --    ETIMEDOUT.data
			EWOULDBLOCK          => CONNECTED_TO_EWOULDBLOCK,          --  EWOULDBLOCK.data
			EXDEV                => CONNECTED_TO_EXDEV,                --        EXDEV.data
			avmm_0_rw_address    => CONNECTED_TO_avmm_0_rw_address,    --    avmm_0_rw.address
			avmm_0_rw_byteenable => CONNECTED_TO_avmm_0_rw_byteenable, --             .byteenable
			avmm_0_rw_read       => CONNECTED_TO_avmm_0_rw_read,       --             .read
			avmm_0_rw_readdata   => CONNECTED_TO_avmm_0_rw_readdata,   --             .readdata
			avmm_0_rw_write      => CONNECTED_TO_avmm_0_rw_write,      --             .write
			avmm_0_rw_writedata  => CONNECTED_TO_avmm_0_rw_writedata   --             .writedata
		);

