library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagemult8bit00.all;

entity mult8bit00 is
  port(
       Ai: in std_logic_vector(7 downto 0);
	   Bi: in std_logic_vector(7 downto 0);
       R0: out std_logic_vector(15 downto 0));
end mult8bit00;

architecture mult8bit0 of mult8bit00 is
signal sa00, sa01, sa02, sa03, sa04, sa05, sa06, sa07: std_logic_vector(7 downto 0);
signal sc00, sc01, sc02, sc03, sc04, sc05, sc06: std_logic_vector(7 downto 0);
signal ss00, ss01, ss02, ss03, ss04, ss05, ss06: std_logic_vector(7 downto 0);
begin
-----------------------------------------------------------------
--                             AND0                            --
-----------------------------------------------------------------
  M000: anda00 port map(
						Aaa => Ai(0),
						Baa => Bi(0),
						Yaa => sa00(0))
						;
  
  M001: anda00 port map(
						Aaa =>Ai(1),
						Baa => Bi(0),
						Yaa =>sa00(1)
						);
  
  M002: anda00 port map(
						Aaa => Ai(2),
						Baa => Bi(0),
						Yaa => sa00(2)
					   );
  
  M003: anda00 port map(
						Aaa => Ai(3),
						Baa => Bi(0),
						Yaa => sa00(3)
						);
  
  M004: anda00 port map(
						Aaa => Ai(4),
						Baa => Bi(0),
						Yaa => sa00(4)
						);
  
  M005: anda00 port map(
						Aaa => Ai(5),
						Baa => Bi(0),
						Yaa => sa00(5)
						);
  
  M006: anda00 port map(
						Aaa => Ai(6),
						Baa => Bi(0),
						Yaa => sa00(6)
						);
  
  M007: anda00 port map(
						Aaa => Ai(7),
						Baa => Bi(0),
						Yaa => sa00(7)
						);
					   
------------------------------------------------------------------
				 
  M008: anda00 port map(
						Aaa => Ai(0),
						Baa => Bi(1),
						Yaa => sa01(0)
						);
  
  M009: anda00 port map(
						Aaa => Ai(1),
						Baa => Bi(1),
						Yaa => sa01(1)
						);
  
  M010: anda00 port map(
						Aaa => Ai(2),
						Baa => Bi(1),
						Yaa => sa01(2)
						);
  
  M011: anda00 port map(
						Aaa => Ai(3),
						Baa => Bi(1),
						Yaa => sa01(3)
						);
  
  M012: anda00 port map(
						Aaa => Ai(4),
						Baa => Bi(1),
						Yaa => sa01(4)
						);
  
  M013: anda00 port map(
						Aaa => Ai(5),
						Baa => Bi(1),
						Yaa => sa01(5)
						);
  
  M014: anda00 port map(
						Aaa => Ai(6),
						Baa => Bi(1),
						Yaa => sa01(6)
						);
  
  M015: anda00 port map(
						Aaa => Ai(7),
						Baa => Bi(1),
						Yaa => sa01(7)
						);

-----------------------------------------------------------------
--                             FA0                             --
-----------------------------------------------------------------
  
  M016: fa00 port map(
					C00 =>'0',
                    A00 =>sa00(1),
					B00 =>sa01(0),
					C01 =>sc00(0),
                    S00 =>ss00(0)
					 );
  
  M017: fa00 port map(
					C00 =>sc00(0),
                    A00 =>sa00(2),
					B00 =>sa01(1),
					C01 =>sc00(1),
                    S00 =>ss00(1)
					 );
  
  M018: fa00 port map(
					C00 =>sc00(1),
                    A00 =>sa00(3),
					B00 =>sa01(2),
					C01 =>sc00(2),
                    S00 =>ss00(2)
					 );
  
  M019: fa00 port map(
					C00 =>sc00(2),
                    A00 =>sa00(4),
					B00 =>sa01(3),
					C01 =>sc00(3),
                    S00 =>ss00(3)
					 );

  M020: fa00 port map(
					C00 =>sc00(3),
                    A00 =>sa00(5),
					B00 =>sa01(4),
					C01 =>sc00(4),
                    S00 =>ss00(4)
					 );
  
  M021: fa00 port map(
					C00 =>sc00(4),
                    A00 =>sa00(6),
					B00 =>sa01(5),
					C01 =>sc00(5),
                    S00 =>ss00(5)
					 );
  
  M022: fa00 port map(
					C00 =>sc00(5),
                    A00 =>sa00(7),
					B00 =>sa01(6),
					C01 =>sc00(6),
                    S00 =>ss00(6)
					 );
  
  M023: fa00 port map(
					C00 =>sc00(6),
                    A00 =>'0',
					B00 =>sa01(7),
					C01 =>sc00(7),
                    S00 =>ss00(7)
					 );

