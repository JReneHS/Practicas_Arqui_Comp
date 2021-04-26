--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon Mar 29 13:11:47 2021
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packageword00.all;

entity wrapper_for_word00 is
   port (
      cdiv0 : in std_logic_vector(4 downto 0);
      en0 : in std_logic;
      clkout0 : in std_logic;
      outtran : out std_logic_vector(3 downto 0);
      outcode : out std_logic_vector(6 downto 0)
   );
end wrapper_for_word00;

architecture word0 of wrapper_for_word00 is

component word00
 port (
   cdiv0 : in std_logic_vector (4 downto 0);
   en0 : in std_logic;
   clkout0 : inout std_logic;
   outtran : out std_logic_vector (3 downto 0);
   outcode : out std_logic_vector (6 downto 0)
 );
end component;

signal tmp_cdiv0 : std_logic_vector (4 downto 0);
signal tmp_en0 : std_logic;
signal tmp_clkout0 : std_logic;
signal tmp_outtran : std_logic_vector (3 downto 0);
signal tmp_outcode : std_logic_vector (6 downto 0);

begin

tmp_cdiv0 <= cdiv0;

tmp_en0 <= en0;

tmp_clkout0 <= clkout0;

outtran <= tmp_outtran;

outcode <= tmp_outcode;



u1:   word00 port map (
		cdiv0 => tmp_cdiv0,
		en0 => tmp_en0,
		clkout0 => tmp_clkout0,
		outtran => tmp_outtran,
		outcode => tmp_outcode
       );
end word0;
