----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:34 02/08/2024 
-- Design Name: 
-- Module Name:    PWM_Unit - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PWM_Unit is
    Port ( DutyCycle : in  STD_LOGIC_VECTOR (7 downto 0);
           CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           PWM : out  STD_LOGIC);
end PWM_Unit;

architecture Behavioral of PWM_Unit is


signal indexer:std_logic_vector(7 downto 0):= (others=>'0');

begin

process (clk)
begin 
 if (clk'event and clk='1')then
	if (CE='1') then
		if (DutyCycle>indexer) then 
			indexer <= indexer+1;
		elsif (indexer =255) then
			indexer <=(others=>'0');
		else
			indexer <= indexer+1;
			
		end if;
	end if;
 end if ;
end process;
PWM <= 	'1' when(DutyCycle>indexer) else
         '0' ;
end Behavioral;

