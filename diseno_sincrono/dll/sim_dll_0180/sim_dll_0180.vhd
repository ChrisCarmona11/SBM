
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY sim_dll_0180 IS
END sim_dll_0180;

ARCHITECTURE behavior OF sim_dll_0180 IS 

	COMPONENT dll_0180
	PORT(
		CLKIN : IN std_logic;
		RESET : IN std_logic;          
		CLK0 : OUT std_logic;
		CLK180 : OUT std_logic;
		LOCKED : OUT std_logic
		);
	END COMPONENT;

	SIGNAL CLKIN :  std_logic;
	SIGNAL RESET :  std_logic;
	SIGNAL CLK0 :  std_logic;
	SIGNAL CLK180 :  std_logic;
	SIGNAL LOCKED :  std_logic;

BEGIN

	uut: dll_0180 PORT MAP(
		CLKIN => CLKIN,
		RESET => RESET,
		CLK0 => CLK0,
		CLK180 => CLK180,
		LOCKED => LOCKED
	);


 PROCESS -- rst_i
   BEGIN
	reset <= '1';
	wait for 400 ns;
	reset <= '0';
	wait for 10000000 ns;
	END PROCESS;

	PROCESS -- clk_i
	BEGIN
		CLOCK_LOOP : LOOP
		clkin <= transport '1';
		WAIT FOR 10 ns;
		clkin <= transport '0';
		WAIT FOR 10 ns;
		END LOOP CLOCK_LOOP;
	END PROCESS;


END;
