--===========================================================================--
-- 
-- WISBONE MASTER WITH EMBEDDED UART
--
--  - MARCH 2004
--  - UPV / EHU
--  
--  - APPLIED ELECTRONICS RESEARCH TEAM (APERT)-
--  DEPARTMENT OF ELECTRONICS AND TELECOMMUNICATIONS - BASQUE COUNTRY UNIVERSITY
--
--
-- Design units   : ALCAD-EMOTELDI
--
-- File name      : wbm_uart_kcpsm3.vhd
--
-- Purpose        : Wishbone master module for test 
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
-- 081027     Armando Astarloa     27 October		First VHDL synthesizable code
-- 110203     Armando Astarloa     03 February		Software and softreset updated
--
-------------------------------------------------------------------------------
-- Description    :  Picoblaze+uart+command interprester soft (WB bridge)	  --
-------------------------------------------------------------------------------
-- Entity for wbm_uart_kcpsm3 Unit 		                                            --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity wbm_uart_kcpsm3 is 
Port (  
	--
	-- WISHBONE MASTER INTERFACE	
	--
	CLK_I:  in  std_logic;				-- WB : Global bus clock
	RST_I:  in  std_logic;		-- WB : Global RESET signal
	ACK_I:  in 	std_logic;		-- WB : Ack from the slave
	ADR_O:  out std_logic_vector(15 downto 0); 	-- WB : Register selection
	DAT_I:  in 	std_logic_vector(15 downto 0 ); -- WB : 16 bits data bus 
	DAT_O:  out std_logic_vector(15 downto 0 ); -- WB : 16 bits data bus 
	STB_O:  out  std_logic;		-- WB : Access qualify 
	WE_O:   out  std_logic;		-- WB : Read/write request
	CYC_O:   out  std_logic;	-- WB : Bus request to the arbitrer 
	GNT_I:   in  std_logic;		-- WB : Bus gran from the arbitrer
	--
	-- SERIAL LINES
	--
	TX : out std_logic;			-- TX serial line
	RX : in std_logic;			-- RX serial line
	--
	-- DEBUG 
	--
	LED : out std_logic_vector(7 downto 0 );			-- External leds 
	SOFT_RESET: OUT std_logic		-- SOFT RESET OUTPUT SIGNAL

);
end  wbm_uart_kcpsm3;

architecture arch of wbm_uart_kcpsm3 is
--
-- COMPONENT : KCPSM MICRO PICOBLAZE v3
--
	COMPONENT kcpsm3
	PORT(
		instruction : IN std_logic_vector(17 downto 0);
		in_port : IN std_logic_vector(7 downto 0);
		interrupt : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;          
		address : OUT std_logic_vector(9 downto 0);
		port_id : OUT std_logic_vector(7 downto 0);
		write_strobe : OUT std_logic;
		out_port : OUT std_logic_vector(7 downto 0);
		read_strobe : OUT std_logic;
		interrupt_ack : OUT std_logic
		);
	END COMPONENT;

--
-- Main Entity for UART_RX
--
component uart_rx is
    Port (            serial_in : in std_logic;
                       data_out : out std_logic_vector(7 downto 0);
                    read_buffer : in std_logic;
                   reset_buffer : in std_logic;
                   en_16_x_baud : in std_logic;
            buffer_data_present : out std_logic;
                    buffer_full : out std_logic;
               buffer_half_full : out std_logic;
                            clk : in std_logic);
    end component;
--
-- Main Entity for UART_TX
--
component uart_tx is
    Port (            data_in : in std_logic_vector(7 downto 0);
                 write_buffer : in std_logic;
                 reset_buffer : in std_logic;
                 en_16_x_baud : in std_logic;
                   serial_out : out std_logic;
                  buffer_full : out std_logic;
             buffer_half_full : out std_logic;
                          clk : in std_logic);
    end component;
--
--
-- COMPONENT :FIRMWARE ROMs
--
	COMPONENT ROM_KCPSM3
	PORT(
		address : IN std_logic_vector(9 downto 0);
		clk : IN std_logic;          
		instruction : OUT std_logic_vector(17 downto 0)
		);
	END COMPONENT;
	
