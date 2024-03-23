library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;


entity reg_despl_ss_conreset is
	generic(
		width: natural := 16);
   port (
   	clk, reset, en, din: in std_logic;
		dout: out std_logic);
end reg_despl_ss_conreset;

architecture arch of reg_despl_ss_conreset is
signal reg: std_logic_vector(width-1 downto 0);
begin
process (clk, reset)
begin
	if reset='1' then
		reg <= (others => '0');
   elsif clk'event and clk='1' then
   	if (en='1') then 
		reg(width-1) <= din;
		reg(width-2 downto 0) <= reg(width-1 downto 1);
   	end if;
   end if;
end process;
dout <= reg(0);
end;