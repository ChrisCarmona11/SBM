----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:32:00 02/13/2024 
-- Design Name: 
-- Module Name:    Top_PWM - Behavioral 
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

entity Top_PWM is
    Port ( 
			--Entradas del modulo
			  dutyCycle_in : 			in  STD_LOGIC_VECTOR (7 downto 0);
           clk_in : 					in  STD_LOGIC;
			--Salidas del modulo
           pwm_out : 				out  STD_LOGIC);
end Top_PWM;

architecture Behavioral of Top_PWM is
component PWM_Unit
    Port ( 
			  --Entradas del modulo
			  
			  dutyCycle_in : 			in  STD_LOGIC_VECTOR (7 downto 0);
           clk_in : 					in  STD_LOGIC;
           chipEnable_in : 		in  STD_LOGIC;
			  
			  --Salidas de modulo
           pwm_out : 				out  STD_LOGIC);
end component;
component Pre_Scaler_Unit 
	 Generic (	ciclo: 				integer := 128); 
	 --Valor del numero de ciclos que se contarán antes del siguiente ChipEnable a '1'
    Port (  	
	 --Entradas del modulo
	        clk_in : 					in  STD_LOGIC;
	 --Salidas del modulo		
           chipEnable_out : 		out  STD_LOGIC);
			  
end component;

signal 	chipEnable_node : std_logic;

begin

UnidadPreScaler : Pre_Scaler_Unit port map ( clk_in         =>    clk_in		 ,
															chipEnable_out =>    chipEnable_node
															);
															
UnidadPWM		 : PWM_Unit			 port map ( dutyCycle_in 	=>    dutyCycle_in ,
															clk_in		 	=>    clk_in		 ,
															chipEnable_in	=>    chipEnable_node,
															pwm_out 			=>    pwm_out
															);


end Behavioral;

