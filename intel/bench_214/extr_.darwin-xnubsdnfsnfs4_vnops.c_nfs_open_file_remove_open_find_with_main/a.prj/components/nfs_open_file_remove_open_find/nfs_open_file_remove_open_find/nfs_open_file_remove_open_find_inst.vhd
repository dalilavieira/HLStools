	component nfs_open_file_remove_open_find is
		port (
			clock                       : in  std_logic                     := 'X';             -- clk
			resetn                      : in  std_logic                     := 'X';             -- reset_n
			start                       : in  std_logic                     := 'X';             -- valid
			busy                        : out std_logic;                                        -- stall
			done                        : out std_logic;                                        -- valid
			stall                       : in  std_logic                     := 'X';             -- stall
			nofp                        : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			accessMode                  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			denyMode                    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			newAccessMode               : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			newDenyMode                 : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			delegated                   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			NFS_OPEN_SHARE_ACCESS_BOTH  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			NFS_OPEN_SHARE_ACCESS_READ  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			NFS_OPEN_SHARE_ACCESS_WRITE : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			NFS_OPEN_SHARE_DENY_NONE    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			NFS_OPEN_SHARE_DENY_READ    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			NFS_OPEN_SHARE_DENY_WRITE   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address           : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable        : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read              : out std_logic;                                        -- read
			avmm_0_rw_readdata          : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write             : out std_logic;                                        -- write
			avmm_0_rw_writedata         : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component nfs_open_file_remove_open_find;

	u0 : component nfs_open_file_remove_open_find
		port map (
			clock                       => CONNECTED_TO_clock,                       --                       clock.clk
			resetn                      => CONNECTED_TO_resetn,                      --                       reset.reset_n
			start                       => CONNECTED_TO_start,                       --                        call.valid
			busy                        => CONNECTED_TO_busy,                        --                            .stall
			done                        => CONNECTED_TO_done,                        --                      return.valid
			stall                       => CONNECTED_TO_stall,                       --                            .stall
			nofp                        => CONNECTED_TO_nofp,                        --                        nofp.data
			accessMode                  => CONNECTED_TO_accessMode,                  --                  accessMode.data
			denyMode                    => CONNECTED_TO_denyMode,                    --                    denyMode.data
			newAccessMode               => CONNECTED_TO_newAccessMode,               --               newAccessMode.data
			newDenyMode                 => CONNECTED_TO_newDenyMode,                 --                 newDenyMode.data
			delegated                   => CONNECTED_TO_delegated,                   --                   delegated.data
			NFS_OPEN_SHARE_ACCESS_BOTH  => CONNECTED_TO_NFS_OPEN_SHARE_ACCESS_BOTH,  --  NFS_OPEN_SHARE_ACCESS_BOTH.data
			NFS_OPEN_SHARE_ACCESS_READ  => CONNECTED_TO_NFS_OPEN_SHARE_ACCESS_READ,  --  NFS_OPEN_SHARE_ACCESS_READ.data
			NFS_OPEN_SHARE_ACCESS_WRITE => CONNECTED_TO_NFS_OPEN_SHARE_ACCESS_WRITE, -- NFS_OPEN_SHARE_ACCESS_WRITE.data
			NFS_OPEN_SHARE_DENY_NONE    => CONNECTED_TO_NFS_OPEN_SHARE_DENY_NONE,    --    NFS_OPEN_SHARE_DENY_NONE.data
			NFS_OPEN_SHARE_DENY_READ    => CONNECTED_TO_NFS_OPEN_SHARE_DENY_READ,    --    NFS_OPEN_SHARE_DENY_READ.data
			NFS_OPEN_SHARE_DENY_WRITE   => CONNECTED_TO_NFS_OPEN_SHARE_DENY_WRITE,   --   NFS_OPEN_SHARE_DENY_WRITE.data
			avmm_0_rw_address           => CONNECTED_TO_avmm_0_rw_address,           --                   avmm_0_rw.address
			avmm_0_rw_byteenable        => CONNECTED_TO_avmm_0_rw_byteenable,        --                            .byteenable
			avmm_0_rw_read              => CONNECTED_TO_avmm_0_rw_read,              --                            .read
			avmm_0_rw_readdata          => CONNECTED_TO_avmm_0_rw_readdata,          --                            .readdata
			avmm_0_rw_write             => CONNECTED_TO_avmm_0_rw_write,             --                            .write
			avmm_0_rw_writedata         => CONNECTED_TO_avmm_0_rw_writedata          --                            .writedata
		);

