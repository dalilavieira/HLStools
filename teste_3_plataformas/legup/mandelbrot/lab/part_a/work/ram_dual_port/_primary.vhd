library verilog;
use verilog.vl_types.all;
entity ram_dual_port is
    generic(
        width_a         : vl_logic := Hi0;
        width_b         : vl_logic := Hi0;
        widthad_a       : vl_logic := Hi0;
        widthad_b       : vl_logic := Hi0;
        numwords_a      : vl_logic := Hi0;
        numwords_b      : vl_logic := Hi0;
        init_file       : string  := "UNUSED.mif";
        width_be_a      : vl_logic := Hi0;
        width_be_b      : vl_logic := Hi0;
        latency         : integer := 1
    );
    port(
        clk             : in     vl_logic;
        address_a       : in     vl_logic_vector;
        address_b       : in     vl_logic_vector;
        wren_a          : in     vl_logic;
        wren_b          : in     vl_logic;
        data_a          : in     vl_logic_vector;
        data_b          : in     vl_logic_vector;
        byteena_a       : in     vl_logic_vector;
        byteena_b       : in     vl_logic_vector;
        q_a             : out    vl_logic_vector;
        q_b             : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width_a : constant is 1;
    attribute mti_svvh_generic_type of width_b : constant is 1;
    attribute mti_svvh_generic_type of widthad_a : constant is 1;
    attribute mti_svvh_generic_type of widthad_b : constant is 1;
    attribute mti_svvh_generic_type of numwords_a : constant is 1;
    attribute mti_svvh_generic_type of numwords_b : constant is 1;
    attribute mti_svvh_generic_type of init_file : constant is 1;
    attribute mti_svvh_generic_type of width_be_a : constant is 1;
    attribute mti_svvh_generic_type of width_be_b : constant is 1;
    attribute mti_svvh_generic_type of latency : constant is 1;
end ram_dual_port;
