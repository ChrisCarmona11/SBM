--===========================================================================--
-- 
-- WISHBONE POINT2POINT 
--
--  - OCTOBER 2008
--  - UPV / EHU.  
--
--  - APPLIED ELECTRONICS RESEARCH TEAM (APERT)-
--  DEPARTMENT OF ELECTRONICS AND TELECOMMUNICATIONS - BASQUE COUNTRY UNIVERSITY
--
--
-- Design units   : MASTER SEA
--
-- File name      : wb_intercon_p2p_s3.vhd
--
-- Purpose        : Master-Slave point to point interconnection
--                  
-- Library        : WORK
--
-- Dependencies   : IEEE.Std_Logic_1164
--
-- Simulator      : ModelSim SE 
--===========================================================================--
-------------------------------------------------------------------------------
-- Revision list
-- Version   Author                 Date           Changes
--
-- 081027    Armando Astarloa     27 October 		Unidirectional buses
-- 110130    Armando Astarloa     30 January 		ML507 VERSION
--
-------------------------------------------------------------------------------

-- Name : Christopher Carmona Vargas

-- Description    : intercon of the master and the two slaves
--                  
-------------------------------------------------------------------------------
-- Entity for wb_intercon_p2p Unit 		                       		     	     --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;

entity wb_intercon_p2p is
    Port (  
			PIN_RESET:  in  std_logic;		-- External RESET signal
	      PIN_CLOCK_100:  in  std_logic;		-- External CLOCK signal
			--
			-- DISPLAY OUTPUTS
			--
			PIN_DATA:  out  std_logic_vector(7 downto 0);
			PIN_TX: out  std_logic;
			PIN_RX: in  std_logic;
			PIN_LED_TEST: out  std_logic_vector(7 downto 0);
			PIN_LED: out  std_logic_vector(7 downto 0);
			ENABLE0: out  std_logic;
			ENABLE1: out  std_logic;
			ENABLE2:  out  std_logic;
			ENABLE3:  out  std_logic
			);
end wb_intercon_p2p;

