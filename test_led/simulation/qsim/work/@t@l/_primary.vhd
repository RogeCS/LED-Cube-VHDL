library verilog;
use verilog.vl_types.all;
entity TL is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        START           : in     vl_logic;
        VCC_OUT         : out    vl_logic_vector(7 downto 0);
        GND_OUT         : out    vl_logic_vector(7 downto 0);
        LED_CLK_100     : out    vl_logic
    );
end TL;
