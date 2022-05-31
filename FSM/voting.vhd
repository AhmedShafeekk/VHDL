library ieee;
use ieee.std_logic_1164.all;

entity voting is port 
(
    clk,reset,party1,
	 party2,party3,sel : in std_logic;
	 
	 count1_op,count2_op,count3_op: out integer 
); 
end voting; 	 
	 
	 
architecture arch of voting is 
     signal count1 , count2 , count3 : integer :=0;
     signal state : std_logic_vector (2 downto 0);
     constant  initial: std_logic_vector (2 downto 0) :="001";
	  constant  check: std_logic_vector (2 downto 0) :="010";
	  constant  Done: std_logic_vector (2 downto 0) :="011";
	  constant  party1_state: std_logic_vector (2 downto 0) :="100";
	  constant  party2_state: std_logic_vector (2 downto 0) :="101";
	  constant  party3_state: std_logic_vector (2 downto 0) :="110";

begin 
     process(clk,reset,party1,party2,party3)
	      begin 
			   if reset = '1' then 
				   count1 <= 0;
					count2 <= 0;
					count3 <= 0;
				elsif rising_edge(clk) then 
				    case state is 
					    when initial=> 
						   if party1='1' or party2='1' or party3='1' then 
							  state<= check;
							else 
                        state <= initial;
                      end if;
                    when check => 
                        if party1='1' then							  
                         state<= party1_state;
								elsif party2='1' then 								
                         state<= party2_state;
								elsif party3 ='1' then 
								 state<= party3_state;
								else 
                          state<=check;								
								end if;
								  
                     when party1_state =>
							    if sel ='1' then 
								   state <= done;
								  else 
								    state <= party1_state;
                          end if;
								  count1 <= count1 +1;
								 
							when party2_state =>
							    if sel ='1' then 
								   state <= done;
								  else 
								    state <= party2_state;
                          end if;
								  count2 <= count2 +1;
								  
                     when party3_state =>
							    if sel ='1' then 
								   state <= done;
								  else 
								    state <= party3_state;
                          end if;
                           count3 <= count3 +1;								  
                     when done => 
							      state <= initial;
                     when others =>
                           state <= initial;
                     end case;
					end if;	 
              end process;
				  count1_op<= count1;
				  count2_op<= count2;
				  count3_op<= count3;
				  
end arch;

					 


                    