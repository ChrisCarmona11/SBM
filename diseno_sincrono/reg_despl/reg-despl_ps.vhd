
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;

entity reg_despl_ps is
	 generic(
		width: natural := 16);
   port (
   clk, load, en: in std_logic;
	load_data: in std_logic_vector(width-1 downto 0);
	dout: out std_logic);
end reg_despl_ps;

architecture arch of reg_despl_ps is
signal reg: std_logic_vector(width-1 downto 0);
begin
process (clk)
begin
   if clk'event and clk='1' then
   	if (load='1') then reg <= load_data;
   	elsif (en='1') then reg <= reg(width-2 downto 0) & '0';
   	end if;
   end if;
end process;
dout <= reg(width-1);
end;
