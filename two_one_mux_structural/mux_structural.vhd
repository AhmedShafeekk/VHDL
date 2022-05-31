library ieee;
use ieee.std_logic_1164.all;

entity mux is port 
( 
     input: in std_logic_vector (1 downto 0);
	  sel: in std_logic;
	  output: out std_logic
);
end mux;

architecture structural of mux is 

component and_gate is
port(a,b: in std_logic; c: out std_logic);
end component; 

component or_gate is 
port(a,b: in std_logic; c: out std_logic); 
end component;

component inverter is 
port(a: in std_logic; b:out std_logic);
end component; 

signal x,temp1,temp2: std_logic;
begin 
U1: inverter port map(a=> sel, b=>x);
U2: and_gate port map (a=> input(0),b=>x,c=>temp1);
U3: and_gate port map(a=>input(1), b=>sel,c=>temp2); 
U4: or_gate port map(a=>temp1,b=>temp2,c=>output);
end structural;