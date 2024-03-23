--===========================================================================--
-- 
-- WISHBONE POINT2POINT 
--
--  - FEBRUARY 2022
--  - UPV / EHU.  
--
--  - APPLIED ELECTRONICS RESEARCH TEAM (APERT)-
--  DEPARTMENT OF ELECTRONICS AND TELECOMMUNICATIONS - BASQUE COUNTRY UNIVERSITY
--
--
-- Design units   : MASTER SEA
--
-- File name      : wb_intercon_p2p_ZEDBOARD.vhd
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
-- 220209    Armando Astarloa     02 February 		zedboard VERSION
--
-------------------------------------------------------------------------------
-- Description    : 
--                  
-------------------------------------------------------------------------------
-- Entity for wb_intercon_p2p Unit 		                       		     	     --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;
library WORK;

entity top is
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
			ENABLE0: out  std_logic;
			ENABLE1: out  std_logic;
			ENABLE2:  out  std_logic;
			ENABLE3:  out  std_logic
			);
end top;

architecture Alpha of top is
--
--	COMPONENT DECLARATION
--
	COMPONENT wbs
	PORT(
		RST_I : IN std_logic;
		ADR_I : IN std_logic_vector(15 downto 0);       
		CLK_I : IN std_logic;
		STB_I : IN std_logic;
		CYC_I_SHARED: IN  std_logic;	
		WE_I : IN std_logic;    
		DAT_I : IN std_logic_vector(15 downto 0);      
		DAT_O : OUT std_logic_vector(15 downto 0);      
		ACK_O : OUT std_logic;
		ENABLE0:  out  std_logic;
		ENABLE1:  out  std_logic;
		DISPLAY0_1:  out  std_logic_vector(7 downto 0)
		);
	END COMPONENT;

-- XST black box declaration
--
--attribute box_type : string;
--
--attribute box_type of wb_slave_interface_rpd: component is "black_box"; 

	COMPONENT wbm_uart_kcpsm6
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

begin
--
-- COMPONENTS INSTANTATION
--
--
-- WISHBONE MASTER CORE (TIMER)
--

	Inst_wbm_uart_kcpsm6: wbm_uart_kcpsm6 PORT MAP(
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
--
-- WISHBONE SLAVE CORE (7 SEGMENTS)
--
	inst_wbs: wbs PORT MAP(
		RST_I => RST_I,
		ACK_O => ACK,
		ADR_I => ADR,
		CLK_I => CLK_I,
		DAT_I => DAT_O_NODE,
		DAT_O => DAT_I_NODE,
		STB_I => STB,
		CYC_I_SHARED => '1',
		WE_I => WE,
		ENABLE0 => ENABLE0,
		ENABLE1 => ENABLE1,
		DISPLAY0_1 => SEG1
	);

--
--Mapping of data lines
-- to LED Display
PIN_DATA(7 downto 0) <= NOT (SEG1(0) & SEG1(1) & SEG1(2) & SEG1(3) & 
						 SEG1(4) & SEG1(5) & SEG1(6) & SEG1(7));
--PIN_LED_TEST <= SEG1;
--PIN_LED_TEST <= "01010111";
RST_I <= PIN_RESET;
CLK_I <= PIN_CLOCK_100;
ENABLE2 <= '1';
ENABLE3 <= '1';


   -- End of MMCME2_BASE_inst instantiation
end Alpha;