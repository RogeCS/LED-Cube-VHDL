library verilog;
use verilog.vl_types.all;
entity TL_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        START           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TL_vlg_sample_tst;
