library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is port 
( 
    a,b: in std_logic_vector (7 downto 0);
	 sel: in std_logic_vector (3 downto 0);
	 cin: in std_logic;
	 y: out std_logic_vector (7 downto 0)
); 
end ALU;


architecture behavior of ALU is 
begin 
     with sel select 
     y<= a when "0000",
	      a+1 when "0001",
			a-1 when "0010",
			b when "0011",
			b+1 when "0100",
			b-1 when "0101",
			a+b when "0110",
			std_logic_vector(unsigned(a))*2 when "0111",
			not a when "1000",
			not b when "1001",
			a and b when "1010",
			a or b when "1011",
			a nand b when "1100",
			a nor b when "1101",
			a xor b when "1110",
			a xnor b when "1111",
			(others=>'Z') when others;
end behavior;