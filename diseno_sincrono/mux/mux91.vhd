

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;


entity mux91 is
   port (
   a, b, c, d, e, f, g, h, i: in std_logic;
	sel: in std_logic_vector(3 downto 0); 
	mux_out: out std_logic);
end mux91;

architecture arch of mux91 is
begin
process (sel, a, b, c, d, e, f, g, h, i)
begin
   case sel is
      when "0000" => mux_out <= a;
      when "0001" => mux_out <= b;
      when "0010" => mux_out <= c;
      when "0011" => mux_out <= d;
      when "0100" => mux_out <= e;
      when "0101" => mux_out <= f;
      when "0110" => mux_out <= g;
      when "0111" => mux_out <= h;
      when "1000" => mux_out <= i;
	   when others => mux_out <= a;
   end case;
end process;
end arch;
