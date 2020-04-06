library verilog;
use verilog.vl_types.all;
entity de4 is
    port(
        OSC_50_BANK2    : in     vl_logic;
        BUTTON          : in     vl_logic_vector(1 downto 0);
        LED             : out    vl_logic_vector(7 downto 0);
        SEG0_D          : out    vl_logic_vector(6 downto 0);
        SEG1_D          : out    vl_logic_vector(6 downto 0)
    );
end de4;
