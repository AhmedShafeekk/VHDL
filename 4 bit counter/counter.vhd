library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity counter is port
(    
     clk,D,reset: in std_logic;
	  Q: out std_logic;
     clk_out: out std_logic_vector (3 downto 0)	  
);
end counter;


architecture behavior of counter is 
signal cnt: std_logic_vector (3 downto 0);
begin 
   process(clk,reset)
	begin
   if reset = '1' then 
      cnt<= "0000" ;
	elsif rising_edge(clk) and reset ='0' then
      Q<= D;
		cnt<=cnt +'1';
   end if; 
   end process; 	
	clk_out <= cnt(3);
end behavior;