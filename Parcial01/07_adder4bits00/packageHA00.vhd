library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageHA00 is

	component xor00 is
		port(
			Ax:in std_logic;
			Bx:in std_logic;
			Yx:out std_logic
		);
	end component;
	
	component and00 is
		port(
			Aa:in std_logic;
			Ba:in std_logic;
			Ya:out std_logic
		);
	end component;
end packageHA00;