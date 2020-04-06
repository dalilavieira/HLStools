library verilog;
use verilog.vl_types.all;
entity memory_controller is
    port(
        clk             : in     vl_logic;
        memory_controller_address_a: in     vl_logic_vector(31 downto 0);
        memory_controller_address_b: in     vl_logic_vector(31 downto 0);
        memory_controller_enable_a: in     vl_logic;
        memory_controller_enable_b: in     vl_logic;
        memory_controller_write_enable_a: in     vl_logic;
        memory_controller_write_enable_b: in     vl_logic;
        memory_controller_in_a: in     vl_logic_vector(63 downto 0);
        memory_controller_in_b: in     vl_logic_vector(63 downto 0);
        memory_controller_size_a: in     vl_logic_vector(1 downto 0);
        memory_controller_size_b: in     vl_logic_vector(1 downto 0);
        memory_controller_waitrequest: in     vl_logic;
        memory_controller_out_reg_a: out    vl_logic_vector(63 downto 0);
        memory_controller_out_reg_b: out    vl_logic_vector(63 downto 0)
    );
end memory_controller;
