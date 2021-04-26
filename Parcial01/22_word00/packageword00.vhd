library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

package packageword00 is

component osc00 is
	port(
		cdiv:in std_logic_vector(4 downto 0);
		oscOut0:inout std_logic
	);
end component;

component ring00 is
	port(
		clk,clr:in std_logic;
		q:out std_logic_vector(3 downto 0)
	);
end component;

component coder00 is
	port(
		I :in std_logic_vector(3 downto 0);
		s :out std_logic_vector(6 downto 0)
		);
end component;

end packageword00;