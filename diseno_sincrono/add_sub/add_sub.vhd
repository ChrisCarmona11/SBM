library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

library WORK;


entity add_sub is
   generic(
	width: natural := 16);
   port (
   a, b: in std_logic_vector(width-1 downto 0);
	sel: in std_logic; 
	salida: out std_logic_vector(width-1 downto 0));
end add_sub;

architecture arch of add_sub is
begin
process (sel, a, b)
begin
   case sel is
      when '0' => salida <= a+b;
      when '1' => salida <= a-b;
	   when others => salida <= a+b;
   end case;
end process;
end arch;
 