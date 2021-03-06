library lattice;
library ieee;
use ieee.std_logic_1164.all;
use lattice.all;

entity xnor00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ba:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end xnor00;

architecture xnor0 of xnor00 is
	begin
		Ya <= not(Aa xor Ba);
end xnor0;
