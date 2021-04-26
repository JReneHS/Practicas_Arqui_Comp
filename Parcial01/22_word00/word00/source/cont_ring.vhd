library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity ring00 is
	port(
		clk,clr:in std_logic;
		q:out std_logic_vector(3 downto 0)
	);
end ring00;

architecture cont of ring00 is
	signal qAux:std_logic_vector(3 downto 0);
	begin
		process(clk,clr)
		begin
			if(clr='1')then
				qAux<="0111";
				q<="0000";
			elsif(clk'event and clk='1')then
				qAux(3)<=qAux(0);
				qAux(2 downto 0)<= qAux(3 downto 1);
				q<=qAux;
			end if;
		end process;
end cont;
	