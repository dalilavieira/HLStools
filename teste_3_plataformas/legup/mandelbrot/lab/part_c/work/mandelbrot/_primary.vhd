library verilog;
use verilog.vl_types.all;
entity mandelbrot is
    generic(
        LEGUP_0         : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi0);
        LEGUP_F_mandelbrot_BB_entry_1: vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi1);
        LEGUP_F_mandelbrot_BB_entry_2: vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi0);
        LEGUP_F_mandelbrot_BB_entry_3: vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi1);
        LEGUP_F_mandelbrot_BB_bb5_preheader_lr_ph_4: vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi0);
        LEGUP_F_mandelbrot_BB_bb1_5: vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi1);
        LEGUP_F_mandelbrot_BB_bb1_6: vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi0);
        LEGUP_loop_pipeline_wait_loop_1_7: vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi1);
        LEGUP_F_mandelbrot_BB_bb4_8: vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi0);
        LEGUP_F_mandelbrot_BB_bb4_9: vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi1);
        LEGUP_F_mandelbrot_BB_bb6_10: vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi1, Hi0);
        LEGUP_F_mandelbrot_BB_bb5_preheader_11: vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi1, Hi1);
        LEGUP_F_mandelbrot_BB_bb7_bb8_crit_edge_12: vl_logic_vector(3 downto 0) := (Hi1, Hi1, Hi0, Hi0);
        LEGUP_F_mandelbrot_BB_bb8_13: vl_logic_vector(3 downto 0) := (Hi1, Hi1, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        clk2x           : in     vl_logic;
        clk1x_follower  : in     vl_logic;
        reset           : in     vl_logic;
        start           : in     vl_logic;
        finish          : out    vl_logic;
        memory_controller_enable_a: out    vl_logic;
        memory_controller_address_a: out    vl_logic_vector(31 downto 0);
        memory_controller_write_enable_a: out    vl_logic;
        memory_controller_in_a: out    vl_logic_vector(63 downto 0);
        memory_controller_size_a: out    vl_logic_vector(1 downto 0);
        memory_controller_out_a: in     vl_logic_vector(63 downto 0);
        memory_controller_enable_b: out    vl_logic;
        memory_controller_address_b: out    vl_logic_vector(31 downto 0);
        memory_controller_write_enable_b: out    vl_logic;
        memory_controller_in_b: out    vl_logic_vector(63 downto 0);
        memory_controller_size_b: out    vl_logic_vector(1 downto 0);
        memory_controller_out_b: in     vl_logic_vector(63 downto 0);
        memory_controller_waitrequest: in     vl_logic;
        return_val      : out    vl_logic_vector(31 downto 0);
        arg_threadarg   : in     vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LEGUP_0 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_entry_1 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_entry_2 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_entry_3 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb5_preheader_lr_ph_4 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb1_5 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb1_6 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_loop_pipeline_wait_loop_1_7 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb4_8 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb4_9 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb6_10 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb5_preheader_11 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb7_bb8_crit_edge_12 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_mandelbrot_BB_bb8_13 : constant is 2;
end mandelbrot;
