----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:52:08 02/13/2024 
-- Design Name: 
-- Module Name:    Pre_Scaler_Unit - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pre_Scaler_Unit is
	 Generic (	ciclo: 			integer := 128000); 
	 --Valor del numero de ciclos que se contarán antes del siguiente ChipEnable a '1'
    Port (  	
	 --Entradas del modulo
	        clk_in : 				in  STD_LOGIC;
	 --Salidas del modulo		
           chipEnable_out : 	out  STD_LOGIC);
			  
end Pre_Scaler_Unit;

architecture Behavioral of Pre_Scaler_Unit is
signal contador: std_logic_vector(17 downto 0) := (others=>'0');
begin



process (clk_in)

begin
	if (clk_in'event and clk_in = '1')then
		if ( ciclo-1 > contador) then 
	
			contador <= contador + '1';
		
		else 
		
			contador <= (others => '0');

		end if;
	
	end if;
	
end process;

chipEnable_out <= '1' when (contador = ciclo-1) else
						'0';

end Behavioral;

