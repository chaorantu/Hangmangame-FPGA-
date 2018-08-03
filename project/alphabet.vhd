library ieee ;
use ieee.std_logic_1164.all;
entity alphabet is 
  port (n: in std_logic_vector(4 downto 0);
         m:out STD_LOGIC_VECTOR( 7 downto 0 )
        );
end alphabet;

architecture code1 of alphabet is 
signal characters:STD_LOGIC_VECTOR( 7 downto 0 );
begin
	process (n)
	begin 

case n is
when "00000"=> m<=x"5F";
when "00001"=> m<=x"41";
when "00010"=> m<=x"42";
when "00011"=> m<=x"43";
when "00100"=> m<=x"44";
when "00101"=> m<=x"45";
when "00110"=> m<=x"46";
when "00111"=> m<=x"47";
when "01000"=> m<=x"48";
when "01001"=> m<=x"49";
when "01010"=> m<=x"4A";
when "01011"=> m<=x"4B";
when "01100"=> m<=x"4C";
when "01101"=> m<=x"4D";
when "01110"=> m<=x"4E";
when "01111"=> m<=x"4F";
when "10000"=> m<=x"50";
when "10001"=> m<=x"51";
when "10010"=> m<=x"52";
when "10011"=> m<=x"53";
when "10100"=> m<=x"54";
when "10101"=> m<=x"55";
when "10110"=> m<=x"56";
when "10111"=> m<=x"57";
when "11000"=> m<=x"58";
when "11001"=> m<=x"59";
when "11010"=> m<=x"5A";
when others =>m<=x"5F";
end case;
end process;
end code1;