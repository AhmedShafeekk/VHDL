
package xx is
function "+" (x: integer , y: bit ) return integer is 
		if y='1' then
		return a+1;
		else return a;  
		end if;
end "+";		
end xx;


library ieee;
use ieee.std_logic_1164.all;

entity x is port 
( 
    a: in integer;
	 b: in bit;
	 s: out integer
);	 
end x; 


architecture arch of x is 

signal temp1,sum: integer;
signal temp2: bit; 

begin 
    temp1<=a;
	 temp2<=b;
	 
    sum <= temp1 + temp2;
	 
	 s<= sum;
	 
end arch;