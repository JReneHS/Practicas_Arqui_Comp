library lattice;
library ieee;
use ieee.std_logic_1164.all;
use lattice.all;

use packageLP00.all;

entity puertas00 is
	port(
		AFa:in std_logic_vector(7 downto 0);
		BFa:in std_logic_vector(7 downto 0);
		SF :in std_logic_vector(2 downto 0);
		YFa:out std_logic_vector(7 downto 0)
	);
end puertas00;

architecture puertas0 of puertas00 is

	signal mux_aux: std_logic_vector(55 downto 0);
begin
	
	h00: not00  port map(
						Aa=>AFa,
						Ya=>mux_aux(7 downto 0)
						);
	
	h01: and00  port map(
						Aa=>AFa,
						Ba=>BFa,
						Ya=>mux_aux(15 downto 8)
						);
	
	h02: nand00 port map(
						Aa=>AFa,
						Ba=>BFa,
						Ya=>mux_aux(23 downto 16)
						);
	
	h03: or00   port map(
						Aa=>AFa,
						Ba=>BFa,
						Ya=>mux_aux(31 downto 24)
						);
	
	h04: nor00  port map(
						Aa=>AFa,
						Ba=>BFa,
						Ya=>mux_aux(39 downto 32)
						);
	
	h05: xor00  port map(
						Aa=>AFa,
						Ba=>BFa,
						Ya=>mux_aux(47 downto 40)
						);
	
	h06: xnor00 port map(
						Aa=>AFa,
						Ba=>BFa,
						Ya=>mux_aux(55 downto 48)
						);
	
	h07: mux00  port map(
						I=>mux_aux,
						s=>SF,
						ex_mux=>YFa
						);

end puertas0;