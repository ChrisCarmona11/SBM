--===========================================================================--
-- 
-- EJEMPLO SIMPLE SMALL TESTBENCH
--
--  - MAY 2004
--  - UPV / EHU.  
--
-- Design units   : FPGA SEMINAR
--
-- File name      : ejemplo_simple_tb.vhd
--
-- Purpose        : 
--                  
-- Library        : WORK
--
-- Dependencies   : IEEE.Std_Logic_1164
--
-- Simulator      : ModelSim SE version 5.8 on a Windows XP PC
--===========================================================================--
-------------------------------------------------------------------------------
-- Revision list
-- Version   Author                 Date           Changes
--
-- 050528	 Armando Astarloa	  28	May				Dummy Testbench
-------------------------------------------------------------------------------
-- Description    : Instiantiate and simulate ejemplo_simple 
--                  
-------------------------------------------------------------------------------
-- Entity for ejemplo_simple_tb Unit 		                          			  --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ejemplo_simple_tb is

end ejemplo_simple_tb;


architecture Beta of ejemplo_simple_tb is
	COMPONENT ejemplo_simple
	PORT(
		RESET : IN std_logic;
		CLOCK : IN std_logic;          
		PIN_ONDA_SALIDA : OUT std_logic_vector(7 downto 0);
		PIN_CONTADOR : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

--
-- PSEUDO-PORTS SIGNALS
--
signal 			RESET:	std_logic;
signal 			CLOCK:	std_logic;
signal 			ONDA_SALIDA:	std_logic_vector(7 downto 0);
signal 			CONTADOR: std_logic_vector(7 downto 0);

--
-- TESTBENCH SIGNALS
--
	signal end_sim : boolean := false;
	
	constant tdelay : time := 10 ns;
	constant tper : time := 20 ns; 		-- Tper = Clock period
begin
--
-- COMPONENTS INSTANTATION
--
	Inst_ejemplo_simple: ejemplo_simple PORT MAP(
		RESET => RESET,
		CLOCK => CLOCK,
		PIN_ONDA_SALIDA => ONDA_SALIDA,
		PIN_CONTADOR => CONTADOR
	);
--
-- CLK PROCESS
--
	process
	begin
		while not end_sim loop
				CLOCK <= '0';
			wait for tper/2;
				CLOCK <= '1';
			wait for tper/2;
		end loop;
		wait;
	end process;	

--
-- SIMULATION PROCESS
--	
	process
	begin	
		--
		-- RESET DELAY
		--					 
		RESET <= '1';
		wait for 100 ns;
		RESET <= '0';
		--
		-- INYECT INPUT SIGNALS
		--
		wait for 5 ms;
		end_sim <= true;
		assert false report "Simulacion correcta" severity note;
		wait;
	end process;
end Beta;
