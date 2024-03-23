
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY sim_incrintext IS
END sim_incrintext;

ARCHITECTURE behavior OF sim_incrintext IS 

	COMPONENT dll_sincrintext
	PORT(
		CLKIN : IN std_logic;
		CLKFB : IN std_logic;   
		LOCK_int : out std_logic;
  		LOCK_ext : out std_logic;       
		CLK0_ext : OUT std_logic;
		CLK0_int : OUT std_logic
		);
	END COMPONENT;

	SIGNAL CLKIN :  std_logic;
	SIGNAL CLKFB :  std_logic;
	SIGNAL CLK0_ext :  std_logic;
	SIGNAL CLK0_int :  std_logic;
	SIGNAL LOCK_int: std_logic;
	SIGNAL LOCK_ext: std_logic;

BEGIN

	uut: dll_sincrintext PORT MAP(
		CLKIN => CLKIN,
		CLKFB => CLKFB,
		LOCK_int => LOCK_int,
		LOCK_ext => LOCK_ext,
		CLK0_ext => CLK0_ext,
		CLK0_int => CLK0_int
	);


	PROCESS -- clk_i
	BEGIN
		CLOCK_LOOP : LOOP
		clkin <= transport '1';
		WAIT FOR 10 ns;
		clkin <= transport '0';
		WAIT FOR 10 ns;
		END LOOP CLOCK_LOOP;
	END PROCESS;

	PROCESS 
	begin
	clkfb_loop: loop
	wait on clk0_ext;
	wait for 4 ns;
	clkfb <= clk0_ext;
	end loop clkfb_loop;
	end process;

END;
