-------------------------------------------------------------------------------
-- Description    : Picoblaze ejemplo simple         
-------------------------------------------------------------------------------
-- Entity for ejemplo_simple Unit 		                                      --
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library unisim;
use unisim.vcomponents.all;

entity ejemplo_simple is
    Port (  
				RESET:  in  std_logic;		-- Reset general
	        	CLOCK:  in  std_logic;		-- Reloj general
				--
				PIN_ONDA_SALIDA : out std_logic_vector(7 downto 0);	-- Salida onda
				PIN_CONTADOR: out std_logic_vector(7 downto 0);			-- Contado
				DisplayActive: out std_logic_vector(3 downto 0)
				);

end ejemplo_simple;

architecture Alpha of ejemplo_simple is
--
-- COMPONENT : PICOBLAZE MICRO
--
 component kcpsm 
    Port (     		
	   instruction : IN std_logic_vector(15 downto 0);
		in_port : IN std_logic_vector(7 downto 0);
		interrupt : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;          
		address : OUT std_logic_vector(7 downto 0);
		port_id : OUT std_logic_vector(7 downto 0);
		write_strobe : OUT std_logic;
		out_port : OUT std_logic_vector(7 downto 0);
		read_strobe : OUT std_logic);
    end component;
--
-- COMPONENT :FIRMWARE ROM
--
	COMPONENT rom0
	PORT(
		address : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;          
		instruction : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
Component bcdto7seg 
    Port (  
			--
			-- DISPLAY OUTPUTS
			--
			PIN_DATA:  out  std_logic_vector(7 downto 0);
			ENABLE0: out  std_logic;
			ENABLE1: out  std_logic;
			ENABLE2:  out  std_logic;
			ENABLE3:  out  std_logic;
			--
			PIN_SEL_BYTE:  in std_logic_vector(3 downto 0 ) 	-- external BOT
			);
end Component;

--
----- Component SRL16 -----
--
attribute INIT : string;
component SRL16
--
  generic (
       INIT : bit_vector := X"0000");
--
  port (D   : in STD_logic;
        CLK : in STD_logic;
        A0  : in STD_logic;
        A1  : in STD_logic;
        A2  : in STD_logic;
        A3  : in STD_logic;
        Q   : out STD_logic); 
end component;
--
-- MODULE INTERCONNECTION SIGNALS
--
-- ROM
signal ADDRESS_BUS : std_logic_vector(7 downto 0);						-- FIRMWARE ROM ADDRESSES BUS
signal INSTRUCTIONS_BUS : std_logic_vector(15 downto 0);				-- INSTRUCTIONS BUS
signal INPUTS_BUS : std_logic_vector(7 downto 0);						-- INPUTS BUS
signal OUTPUTS_BUS : std_logic_vector(7 downto 0);						-- OUTPUTS BUS
signal PORTS_ID : std_logic_vector(7 downto 0);							-- PORTS ID
signal READ_STROBE : std_logic;
signal WRITE_STROBE : std_logic;
signal INTERRUPT : std_logic;
--
-- INTERNAL REGISTERS
--
--outputs
signal WAVEFORM_PORT: std_logic_vector(7 downto 0);					-- SALIDA FORMA DE ONDA
signal COUNTER_PORT: std_logic_vector(7 downto 0);						-- SALIDA CONTADOR
--
-- CLOCK ENABLE FOR THE REGISTERS
--
signal WAVEFORM_PORT_CE: std_logic;								-- HABILITADOR DE RELOJ WAVEFORM_PORT
signal COUNTER_PORT_CE: std_logic;								-- HABILITADOR DE RELOJ COUNTER_PORT
--
-- CLOCK DIVIDER SIGNALS
--
signal OUT_SR: std_logic;								-- SALIDA DEL REGISTRO DE DESPLAZAMIENTO
signal Terminal_count: std_logic;									-- ENTRADA DEL REGISTRO DE DESPLAZAMIENTO

-- Señal contador para hacerlo mas lento --

signal contador: integer range 0 to 10000000 := 0;
--
begin
--
-- PICOBLAZE INSTANTIATION
--
micro:kcpsm port map (
				instruction => INSTRUCTIONS_BUS,
				in_port => INPUTS_BUS,
				interrupt => INTERRUPT,
				reset => RESET,
				clk => CLOCK,
				address => ADDRESS_BUS,
				port_id => PORTS_ID,
				write_strobe => WRITE_STROBE,
				out_port => OUTPUTS_BUS,
				read_strobe => READ_STROBE);
--
-- SOFTWARE INSTANTATION
--
Inst_rom0: rom0 PORT MAP(
		address => ADDRESS_BUS,
		instruction => INSTRUCTIONS_BUS,
		clk => CLOCK);

--
-- OUTPUT PORTS DECODING
-- 
process (CLOCK, RESET)
begin
	 			--
				-- OUTPUT PORTS RESET STATE
				--
	if	RESET = '1' then

			WAVEFORM_PORT  <= (others => '0');
			COUNTER_PORT  <= (others => '0');
				--
				-- SYNC LOAD
				--
	elsif (CLOCK='1' and CLOCK'event) then
		
		
			if WAVEFORM_PORT_CE ='1' then
					WAVEFORM_PORT <= OUTPUTS_BUS;
					
				null;
			elsif COUNTER_PORT_CE ='1' then
				COUNTER_PORT <= OUTPUTS_BUS;
			else
				null;
			
			
		end if;
	end if;
end process;
--
-- CLOCK ENABLE GENERATION (COMBINATIONAL => STUDY SYNC. IMPROVEMENTS)
--
process (WRITE_STROBE,PORTS_ID(0))
begin
	if WRITE_STROBE = '1' then
		case PORTS_ID(0) is
			when '0' =>
				WAVEFORM_PORT_CE <= '1'; 
				COUNTER_PORT_CE	<= '0'; 					
			when '1' =>
				WAVEFORM_PORT_CE <= '0'; 
				COUNTER_PORT_CE	<= '1';
		 	when others =>
				WAVEFORM_PORT_CE <= '0'; 
				COUNTER_PORT_CE	<= '0';
		end case;
	else
				WAVEFORM_PORT_CE <= '0'; 
				COUNTER_PORT_CE	<= '0';
	end if;
end process;

--Prescaler

prescaler: process (CLOCK)
begin
	if (CLOCK='1' and CLOCK'event) then 
		contador <= contador+1;
		if contador = 10000000 then
			Terminal_count <= '1';
			contador <= 0;
		else
			Terminal_count <= '0';
		end if;
	end if;
end process;

decoder: bcdto7seg

port map  (
	PIN_DATA =>	COUNTER_PORT,
	ENABLE0=>	'0',
	ENABLE1=> 	'1',
	ENABLE2=>	'1',
	ENABLE3=> 	'1',
	PIN_SEL_BYTE=>'1'
	);

Port (  
			--
			-- DISPLAY OUTPUTS
			--
			PIN_DATA:  out  std_logic_vector(7 downto 0);
			ENABLE0: out  std_logic;
			ENABLE1: out  std_logic;
			ENABLE2:  out  std_logic;
			ENABLE3:  out  std_logic;
			--
			PIN_SEL_BYTE:  in std_logic_vector(3 downto 0 ) 	-- external BOT
			);

--
--	 CLOCK DIVIDER
--
--clock_divider0: SRL16 -- enlazados entre si y de forma circular
----
--	generic map(
--       INIT => X"0001")
----	  Length = (8*A3) +(4*A2) + (2*A1) + A0 +1 
--  port map
--  		  (D   => D_SR,
--        CLK => CLOCK,
--        A0  => '1', 
--        A1  =>	'1',
--        A2  =>	'1',
--        A3  =>	'1',		  
--        Q   => OUT_SR); 
----
--clock_divider1: SRL16 
--	generic map(
--       INIT => X"0000")
----	  Length = (8*A3) +(4*A2) + (2*A1) + A0 +1 
--  port map
--  		  (D   => OUT_SR,
--        CLK => CLOCK,
--        A0  => '1', 
--        A1  =>	'1',
--        A2  =>	'1',
--        A3  =>	'1',		  
--        Q   => D_SR); 
--
-- COMBINATIONAL ASSIGMENTS
--
INTERRUPT <= Terminal_count;
INPUTS_BUS <= (others => '0');
PIN_ONDA_SALIDA <= WAVEFORM_PORT;
PIN_CONTADOR 	 <= COUNTER_PORT;
DisplayActive 	<= "1110";
end Alpha;
