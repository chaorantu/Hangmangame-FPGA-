library ieee ;
use ieee.std_logic_1164.all;
entity sevenLight is 
  port (n: in std_logic_vector(4 downto 0);
         m: out std_logic_vector(6 downto 0)
        );
end sevenLight;

architecture code2 of sevenLight is 
begin
	process (n)
	begin 

case n is
when "00000"=> m<="1000000";
when "00001"=> m<="1111001";
when "00010"=> m<="0100100";
when "00011"=> m<="0110000";

when "00100"=> m<="0011001";
when "00101"=> m<="0010010";
when "00110"=> m<="0000010";
when "00111"=> m<="1111000";

when "01000"=> m<="0000000";
when "01001"=> m<="0011000";
when "01010"=> m<="0001000";
when "01011"=> m<="0000011";

when "01100"=> m<="1000110";
when "01101"=> m<="0100001";
when "01110"=> m<="0000110";
when "01111"=> m<="0001110";
when others =>m<="0001110";
end case;
end process;
end code2;