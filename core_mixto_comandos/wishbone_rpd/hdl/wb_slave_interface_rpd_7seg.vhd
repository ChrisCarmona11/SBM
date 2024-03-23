--===========================================================================--
-- 
-- WISHBONE SLAVE INTERFACE - 7 SEGMENT DISPLAY 
--
--  - MARCH 2004
--  - UPV / EHU.  
--
--  - APPLIED ELECTRONICS RESEARCH TEAM (APERT)-
--  DEPARTMENT OF ELECTRONICS AND TELECOMMUNICATIONS - BASQUE COUNTRY UNIVERSITY
--
--
-- Design units   : FPGA SEMINAR
--
-- File name      : wb_slave_interface_7seg_s3.vhd
--
-- Purpose        : Generic core with WB slave interface
--                  
-- Library        : WORK
--
-- Dependencies   : IEEE.Std_Logic_1164
--
-- Simulator      : ModelSim SE version 5.5e on a WindowsXP PC
--===========================================================================--
-------------------------------------------------------------------------------
-- Revision list
-- Version   Author                 Date           Changes
--
-- 040330    Armando Astarloa     30 March	 		First synthesizable code
-- 040331    Armando Astarloa     30 March	 		Added latch enable signal and 
--										state	for the spartanIIE eb.
-- 050125    Armando Astarloa     25 January	 		SPARTAN3 DIGILENT 
--										Ver. (7 seg multiplexed
-- 070130    Armando Astarloa     30 January	 		DAT_I_O to DAT_I / DAT_0
-- 110201    Armando Astarloa     1 FEBRUARY	 		ML507 AND NO 7SEG&MULPLEXING
--
-------------------------------------------------------------------------------
-- Description    : Interface for two 7 segment display (with memory)
--                  
-------------------------------------------------------------------------------
-- Entity for wb_slave_interface Unit 		                       		        --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;

entity wb_slave_interface_rpd is
    Port (  
	 		--
			-- WISHBONE SIGNALS
			--
			RST_I:  in  std_logic;			-- WB : Global RESET signal
	 		ACK_O:  out std_logic;			-- WB : Ack from to the master
			ADR_I:  in std_logic_vector(15 downto 0 ); -- WB : Register selection
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
end wb_slave_interface_rpd;

architecture Behavioral of wb_slave_interface_rpd is
--
--	INTERNAL SIGNALS
--
constant CUENTA_MODULO : INTEGER := 10000000;				   -- REFRESCO 7 SEGMENTOS
signal CUENTA: INTEGER range 0 to CUENTA_MODULO;				-- REFRESCO 7 SEGMENTOS

signal DATA_IN_NODE: std_logic_vector(15 downto 0); 	-- INTERNAL DATA IN 
																		-- (Removed by synthesis)
--signal DATA_OUT_NODE: std_logic_vector(15 downto 0);-- INTERNAL DATA OUT 
																		-- (Removed by synthesis)

signal ACK_O_OUT : std_logic;							-- Internal ack signal (previous to 
																-- triestate buffer)

signal DIGIT0: std_logic_vector(4 downto 0);		-- Register for decimal point (d4) 
																-- and BCD value for the DIGIT0 
signal DIGIT1: std_logic_vector(4 downto 0) ;	-- Register for decimal point (d4) 
																-- and BCD value for the DIGIT1
signal DIGIT0_CE: std_logic;   						-- Clock enable for the register
signal DIGIT1_CE: std_logic;							-- Clock enable for the register

signal ENABLE0_node: std_logic;   						-- Display enable for the register
signal ENABLE1_node: std_logic;							-- Display enable for the register

signal DISPLAY0:  std_logic_vector(3 downto 0);
signal DISPLAY1:  std_logic_vector(3 downto 0);
--
-- WISHBONE MASTER INTERFACE CONTROL STATE MACHINE
--

type wb_state is (stb_in_wait, write_data, send_ack_o); 
signal act_wb : wb_state;
signal next_wb: wb_state;


signal reconf_ack_out:std_logic;

begin
--
-- TRIESTATE SIGNALS CONTROL (MULTIMASTER)
--
-- The internals signals are written to the WB
--	bus when the access is allowed by the arbiter
--
ACK_O <= ACK_O_OUT when STB_I='1' else '0';

--
-- BUSES CONTROL
--
	DATA_IN_NODE <= DAT_I(15 downto 0);
	-- WISHBONE BUS COMPOSITION

				
-- 
-- WISHBONE SLAVE INTERFACE CONTROL
--
ack_control: process (RST_I, CLK_I)
-- declarations
begin  
	if RST_I = '1' then
		act_wb <= stb_in_wait;
  	elsif (CLK_I'event and CLK_I = '1') then
		act_wb <= next_wb;
	end if;
end process;

process(STB_I,CYC_I_SHARED,ACT_WB)
begin
		case act_wb is
			when stb_in_wait =>
				-- Wait for the STB form the master
				if STB_I ='1' and CYC_I_SHARED = '1' then
					next_wb <= write_data;
			 	else
					next_wb <= stb_in_wait;
				end if;

			when write_data =>
				-- Read or write the bus data
					next_wb <= send_ack_o;

		  	when send_ack_o =>
				-- Send the ack signal
				next_wb <= stb_in_wait;
	  	end case;

 end process;

with act_wb select 
	ACK_O_OUT <= '1' when send_ack_o,
		 		'0' when others;

--with act_wb select 
--	LATCH_ENABLE <= '1' when send_ack_o,
--		 		'0' when others;

DIGIT0_CE <= '1' when (act_wb = write_data and ADR_I(0)='0')
			else '0';

DIGIT1_CE <= '1' when (act_wb = write_data and ADR_I(0)='1')
			else '0';
--
-- REGISTERS SYNCHRONOUS LOAD
--
process (CLK_I, RST_I) 
begin
   if RST_I='1' then 
      DIGIT0 <= (others => '0');
	   DIGIT1 <= (others => '0');
   elsif CLK_I'event and CLK_I = '1' then

      if DIGIT0_CE = '1' then
			DIGIT0 <= DAT_I(4 downto 0);
		else
			DIGIT0 <= DIGIT0; 
		end if;

      if DIGIT1_CE = '1' then
			DIGIT1 <= DAT_I(4 downto 0);
		else
			DIGIT1 <= DIGIT1; 
		end if;
   end if;
end process;

--
-- COBINATIONAL ASSIGMENTS
--
DISPLAY0_1 <= not(DIGIT1(3 downto 0) & DIGIT0(3 downto 0));
--
-- COUNTER (DATA TO TRANSFER TO SLAVE)
--
 
process (CLK_I, RST_I) 
begin
   if RST_I='1' then
		CUENTA <= 0; 
   elsif CLK_I'event and CLK_I='1' then 
		  		CUENTA <= CUENTA + 1;
			if CUENTA=CUENTA_MODULO-1 then
				CUENTA <= 0;
			elsif CUENTA < (CUENTA_MODULO/2) then
				ENABLE0_node <= '0';
				ENABLE1_node <= '1';
		   else
				ENABLE0_node <= '1';
				ENABLE1_node <= '0';
			end if;
		end if;
end process;

DAT_O <= (others => '0');
end Behavioral;