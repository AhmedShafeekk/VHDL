library ieee;
use ieee.std_logic_1164.all;

entity shift_register is port 
(
    D,clk: in std_logic;
	 Q: out std_logic
);
end shift_register;

architecture behavioral of shift_register is 
signal Q0,D1,Q1,D2: std_logic;
begin 
     process(clk)
	  begin 
	  if rising_edge(clk) then
	     Q0<=D;
		  D1<=Q0;
		  Q1<=D1;
		  D2<=Q1;
		  Q<=D2;
		  end if ;
		end process;
end behavioral;
		  
	  