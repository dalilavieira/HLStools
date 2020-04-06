library verilog;
use verilog.vl_types.all;
entity legup_pthreadpoll is
    generic(
        LEGUP_0         : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        LEGUP_F_legup_pthreadpoll_BB_entry_1: vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        LEGUP_F_legup_pthreadpoll_BB_entry_3: vl_logic_vector(1 downto 0) := (Hi1, Hi1);
        LEGUP_function_call_2: vl_logic_vector(1 downto 0) := (Hi1, Hi0)
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
        arg_threadID    : in     vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LEGUP_0 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_legup_pthreadpoll_BB_entry_1 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_legup_pthreadpoll_BB_entry_3 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_function_call_2 : constant is 2;
end legup_pthreadpoll;
