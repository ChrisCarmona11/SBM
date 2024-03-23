----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:03 02/08/2024 
-- Design Name: 
-- Module Name:    top_PWM - Behavioral 
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

entity top_PWM is
    Port ( DutyCycle_top : in  STD_LOGIC_VECTOR (7 downto 0);
			  clk_in : in  STD_LOGIC;
           PWM_top : out  STD_LOGIC);
end top_PWM;

architecture Behavioral of top_PWM is
component PreScaler
	Generic (ciclo: integer := 128); 
    Port ( clk : in  STD_LOGIC;
           CE_out : out  STD_LOGIC);
end component;
component PWM_Unit
    Port ( DutyCycle : in  STD_LOGIC_VECTOR (7 downto 0);
           CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           PWM : out  STD_LOGIC);
end component;

signal CE_interno: std_logic;

begin

UUT1: PreScaler port map (clk_in, CE_interno);
UUT2: PWM_Unit port map (DutyCycle_top, CE_interno,clk_in, PWM_top);



end Behavioral;

