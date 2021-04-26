library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

use packageFA00.all;

entity FA00 is
	port(
		A00:in std_logic;
		B00:in std_logic;
		C00:in std_logic;
		S00:out std_logic;
		C01:out std_logic
	);
end FA00;

architecture FA0 of FA00 is

signal Sint1: std_logic;
signal Cint1: std_logic;
signal Cint2: std_logic;

begin
	F00: HA00 port map(
					A0=>A00,
					B0=>B00,
					S0=>Sint1,
					C0=>Cint1
				);
	
	F01: HA00 port map(
					A0=>C00,
					B0=>Sint1,
					S0=>S00,
					C0=>Cint2
				);
	
	F02: or00 port map(
					Ao=>Cint2,
					Bo=>Cint1,
					Yo=>C01
				);
end FA0;