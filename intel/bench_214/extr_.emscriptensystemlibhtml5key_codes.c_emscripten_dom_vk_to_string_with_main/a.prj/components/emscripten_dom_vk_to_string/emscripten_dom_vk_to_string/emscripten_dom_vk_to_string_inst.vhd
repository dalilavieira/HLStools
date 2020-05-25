	component emscripten_dom_vk_to_string is
		port (
			clock       : in  std_logic                     := 'X';             -- clk
			resetn      : in  std_logic                     := 'X';             -- reset_n
			start       : in  std_logic                     := 'X';             -- valid
			busy        : out std_logic;                                        -- stall
			done        : out std_logic;                                        -- valid
			stall       : in  std_logic                     := 'X';             -- stall
			returndata  : out std_logic_vector(63 downto 0);                    -- data
			dom_vk_code : in  std_logic_vector(31 downto 0) := (others => 'X')  -- data
		);
	end component emscripten_dom_vk_to_string;

	u0 : component emscripten_dom_vk_to_string
		port map (
			clock       => CONNECTED_TO_clock,       --       clock.clk
			resetn      => CONNECTED_TO_resetn,      --       reset.reset_n
			start       => CONNECTED_TO_start,       --        call.valid
			busy        => CONNECTED_TO_busy,        --            .stall
			done        => CONNECTED_TO_done,        --      return.valid
			stall       => CONNECTED_TO_stall,       --            .stall
			returndata  => CONNECTED_TO_returndata,  --  returndata.data
			dom_vk_code => CONNECTED_TO_dom_vk_code  -- dom_vk_code.data
		);