-----------------------------------------------------------------
--                             AND1                            --
-----------------------------------------------------------------
  M024: anda00 port map(
						Aaa => Ai(0),
						Baa => Bi(2),
						Yaa => sa02(0)
						);
  
  M025: anda00 port map(
						Aaa => Ai(1),
						Baa => Bi(2),
						Yaa => sa02(1)
						);
  
  M026: anda00 port map(
						Aaa => Ai(2),
						Baa => Bi(2),
						Yaa => sa02(2)
						);
  
  M027: anda00 port map(
						Aaa => Ai(3),
						Baa => Bi(2),
						Yaa => sa02(3)
						);
					   
  M028: anda00 port map(
						Aaa => Ai(4),
						Baa => Bi(2),
						Yaa => sa02(4)
						);
  
  M029: anda00 port map(
						Aaa => Ai(5),
						Baa => Bi(2),
						Yaa => sa02(5)
						);
  
  M030: anda00 port map(
						Aaa => Ai(6),
						Baa => Bi(2),
						Yaa => sa02(6)
						);
  
  M031: anda00 port map(
						Aaa => Ai(7),
						Baa => Bi(2),
						Yaa => sa02(7)
						);
  
-----------------------------------------------------------------
--                             FA1                             --
-----------------------------------------------------------------
  
  M032: fa00 port map(
					C00 =>'0',
                    A00 =>ss00(1),
					B00 =>sa02(0),
					C01 =>sc01(0),
                    S00 =>ss01(0)
					 );
  
  M033: fa00 port map(
					C00 =>sc01(0),
                    A00 =>ss00(2),
					B00 =>sa02(1),
					C01 =>sc01(1),
                    S00 =>ss01(1)
					 );
  
  M034: fa00 port map(
					C00 =>sc01(1),
                    A00 =>ss00(3),
					B00 =>sa02(2),
					C01 =>sc01(2),
                    S00 =>ss01(2)
					 );
  
  M035: fa00 port map(
					C00 =>sc01(2),
                    A00 =>ss00(4),
					B00 =>sa02(3),
					C01 =>sc01(3),
                    S00 =>ss01(3)
					 );
					 
  M036: fa00 port map(
					C00 =>sc01(3),
                    A00 =>ss00(5),
					B00 =>sa02(4),
					C01 =>sc01(4),
                    S00 =>ss01(4)
					 );
  
  M037: fa00 port map(
					C00 =>sc01(4),
                    A00 =>ss00(6),
					B00 =>sa02(5),
					C01 =>sc01(5),
                    S00 =>ss01(5)
					 );
  
  M038: fa00 port map(
					C00 =>sc01(5),
                    A00 =>ss00(7),
					B00 =>sa02(6),
					C01 =>sc01(6),
                    S00 =>ss01(6)
					 );
  
  M039: fa00 port map(
					C00 =>sc01(6),
                    A00 =>sc00(7),
					B00 =>sa02(7),
					C01 =>sc01(7),
                    S00 =>ss01(7)
					 );
  
