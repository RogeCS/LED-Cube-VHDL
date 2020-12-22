library verilog;
use verilog.vl_types.all;
entity prueba is
    port(
        CLK             : in     vl_logic;
        START           : in     vl_logic;
        f_out           : out    vl_logic_vector(31 downto 0);
        c_out           : out    vl_logic_vector(31 downto 0);
        VCC_OUT         : out    vl_logic_vector(63 downto 0);
        GND_OUT         : out    vl_logic_vector(7 downto 0)
    );
end prueba;
