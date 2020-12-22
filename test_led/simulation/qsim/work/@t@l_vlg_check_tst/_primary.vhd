library verilog;
use verilog.vl_types.all;
entity TL_vlg_check_tst is
    port(
        GND_OUT         : in     vl_logic_vector(7 downto 0);
        LED_CLK_100     : in     vl_logic;
        VCC_OUT         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end TL_vlg_check_tst;
