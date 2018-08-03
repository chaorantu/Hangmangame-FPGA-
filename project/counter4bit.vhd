library ieee ;
use ieee . std_logic_1164 .all;
use ieee . numeric_std .all ;
use ieee.std_logic_unsigned.all;
ENTITY counter4bit IS
PORT ( clk , clrb , ld : in std_logic ;
l : in std_logic_vector (3 downto 0);
q : out std_logic_vector (3 downto 0));
END counter4bit ;
ARCHITECTURE rtl OF counter4bit IS
signal cnt : std_logic_vector (3 downto 0);
BEGIN
process ( clk , clrb )
begin
if ( clrb ='0') then
cnt <= "0000" ;
elsif ( clk'event ) and ( clk ='1') then
if ( ld ='1') then
cnt <= l ;
else
cnt <= cnt + 1;
end if;
end if;
end process ;
q <= cnt;
END rtl;
