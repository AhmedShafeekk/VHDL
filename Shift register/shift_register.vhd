library ieee;
use ieee.std_logic_1164.all;

entity counter is port
(
     clk,D,res : in std_logic ;
	  Q: out std_logic
);
end counter; 

architecture behavior of counter is 
begin 
     process (clk,res)
	      begin 
			    case res is 
				  when '1' => 
				   Q<= '0';
				  when '0' =>
				   if rising_edge(clk) then 
					   Q<=D;
					end if;
				  when others => Q<='Z';
              end case;					
		end process;
end behavior;
		