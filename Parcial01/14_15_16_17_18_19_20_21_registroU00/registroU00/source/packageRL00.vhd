library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

package packageRL00 is
	component shiftRL00 is
		port(
			clks:in std_logic;
			ens:in std_logic;
			controls:in std_logic_vector(2 downto 0);
			rul:in std_logic_vector(2 downto 0);
			ins:in std_logic_vector(7 downto 0);
			outs:out std_logic_vector(7 downto 0)
		);
	end component;

	component osc00 is
		port(
			cdiv:in std_logic_vector(4 downto 0);
			oscOut0:inout std_logic
		);
	end component;

end packageRL00;