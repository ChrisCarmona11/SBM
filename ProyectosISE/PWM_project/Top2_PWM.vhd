----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 		 Christopher Carmona
-- 
-- Create Date:    23:25:03 02/13/2024 
-- Design Name: 
-- Module Name:    Top2_PWM - Behavioral 
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

entity Top2_PWM is
    Port ( 
			  --Entradas del modulo
			  switch_in : 				in  STD_LOGIC_VECTOR (7 downto 0);
           boton1_in : 				in  STD_LOGIC;
			  boton2_in : 				in  STD_LOGIC;
           clk_in : 					in  STD_LOGIC;

           --Salidas del modulo
           PWM_Led_out : 			out  STD_LOGIC_VECTOR (7 downto 0));
end Top2_PWM;


architecture Behavioral of Top2_PWM is

Type minimatriz is array (0 to 7) of std_logic_vector (7 downto 0);
-- Se crean los registros -- 

				--signal num_pwm_module_matrix );

signal num_pwm_module : std_logic_vector(7 downto 0);
signal duty_cycle_register_q : minimatriz;

-- Se crean las señales internas salidad de la máquina de estados --
signal NUM_PWM_MODULE_CE : std_logic;
signal WRITE_DC_VALUE_CE : std_logic;

-- Declaración de la máquina de estados --

component State_machine is
    Port ( boton1 : 					in  STD_LOGIC;
           boton2 : 					in  STD_LOGIC;
           clk_in : 					in  STD_LOGIC;

           NUM_PWM_MODULE_CE : 	out  STD_LOGIC;
           WRITE_DC_MODULE_CE : 	out  STD_LOGIC);
end component;

-- Declaración de Top_PWM --

component Top_PWM is
    Port ( 
			--Entradas del modulo
			  dutyCycle_in : 			in  STD_LOGIC_VECTOR (7 downto 0);
           clk_in : 					in  STD_LOGIC;
			--Salidas del modulo
           pwm_out : 				out  STD_LOGIC);
end component;



begin

-- Se instancia la máquina de estados --

MaquinaEstados : State_machine 

port map (

				boton1 					=> boton1_in,
				boton2 					=> boton2_in,
				clk_in 					=> clk_in,
	
				NUM_PWM_MODULE_CE 	=> NUM_PWM_MODULE_CE,
				WRITE_DC_MODULE_CE 	=> WRITE_DC_VALUE_CE
);

-- Se crea el registro para registrar los LEDs sobre los que queremos trabajar --

Registro_switches_seleccionados: process (clk_in)
begin
	if (clk_in'event and clk_in = '1') then
		if (NUM_PWM_MODULE_CE = '1') then
			
			num_pwm_module <= switch_in;
			
		end if;
		
	end if;
	
end process;

-- Se crea el apartado que se va a repetir 8 veces --
LogicaPorLed: for i in 0 to 7 generate

	Registro_DC_PWM: process (clk_in)
			begin 
				if (clk_in'event and clk_in = '1') then
					if (WRITE_DC_VALUE_CE = '1' and num_pwm_module(i) = '1') then
						
						duty_cycle_register_q(i) <= switch_in;
						--Al array i se le asigna el valor de los switches
						
					end if;
				end if;
			end process;
			
	ModuloPWM: Top_PWM
		port map (
				  dutyCycle_in		 =>	duty_cycle_register_q(i),
				  clk_in 			 =>	clk_in, 				
				  pwm_out 			 => 	PWM_Led_out(i)	
		);

end generate;

end Behavioral;