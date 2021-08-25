library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity andaa00 is
	port(
		clkaa:in std_logic;
		functaa:in std_logic_vector(5 downto 0);
		inFlagaa:in std_logic;
		inDatoAaa:in std_logic_vector(7 downto 0);
		inDatoBaa:in std_logic_vector(7 downto 0);
		outaa:out std_logic_vector(7 downto 0);
		outFlagaa:out std_logic
	);
end andaa00;

architecture andaa0 of andaa00 is
begin
	pand: process(clkaa)
	variable auxaa: bit:='0';
	begin
		if(clkaa'event and clkaa = '1' )then
			if(functaa = "000000")then
				case inFlagaa is
					when '0' =>
						outFlagaa <= '0';
					when '1' =>
						if(auxaa = '0')then
							auxaa := '1';
							outaa <= inDatoAaa and inDatoBaa;
							outFlagaa <= '1';
						else
							outFlagaa <= '0';
						end if;
					when others => null;
				end case;
			else
				auxaa := '0';
				outaa <= (others => 'Z');
				outFlagaa <= 'Z';
			end if;
		end if;
	end process;
end andaa0;