--
-- OUTPUT SIGNALS (BEFORE TRIESTATE CONTROL)
--
signal ADR_O_OUT : std_logic_vector(15 downto 0);
signal WE_O_OUT : std_logic;
signal STB_O_OUT : std_logic;
signal ACK_I_IN : std_logic;
--
-- MODULE INTERCONNECTION SIGNALS
--
-- ROM
signal ADDRESS_BUS : std_logic_vector(9 downto 0);			-- FIRMWARE ROM ADDRESSES BUS
signal INSTRUCTIONS_BUS : std_logic_vector(17 downto 0);	-- INSTRUCTIONS BUS
signal INSTRUCTIONS_BUS_A : std_logic_vector(17 downto 0);	-- INSTRUCTIONS BUS
signal INSTRUCTIONS_BUS_B : std_logic_vector(17 downto 0);	-- INSTRUCTIONS BUS
signal INPUTS_BUS : std_logic_vector(7 downto 0);			-- INPUTS BUS
signal OUTPUTS_BUS : std_logic_vector(7 downto 0);			-- OUTPUTS BUS
signal PORTS_ID : std_logic_vector(7 downto 0);				-- PORTS ID
signal READ_STROBE : std_logic;
signal WRITE_STROBE : std_logic;
signal INTERRUPT : std_logic;
signal INTERRUPT_ACK : std_logic;
-- UART RX
signal UARTRX_DATA_OUT : std_logic_vector(7 downto 0);							
signal UARTRX_READ_BUFFER_CE: std_logic;
signal UARTRX_RESET_BUFFER: std_logic;
signal UARTRX_EN_16_X_BAUD: std_logic;
signal UARTRX_BUFFER_DATA_PRESENT: std_logic;
signal UARTRX_BUFFER_FULL: std_logic;
signal UARTRX_BUFFER_HALF_FULL: std_logic;
-- UART TX
signal UARTTX_DATA_IN : std_logic_vector(7 downto 0);	
signal UARTTX_WRITE_BUFFER_CE: std_logic;
signal UARTTX_RESET_BUFFER: std_logic;
signal UARTTX_EN_16_X_BAUD: std_logic;
signal UARTTX_BUFFER_FULL: std_logic;
signal UARTTX_BUFFER_HALF_FULL: std_logic;


--signal BAUD_COUNTER : integer range 0 to 54 :=0;
signal BAUD_COUNTER : integer range 0 to 143 :=0;


--
-- INTERNAL REGISTERS
--
--outputs
signal DATA_WB_OUT_7_0: std_logic_vector(7 downto 0);		-- WISHBONE DATA OUTPUT BUS
signal DATA_WB_OUT_15_8: std_logic_vector(7 downto 0);	-- WISHBONE DATA OUTPUT BUS 
signal ADDR_WB_LOWEST: std_logic_vector(7 downto 0);		-- WISHBONE 8 LOWEST ADDRESS BITS
signal ADDR_WB_HIGHEST: std_logic_vector(7 downto 0);		-- WISHBONE 8 HIGHEST ADDRESS BITS 
signal CONTROL_WB_OUT: std_logic_vector(2 downto 0);		-- WISHBONE CONTROL SIGNALS
signal GENERAL_OUTPUT: std_logic_vector(7 downto 0);		-- OUTPUT PORT


--inputs
signal CONTROL_WB_IN : std_logic;								-- WISHBONE CONTROL INPUT SIGNALS
signal DATA_WB_IN_7_0: std_logic_vector(7 downto 0);		-- WISHBONE DATA INPUT BUS
signal DATA_WB_IN_15_8: std_logic_vector(7 downto 0);		-- WISHBONE DATA INPUT BUS 
signal UART_STATUS_IN: std_logic_vector(7 downto 0);		-- UART STATUS REGISTER 
--
-- CLOCK ENABLE FOR THE REGISTERS
--

