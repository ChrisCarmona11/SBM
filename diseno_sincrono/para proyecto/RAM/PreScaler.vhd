----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:25 02/08/2024 
-- Design Name: 
-- Module Name:    PreScaler - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PreScaler is
	 Generic (ciclo: integer := 128000); --128000 con esto el periodo es de 0.00256
	 -- la frecuencia 390,653 Hz
    Port ( clk : in  STD_LOGIC;
           CE_out : out  STD_LOGIC);
end PreScaler;

architecture Behavioral of PreScaler is

begin

process (clk)
variable contador :integer:=0; 
 begin 
	if (clk'event and clk='1') then 
		if ( ciclo-1>contador) then 
			contador:= contador+1;
			CE_out<= '0';
		else 
			CE_out<='1';
			contador:=0;
		end if;
	end if;

end process;

end Behavioral;