-----------------------------------------------------------------
--                             AND2                            --
-----------------------------------------------------------------

  M040: anda00 port map(
						Aaa => Ai(0),
						Baa => Bi(3),
						Yaa => sa03(0)
						);
  
  M041: anda00 port map(
						Aaa => Ai(1),
						Baa => Bi(3),
						Yaa => sa03(1)
						);
  
  M042: anda00 port map(
						Aaa => Ai(2),
						Baa => Bi(3),
						Yaa => sa03(2)
						);
  
  M043: anda00 port map(
						Aaa => Ai(3),
						Baa => Bi(3),
						Yaa => sa03(3)
						);
					   
  M044: anda00 port map(
						Aaa => Ai(4),
						Baa => Bi(3),
						Yaa => sa03(4)
						);
  
  M045: anda00 port map(
						Aaa => Ai(5),
						Baa => Bi(3),
						Yaa => sa03(5)
						);
  
  M046: anda00 port map(
						Aaa => Ai(6),
						Baa => Bi(3),
						Yaa => sa03(6)
						);
  
  M047: anda00 port map(
						Aaa => Ai(7),
						Baa => Bi(3),
						Yaa => sa03(7)
						);
 
 ----------------------------------------------------------------
--                             FA2                             --
-----------------------------------------------------------------
 
  M048: fa00 port map(
					C00 =>'0',
                    A00 =>ss01(1),
					B00 =>sa03(0),
					C01 =>sc02(0),
                    S00 =>ss02(0)
					 );
  
  M049: fa00 port map(
					C00 =>sc02(0),
                    A00 =>ss01(2),
					B00 =>sa03(1),
					C01 =>sc02(1),
                    S00 =>ss02(1)
					 );
  
  M050: fa00 port map(
					C00 =>sc02(1),
                    A00 =>ss01(3),
					B00 =>sa03(2),
					C01 =>sc02(2),
                    S00 =>ss02(2)
					 );
  
  M051: fa00 port map(
					C00 =>sc02(2),
                    A00 =>ss01(4),
					B00 =>sa03(3),
					C01 =>sc02(3),
                    S00 =>ss02(3)
					 );
  
   M052: fa00 port map(
					C00 =>sc02(3),
                    A00 =>ss01(5),
					B00 =>sa03(4),
					C01 =>sc02(4),
                    S00 =>ss02(4)
					 );
  
  M053: fa00 port map(
					C00 =>sc02(4),
                    A00 =>ss01(6),
					B00 =>sa03(5),
					C01 =>sc02(5),
                    S00 =>ss02(5)
					 );
  
  M054: fa00 port map(
					C00 =>sc02(5),
                    A00 =>ss01(7),
					B00 =>sa03(6),
					C01 =>sc02(6),
                    S00 =>ss02(6)
					 );
  
  M055: fa00 port map(
					C00 =>sc02(6),
                    A00 =>sc01(7),
					B00 =>sa03(7),
					C01 =>sc02(7),
                    S00 =>ss02(7)
					 );
					 
-----------------------------------------------------------------
--                             AND3                            --
-----------------------------------------------------------------

  M056: anda00 port map(
						Aaa => Ai(0),
						Baa => Bi(4),
						Yaa => sa04(0)
						);
  
  M057: anda00 port map(
						Aaa => Ai(1),
						Baa => Bi(4),
						Yaa => sa04(1)
						);
  
  M058: anda00 port map(
						Aaa => Ai(2),
						Baa => Bi(4),
						Yaa => sa04(2)
						);
  
  M059: anda00 port map(
						Aaa => Ai(3),
						Baa => Bi(4),
						Yaa => sa04(3)
						);
					   
  M060: anda00 port map(
						Aaa => Ai(4),
						Baa => Bi(4),
						Yaa => sa04(4)
						);
  
  M061: anda00 port map(
						Aaa => Ai(5),
						Baa => Bi(4),
						Yaa => sa04(5)
						);
  
  M062: anda00 port map(
						Aaa => Ai(6),
						Baa => Bi(4),
						Yaa => sa04(6)
						);
  
  M063: anda00 port map(
						Aaa => Ai(7),
						Baa => Bi(4),
						Yaa => sa04(7)
						);
 
 ----------------------------------------------------------------
