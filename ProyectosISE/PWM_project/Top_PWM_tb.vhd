--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:33 02/13/2024
-- Design Name:   
-- Module Name:   C:/Users/Docencia/Downloads/diseno_sincrono/diseno_sincrono/para proyecto/RAM/PWM_top_tb.vhd
-- Project Name:  RAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_PWM
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Top_PWM_tb IS
END Top_PWM_tb;
 
ARCHITECTURE behavior OF Top_PWM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
	component Top_PWM 
		Port ( 
			--Entradas del modulo
			  dutyCycle_in : 			in  STD_LOGIC_VECTOR (7 downto 0);
           clk_in : 					in  STD_LOGIC;
			--Salidas del modulo
           pwm_out : 				out  STD_LOGIC);
	end component;
    

   --Inputs
   signal DutyCycle_top_node : 	std_logic_vector(7 downto 0);
   signal clk_in : 					std_logic := '0';

 	--Outputs
   signal pwm_out : 					std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 20 ns; --el reloj de la FPGA
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_PWM PORT MAP (
									DutyCycle_in 	=> 	DutyCycle_top_node,
									clk_in 			=> 	clk_in,
									pwm_out			=>	 	pwm_out
									);

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
	   DutyCycle_top_node  <=   "00000000"; 
		--Inicializamos a 0 el ciclo de trabajo
      wait for 655.36*5 us;	
		DutyCycle_top_node  <=  "00111111";
		--Valor 64/256 Equivale a un 25% del Duty Cycle
		wait for 655.36*5 us;
		DutyCycle_top_node  <=  "01111111";
		--Valor 128/256 Equivale a un 50% del Duty Cycle
		wait for 655.36*5 us;
		DutyCycle_top_node  <=  "11000000";
		--Valor 128/256 Equivale a un 75% del Duty Cycle
		wait for 655.36*5 us;
		

   end process;

END;
