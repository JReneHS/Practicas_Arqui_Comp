library ieee;
library machxo2;
use ieee.std_logic_1164.all;
use machxo2.all;

entity mux00 is
	port(
		I :in std_logic_vector(55 downto 0);
		s :in std_logic_vector(2 downto 0);
		ex_mux :out std_logic_vector(7 downto 0)
		);
end mux00;

architecture mux0 of mux00 is 
begin
	process(I,s)
	begin
		case s is
		when "000"=>ex_mux<="00000000";
		when "001"=>ex_mux<=I(7 downto 0);
		when "010"=>ex_mux<=I(15 downto 8);
		when "011"=>ex_mux<=I(23 downto 16);
		when "100"=>ex_mux<=I(31 downto 24);
		when "101"=>ex_mux<=I(39 downto 32);
		when "110"=>ex_mux<=I(47 downto 40);
		when others=>ex_mux<=I(55 downto 48);
		end case;
	end process;
end mux0;
		