architecture Alpha of wb_intercon_p2p is
--
--	COMPONENT DECLARATION OF SLAVE OF 7 SEG
--
	COMPONENT wb_slave_interface_7seg
	PORT(
		RST_I : IN std_logic;
		ADR_I : IN std_logic_vector(15 downto 0);
		CLK_I : IN std_logic;
		DAT_I : IN std_logic_vector(15 downto 0);
		STB_I : IN std_logic;
		CYC_I_SHARED : IN std_logic;
		WE_I : IN std_logic;          
		ACK_O : OUT std_logic;
		DAT_O : OUT std_logic_vector(15 downto 0);
		ENABLE0 : OUT std_logic;
		ENABLE1 : OUT std_logic;
		DISPLAY0_1 : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

-- XST black box declaration
--
--attribute box_type : string;
--
--attribute box_type of wb_slave_interface_rpd: component is "black_box"; 

	COMPONENT wbm_uart_kcpsm3
	PORT(
		CLK_I : IN std_logic;
		RST_I : IN std_logic;
		ACK_I : IN std_logic;
		DAT_I : IN std_logic_vector(15 downto 0);
		GNT_I : IN std_logic;
		RX : IN std_logic;          
		ADR_O : OUT std_logic_vector(15 downto 0);
		DAT_O : OUT std_logic_vector(15 downto 0);
		STB_O : OUT std_logic;
		WE_O : OUT std_logic;
		CYC_O : OUT std_logic;
		TX : OUT std_logic;
		LED : OUT std_logic_vector(7 downto 0);
		SOFT_RESET : OUT std_logic
		);
	END COMPONENT;
--
-- COMPONENT DECLARATION OF SLAVE OF PWM.
--
component wb_slave_interface_PWM 
    Port (  
	 		--
			-- WISHBONE SIGNALS
			--
			RST_I:  in  std_logic;			-- WB : Global RESET signal
	 		ACK_O:  out std_logic;			-- WB : Ack from to the master
			ADR_I:  in std_logic_vector(15 downto 0 ); 			-- WB : Register selection
	      CLK_I:  in  std_logic;			-- WB : Global bus clock
        	DAT_I:  in std_logic_vector(15 downto 0 ); -- WB : 16 bits data bus 
													-- input
        	DAT_O:  out std_logic_vector(15 downto 0 ); -- WB : 16 bits data bus 
													-- ouput

         STB_I:  in  std_logic;			-- WB : Access qualify from the master
			CYC_I_SHARED:  in  std_logic;	-- WB : Access qualify from the arbitrer
         WE_I:   in  std_logic;			-- WB : Read/write request
			--
			-- DISPLAY OUTPUTS
			--
			ENABLE0:  out  std_logic;
			ENABLE1:  out  std_logic;
			DISPLAY0_1:  out  std_logic_vector(7 downto 0)
			);
end component;


--
-- NUMBER OF MASTERS
--

--
-- WISHBONE INTERCONNECTION SIGNALS
--

signal RST_I : std_logic;
signal CLK_I : std_logic;
signal ACK 	: std_logic;	
signal WE 	: std_logic;
signal STB	: std_logic;		
signal ADR	: std_logic_vector(15 downto 0);
signal DAT_I_NODE : std_logic_VECTOR(15 downto 0);

signal DAT_O_NODE : std_logic_VECTOR(15 downto 0);
-- INTERNAL SIGNALS
signal SEG1:  std_logic_vector(7 downto 0);

-- STB to SLAVE

signal STB_SLAVE0	: std_logic;
signal STB_SLAVEPWM	: std_logic;

-- ACK to MASTER

signal ACK_SLAVE0	: std_logic;
signal ACK_SLAVEPWM	: std_logic;
-- Señales de vuelta de los slave
signal DAT_I_NODE_SLAVE0 : std_logic_VECTOR(15 downto 0);
signal DAT_I_NODE_SLAVEPWM : std_logic_VECTOR(15 downto 0);
begin
--
-- COMPONENTS INSTANTATION
--
--
-- WISHBONE MASTER CORE (TIMER)
--

	Inst_wbm_uart_kcpsm3: wbm_uart_kcpsm3 PORT MAP(
		CLK_I => CLK_I,
		RST_I => RST_I,
		CYC_O => open,
		GNT_I => '1',
		STB_O => STB,
		WE_O => WE,
		ACK_I => ACK,
		ADR_O => ADR,
		DAT_I => DAT_I_NODE,
		DAT_O => DAT_O_NODE,
		TX => PIN_TX,
		RX => PIN_RX,
		LED => PIN_LED_TEST,
		SOFT_RESET => OPEN
	);

-- WISHBONE SLAVE CORE (7 SEGMENTS)

	SLAVE0: wb_slave_interface_7seg  PORT MAP(
		RST_I => RST_I,
		ACK_O => ACK_SLAVE0,
		ADR_I => ADR,
		CLK_I => CLK_I,
		DAT_I => DAT_O_NODE,
		DAT_O => DAT_I_NODE_SLAVE0,
		STB_I => STB_SLAVE0,
		CYC_I_SHARED => '1',
		WE_I => WE,
		ENABLE0 => ENABLE0,
		ENABLE1 => ENABLE1,
		DISPLAY0_1 => SEG1
	);
	
-- WISHBONE SLAVE CORE ( PWM )

SLAVE_PWM: wb_slave_interface_PWM

    Port map(  
	 		--
			-- WISHBONE SIGNALS
			--
			RST_I => RST_I,			-- WB : Global RESET signal
	 		ACK_O => ACK_SLAVEPWM,			-- WB : Ack from to the master
			ADR_I => ADR,			-- WB : Register selection
	      CLK_I => CLK_I,			-- WB : Global bus clock
        	DAT_I => DAT_O_NODE,-- WB : 16 bits data bus 
													-- input
        	DAT_O => DAT_I_NODE_SLAVEPWM, -- WB : 16 bits data bus 
													-- ouput

         STB_I => STB_SLAVEPWM,			-- WB : Access qualify from the master
			CYC_I_SHARED => '1',-- WB : Access qualify from the arbitrer
         WE_I =>  WE,	-- WB : Read/write request
			--
			-- DISPLAY OUTPUTS
			--
			ENABLE0 => open,
			ENABLE1 => open,
			DISPLAY0_1 => PIN_LED
			);

-- CIRCUITO COMBINACIONAL PARA SELECCION DE SLAVE.

ACK <= ACK_SLAVE0 or ACK_SLAVEPWM; 
STB_SLAVE0 <= STB and ADR(15); 
STB_SLAVEPWM <= STB and not(ADR(15)); 

DAT_I_NODE <= DAT_I_NODE_SLAVE0 when  ADR(15) = '1' else DAT_I_NODE_SLAVEPWM;
--
--Mapping of data lines to LED Display
PIN_DATA(7 downto 0) <= NOT (SEG1(0) & SEG1(1) & SEG1(2) & SEG1(3) & 
						 SEG1(4) & SEG1(5) & SEG1(6) & SEG1(7)); 
						 
RST_I <= PIN_RESET;
CLK_I <= PIN_CLOCK_100;
ENABLE2 <= '1';
ENABLE3 <= '1';
end Alpha;