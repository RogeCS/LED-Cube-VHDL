library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity TEMPO is
	port (
		clk, rst, start: in std_logic;
		tempo_out : out integer range 0 to 2670
	);
end TEMPO;

-- el reloj maestro va a una frecuencia de 10Hz lo que nos da
-- un tiempo de 0.1s cada ciclo de reloj.
architecture ARC of TEMPO is

-- Vamos de 0 a 2530 ya que la canción dura (4:22 minutos / 253 segundos)
-- Si hacemos la conversión de 253 a decisegundos(0.1s) obtenemos que necesitamos
-- una cuenta de minimo 2616 ciclos para lograr cubrir los minutos de la canción. 
constant max_count: INTEGER := 2670;
signal count: INTEGER range 0 to max_count;

begin	
gen_clock: process(clk, rst, start, count)
	begin
		if rst = '1' then
			count <= 0;
		elsif clk'event and clk='1' and start = '1' then
			if count < max_count then 
				count <= count+1;
			else
				count <= 0;
			end if;
		end if;
end process;
tempo_out <= count;
end ARC;