library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity decoder_nxm is
      generic (n: integer:=3 ; m: integer:=8 );
port(		
      en: in std_logic;
		input: std_logic_vector (n-1 downto 0);
		output: std_logic_vector (m-1 downto 0)
);
end decoder_nxm; 


architecture dataflow of decoder_nxm is 
signal temp: integer :=1;
signal res: integer :=0;
begin
   process (en,input)
	   begin 
		if en='1' then 
		for i in input' range loop 
		res<= res + input(i)*temp;
		temp <= 2*temp;
		end loop;
		output(res=>'1',others=>'0');
		else 
		output(others =>'0');
		end if;
	end process;	
end dataflow;		