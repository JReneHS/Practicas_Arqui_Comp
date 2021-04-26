library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

use packageRL00.all;

entity topShiftRL00 is
	port(
		clk0:inout std_logic;
		cdiv0:in std_logic_vector(4 downto 0);
		des0:in std_logic_vector(2 downto 0);
		rul0:in std_logic_vector(2 downto 0);
		en0:in std_logic;
		in0:in std_logic_vector(7 downto 0);
		out0:out std_logic_vector(7 downto 0)
	);
end topShiftRL00;

architecture topShiftRL0 of topShiftRL00 is
begin
	SH00: osc00 port map(
						cdiv => cdiv0,
						oscOut0 => clk0
					);
	 
	SH01: shiftRL00 port map(
						clks => clk0,
						ens => en0,
						controls => des0,
						rul => rul0,
						ins => in0,
						outs => out0
					);
end topShiftRL0;