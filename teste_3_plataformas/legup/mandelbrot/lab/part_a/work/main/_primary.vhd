library verilog;
use verilog.vl_types.all;
entity main is
    generic(
        LEGUP_0         : vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_1\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        \LEGUP_F_main_BB__preheader_i_2\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        \LEGUP_F_main_BB__preheader_i_3\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        \LEGUP_F_main_BB__preheader_i_4\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_5\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        \LEGUP_F_main_BB__preheader_i_6\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        \LEGUP_F_main_BB__preheader_i_7\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        \LEGUP_F_main_BB__preheader_i_8\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_9\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1);
        \LEGUP_F_main_BB__preheader_i_10\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0);
        \LEGUP_F_main_BB__preheader_i_11\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1);
        \LEGUP_F_main_BB__preheader_i_12\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_13\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1);
        \LEGUP_F_main_BB__preheader_i_14\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0);
        \LEGUP_F_main_BB__preheader_i_15\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1);
        \LEGUP_F_main_BB__preheader_i_16\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_17\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1);
        \LEGUP_F_main_BB__preheader_i_18\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        \LEGUP_F_main_BB__preheader_i_19\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1);
        \LEGUP_F_main_BB__preheader_i_20\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_21\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1);
        \LEGUP_F_main_BB__preheader_i_22\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi0);
        \LEGUP_F_main_BB__preheader_i_23\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1);
        \LEGUP_F_main_BB__preheader_i_24\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_25\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1);
        \LEGUP_F_main_BB__preheader_i_26\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0);
        \LEGUP_F_main_BB__preheader_i_27\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi1);
        \LEGUP_F_main_BB__preheader_i_28\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_29\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi1);
        \LEGUP_F_main_BB__preheader_i_30\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0);
        \LEGUP_F_main_BB__preheader_i_31\: vl_logic_vector(6 downto 0) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1);
        \LEGUP_F_main_BB__preheader_i_32\: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        \LEGUP_F_main_BB__preheader_i_33\: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1);
        LEGUP_F_main_BB_5_34: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0);
        LEGUP_F_main_BB_5_35: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        LEGUP_F_main_BB_5_36: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        LEGUP_F_main_BB_5_37: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1);
        LEGUP_F_main_BB_5_38: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0);
        LEGUP_F_main_BB_5_39: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1);
        LEGUP_F_main_BB_5_40: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0);
        LEGUP_F_main_BB_5_41: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi1);
        LEGUP_F_main_BB_5_42: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0);
        LEGUP_F_main_BB_5_43: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1);
        LEGUP_F_main_BB_5_44: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi0);
        LEGUP_F_main_BB_5_45: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi1);
        LEGUP_F_main_BB_5_46: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0);
        LEGUP_F_main_BB_5_47: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1);
        LEGUP_F_main_BB_5_48: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0);
        LEGUP_F_main_BB_5_49: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1);
        LEGUP_F_main_BB_5_50: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0);
        LEGUP_F_main_BB_5_51: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1);
        LEGUP_F_main_BB_5_52: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0);
        LEGUP_F_main_BB_5_53: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1);
        LEGUP_F_main_BB_5_54: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi1, Hi0);
        LEGUP_F_main_BB_5_55: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi1, Hi1);
        LEGUP_F_main_BB_5_56: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0);
        LEGUP_F_main_BB_5_57: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1);
        LEGUP_F_main_BB_5_58: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0);
        LEGUP_F_main_BB_5_59: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1);
        LEGUP_F_main_BB_5_60: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0);
        LEGUP_F_main_BB_5_61: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1);
        LEGUP_F_main_BB_5_62: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0);
        LEGUP_F_main_BB_5_63: vl_logic_vector(6 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        LEGUP_F_main_BB_5_64: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        LEGUP_F_main_BB_5_65: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        LEGUP_F_main_BB_5_66: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        LEGUP_F_main_BB_5_67: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        LEGUP_loop_pipeline_wait_loop_1_68: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        LEGUP_F_main_BB_30_69: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        LEGUP_F_main_BB_34_70: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        LEGUP_F_main_BB_mandelbrot_exit_71: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        LEGUP_F_main_BB_38_72: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        LEGUP_F_main_BB_40_73: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1);
        LEGUP_F_main_BB_42_74: vl_logic_vector(6 downto 0) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0)
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
        return_val      : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LEGUP_0 : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_1\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_2\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_3\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_4\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_5\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_6\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_7\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_8\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_9\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_10\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_11\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_12\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_13\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_14\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_15\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_16\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_17\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_18\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_19\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_20\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_21\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_22\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_23\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_24\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_25\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_26\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_27\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_28\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_29\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_30\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_31\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_32\ : constant is 2;
    attribute mti_svvh_generic_type of \LEGUP_F_main_BB__preheader_i_33\ : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_34 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_35 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_36 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_37 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_38 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_39 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_40 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_41 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_42 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_43 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_44 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_45 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_46 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_47 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_48 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_49 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_50 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_51 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_52 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_53 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_54 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_55 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_56 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_57 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_58 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_59 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_60 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_61 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_62 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_63 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_64 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_65 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_66 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_5_67 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_loop_pipeline_wait_loop_1_68 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_30_69 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_34_70 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_mandelbrot_exit_71 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_38_72 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_40_73 : constant is 2;
    attribute mti_svvh_generic_type of LEGUP_F_main_BB_42_74 : constant is 2;
end main;