--                             FA3                             --
-----------------------------------------------------------------
 
  M064: fa00 port map(
					C00 =>'0',
                    A00 =>ss02(1),
					B00 =>sa04(0),
					C01 =>sc03(0),
                    S00 =>ss03(0)
					 );
  
  M065: fa00 port map(
					C00 =>sc03(0),
                    A00 =>ss02(2),
					B00 =>sa04(1),
					C01 =>sc03(1),
                    S00 =>ss03(1)
					 );
  
  M066: fa00 port map(
					C00 =>sc03(1),
                    A00 =>ss02(3),
					B00 =>sa04(2),
					C01 =>sc03(2),
                    S00 =>ss03(2)
					 );
  
  M067: fa00 port map(
					C00 =>sc03(2),
                    A00 =>ss02(4),
					B00 =>sa04(3),
					C01 =>sc03(3),
                    S00 =>ss03(3)
					 );
  
   M068: fa00 port map(
					C00 =>sc03(3),
                    A00 =>ss02(5),
					B00 =>sa04(4),
					C01 =>sc03(4),
                    S00 =>ss03(4)
					 );
  
  M069: fa00 port map(
					C00 =>sc03(4),
                    A00 =>ss02(6),
					B00 =>sa04(5),
					C01 =>sc03(5),
                    S00 =>ss03(5)
					 );
  
  M070: fa00 port map(
					C00 =>sc03(5),
                    A00 =>ss02(7),
					B00 =>sa04(6),
					C01 =>sc03(6),
                    S00 =>ss03(6)
					 );
  
  M071: fa00 port map(
					C00 =>sc03(6),
                    A00 =>sc02(7),
					B00 =>sa04(7),
					C01 =>sc03(7),
                    S00 =>ss03(7)
					 );
					 
-----------------------------------------------------------------
--                             AND4                            --
-----------------------------------------------------------------

  M072: anda00 port map(
						Aaa => Ai(0),
						Baa => Bi(5),
						Yaa => sa05(0)
						);
  
  M073: anda00 port map(
						Aaa => Ai(1),
						Baa => Bi(5),
						Yaa => sa05(1)
						);
  
  M074: anda00 port map(
						Aaa => Ai(2),
						Baa => Bi(5),
						Yaa => sa05(2)
						);
  
  M075: anda00 port map(
						Aaa => Ai(3),
						Baa => Bi(5),
						Yaa => sa05(3)
						);
					   
  M076: anda00 port map(
						Aaa => Ai(4),
						Baa => Bi(5),
						Yaa => sa05(4)
						);
  
  M077: anda00 port map(
						Aaa => Ai(5),
						Baa => Bi(5),
						Yaa => sa05(5)
						);
  
  M078: anda00 port map(
						Aaa => Ai(6),
						Baa => Bi(5),
						Yaa => sa05(6)
						);
  
  M079: anda00 port map(
						Aaa => Ai(7),
						Baa => Bi(5),
						Yaa => sa05(7)
						);
 
 ----------------------------------------------------------------
