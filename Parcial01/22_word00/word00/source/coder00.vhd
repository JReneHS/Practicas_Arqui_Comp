library ieee;
library machxo2;
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity coder00 is
	port(
		I :in std_logic_vector(3 downto 0);
		s :out std_logic_vector(6 downto 0)
		);
end coder00;

architecture coder0 of coder00 is 
begin
	process(I)
	begin
		case I is
		when "0111"	=>s<="1001110";--C
		when "1011"	=>s<="1001111";--E
		when "1101"	=>s<="0111100";--J
		when "1110" =>s<="1110111";--A
		when others =>s<="0000000";--off
		end case;
	end process;
end coder0;