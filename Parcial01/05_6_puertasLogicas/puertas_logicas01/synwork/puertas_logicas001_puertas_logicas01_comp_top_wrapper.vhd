--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Mar 22 03:27:33 2021
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagelp00.all;

entity wrapper_for_puertas00 is
   port (
      AFa : in std_logic_vector(7 downto 0);
      BFa : in std_logic_vector(7 downto 0);
      SF : in std_logic_vector(2 downto 0);
      YFa : out std_logic_vector(7 downto 0)
   );
end wrapper_for_puertas00;

architecture puertas0 of wrapper_for_puertas00 is

component puertas00
 port (
   AFa : in std_logic_vector (7 downto 0);
   BFa : in std_logic_vector (7 downto 0);
   SF : in std_logic_vector (2 downto 0);
   YFa : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_AFa : std_logic_vector (7 downto 0);
signal tmp_BFa : std_logic_vector (7 downto 0);
signal tmp_SF : std_logic_vector (2 downto 0);
signal tmp_YFa : std_logic_vector (7 downto 0);

begin

tmp_AFa <= AFa;

tmp_BFa <= BFa;

tmp_SF <= SF;

YFa <= tmp_YFa;



u1:   puertas00 port map (
		AFa => tmp_AFa,
		BFa => tmp_BFa,
		SF => tmp_SF,
		YFa => tmp_YFa
       );
end puertas0;
