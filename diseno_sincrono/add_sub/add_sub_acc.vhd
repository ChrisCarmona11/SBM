library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

library WORK;


entity add_sub_acc is
   generic(
	width: natural := 16);
   port (
	clk, reset, en: in std_logic;
   a, b: in std_logic_vector(width-1 downto 0);
	sel: in std_logic; 
	salida: out std_logic_vector(width-1 downto 0));
end add_sub_acc;

architecture arch of add_sub_acc is
signal nodo: std_logic_vector(width-1 downto 0);
begin
process (sel, a, b)
begin
   case sel is
      when '0' => nodo <= a+b;
      when '1' => nodo <= a-b;
	   when others => nodo <= a+b;
   end case;
end process;

process(clk)
begin
	if clk'event and clk='1' then
		if reset='1' then
			salida <= (others =>'0');
	  	elsif en='1' then
			salida <= nodo;
	  	end if;
  	end if;
end process;
end arch;
 