signal DATA_WB_OUT_7_0_CE : std_logic; 
signal DATA_WB_OUT_15_8_CE : std_logic;
signal ADDR_WB_LOWEST_CE : std_logic;
signal ADDR_WB_HIGHEST_CE : std_logic;
signal CONTROL_WB_OUT_CE : std_logic;
signal CONTROL_WB_IN_CE : std_logic; 
signal DATA_WB_IN_7_0_CE : std_logic; 
signal DATA_WB_IN_15_8_CE : std_logic;		
signal UART_STATUS_IN_CE: std_logic;					-- UART STATUS REGISTER CE	
signal GENERAL_OUTPUT_CE: std_logic;					-- OUTPUT PORT CE
signal SOFT_RESET_CE: std_logic;							-- SOFT RESET CE
--
-- WISHBONE MATER INTERFACE CONTROL STATE MACHINE
--
-- STB_O is deasserted after having received the ACK
signal STB_O_NODE : std_logic; 
signal ACK_I_NODE : std_logic; 
signal WE_O_NODE : std_logic;	
signal ADR_O_NODE : std_logic_vector (15 downto 0);

signal WB_CLK: std_logic;
type wb_state is (stb_node_wait, ack_wait, stb_node_zero_wait); 
signal act_wb : wb_state;
signal next_wb: wb_state;


signal reconf_ack_out:std_logic;


-- Para hacer síncrona la recogida de datos en las lecturas a esclavos
signal DATA_WB_IN_ce:	std_logic;


begin

--
-- COMPONENTS INSTANTATION
--

--
-- KCPSM3INSTANTATION
--
	Inst_kcpsm3: kcpsm3 PORT MAP(
		address 			=> ADDRESS_BUS,
		instruction 	=> INSTRUCTIONS_BUS,
		port_id 			=> PORTS_ID,
		write_strobe 	=> WRITE_STROBE,
		out_port 		=> OUTPUTS_BUS,
		read_strobe 	=> READ_STROBE,
		in_port 			=> INPUTS_BUS,
		interrupt 		=> INTERRUPT,
		interrupt_ack 	=> INTERRUPT_ACK,
		reset 			=> RST_I,
		clk 				=> CLK_I
	);

--
-- UART INSTANTATION
--
-- UART_RX
uartrx0:UART_RX port map  (           
							 serial_in => RX,
                       data_out => UARTRX_DATA_OUT,
                    read_buffer => UARTRX_READ_BUFFER_CE,
                   reset_buffer => UARTRX_RESET_BUFFER,
                   en_16_x_baud => UARTRX_EN_16_X_BAUD,
            buffer_data_present => UARTRX_BUFFER_DATA_PRESENT,
                    buffer_full => UARTRX_BUFFER_FULL,
               buffer_half_full => UARTRX_BUFFER_HALF_FULL,
                            clk => CLK_I);
 
--  UART_TX
uarttx0:UART_TX port map (            
							 data_in => OUTPUTS_BUS,
                 write_buffer => UARTTX_WRITE_BUFFER_CE,
                 reset_buffer => UARTTX_RESET_BUFFER,
                 en_16_x_baud => UARTTX_EN_16_X_BAUD,
                   serial_out => TX,
                  buffer_full => UARTTX_BUFFER_FULL,
             buffer_half_full => UARTTX_BUFFER_HALF_FULL,
                          clk => CLK_I);
--
-- FIRMWARE ROM INSTANTATION
--
rom0:ROM_KCPSM3 port map (
				address => ADDRESS_BUS,
				clk => CLK_I,
				instruction => INSTRUCTIONS_BUS_A);

