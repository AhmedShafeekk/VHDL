LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY barell_shifter_tb IS
END barell_shifter_tb;
 
ARCHITECTURE behavior OF barell_shifter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT barell_shifter
    PORT(
         inp : IN  std_logic_vector(7 downto 0);
         shift : IN  std_logic;
         outp : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inp : std_logic_vector(7 downto 0) := (others => '0');
   signal shift : std_logic := '0';

 	--Outputs
   signal outp : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: barell_shifter PORT MAP (
          inp => inp,
          shift => shift,
          outp => outp
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		shift <='0';
      inp<="10111001";
      wait for 10 ns;
		
		shift <='0';
      inp<="10111001";
      wait for 10 ns;	
		
		shift <='0';
      inp<="11111111";
      wait for 10 ns;	
		
		shift <='0';
      inp<="10000001";
      wait for 10 ns;



		shift <='1';
      inp<="10111001";
      wait for 10 ns;
		
		shift <='1';
      inp<="10111001";
      wait for 10 ns;	
		
		shift <='1';
      inp<="11111111";
      wait for 10 ns;	
		
		shift <='1';
      inp<="10000001";
      wait for 10 ns;		
      -- insert stimulus here 

      wait;
   end process;

END;
