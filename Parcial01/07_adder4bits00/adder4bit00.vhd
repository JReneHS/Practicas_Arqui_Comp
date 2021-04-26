library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

use packageAdder4bit00.all;

entity adder4bit00 is
	port(
		Ai:in std_logic_vector(3 downto 0);
		Bi:in std_logic_vector(3 downto 0);
		SL:in std_logic;
		So:out std_logic_vector(3 downto 0);
		LED:out std_logic
	);
end adder4bit00;

architecture adder4bit0 of adder4bit00 is

signal SA: std_logic_vector(3 downto 0);
signal SB: std_logic_vector(3 downto 0);
signal SC: std_logic_vector(3 downto 0);
signal SX: std_logic;
begin

	A00: xor00 port map(
					Ax=>SL,
					Bx=>Bi(0),
					Yx=>SB(0)
				);
	
	A01: xor00 port map(
					Ax=>SL,
					Bx=>Bi(1),
					Yx=>SB(1)
				);
	
	A02: xor00 port map(
					Ax=>SL,
					Bx=>Bi(2),
					Yx=>SB(2)
				);
	
	A03: xor00 port map(
					Ax=>SL,
					Bx=>Bi(3),
					Yx=>SB(3)
				);
	
	
	A04: FA00 port map(
					A00=>Ai(0),
					B00=>SB(0),
					C00=>SL,
					S00=>SA(0),
					C01=>SC(0)
				);
	
	A05: FA00 port map(
					A00=>Ai(1),
					B00=>SB(1),
					C00=>SC(0),
					S00=>SA(1),
					C01=>SC(1)
				);
	
	A06: FA00 port map(
					A00=>Ai(2),
					B00=>SB(2),
					C00=>SC(1),
					S00=>SA(2),
					C01=>SC(2)
				);
	
	A07: FA00 port map(
					A00=>Ai(3),
					B00=>SB(3),
					C00=>SC(2),
					S00=>SA(3),
					C01=>SC(3)
				);
	
	
	A08: and00 port map(
					Aa=>SX,
					Ba=>SA(0),
					Ya=>So(0)
				);
	
	A09: and00 port map(
					Aa=>SX,
					Ba=>SA(1),
					Ya=>So(1)
				);
	
	A10: and00 port map(
					Aa=>SX,
					Ba=>SA(2),
					Ya=>So(2)
				);
	
	A11: and00 port map(
					Aa=>SX,
					Ba=>SA(3),
					Ya=>So(3)
				);
	
	
	A12: xnor00 port map(
					Axn=>SC(2),
					Bxn=>SC(3),
					Yxn=>SX
				);
	
	A13: xor00 port map(
					Ax=>SC(2),
					Bx=>SC(3),
					Yx=>LED
				);

end adder4bit0;