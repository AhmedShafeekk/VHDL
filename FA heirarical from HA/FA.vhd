library ieee;
use ieee.std_logic_1164.all; 

entity FA is port(
    A,B,Cin: in std_logic;
	 C,S: out std_logic);
end FA; 

architecture behavior of FA is 
   component HA is 
   port(in1,in2: in std_logic; carry,sum: out std_logic);
   end component;

   signal sum1,sum2,carry1,carry2 : std_logic; 

begin 
U1: HA port map (in1=>A , in2=>B,carry=>carry1 , sum=>sum1);	
U2: HA port map (in1=>Cin , in2=>sum1,carry=>carry2 , sum=>sum2);

S <= sum2; 
C <= carry1 or carry2;
end behavior;