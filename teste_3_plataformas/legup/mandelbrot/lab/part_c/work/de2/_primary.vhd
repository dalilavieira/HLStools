library verilog;
use verilog.vl_types.all;
entity de2 is
    generic(
        s_WAIT          : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        s_START         : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        s_EXE           : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        s_DONE          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0)
    );
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(3 downto 0);
        SW              : in     vl_logic_vector(17 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0);
        LEDG            : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of s_WAIT : constant is 1;
    attribute mti_svvh_generic_type of s_START : constant is 1;
    attribute mti_svvh_generic_type of s_EXE : constant is 1;
    attribute mti_svvh_generic_type of s_DONE : constant is 1;
end de2;
