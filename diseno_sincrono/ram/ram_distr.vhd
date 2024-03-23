
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK; 

entity ram_distr is 
 generic(
	addr_width: natural := 8;
	data_width: natural := 16);
 port (clk : in std_logic; 
 	we  : in std_logic; 
 	a   : in std_logic_vector(addr_width-1 downto 0); 
 	di  : in std_logic_vector(data_width-1 downto 0); 
 	do  : out std_logic_vector(data_width-1 downto 0));
 end ram_distr; 
 
 architecture arch of ram_distr is 
 
 type ram_type is array ((2**(addr_width))-1 downto 0) of std_logic_vector (data_width-1 downto 0); 
-- 255 down to 0
 signal RAM : ram_type; 
 
 begin 
 process (clk) 
 begin 
 	if (clk'event and clk = '1') then  
 		if (we = '1') then 
 			RAM(conv_integer(a)) <= di; 
 		end if; 
 	end if; 
 end process; 
 
 do <= RAM(conv_integer(a)); 
 
 end arch;
 
