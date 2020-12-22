library verilog;
use verilog.vl_types.all;
entity prueba_vlg_check_tst is
    port(
        c_out           : in     vl_logic_vector(31 downto 0);
        f_out           : in     vl_logic_vector(31 downto 0);
        GND_OUT         : in     vl_logic_vector(7 downto 0);
        VCC_OUT         : in     vl_logic_vector(63 downto 0);
        sampler_rx      : in     vl_logic
    );
end prueba_vlg_check_tst;
