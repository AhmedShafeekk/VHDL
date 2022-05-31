library ieee;
use ieee.std_logic_1164.all;

entity full_adder is port(
A,B: in std_logic;
Cin: in std_logic;
S, C: out std_logic) ;
end full_adder; 


architecture data_flow of full_adder is 
begin 
S <= A xor B; 
C <= (A and B) or (B and Cin) or (A and Cin); 

end data_flow;
