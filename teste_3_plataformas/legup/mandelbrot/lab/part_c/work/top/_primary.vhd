library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        start           : in     vl_logic;
        finish          : out    vl_logic;
        return_val      : out    vl_logic_vector(31 downto 0)
    );
end top;
