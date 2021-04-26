library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagemult4bit00.all;

entity mult4bit00 is
  port(
       Ai: in std_logic_vector(3 downto 0);
	   Bi: in std_logic_vector(3 downto 0);
       Ro: out std_logic_vector(7 downto 0));
end mult4bit00;

architecture mult4bit0 of mult4bit00 is
signal S0, S3, S6, S8: std_logic_vector(2 downto 0);
signal S1, S2, S4, S5, S7: std_logic_vector(3 downto 0);
begin

  M00: anda00 port map(Aaa => Ai(0),
                       Baa => Bi(0),
                       Yaa => Ro(0));
  
  M01: anda00 port map(Aaa => Ai(1),
                       Baa => Bi(0),
                       Yaa => S0(0));
  
  M02: anda00 port map(Aaa => Ai(2),
                       Baa => Bi(0),
                       Yaa => S0(1));
  
  M03: anda00 port map(Aaa => Ai(3),
                       Baa => Bi(0),
                       Yaa => S0(2));
  
  M04: anda00 port map(Aaa => Ai(0),
                       Baa => Bi(1),
                       Yaa => S1(0));
  
  M05: anda00 port map(Aaa => Ai(1),
                       Baa => Bi(1),
                       Yaa => S1(1));
  
  M06: anda00 port map(Aaa => Ai(2),
                       Baa => Bi(1),
                       Yaa => S1(2));
  
  M07: anda00 port map(Aaa => Ai(3),
                       Baa => Bi(1),
                       Yaa => S1(3));
  
  M08: fa00 port map(C00 => '0',
                     A00 => S0(0),
					 B00 => S1(0),
					 C01 => S2(0),
                     S00 => Ro(1));
  
  M09: fa00 port map(C00 => S2(0),
                     A00 => S0(1),
					 B00 => S1(1),
					 C01 => S2(1),
                     S00 => S3(0));
  
  M10: fa00 port map(C00 => S2(1),
                     A00 => S0(2),
					 B00 => S1(2),
					 C01 => S2(2),
                     S00 => S3(1));
  
  M11: fa00 port map(C00 => S2(2),
                     A00 => '0',
					 B00 => S1(3),
					 C01 => S2(3),
                     S00 => S3(2));
  
  M12: anda00 port map(Aaa => Ai(0),
                       Baa => Bi(2),
                       Yaa => S4(0));
  
  M13: anda00 port map(Aaa => Ai(1),
                       Baa => Bi(2),
                       Yaa => S4(1));
  
  M14: anda00 port map(Aaa => Ai(2),
                       Baa => Bi(2),
                       Yaa => S4(2));
  
  M15: anda00 port map(Aaa => Ai(3),
                       Baa => Bi(2),
                       Yaa => S4(3));
  
  M16: fa00 port map(C00 => '0',
                     A00 => S3(0),
					 B00 => S4(0),
					 C01 => S5(0),
                     S00 => Ro(2));
  
  M17: fa00 port map(C00 => S5(0),
                     A00 => S3(1),
					 B00 => S4(1),
					 C01 => S5(1),
                     S00 => S6(0));
  
  M18: fa00 port map(C00 => S5(1),
                     A00 => S3(2),
					 B00 => S4(2),
					 C01 => S5(2),
                     S00 => S6(1));
  
  M19: fa00 port map(C00 => S5(2),
                     A00 => S2(3),
					 B00 => S4(3),
					 C01 => S5(3),
                     S00 => S6(2));
  
  M20: anda00 port map(Aaa => Ai(0),
                       Baa => Bi(3),
                       Yaa => S7(0));
  
  M21: anda00 port map(Aaa => Ai(1),
                       Baa => Bi(3),
                       Yaa => S7(1));
  
  M22: anda00 port map(Aaa => Ai(2),
                       Baa => Bi(3),
                       Yaa => S7(2));
  
  M23: anda00 port map(Aaa => Ai(3),
                       Baa => Bi(3),
                       Yaa => S7(3));
  
  M24: fa00 port map(C00 => '0',
                     A00 => S6(0),
					 B00 => S7(0),
					 C01 => S8(0),
                     S00 => Ro(3));
  
  M25: fa00 port map(C00 => S8(0),
                     A00 => S6(1),
					 B00 => S7(1),
					 C01 => S8(1),
                     S00 => Ro(4));
  
  M26: fa00 port map(C00 => S8(1),
                     A00 => S6(2),
					 B00 => S7(2),
					 C01 => S8(2),
                     S00 => Ro(5));
  
  M27: fa00 port map(C00 => S8(2),
                     A00 => S5(3),
					 B00 => S7(3),
					 C01 => Ro(7),
                     S00 => Ro(6));
  
end mult4bit0;