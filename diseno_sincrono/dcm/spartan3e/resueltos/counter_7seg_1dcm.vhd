----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:54:34 09/26/2007 
-- Design Name: 
-- Module Name:    counter_7seg_1dcm - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_7seg_1dcm is
	PORT	(
			RST_I_PIN:  in  std_logic;		-- External RESET signal
	      CLK_I_PIN:  in  std_logic;		-- External CLOCK signal
			--
			-- DISPLAY OUTPUTS
			--
			PIN_DATA:  out  std_logic_vector(7 downto 0);
--			ENABLE0: out  std_logic;
--			ENABLE1: out  std_logic;
--			ENABLE2:  out  std_logic;
--			ENABLE3:  out  std_logic;
			--
			PIN_SEL_BYTE:  in std_logic_vector(3 downto 0 ) 	-- external BOT
			);
end counter_7seg_1dcm;

architecture Behavioral of counter_7seg_1dcm is

	COMPONENT dcm_internal_deskew
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT bcdto7seg
	PORT(
		PIN_SEL_BYTE : IN std_logic_vector(3 downto 0);          
		PIN_DATA : OUT std_logic_vector(7 downto 0);
		ENABLE0 : OUT std_logic;
		ENABLE1 : OUT std_logic;
		ENABLE2 : OUT std_logic;
		ENABLE3 : OUT std_logic
		);
	END COMPONENT;
	
SIGNAL CLK_I:  std_logic;		-- CLOCK signal
SIGNAL RST_I:  std_logic;		-- RESET signal
SIGNAL NRST_I: std_logic;	-- DCM Lock output
-- NOT USED IN SPARTAN3E
SIGNAL 			ENABLE0:  std_logic;
SIGNAL 			ENABLE1:  std_logic;
SIGNAL 			ENABLE2:  std_logic;
SIGNAL 			ENABLE3:  std_logic;
--	
constant count_module:integer:=10;
signal BCD_COUNT:std_logic_vector (3 downto 0);
--
constant prescaler_module:integer:=10000000;
signal PRESCALER_COUNT:integer;
signal PRESCALER_COUNT_CE:std_logic;


begin

--
-- PRESCALER
--
process (CLK_I, RST_I) 
begin
   if RST_I='1' then 
      PRESCALER_COUNT <= 0;
   elsif CLK_I'event and CLK_I = '1' then
     if PRESCALER_COUNT=prescaler_module-1 then
			PRESCALER_COUNT <= 0;
			PRESCALER_COUNT_CE <= '1';
	    else 
			PRESCALER_COUNT <= PRESCALER_COUNT + 1;
			PRESCALER_COUNT_CE <= '0';
    end if;
   end if;
end process;

--
-- CONTADOR BCD
--
process (CLK_I, RST_I) 
begin
   if RST_I='1' then 
      BCD_COUNT <= (others => '0');
   elsif CLK_I'event and CLK_I = '1' then
		if PRESCALER_COUNT_CE='1' then
			if BCD_COUNT=count_module-1 then
				BCD_COUNT <= (others => '0');
			else 
				BCD_COUNT <= BCD_COUNT + 1;
			end if;
		end if;
   end if;
end process;

	Inst_bcdto7seg: bcdto7seg 
	PORT MAP(
		PIN_DATA => PIN_DATA,
		ENABLE0 => ENABLE0,
		ENABLE1 => ENABLE1,
		ENABLE2 => ENABLE2,
		ENABLE3 => ENABLE3,
		PIN_SEL_BYTE => BCD_COUNT
	);
	
		Inst_dcm_internal_deskew: dcm_internal_deskew PORT MAP(
		CLKIN_IN => CLK_I_PIN,
		RST_IN =>  RST_I_PIN,
		CLKIN_IBUFG_OUT => OPEN,
		CLK0_OUT => CLK_I,
		LOCKED_OUT => NRST_I
	);
	RST_I <= not NRST_I;
end Behavioral;

