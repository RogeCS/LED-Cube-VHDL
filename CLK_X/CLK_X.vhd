library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CLK_X is
	port (
		clk, rst, start: in std_logic;
		clk_out : out std_logic
	);
end CLK_X;

architecture ARC of CLK_X is
--2500000
constant max_count: INTEGER := 250;
signal count: INTEGER range 0 to max_count;
signal clk_temp: std_logic := '0';

begin	
gen_clock: process(clk, clk_temp, count)
	begin
		if rst = '1' then
			count <= 0;
			clk_temp <= '0';
		elsif clk'event and clk='1' and start = '1' then
			if count < max_count then 
				count <= count+1;
			else
				clk_temp <= not clk_temp;
				count <= 0;
			end if;
		end if;
end process;

process (clk_temp)
	begin
		clk_out <= clk_temp;
end process;
end ARC;