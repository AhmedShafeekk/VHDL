library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity four_bit_FA is port 
( 
     a,b: in signed (3 downto 0);
	  s: out signed (4 downto 0)
);
end four_bit_FA; 


architecture arch of four_bit_FA is 
begin  
	 s<=a + b;
end arch;
	 