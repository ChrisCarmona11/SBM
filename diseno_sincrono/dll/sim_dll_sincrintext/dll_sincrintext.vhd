
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library ieee;
use ieee.std_logic_1164.all;

entity dll_sincrintext is
    port (CLKIN    : in  std_logic;
          CLKFB    : in  std_logic;
			 LOCK_int : out std_logic;
			 LOCK_ext : out std_logic;
          CLK0_ext : out std_logic;
          CLK0_int : out std_logic);
end dll_sincrintext;

architecture arch of dll_sincrintext is

component IBUFG
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
component OBUF
   port(
      O                              :	out   STD_ULOGIC;
      I                              :	in    STD_ULOGIC);
end component;

signal CLKIN_w, CLKFB_w, CLK0_int_dll, CLK0_int_g, CLK0_ext_dll : std_logic;
signal logic0 : std_logic;

begin 

logic0 <= '0';

clkpad   : IBUFG  port map (I=>CLKIN, O=>CLKIN_w);
clkfbpad : IBUFG  port map (I=>CLKFB, O=>CLKFB_w);

dllint : CLKDLL port map (CLKIN=>CLKIN_w, CLKFB=>CLK0_int_g, RST=>logic0,
                          CLK0=>CLK0_int_dll, CLK90=>open, CLK180=>open, CLK270=>open,
                          CLK2X=>open,    CLKDV=>open, LOCKED=>LOCK_int);

dllext : CLKDLL port map (CLKIN=>CLKIN_w, CLKFB=>CLKFB_w, RST=>logic0,
                          CLK0=>CLK0_ext_dll, CLK90=>open, CLK180=>open, CLK270=>open,
                          CLK2X=>open,    CLKDV=>open, LOCKED=>LOCK_ext);

clkg      : BUFG   port map (I=>CLK0_int_dll, O=>CLK0_int_g);
clkextpad : OBUF   port map (I=>CLK0_ext_dll, O=>CLK0_ext);

CLK0_int <= CLK0_int_g;

end arch;