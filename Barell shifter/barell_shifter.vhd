library ieee;
use ieee.std_logic_1164.all;

entity barell_shifter is 
   generic (length: integer:=8);
   port
   (
        	inp: in std_logic_vector (length-1 downto 0);
			shift: in std_logic;
			outp: out std_logic_vector (length-1 downto 0)
	);
end barell_shifter;


architecture behavior of barell_shifter is 	
begin 
     process (shift,inp)
	  begin
     if shift = '0' then 
        outp<=inp;
      else 
         outp<= inp(length-2 downto 0) & '0';
      end if;
		end process;
end behavior;		
