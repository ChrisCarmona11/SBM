library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;


entity reg_despl_sp is
	 generic(
		--Main Processor Bus data width
		width: natural := 16);
   port (
   clk, en, din: in std_logic;
	dout: out std_logic_vector(width-1 downto 0));
end reg_despl_sp;

architecture arch of reg_despl_sp is
signal reg: std_logic_vector(width-1 downto 0);
begin
process (clk)
begin
   if clk'event and clk='1' then
   	if (en='1') then
	   reg(width-1) <= din;
   	reg <= reg(width-2 downto 0) & '0';
   	end if;
   end if;
end process;
dout <= reg(width-1);
end;