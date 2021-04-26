library lattice;
library ieee;
use ieee.std_logic_1164.all;
use lattice.all;

entity nand00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ba:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end nand00;

architecture nand0 of nand00 is
	begin
		Ya <= not(Aa and Ba);
end nand0;
