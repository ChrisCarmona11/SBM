----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:25:03 02/13/2024 
-- Design Name: 
-- Module Name:    State_machine - Behavioral 
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

entity State_machine is
    Port ( boton1 : 					in  STD_LOGIC;
           boton2 : 					in  STD_LOGIC;
           clk_in : 					in  STD_LOGIC;

           NUM_PWM_MODULE_CE : 	out  STD_LOGIC;
           WRITE_DC_MODULE_CE : 	out  STD_LOGIC);
end State_machine;

architecture Behavioral of State_machine is

	type states is (IDLE,WRITE_NUM_PWM_MODULE,WRITE_DC_MODULE);
	signal state		: states := IDLE;
	signal next_state		: states;
begin	
process (clk_in)
begin 
	if (clk_in'event and clk_in = '1') then 
			state <= next_state;
	end if;
end process;

process (state,boton1,boton2)
begin

	case state is 
		when IDLE =>
			if 		boton1 ='1' then next_state <= WRITE_NUM_PWM_MODULE;
			elsif 	boton2 ='1' then next_state <= WRITE_DC_MODULE;
										else next_state <= IDLE;
			end if;
		when WRITE_NUM_PWM_MODULE =>
			next_state <= IDLE;
		when WRITE_DC_MODULE =>
			next_state <= IDLE;
	end case;
end process;

with state select
	NUM_PWM_MODULE_CE  <= '1' when WRITE_NUM_PWM_MODULE,
								 '0' when others;	
with state select								
	WRITE_DC_MODULE_CE <= '1' when WRITE_DC_MODULE,
								 '0' when others;


end Behavioral;

