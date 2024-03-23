library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

library WORK;


entity async_ex is
   generic(
	width: natural := 16);
   port (
	clk: in std_logic; 
	rst: in std_logic;
	csout: out std_logic_vector (3 downto 0);
   datain: in std_logic_vector(width-1 downto 0);
	dataout0: out std_logic_vector(width-1 downto 0);
	dataout1: out std_logic_vector(width-1 downto 0);
	dataout2: out std_logic_vector(width-1 downto 0);
	dataout3: out std_logic_vector(width-1 downto 0));
end async_ex;
architecture arch of async_ex is
signal count: std_logic_vector(1 downto 0);
signal cs: std_logic_vector (3 downto 0);
begin
counter: process (clk, rst)
begin
	if rst='1' then
		count <= (others => '0');
	elsif clk'event and clk='1' then
		count <= count + 1;
	end if;
end process;
decoder: process(count)
begin
	case count is
		when "00" => cs <= "0001";
		when "01" => cs <= "0010";
		when "10" => cs <= "0100";
		when "11" => cs <= "1000";
		when others => cs <= "0000";
	end case;
end process;			
csout <= cs;
outreg0: process(cs(0), rst)			
begin
	if rst='1' then
		dataout0 <= (others => '0');
	elsif cs(0)'event and cs(0)='1' then
			dataout0 <= datain;
	end if;
end process;
outreg1: process(cs(1), rst)			
begin
	if rst='1' then
		dataout1 <= (others => '0');
	elsif cs(1)'event and cs(1)='1' then
		dataout1 <= datain;
	end if;
end process;
outreg2: process(cs(2), rst)			
begin
	if rst='1' then
		dataout2 <= (others => '0');
	elsif cs(2)'event and cs(2)='1' then
		dataout2 <= datain;
	end if;
end process;
outreg3: process(cs(3), rst)			
begin
	if rst='1' then
		dataout3 <= (others => '0');
	elsif cs(3)'event and cs(3)='1' then
		dataout3 <= datain;
	end if;
end process;
end arch;
  