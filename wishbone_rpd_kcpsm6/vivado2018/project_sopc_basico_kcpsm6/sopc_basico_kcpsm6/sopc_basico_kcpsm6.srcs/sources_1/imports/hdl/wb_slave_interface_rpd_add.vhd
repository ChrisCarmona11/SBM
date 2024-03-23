--===========================================================================--
-- 
-- WISHBONE SLAVE INTERFACE - 7 SEGMENT ADDER 
--
--  - FEBRUARY 2011
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
-- 110201    Armando Astarloa     1 Feb	 		First version
--
-------------------------------------------------------------------------------
-- Description    : Adder
--                  
-------------------------------------------------------------------------------
-- Entity for wb_slave_interface Unit 		                       		        --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;

entity wbs is
    Port (  
	 		
			RST_I:  in  std_logic;			-- WB : Global RESET signal
			ADR_I:  in std_logic_vector(15 downto 0 ); 			-- WB : Register selection
	        CLK_I:  in  std_logic;			-- WB : Global bus clock
            STB_I:  in  std_logic;			-- WB : Access qualify from the master
			CYC_I_SHARED:  in  std_logic;	-- WB : Access qualify from the arbitrer
            WE_I:   in  std_logic;			-- WB : Read/write request
			DAT_I:  in std_logic_vector(15 downto 0 ); -- WB : 16 bits data bus 
													-- input
			DAT_O:  out std_logic_vector(15 downto 0 ); -- WB : 16 bits data bus 
													-- ouput
			ACK_O:  out std_logic;			-- WB : Ack from to the master
			ENABLE0:  out  std_logic;
			ENABLE1:  out  std_logic;
			DISPLAY0_1:  out  std_logic_vector(7 downto 0)
			);
end wbs;

architecture Behavioral of wbs is
-- declaration of PMW_Unit

Component PWM_Unit
    Port ( 
			  --Entradas del modulo
			  
			  dutyCycle_in : 			in  STD_LOGIC_VECTOR (7 downto 0);
           clk_in : 					in  STD_LOGIC;
           chipEnable_in : 		in  STD_LOGIC;
			  
			  --Salidas de modulo
           pwm_out : 				out  STD_LOGIC);
end Component;

-- declaration of Prescaler

Component Pre_Scaler_Unit 
	 Generic (	ciclo: 			integer := 128000); 
	 --Valor del numero de ciclos que se contarán antes del siguiente ChipEnable a '1'
    Port (  	
	 --Entradas del modulo
	        clk_in : 				in  STD_LOGIC;
	 --Salidas del modulo		
           chipEnable_out : 	out  STD_LOGIC);
			  
end Component;







--
--
--constant number_of_registers: integer := number_of_registers_read+number_of_registers_write;
-- !!! ONLY FOR SIMULATION
constant internal_address_bits: integer := 3;
constant number_of_registers: integer := 2**internal_address_bits;
constant number_of_registers_processed_in_the_core: integer := 0;


type T_DATA_REGISTERS is array (natural range <>) of std_logic_vector(15 downto 0);

signal		REGISTERS: T_DATA_REGISTERS(number_of_registers-1 downto 0);
-- 1 Mwords / 4 mbyte
signal		ADR_I_REAL: std_logic_vector(internal_address_bits-1 downto 0); 
--
-- OUTPUT SIGNALS (BEFORE TRIESTATE CONTROL)
--
signal ACK_O_OUT : std_logic;
--
-- WISHBONE SLAVE INTERFACE CONTROL STATE MACHINE
--

type wb_state is (stb_in_wait, write_data, read_data, send_ack_o); 
signal act_wb : wb_state;
signal next_wb: wb_state;
--
-- REGISTERS AND SIGNALS
--
--type T_REGISTERS is array (number_of_registers-1 downto 0) of std_logic_vector(bus_data_bits-1 downto 0);
--signal REGISTERS: T_REGISTERS;
--
-- PID REGISTERS CLOCK ENABLES
--
signal REGISTERS_CE: std_logic_vector((number_of_registers)-1 downto 0);
signal Prescaler2PWM_CE: std_logic;											
												
begin
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
					if WE_I ='1' then
						next_wb <= write_data;
					else
						next_wb <= read_data;
					end if;
			 	else
					next_wb <= stb_in_wait;
				end if;

 			when read_data =>
				-- Read or write the bus data
					next_wb <= send_ack_o;

			when write_data =>
				-- Read or write the bus data
					next_wb <= send_ack_o;

		  	when send_ack_o =>
				-- Send the ack signal
				next_wb <= stb_in_wait;
	  	end case;

 end process;

with act_wb select 
	ACK_O <= '1' when send_ack_o,
		 		'0' when others;

--
-- BUS CONTROL
--
--
-- WRITING INTO THE INTERNAL REGISTERS
--	(async and also when write op)
--
decodificador:
for INDEX in number_of_registers-1 downto 0 generate
	 REGISTERS_CE(INDEX) <= '1'	when INDEX=ADR_I_REAL and (act_wb = write_data) else '0';
end generate;


-- 
-- WISHBONE SLAVE INTERFACE CONTROL
--
sync_regs_write: process (RST_I, CLK_I)
-- declarations
begin  
	if RST_I = '1' then
		--
		--	RESET VALES
		--
		for INDEX in number_of_registers-number_of_registers_processed_in_the_core-1 downto 0 loop     
			REGISTERS(INDEX) <= (others => '0');	
     	end loop;

  	else
		if (CLK_I'event and CLK_I = '1') then
		   for INDEX in number_of_registers-number_of_registers_processed_in_the_core-1 downto 0 loop
				if REGISTERS_CE(INDEX) = '1'	then 
					REGISTERS(INDEX) <= DAT_I;
				end if;
	   	end loop;
		end if;
	end if;
end process;
		
--
-- WRITING INTO WB output BUS
--	(async and also when write op)
process(STB_I,ADR_I_REAL)
begin
	if  STB_I ='1'	and CYC_I_SHARED='1' then
			DAT_O <= REGISTERS(conv_integer(ADR_I_REAL));	
--			DAT_O <= CONV_STD_LOGIC_VECTOR(dummy_read_word, C_DWIDTH);
	else 
			DAT_O <= (others => '0');
	end if;
end process;
--ADR_I_REAL <= ADR_I((internal_address_bits-1)+2 downto 2); 
ADR_I_REAL <= ADR_I(internal_address_bits-1 downto 0); 

-- Instanciation of PreScaler --

Prescaler_unit: Pre_Scaler_Unit 
	generic map ( ciclo => 12800)
	port map (
		clk_in => CLK_I,
		chipEnable_out => Prescaler2PWM_CE
		
	);

-- Instanciation of PWM Unit --


forgenerate:for i in 7 downto 0 generate
PWM_U: 
	PWM_Unit

	port map (
		dutyCycle_in => REGISTERS(i)(7 downto 0),
		clk_in => CLK_I,
		chipEnable_in => Prescaler2PWM_CE,
		pwm_out => DISPLAY0_1(i) );
	
end generate;

ENABLE0	<= '0';
ENABLE1	<= '0';


--DISPLAY0_1 <= REGISTERS(15) (7 downto 0);
end Behavioral;