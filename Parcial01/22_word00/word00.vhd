library ieee;
library machxo2;
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

use packageword00.all;

entity word00 is
	port(
		cdiv0:in std_logic_vector(4 downto 0);
		en0:in std_logic;
		clkout0:inout std_logic;
		outtran:out std_logic_vector(3 downto 0);
		outcode:out std_logic_vector(6 downto 0)
	);
end word00;

architecture word0 of word00 is
signal outaux:std_logic_vector(3 downto 0);
begin

	CW01: osc00 port map(
							cdiv=>cdiv0,
							oscOut0=>clkout0
						);
	
	CW02: ring00 port map(
							clk=>clkout0,
							clr=>en0,
							q=>outaux
						);

	CW03: coder00 port map(
							I=>outaux,
							s=>outcode
						);
	outtran<=outaux;

end word0;