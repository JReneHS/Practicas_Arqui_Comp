library lattice;
library ieee;
use ieee.std_logic_1164.all;
use lattice.all;

entity andTestBench00 is
	
end andTestBench00;

architecture andTestBench of andTestBench00 is
	component and00
		port(
			Aa:in std_logic_vector(7 downto 0);
			Ba:in std_logic_vector(7 downto 0);
			Ya:out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal auxAa: std_logic_vector(7 downto 0);
	signal auxBa: std_logic_vector(7 downto 0);
	signal auxYa: std_logic_vector(7 downto 0);

	begin
		A00: and00 port map(Aa=>auxAa,
							Ba=>auxBa,
							Ya=>auxYa);
		estimulos: process
		begin
			auxAa<="00011101";
			auxBa<="00101110";
			wait 50 ns;
			
			wait;
		end process;
end andTestBench;