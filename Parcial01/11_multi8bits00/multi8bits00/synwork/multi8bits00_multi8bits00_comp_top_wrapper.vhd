--
-- Synopsys
-- Vhdl wrapper for top level design, written on Tue Mar 23 17:17:49 2021
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagemult8bit00.all;

entity wrapper_for_mult8bit00 is
   port (
      Ai : in std_logic_vector(7 downto 0);
      Bi : in std_logic_vector(7 downto 0);
      R0 : out std_logic_vector(15 downto 0)
   );
end wrapper_for_mult8bit00;

architecture mult8bit0 of wrapper_for_mult8bit00 is

component mult8bit00
 port (
   Ai : in std_logic_vector (7 downto 0);
   Bi : in std_logic_vector (7 downto 0);
   R0 : out std_logic_vector (15 downto 0)
 );
end component;

signal tmp_Ai : std_logic_vector (7 downto 0);
signal tmp_Bi : std_logic_vector (7 downto 0);
signal tmp_R0 : std_logic_vector (15 downto 0);

begin

tmp_Ai <= Ai;

tmp_Bi <= Bi;

R0 <= tmp_R0;



u1:   mult8bit00 port map (
		Ai => tmp_Ai,
		Bi => tmp_Bi,
		R0 => tmp_R0
       );
end mult8bit0;
