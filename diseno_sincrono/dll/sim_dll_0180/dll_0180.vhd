
library ieee;
use ieee.std_logic_1164.all;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity dll_0180 is
    port (CLKIN : in  std_logic;
          RESET : in  std_logic;
          CLK0  : out std_logic;
          CLK180 : out std_logic;
          LOCKED: out std_logic);
end dll_0180;

architecture arch of dll_0180 is

component IBUFG
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;

component IBUF
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;

component CLKDLL

    port ( CLKIN   : in  std_ulogic := '0';
           CLKFB   : in  std_ulogic := '0';
           RST     : in  std_ulogic := '0';
           CLK0    : out std_ulogic := '0';
           CLK90   : out std_ulogic := '0';
           CLK180  : out std_ulogic := '0';
           CLK270  : out std_ulogic := '0';
           CLK2X   : out std_ulogic := '0';
           CLKDV   : out std_ulogic := '0';
           LOCKED  : out std_ulogic := '0');
end component;
component BUFG
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;

signal CLKIN_w, RESET_w, CLK0_dll, CLK0_g, CLK180_dll, LOCKED_dll : std_logic;

begin 

clkpad : IBUFG  port map (I=>CLKIN, O=>CLKIN_w);
rstpad : IBUF   port map (I=>RESET, O=>RESET_w);

dll    : CLKDLL port map (CLKIN=>CLKIN_w,   CLKFB=>CLK0_g, RST=>RESET_w,
                          CLK0=>CLK0_dll,   CLK90=>open, CLK180=>CLK180_dll, CLK270=>open,
                          CLK2X=>open, CLKDV=>open, LOCKED=>LOCKED_dll);

clkg   : BUFG   port map (I=>CLK0_dll,   O=>CLK0_g);
clk180g : BUFG   port map (I=>CLK180_dll,  O=>CLK180);
LOCKED <= LOCKED_DLL;

CLK0 <= CLK0_g;

end arch;
