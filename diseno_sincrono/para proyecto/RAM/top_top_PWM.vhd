----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:45:19 02/13/2024 
-- Design Name: 
-- Module Name:    top_top_PWM - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_top_PWM is
    Port ( Switch : in  STD_LOGIC_VECTOR (7 downto 0);
           Boton1 : in  STD_LOGIC;
           Boton2 : in  STD_LOGIC;
           PWM_out : out  STD_LOGIC_VECTOR (7 downto 0));
end top_top_PWM;

architecture Behavioral of top_top_PWM is

 

begin


end Behavioral;

