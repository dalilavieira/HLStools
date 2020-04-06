library verilog;
use verilog.vl_types.all;
entity hex_digits is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        hex_LEDs        : out    vl_logic_vector(6 downto 0)
    );
end hex_digits;