--                             FA4                             --
-----------------------------------------------------------------
 
  M080: fa00 port map(
					C00 =>'0',
                    A00 =>ss03(1),
					B00 =>sa05(0),
					C01 =>sc04(0),
                    S00 =>ss04(0)
					 );
  
  M081: fa00 port map(
					C00 =>sc04(0),
                    A00 =>ss03(2),
					B00 =>sa05(1),
					C01 =>sc04(1),
                    S00 =>ss04(1)
					 );
  
  M082: fa00 port map(
					C00 =>sc04(1),
                    A00 =>ss03(3),
					B00 =>sa05(2),
					C01 =>sc04(2),
                    S00 =>ss04(2)
					 );
  
  M083: fa00 port map(
					C00 =>sc04(2),
                    A00 =>ss03(4),
					B00 =>sa05(3),
					C01 =>sc04(3),
                    S00 =>ss04(3)
					 );
  
   M084: fa00 port map(
					C00 =>sc04(3),
                    A00 =>ss03(5),
					B00 =>sa05(4),
					C01 =>sc04(4),
                    S00 =>ss04(4)
					 );
  
  M085: fa00 port map(
					C00 =>sc04(4),
                    A00 =>ss03(6),
					B00 =>sa05(5),
					C01 =>sc04(5),
                    S00 =>ss04(5)
					 );
  
  M086: fa00 port map(
					C00 =>sc04(5),
                    A00 =>ss03(7),
					B00 =>sa05(6),
					C01 =>sc04(6),
                    S00 =>ss04(6)
					 );
  
  M087: fa00 port map(
					C00 =>sc04(6),
                    A00 =>sc03(7),
					B00 =>sa05(7),
					C01 =>sc04(7),
                    S00 =>ss04(7)
					 );
					 
-----------------------------------------------------------------
--                             AND5                            --
-----------------------------------------------------------------

  M088: anda00 port map(
						Aaa => Ai(0),
						Baa => Bi(6),
						Yaa => sa06(0)
						);
  
  M089: anda00 port map(
						Aaa => Ai(1),
						Baa => Bi(6),
						Yaa => sa06(1)
						);

  M090: anda00 port map(
						Aaa => Ai(2),
						Baa => Bi(6),
						Yaa => sa06(2)
						);
  
  M091: anda00 port map(
						Aaa => Ai(3),
						Baa => Bi(6),
						Yaa => sa06(3)
						);
					   
  M092: anda00 port map(
						Aaa => Ai(4),
						Baa => Bi(6),
						Yaa => sa06(4)
						);
  
  M093: anda00 port map(
						Aaa => Ai(5),
						Baa => Bi(6),
						Yaa => sa06(5)
						);
  
  M094: anda00 port map(
						Aaa => Ai(6),
						Baa => Bi(6),
						Yaa => sa06(6)
						);
  
  M095: anda00 port map(
						Aaa => Ai(7),
						Baa => Bi(6),
						Yaa => sa06(7)
						);
 
 ----------------------------------------------------------------
--                             FA5                             --
-----------------------------------------------------------------
 
  M096: fa00 port map(
					C00 =>'0',
                    A00 =>ss04(1),
					B00 =>sa06(0),
					C01 =>sc05(0),
                    S00 =>ss05(0)
					 );
  
  M097: fa00 port map(
					C00 =>sc05(0),
                    A00 =>ss04(2),
					B00 =>sa06(1),
					C01 =>sc05(1),
                    S00 =>ss05(1)
					 );
  
  M098: fa00 port map(
					C00 =>sc05(1),
                    A00 =>ss04(3),
					B00 =>sa06(2),
					C01 =>sc05(2),
                    S00 =>ss05(2)
					 );
  
  M099: fa00 port map(
					C00 =>sc05(2),
                    A00 =>ss04(4),
					B00 =>sa06(3),
					C01 =>sc05(3),
                    S00 =>ss05(3)
					 );
  
   M100: fa00 port map(
					C00 =>sc05(3),
                    A00 =>ss04(5),
					B00 =>sa06(4),
					C01 =>sc05(4),
                    S00 =>ss05(4)
					 );
  
  M101: fa00 port map(
					C00 =>sc05(4),
                    A00 =>ss04(6),
					B00 =>sa06(5),
					C01 =>sc05(5),
                    S00 =>ss05(5)
					 );
  
  M102: fa00 port map(
					C00 =>sc05(5),
                    A00 =>ss04(7),
					B00 =>sa06(6),
					C01 =>sc05(6),
                    S00 =>ss05(6)
					 );
  
  M103: fa00 port map(
					C00 =>sc05(6),
                    A00 =>sc04(7),
					B00 =>sa06(7),
					C01 =>sc05(7),
                    S00 =>ss05(7)
					 );
					 
