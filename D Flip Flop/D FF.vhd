library ieee;
use ieee.std_logic_1164.all;


entity clk_ent is port
(
D,reset,clk: in std_logic;
Q: out std_logic);
end clk_ent;

architecture arch of clk_ent is 
begin 
signal clk: std_logic;
process (clk)
begin 
 if clk ' event and clk ='1' then
    if reset='1' then 
    Q<= '0';
    else 
    Q<=D;
    end if;
end if;
end process; 
end arch ;