--
-- TRIESTATE SIGNALS CONTROL (MULTIMASTER)
--
ADR_O <= ADR_O_OUT when GNT_I='1' else (others => '0');
WE_O <= WE_O_OUT when GNT_I='1' else '0';
STB_O <= STB_O_OUT when GNT_I='1' else '0';
ACK_I_IN <= ACK_I when GNT_I='1' else '0';
--
-- BUS CONTROL
--
WB_CLK <= CLK_I;
-- SYNC
process (WB_CLK)    
begin	
	if (WB_CLK'event and WB_CLK='1') then
			if RST_I = '1' then
				DATA_WB_IN_15_8 <= (others => '0');
				DATA_WB_IN_7_0 <= (others => '0');
			else
				if (DATA_WB_IN_ce = '1' and GNT_I = '1') then	-- En la generación del CE no se tiene en cuenta el GNT
					DATA_WB_IN_15_8 <= DAT_I(15 downto 8);
					DATA_WB_IN_7_0 <= DAT_I(7 downto 0);
					
				else
					DATA_WB_IN_15_8 <= DATA_WB_IN_15_8;
					DATA_WB_IN_7_0 	<= DATA_WB_IN_7_0;

				end if;
			end if;
	end if;
end process;



-- WISHBONE BUS COMPOSITION

DAT_O <= (DATA_WB_OUT_15_8 & DATA_WB_OUT_7_0) 
	when (WE_O_OUT ='1' and STB_O_OUT ='1' and GNT_I='1') else (others =>'0');


--
-- SIGNALS CONNECTIONS
--
	-- UART STATUS REGISTER DIFINITION
	UART_STATUS_IN	<= UARTRX_BUFFER_DATA_PRESENT & UARTRX_BUFFER_FULL & 
							UARTRX_BUFFER_HALF_FULL & '0'
							& '0' & '0' & UARTTX_BUFFER_FULL & UARTTX_BUFFER_HALF_FULL;
	INTERRUPT <= UARTRX_BUFFER_DATA_PRESENT;

	UARTRX_RESET_BUFFER <= RST_I;
	UARTTX_RESET_BUFFER <= RST_I;
	
	--
	-- OUTPUTS
	--
	ADR_O_NODE <= ADDR_WB_HIGHEST & ADDR_WB_LOWEST;
	WE_O_NODE 	<= CONTROL_WB_OUT (1);
	STB_O_NODE <= CONTROL_WB_OUT (0);

	LED <= GENERAL_OUTPUT;
 	--
	-- INPUTS
	--
 	CONTROL_WB_IN <= ACK_I_NODE;

--
-- INPUT PORTS DECODING
--
-- KCPSM DATASHEET NOTE: 
-- The user interface logic is required to decode the port 
-- address value and supply the correct data. Note that the 
-- Read_Strobe provides an indicator that a port has been read, 
-- but in not vital to qualify a valid address.
--
process (WB_CLK)
begin
	 			--
				-- INPUT PORTS RESET STATE
				--
				--
				-- SYNCRONOUS INPUT SIGNALS SAMPLE
				--
	if (WB_CLK='1' and WB_CLK'event) then
			if RST_I='1' then
					INPUTS_BUS <= (others => '0'); 
			else
				if CONTROL_WB_IN_CE='1' then
					INPUTS_BUS(7 downto 1) <= (others => '0');
					INPUTS_BUS(0) <= CONTROL_WB_IN;
				elsif DATA_WB_IN_7_0_CE='1' THEN
					INPUTS_BUS <= DATA_WB_IN_7_0;
				elsif DATA_WB_IN_15_8_CE='1' THEN
					INPUTS_BUS <= DATA_WB_IN_15_8;
			 	elsif UARTRX_READ_BUFFER_CE='1' THEN
					INPUTS_BUS <= UARTRX_DATA_OUT;
			 	elsif UART_STATUS_IN_CE='1' THEN
					INPUTS_BUS <= UART_STATUS_IN;
				end if;
			end if;
	end if;
end process;
--
-- OUTPUT PORTS DECODING
--
-- KCPSM DATASHEET NOTE: The user interface logic is required to decode the port 
-- address value and enable the correct logic to capture the data value. The
---Write_Strobe must be used in this case ensure the transfer of valid data only.
--
--
process (WB_CLK)
begin
				--
				-- SYNC LOAD
				--
	if (WB_CLK='1' and WB_CLK'event) then
	 			--
				-- OUTPUT PORTS RESET STATE
				--
		if	RST_I = '1' then

				DATA_WB_OUT_7_0 <= (others => '0');
				DATA_WB_OUT_15_8 <= (others => '0');
				CONTROL_WB_OUT <= (others => '0');
				UARTTX_DATA_IN <= (others => '0');	
				ADDR_WB_LOWEST	<= (others => '0');
				ADDR_WB_HIGHEST <= (others => '0');
				GENERAL_OUTPUT <= (others => '0');
				SOFT_RESET <= '0';
		else	
			if DATA_WB_OUT_7_0_CE='1' then
				DATA_WB_OUT_7_0 <= OUTPUTS_BUS;
			elsif DATA_WB_OUT_15_8_CE='1' then
				DATA_WB_OUT_15_8 <= OUTPUTS_BUS;
			elsif CONTROL_WB_OUT_CE='1' then
				CONTROL_WB_OUT <= OUTPUTS_BUS(2 downto 0);
			elsif ADDR_WB_LOWEST_CE='1' then
				ADDR_WB_LOWEST <= OUTPUTS_BUS;
			elsif ADDR_WB_HIGHEST_CE='1' then
				ADDR_WB_HIGHEST <= OUTPUTS_BUS;
			elsif GENERAL_OUTPUT_CE ='1' then
				GENERAL_OUTPUT <= OUTPUTS_BUS;
			elsif SOFT_RESET_CE ='1' then
				SOFT_RESET <= OUTPUTS_BUS(0);
			else
				null;
			end if;
		end if;
	end if;
end process;
--
-- CLOCK ENABLE GENERATION (COMBINATIONAL => STUDY SYNC. IMPROVEMENTS)
--
--
-- OUTPUTS
--
process (WRITE_STROBE,PORTS_ID)
begin
	if WRITE_STROBE = '1' then
		case PORTS_ID is
			when "00000000" =>
				DATA_WB_OUT_7_0_CE <= '1'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '0'; 
				SOFT_RESET_CE <= '0';


			when "00000001" =>
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '1';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '0';
				SOFT_RESET_CE <= '0';

			when "00000010" =>
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '1';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '0'; 
				SOFT_RESET_CE <= '0';

			when "00000011" =>
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '1';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '0';
				SOFT_RESET_CE <= '0';

			when "00000100" =>
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '1'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '0';
				SOFT_RESET_CE <= '0';
				
			when "00000101" =>
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '1'; 
				GENERAL_OUTPUT_CE <= '0';
				SOFT_RESET_CE <= '0';
				
			when "00000110" =>
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '1';
				SOFT_RESET_CE <= '0';

			when "00000111" =>
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '0';
				SOFT_RESET_CE <= '1';

		 	when others =>
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '0';
				SOFT_RESET_CE <= '0';

		end case;

	else
				DATA_WB_OUT_7_0_CE <= '0'; 
				DATA_WB_OUT_15_8_CE <= '0';
				ADDR_WB_LOWEST_CE <= '0';
				ADDR_WB_HIGHEST_CE <= '0';
				CONTROL_WB_OUT_CE <= '0'; 
				UARTTX_WRITE_BUFFER_CE <= '0'; 
				GENERAL_OUTPUT_CE <= '0';
				SOFT_RESET_CE <= '0';

	end if;
end process;

--
-- INPUTS
--
process (PORTS_ID)
begin
	case PORTS_ID is
		when "00000000" =>
			CONTROL_WB_IN_CE <= '1';
			DATA_WB_IN_7_0_CE <= '0'; 
			DATA_WB_IN_15_8_CE <= '0';			
			UARTRX_READ_BUFFER_CE <= '0';
			UART_STATUS_IN_CE <= '0';

	  	when "00000001" =>
			CONTROL_WB_IN_CE <= '0';
			DATA_WB_IN_7_0_CE <= '1'; 
			DATA_WB_IN_15_8_CE <= '0';	
			UARTRX_READ_BUFFER_CE <= '0';
			UART_STATUS_IN_CE <= '0';

	 	when "00000010" =>
			CONTROL_WB_IN_CE <= '0';
			DATA_WB_IN_7_0_CE <= '0'; 
			DATA_WB_IN_15_8_CE <= '1';					
			UARTRX_READ_BUFFER_CE <= '0';
			UART_STATUS_IN_CE <= '0';

	 	when "00000011" =>
			CONTROL_WB_IN_CE <= '0';
			DATA_WB_IN_7_0_CE <= '0'; 
			DATA_WB_IN_15_8_CE <= '0';					
			UARTRX_READ_BUFFER_CE <= '1';
			UART_STATUS_IN_CE <= '0';

		when "00000100" =>
			CONTROL_WB_IN_CE <= '0';
			DATA_WB_IN_7_0_CE <= '0'; 
			DATA_WB_IN_15_8_CE <= '0';					
			UARTRX_READ_BUFFER_CE <= '0';
			UART_STATUS_IN_CE <= '1';

	 	when others =>
			CONTROL_WB_IN_CE <= '0';
			DATA_WB_IN_7_0_CE <= '0'; 
			DATA_WB_IN_15_8_CE <= '0';	
			UARTRX_READ_BUFFER_CE <= '0';
			UART_STATUS_IN_CE <= '0';

	end case;

end process;

   INSTRUCTIONS_BUS <= 	INSTRUCTIONS_BUS_A;

-- 
-- WISHBONE MASTER INTERFACE CONTROL
--
ack_control: process (RST_I, WB_CLK)
-- declarations
begin  
  	if (WB_CLK'event and WB_CLK = '1') then
		if RST_I = '1' then
			act_wb <= stb_node_wait;
		else
			act_wb <= next_wb;
		end if;
	end if;
end process;

process(STB_O_NODE, ACK_I_IN,act_wb)
begin
		case act_wb is
			when stb_node_wait =>
				-- The state machine waits for the internal
				-- STB_O_NODE request from the micro. It wants
				-- an access to the WB bus.
				if STB_O_NODE ='1' then
					next_wb <= ack_wait;
			 	else
					next_wb <= stb_node_wait;
				end if;

			when ack_wait =>
				-- In this state the STB_OUT and the CYC_O
				--	are set. The STB_OUT is written to the	wb
				-- when the GNT_I='1'. The state changes when
				-- the ACK from the slave is received.
				if ACK_I_IN ='1' then
					next_wb <= stb_node_zero_wait;
				else
					next_wb <= ack_wait;
				end if;

		  	when stb_node_zero_wait =>
				-- After receiving the ACK from the slave, the
				-- STB is deasserted and an internal ACK_NODE
				-- (no wb compatible) is set for the micro. It will
				-- be deasserted when is read by the micro and it deasserts
				-- the internal STB (STB_O_NODE).
				if STB_O_NODE = '0' then
					next_wb <= stb_node_wait;
			  	else
					next_wb <= stb_node_zero_wait;
			 	end if;

		 	when others =>
				next_wb <= stb_node_wait;
	  	end case;

 end process;

with act_wb select
	STB_O_OUT <= '1' when ack_wait,
				'0' when others;

with act_wb select
	CYC_O <= '1' when ack_wait,
				'0' when others;

with act_wb select
	WE_O_OUT <= WE_O_NODE when ack_wait,
				'0' when others;

with act_wb select
 	ADR_O_OUT <= ADR_O_NODE when ack_wait,
			   ADR_O_NODE when stb_node_zero_wait, ---SI NO,AL LEER DESACTIVA ADR ANTES DE HABERLO REGISTRADO
				(others => '0') when others;

with act_wb select
	ACK_I_NODE <= '1' when stb_node_zero_wait,
				'0' when others;



with act_wb select
	DATA_WB_IN_ce <= '1' when ack_wait, '0' when others;


	--
	-- CLOCK FOR BAUD RATE GENERATOR
	-- X16 BIT RATE
	-- 125.000.000 / (16*115200) = 67.816 unidades => 68 =>
	-- 62.500.000 / (16*115200) = 33,90 unidades => 34 =>
	-- 100.000.000 / (16*115200) = 54.253 unidades => 54 => error 0,47 %
	--  50.000.000 / (16*115200) = 27.127 unidades => 27 => error 0,47 %
	--  33.000.000 / (16*14400) = 143,229 unidades => 143 => error 0,16 % *SÍ ANDA
	--
	-- CONVENTIONAL COUNTER
	--
baud_generator0: process (CLK_I)
	begin  
  		if (CLK_I'event and CLK_I = '1') then
			if BAUD_COUNTER = 27 then  
				BAUD_COUNTER <= 0;		
				UARTRX_EN_16_X_BAUD <= '1';
				UARTTX_EN_16_X_BAUD <= '1';
			else
				BAUD_COUNTER <= BAUD_COUNTER + 1;		
				UARTRX_EN_16_X_BAUD <= '0';
				UARTTX_EN_16_X_BAUD <= '0';
			end if;
		end if;
end process;


---- PARA PRUEBAS -------
	--ver_reg_de_mtm <= DATA_WB_OUT_7_0;
	--ver_reg_de_mtm <= ADDR_WB_HIGHEST;


end arch;
