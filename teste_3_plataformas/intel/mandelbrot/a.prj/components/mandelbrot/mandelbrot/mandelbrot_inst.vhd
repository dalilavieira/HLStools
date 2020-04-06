	component mandelbrot is
		port (
			clock   : in  std_logic                     := 'X';             -- clk
			resetn  : in  std_logic                     := 'X';             -- reset_n
			start   : in  std_logic                     := 'X';             -- valid
			busy    : out std_logic;                                        -- stall
			done    : out std_logic;                                        -- valid
			stall   : in  std_logic                     := 'X';             -- stall
			xmax    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			xmin    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			ymax    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			ymin    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			maxiter : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			xres    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			yres    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			dx      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			dy      : in  std_logic_vector(31 downto 0) := (others => 'X')  -- data
		);
	end component mandelbrot;

	u0 : component mandelbrot
		port map (
			clock   => CONNECTED_TO_clock,   --   clock.clk
			resetn  => CONNECTED_TO_resetn,  --   reset.reset_n
			start   => CONNECTED_TO_start,   --    call.valid
			busy    => CONNECTED_TO_busy,    --        .stall
			done    => CONNECTED_TO_done,    --  return.valid
			stall   => CONNECTED_TO_stall,   --        .stall
			xmax    => CONNECTED_TO_xmax,    --    xmax.data
			xmin    => CONNECTED_TO_xmin,    --    xmin.data
			ymax    => CONNECTED_TO_ymax,    --    ymax.data
			ymin    => CONNECTED_TO_ymin,    --    ymin.data
			maxiter => CONNECTED_TO_maxiter, -- maxiter.data
			xres    => CONNECTED_TO_xres,    --    xres.data
			yres    => CONNECTED_TO_yres,    --    yres.data
			dx      => CONNECTED_TO_dx,      --      dx.data
			dy      => CONNECTED_TO_dy       --      dy.data
		);

