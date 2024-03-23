----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:40:16 02/13/2024 
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


entity PWM_Unit is
    Port ( 
			  --Entradas del modulo
			  
			  dutyCycle_in : 			in  STD_LOGIC_VECTOR (7 downto 0);
           clk_in : 					in  STD_LOGIC;
           chipEnable_in : 		in  STD_LOGIC;
			  
			  --Salidas de modulo
           pwm_out : 				out  STD_LOGIC);
end PWM_Unit;

architecture Behavioral of PWM_Unit is

signal TcSampleIndex:std_logic_vector(7 downto 0):=(others=>'0');

begin

--Proceso de contandor que atraviesa los trozos del Tc
Process (clk_in)
begin
	if( clk_in'event and clk_in='1' ) then
	
			if (chipEnable_in= '1') then
	
					TcSampleIndex<= TcSampleIndex+1;
	
			end if;
	
	end if;
	
end process;

-- Asignacion de la salida dependiente de la posición y el DutyCycle

pwm_out <=  '1'  when (dutyCycle_in > TcSampleIndex) else
			   '0';

end Behavioral;

