LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all;
entity shiftreg50bit is 
   port( clk, clrb,find,insert,push,clear:in std_logic;
         sil,sir,sil0,sir0,guess,input:in std_logic_vector(4 downto 0);
	 q,q0,qa:out std_logic_vector(49 downto 0);
         hitnum,count_fail:out std_logic_vector(3 downto 0):="0000";
         finish:out std_logic:='0');
	
end shiftreg50bit;

ARCHITECTURE rtl OF shiftreg50bit IS

signal regval,regval0,answer: std_logic_vector(49 downto 0);
signal count:integer :=0;
signal hit,fail_num:std_logic_vector(3 downto 0):="0000";
signal fail:std_logic:='0';
BEGIN 
q <= regval ;
q0<= regval0;
qa<= answer;
hitnum<=hit;
count_fail<=fail_num;
 process(clk,clrb)
  begin
  if(clk'event and clk ='1')then
   if (clrb='0')then 
	      regval  <= "00000000000000000000000000000000000000000000000000";
         regval0 <= "00000000000000000000000000000000000000000000000000";
			answer <= "00000000000000000000000000000000000000000000000000";
         hit<="0000";
			fail_num<="0000";
			count<=0;
			fail<='0';
			finish<='0';
   elsif(clear='1')then
         finish<='0';
         count<=0;
			if(fail='0') then
		   fail_num<=fail_num+"0001";
			end if;
         fail<='0';
    elsif(find='1') then
           if(count=10) then
           finish<='1';
           else
			  regval <= regval(4 downto 0) & regval (49 downto 5);
           regval0 <= regval0(4 downto 0) & regval0 (49 downto 5);
           count<=count+1;
           if(guess=regval(4 downto 0)) then 
           regval0(49 downto 45)<=regval(4 downto 0);
           regval(49 downto 45)<="00000";
           hit<=hit+'1';
           fail<='1';
           end if;
           end if;
    elsif(insert='1') then 

			 regval(4 downto 0)<=input;
			 regval(49 downto 5)<=regval(44 downto 0);
			 answer(4 downto 0)<=input;
			 answer(49 downto 5)<=answer(44 downto 0);
			 
			 --regval(9 downto 0)<="00111" & sil;
          --regval(44 downto 10)<=regval(39 downto 5);

   end if;
	elsif(clk'event and clk ='1')then

	end if;

 end process ;

END rtl ;
