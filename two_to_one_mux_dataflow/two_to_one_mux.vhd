library ieee;
use ieee.std_logic_1164.all;

entity mux is port 
(
    input: in std_logic_vector (1 downto 0);
	 sel: in std_logic;
	 output: out std_logic
);
end mux;

architecture dataflow of mux is 
begin 
    process (sel,input)
        begin
          if sel ='1' then 
              output<= input(1);
          elsif sel ='0' then
              output<= input(0);
             end if;
           end process;
end dataflow;			  
