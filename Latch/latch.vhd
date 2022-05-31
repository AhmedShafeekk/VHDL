library ieee;
use ieee.std_logic_1164.all;


entity latch is port
(
    en,D: in std_logic;
	 Q: out std_logic
);
end latch;

architecture behavior of latch is 
begin 
     process (en,D)
	    begin 
		   if en = '1' then
			  Q<=D;
			else 
           Q<='0';			
			end if;
     end process;
end behavior;	  