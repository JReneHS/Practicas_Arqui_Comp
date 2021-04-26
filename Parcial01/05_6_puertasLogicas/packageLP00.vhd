library lattice;
library ieee;
use ieee.std_logic_1164.all;
use lattice.all;

package packageLP00 is

component mux00 is
	port(
		I :in std_logic_vector(55 downto 0);
		s :in std_logic_vector(2 downto 0);
		ex_mux :out std_logic_vector(7 downto 0)
		);
end component;

component and00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ba:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end component;

component or00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ba:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end component;

component not00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end component;

component nand00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ba:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end component;

component nor00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ba:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end component;

component xor00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ba:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end component;

component xnor00 is
	port(
		Aa:in std_logic_vector(7 downto 0);
		Ba:in std_logic_vector(7 downto 0);
		Ya:out std_logic_vector(7 downto 0)
	);
end component;

end packageLP00;