-----------------------------------------------------------------
--                             AND6                            --
-----------------------------------------------------------------

  M104: anda00 port map(
						Aaa => Ai(0),
						Baa => Bi(7),
						Yaa => sa07(0)
						);
  
  M105: anda00 port map(
						Aaa => Ai(1),
						Baa => Bi(7),
						Yaa => sa07(1)
						);
  
  M106: anda00 port map(
						Aaa => Ai(2),
						Baa => Bi(7),
						Yaa => sa07(2)
						);
  
  M107: anda00 port map(
						Aaa => Ai(3),
						Baa => Bi(7),
						Yaa => sa07(3)
						);
					   
  M108: anda00 port map(
						Aaa => Ai(4),
						Baa => Bi(7),
						Yaa => sa07(4)
						);
  
  M109: anda00 port map(
						Aaa => Ai(5),
						Baa => Bi(7),
						Yaa => sa07(5)
						);
  
  M110: anda00 port map(
						Aaa => Ai(6),
						Baa => Bi(7),
						Yaa => sa07(6)
						);
  
  M111: anda00 port map(
						Aaa => Ai(7),
						Baa => Bi(7),
						Yaa => sa07(7)
						);
 
 ----------------------------------------------------------------
--                             FA6                             --
-----------------------------------------------------------------
 
  M112: fa00 port map(
					C00 =>'0',
                    A00 =>ss05(1),
					B00 =>sa07(0),
					C01 =>sc06(0),
                    S00 =>ss06(0)
					 );
  
  M113: fa00 port map(
					C00 =>sc06(0),
                    A00 =>ss05(2),
					B00 =>sa07(1),
					C01 =>sc06(1),
                    S00 =>ss06(1)
					 );
  
  M114: fa00 port map(
					C00 =>sc06(1),
                    A00 =>ss05(3),
					B00 =>sa07(2),
					C01 =>sc06(2),
                    S00 =>ss06(2)
					 );
  
  M115: fa00 port map(
					C00 =>sc06(2),
                    A00 =>ss05(4),
					B00 =>sa07(3),
					C01 =>sc06(3),
                    S00 =>ss06(3)
					 );
  
   M116: fa00 port map(
					C00 =>sc06(3),
                    A00 =>ss05(5),
					B00 =>sa07(4),
					C01 =>sc06(4),
                    S00 =>ss06(4)
					 );
  
  M117: fa00 port map(
					C00 =>sc06(4),
                    A00 =>ss05(6),
					B00 =>sa07(5),
					C01 =>sc06(5),
                    S00 =>ss06(5)
					 );
  
  M118: fa00 port map(
					C00 =>sc06(5),
                    A00 =>ss05(7),
					B00 =>sa07(6),
					C01 =>sc06(6),
                    S00 =>ss06(6)
					 );
  
  M119: fa00 port map(
					C00 =>sc06(6),
                    A00 =>sc05(7),
					B00 =>sa07(7),
					C01 =>sc06(7),
                    S00 =>ss06(7)
					 );
	
--------------------------------------------------------------
--                          SALIDAS                         --
--------------------------------------------------------------

	R0(0)<=sa00(0);
	R0(1)<=ss00(0);
	R0(2)<=ss01(0);
	R0(3)<=ss02(0);
	R0(4)<=ss03(0);
	R0(5)<=ss04(0);
	R0(6)<=ss05(0);
	R0(7)<=ss06(0);
	R0(8)<=ss06(1);
	R0(9)<=ss06(2);
	R0(10)<=ss06(3);
	R0(11)<=ss06(4);
	R0(12)<=ss06(5);
	R0(13)<=ss06(6);
	R0(14)<=ss06(7);
	R0(15)<=sc06(7);

end mult8bit0;