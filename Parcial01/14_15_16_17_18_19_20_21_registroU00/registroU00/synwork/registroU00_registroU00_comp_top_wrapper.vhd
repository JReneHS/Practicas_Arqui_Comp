--
-- Synopsys
-- Vhdl wrapper for top level design, written on Fri Mar 26 17:14:47 2021
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library work;
use work.packagerl00.all;

entity wrapper_for_topShiftRL00 is
   port (
      clk0 : in std_logic;
      cdiv0 : in std_logic_vector(4 downto 0);
      des0 : in std_logic_vector(2 downto 0);
      rul0 : in std_logic_vector(2 downto 0);
      en0 : in std_logic;
      in0 : in std_logic_vector(7 downto 0);
      out0 : out std_logic_vector(7 downto 0)
   );
end wrapper_for_topShiftRL00;

architecture topshiftrl0 of wrapper_for_topShiftRL00 is

component topShiftRL00
 port (
   clk0 : inout std_logic;
   cdiv0 : in std_logic_vector (4 downto 0);
   des0 : in std_logic_vector (2 downto 0);
   rul0 : in std_logic_vector (2 downto 0);
   en0 : in std_logic;
   in0 : in std_logic_vector (7 downto 0);
   out0 : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_clk0 : std_logic;
signal tmp_cdiv0 : std_logic_vector (4 downto 0);
signal tmp_des0 : std_logic_vector (2 downto 0);
signal tmp_rul0 : std_logic_vector (2 downto 0);
signal tmp_en0 : std_logic;
signal tmp_in0 : std_logic_vector (7 downto 0);
signal tmp_out0 : std_logic_vector (7 downto 0);

begin

tmp_clk0 <= clk0;

tmp_cdiv0 <= cdiv0;

tmp_des0 <= des0;

tmp_rul0 <= rul0;

tmp_en0 <= en0;

tmp_in0 <= in0;

out0 <= tmp_out0;



u1:   topShiftRL00 port map (
		clk0 => tmp_clk0,
		cdiv0 => tmp_cdiv0,
		des0 => tmp_des0,
		rul0 => tmp_rul0,
		en0 => tmp_en0,
		in0 => tmp_in0,
		out0 => tmp_out0
       );
end topshiftrl0;
