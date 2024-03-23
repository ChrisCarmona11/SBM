----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:56 09/26/2007 
-- Design Name: 
-- Module Name:    bcdto7seg - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcdto7seg is
    Port (  
			--
			-- DISPLAY OUTPUTS
			--
			PIN_DATA:  out  std_logic_vector(7 downto 0);
			ENABLE0: out  std_logic;
			ENABLE1: out  std_logic;
			ENABLE2:  out  std_logic;
			ENABLE3:  out  std_logic;
			--
			PIN_SEL_BYTE:  in std_logic_vector(3 downto 0 ) 	-- external BOT
			);
end bcdto7seg;

architecture Behavioral of bcdto7seg is

SIGNAL SEG1: std_logic_vector(7 downto 0);
begin
	WITH PIN_SEL_BYTE SELECT
		SEG1(7 downto 0) <=	--abcdefg
									"00000000" WHEN X"0",
									"00000001" WHEN X"1",
									"00000011" WHEN X"2",
									"00000111" WHEN X"3",
									"00001111" WHEN X"4",	
									"00011111" WHEN X"5",
									"00111111" WHEN X"6",
									"01111111" WHEN X"7",
									"11111111" WHEN X"8",
									"10101010" WHEN X"9",
									"00000000" WHEN OTHERS;
PIN_DATA(7 downto 0) <= SEG1(0) & SEG1(1) & SEG1(2) & SEG1(3) & 
						 SEG1(4) & SEG1(5) & SEG1(6) & SEG1(7); 
--
			ENABLE0	<= '0';
			ENABLE1	<= '1';
			ENABLE2	<= '1';
			ENABLE3	<= '1';

end Behavioral;

