-- Xilinx Vhdl produced by program ngd2vhdl E.35
-- Command: -rpw 100 -tpw 1 -ar Structure -xon true -w ram_distr.nga ram_distr_timesim.vhd 
-- Input file: ram_distr.nga
-- Output file: ram_distr_timesim.vhd
-- Design name: ram_distr
-- Xilinx: C:/Xilinx
-- # of Entities: 1
-- Device: 2s200eft256-6

-- The output of ngd2vhdl is a simulation model. This file cannot be synthesized,
-- or used in any other manner other than simulation. This netlist uses simulation
-- primitives which may not represent the true implementation of the device, however
-- the netlist is functionally correct. Do not modify this file.

-- Model for  TOC (Tristate-On-Configuration) Cell
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.VITAL_Timing.all;
entity TOC is
  generic (InstancePath: STRING := "*";
           WIDTH : Time := 0 ns);
  port(O : out std_ulogic := '0');
  attribute VITAL_LEVEL0 of TOC : entity is TRUE;
end TOC;

architecture TOC_V of TOC is
attribute VITAL_LEVEL0 of TOC_V : architecture is TRUE;
begin
  ONE_SHOT : process
  begin
    O <= '1';
    if (WIDTH <= 0 ns) then
       O <= '0';
    else
       wait for WIDTH;
       O <= '0';
    end if;
    wait;
  end process ONE_SHOT;
end TOC_V;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;
entity ram_distr is
  port (
    clk : in STD_LOGIC := 'X'; 
    we : in STD_LOGIC := 'X'; 
    di : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    do : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end ram_distr;

architecture Structure of ram_distr is
  component TOC
    generic (InstancePath: STRING := "*";
             WIDTH : Time := 0 ns);
    port (O : out STD_ULOGIC := '1');
  end component;
  signal N83 : STD_LOGIC; 
  signal a_0_IBUF_1 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal a_4_IBUF_1 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal a_1_IBUF_1 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal a_2_IBUF_1 : STD_LOGIC; 
  signal a_5_IBUF : STD_LOGIC; 
  signal a_6_IBUF : STD_LOGIC; 
  signal a_7_IBUF : STD_LOGIC; 
  signal we_IBUF : STD_LOGIC; 
  signal Mram_ram_inst_lut2_3 : STD_LOGIC; 
  signal Mram_ram_inst_lut2_4 : STD_LOGIC; 
  signal Mram_ram_inst_lut2_2 : STD_LOGIC; 
  signal Mram_ram_inst_lut2_5 : STD_LOGIC; 
  signal Mram_ram_inst_lut2_1 : STD_LOGIC; 
  signal Mram_ram_inst_lut2_6 : STD_LOGIC; 
  signal Mram_ram_inst_lut2_0 : STD_LOGIC; 
  signal Mram_ram_inst_lut2_7 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal a_3_IBUF_1 : STD_LOGIC; 
  signal di_0_IBUF : STD_LOGIC; 
  signal di_1_IBUF : STD_LOGIC; 
  signal clk_BUFGP_IBUFG : STD_LOGIC; 
  signal di_2_IBUF : STD_LOGIC; 
  signal di_3_IBUF : STD_LOGIC; 
  signal di_4_IBUF : STD_LOGIC; 
  signal di_5_IBUF : STD_LOGIC; 
  signal di_6_IBUF : STD_LOGIC; 
  signal di_7_IBUF : STD_LOGIC; 
  signal di_8_IBUF : STD_LOGIC; 
  signal di_9_IBUF : STD_LOGIC; 
  signal do_10_OBUF : STD_LOGIC; 
  signal do_11_OBUF : STD_LOGIC; 
  signal do_12_OBUF : STD_LOGIC; 
  signal do_0_OBUF : STD_LOGIC; 
  signal di_10_IBUF : STD_LOGIC; 
  signal do_13_OBUF : STD_LOGIC; 
  signal do_1_OBUF : STD_LOGIC; 
  signal di_11_IBUF : STD_LOGIC; 
  signal do_14_OBUF : STD_LOGIC; 
  signal do_2_OBUF : STD_LOGIC; 
  signal di_12_IBUF : STD_LOGIC; 
  signal do_15_OBUF : STD_LOGIC; 
  signal do_3_OBUF : STD_LOGIC; 
  signal di_13_IBUF : STD_LOGIC; 
  signal do_4_OBUF : STD_LOGIC; 
  signal di_14_IBUF : STD_LOGIC; 
  signal do_5_OBUF : STD_LOGIC; 
  signal di_15_IBUF : STD_LOGIC; 
  signal do_6_OBUF : STD_LOGIC; 
  signal do_7_OBUF : STD_LOGIC; 
  signal do_8_OBUF : STD_LOGIC; 
  signal do_9_OBUF : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname108 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname25 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname33 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname41 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname49 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname86 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname94 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname102 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname109 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname26 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname34 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname42 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname50 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname58 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname8 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname87 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname95 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname103 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname110 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname118 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname27 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname35 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname43 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname51 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname59 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname9 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname96 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname104 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname111 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname119 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname36 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname44 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname52 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname60 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname68 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname10 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname97 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname105 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname112 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname120 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname128 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname37 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname45 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname53 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname61 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname69 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname11 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname106 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname113 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname121 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname129 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname46 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname54 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname62 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname70 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname78 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname12 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname107 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname18 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname114 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname122 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname130 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname47 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname55 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname63 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname71 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname79 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname13 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname19 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname131 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname115 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname123 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname56 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname64 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname72 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname80 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname88 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname14 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname20 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname28 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname132 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname116 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname124 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname57 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname65 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname73 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname81 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname89 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_0 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname15 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_2 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname16 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname17 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname22 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname23 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname21 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname29 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_4 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname24 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname133 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname117 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname125 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname30 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname31 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_6 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname32 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname66 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname74 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname82 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname90 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname98 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname38 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname39 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_8 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname40 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname134 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname126 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname67 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname75 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname83 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname91 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname99 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_10 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname48 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_20 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_12 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname92 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname93 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_22 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_14 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_30 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname135 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname127 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname100 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname101 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_24 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_16 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname76 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname84 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname77 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_26 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_18 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname85 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_28 : STD_LOGIC; 
  signal a_0_IBUF_1_GROM : STD_LOGIC; 
  signal a_4_IBUF_1_GROM : STD_LOGIC; 
  signal a_1_IBUF_1_GROM : STD_LOGIC; 
  signal a_2_IBUF_1_GROM : STD_LOGIC; 
  signal Mram_ram_inst_lut2_3_GROM : STD_LOGIC; 
  signal Mram_ram_inst_lut2_3_FROM : STD_LOGIC; 
  signal Mram_ram_inst_lut2_2_GROM : STD_LOGIC; 
  signal Mram_ram_inst_lut2_2_FROM : STD_LOGIC; 
  signal Mram_ram_inst_lut2_1_GROM : STD_LOGIC; 
  signal Mram_ram_inst_lut2_1_FROM : STD_LOGIC; 
  signal Mram_ram_inst_lut2_0_GROM : STD_LOGIC; 
  signal Mram_ram_inst_lut2_0_FROM : STD_LOGIC; 
  signal a_3_IBUF_1_GROM : STD_LOGIC; 
  signal di_0_IBUF_0 : STD_LOGIC; 
  signal di_1_IBUF_1 : STD_LOGIC; 
  signal di_2_IBUF_2 : STD_LOGIC; 
  signal di_3_IBUF_3 : STD_LOGIC; 
  signal di_4_IBUF_4 : STD_LOGIC; 
  signal di_5_IBUF_5 : STD_LOGIC; 
  signal di_6_IBUF_6 : STD_LOGIC; 
  signal di_7_IBUF_7 : STD_LOGIC; 
  signal di_8_IBUF_8 : STD_LOGIC; 
  signal di_9_IBUF_9 : STD_LOGIC; 
  signal we_IBUF_10 : STD_LOGIC; 
  signal do_10_OD : STD_LOGIC; 
  signal do_10_OUTMUX : STD_LOGIC; 
  signal do_10_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal do_11_OD : STD_LOGIC; 
  signal do_11_OUTMUX : STD_LOGIC; 
  signal do_11_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal do_12_OD : STD_LOGIC; 
  signal do_12_OUTMUX : STD_LOGIC; 
  signal do_12_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal do_0_OD : STD_LOGIC; 
  signal do_0_OUTMUX : STD_LOGIC; 
  signal do_0_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal di_10_IBUF_11 : STD_LOGIC; 
  signal do_13_OD : STD_LOGIC; 
  signal do_13_OUTMUX : STD_LOGIC; 
  signal do_13_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal do_1_OD : STD_LOGIC; 
  signal do_1_OUTMUX : STD_LOGIC; 
  signal do_1_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal di_11_IBUF_12 : STD_LOGIC; 
  signal do_14_OD : STD_LOGIC; 
  signal do_14_OUTMUX : STD_LOGIC; 
  signal do_14_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal do_2_OD : STD_LOGIC; 
  signal do_2_OUTMUX : STD_LOGIC; 
  signal do_2_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal di_12_IBUF_13 : STD_LOGIC; 
  signal do_15_OD : STD_LOGIC; 
  signal do_15_OUTMUX : STD_LOGIC; 
  signal do_15_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal a_0_IBUF : STD_LOGIC; 
  signal do_3_OD : STD_LOGIC; 
  signal do_3_OUTMUX : STD_LOGIC; 
  signal do_3_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal di_13_IBUF_14 : STD_LOGIC; 
  signal a_1_IBUF : STD_LOGIC; 
  signal do_4_OD : STD_LOGIC; 
  signal do_4_OUTMUX : STD_LOGIC; 
  signal do_4_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal di_14_IBUF_15 : STD_LOGIC; 
  signal a_2_IBUF : STD_LOGIC; 
  signal do_5_OD : STD_LOGIC; 
  signal do_5_OUTMUX : STD_LOGIC; 
  signal do_5_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal di_15_IBUF_16 : STD_LOGIC; 
  signal a_3_IBUF : STD_LOGIC; 
  signal do_6_OD : STD_LOGIC; 
  signal do_6_OUTMUX : STD_LOGIC; 
  signal do_6_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal a_4_IBUF : STD_LOGIC; 
  signal do_7_OD : STD_LOGIC; 
  signal do_7_OUTMUX : STD_LOGIC; 
  signal do_7_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal a_5_IBUF_17 : STD_LOGIC; 
  signal do_8_OD : STD_LOGIC; 
  signal do_8_OUTMUX : STD_LOGIC; 
  signal do_8_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal a_6_IBUF_18 : STD_LOGIC; 
  signal do_9_OD : STD_LOGIC; 
  signal do_9_OUTMUX : STD_LOGIC; 
  signal do_9_OUTBUF_GTS_TRI : STD_LOGIC; 
  signal a_7_IBUF_19 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname108_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname108_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname108_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname108_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname108_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname108_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname25_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname25_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname25_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname25_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname25_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname25_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname33_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname33_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname33_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname33_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname33_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname33_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname41_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname41_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname41_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname41_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname41_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname41_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname49_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname49_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname49_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname49_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname49_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname49_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname86_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname86_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname86_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname86_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname86_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname86_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname94_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname94_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname94_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname94_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname94_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname94_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname102_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname102_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname102_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname102_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname102_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname102_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname109_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname109_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname109_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname109_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname109_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname109_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname26_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname26_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname26_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname26_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname26_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname26_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname34_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname34_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname34_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname34_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname34_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname34_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname42_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname42_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname42_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname42_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname42_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname42_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname50_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname50_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname50_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname50_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname50_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname50_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname58_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname58_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname58_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname58_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname58_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname58_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname8_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname8_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname8_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname8_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname8_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname8_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname87_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname87_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname87_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname87_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname87_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname87_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname95_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname95_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname95_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname95_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname95_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname95_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname103_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname103_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname103_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname103_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname103_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname103_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname110_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname110_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname110_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname110_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname110_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname110_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname118_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname118_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname118_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname118_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname118_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname118_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname27_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname27_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname27_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname27_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname27_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname27_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname35_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname35_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname35_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname35_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname35_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname35_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname43_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname43_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname43_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname43_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname43_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname43_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname51_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname51_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname51_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname51_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname51_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname51_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname59_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname59_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname59_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname59_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname59_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname59_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname9_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname9_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname9_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname9_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname9_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname9_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname96_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname96_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname96_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname96_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname96_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname96_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname104_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname104_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname104_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname104_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname104_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname104_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname111_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname111_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname111_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname111_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname111_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname111_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname119_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname119_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname119_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname119_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname119_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname119_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname36_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname36_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname36_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname36_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname36_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname36_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname44_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname44_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname44_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname44_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname44_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname44_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname52_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname52_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname52_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname52_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname52_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname52_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname60_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname60_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname60_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname60_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname60_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname60_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname68_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname68_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname68_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname68_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname68_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname68_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname10_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname10_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname10_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname10_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname10_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname10_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname97_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname97_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname97_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname97_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname97_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname97_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname105_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname105_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname105_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname105_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname105_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname105_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname112_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname112_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname112_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname112_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname112_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname112_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname120_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname120_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname120_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname120_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname120_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname120_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname128_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname128_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname128_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname128_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname128_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname128_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname37_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname37_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname37_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname37_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname37_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname37_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname45_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname45_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname45_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname45_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname45_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname45_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname53_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname53_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname53_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname53_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname53_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname53_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname61_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname61_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname61_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname61_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname61_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname61_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname69_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname69_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname69_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname69_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname69_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname69_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname11_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname11_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname11_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname11_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname11_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname11_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname106_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname106_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname106_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname106_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname106_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname106_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname113_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname113_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname113_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname113_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname113_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname113_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname121_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname121_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname121_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname121_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname121_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname121_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname129_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname129_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname129_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname129_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname129_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname129_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname46_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname46_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname46_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname46_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname46_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname46_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname54_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname54_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname54_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname54_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname54_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname54_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname62_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname62_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname62_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname62_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname62_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname62_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname70_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname70_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname70_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname70_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname70_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname70_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname78_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname78_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname78_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname78_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname78_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname78_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname12_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname12_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname12_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname12_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname12_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname12_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname107_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname107_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname107_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname107_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname107_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname107_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname18_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname18_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname18_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname18_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname18_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname18_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname114_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname114_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname114_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname114_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname114_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname114_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname122_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname122_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname122_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname122_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname122_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname122_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname130_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname130_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname130_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname130_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname130_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname130_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname47_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname47_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname47_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname47_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname47_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname47_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname55_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname55_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname55_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname55_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname55_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname55_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname63_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname63_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname63_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname63_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname63_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname63_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname71_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname71_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname71_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname71_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname71_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname71_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname79_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname79_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname79_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname79_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname79_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname79_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname13_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname13_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname13_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname13_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname13_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname13_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname19_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname19_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname19_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname19_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname19_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname19_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname131_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname131_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname131_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname131_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname131_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname131_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname115_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname115_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname115_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname115_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname115_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname115_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname123_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname123_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname123_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname123_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname123_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname123_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname56_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname56_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname56_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname56_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname56_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname56_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname64_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname64_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname64_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname64_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname64_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname64_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname72_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname72_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname72_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname72_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname72_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname72_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname80_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname80_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname80_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname80_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname80_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname80_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname88_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname88_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname88_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname88_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname88_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname88_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname14_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname14_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname14_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname14_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname14_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname14_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname20_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname20_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname20_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname20_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname20_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname20_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname28_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname28_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname28_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname28_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname28_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname28_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname132_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname132_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname132_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname132_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname132_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname132_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname116_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname116_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname116_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname116_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname116_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname116_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname124_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname124_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname124_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname124_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname124_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname124_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname57_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname57_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname57_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname57_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname57_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname57_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname65_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname65_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname65_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname65_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname65_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname65_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname73_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname73_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname73_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname73_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname73_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname73_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname81_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname81_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname81_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname81_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname81_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname81_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname89_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname89_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname89_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname89_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname89_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname89_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_inst_lut3_8 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_0_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_9 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname15_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname15_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname15_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname15_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname15_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname15_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal do_0_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_10 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_1 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_11 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_12 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_2_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_13 : STD_LOGIC; 
  signal do_1_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_14 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_3 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_15 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname21_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname21_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname21_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname21_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname21_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname21_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname29_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname29_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname29_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname29_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname29_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname29_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_inst_lut3_16 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_4_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_17 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname133_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname133_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname133_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname133_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname133_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname133_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname117_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname117_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname117_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname117_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname117_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname117_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname125_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname125_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname125_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname125_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname125_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname125_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal do_2_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_18 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_5 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_19 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_20 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_6_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_21 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname66_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname66_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname66_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname66_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname66_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname66_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname74_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname74_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname74_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname74_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname74_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname74_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname82_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname82_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname82_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname82_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname82_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname82_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname90_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname90_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname90_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname90_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname90_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname90_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname98_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname98_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname98_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname98_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname98_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname98_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal do_3_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_22 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_7 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_23 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_24 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_8_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_25 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname16_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname16_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname16_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname16_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname16_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname16_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal do_4_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_26 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_9 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_27 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname22_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname22_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname22_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname22_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname22_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname22_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname30_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname30_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname30_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname30_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname30_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname30_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname38_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname38_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname38_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname38_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname38_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname38_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname134_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname134_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname134_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname134_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname134_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname134_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname126_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname126_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname126_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname126_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname126_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname126_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname67_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname67_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname67_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname67_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname67_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname67_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname75_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname75_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname75_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname75_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname75_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname75_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname83_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname83_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname83_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname83_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname83_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname83_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname91_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname91_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname91_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname91_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname91_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname91_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname99_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname99_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname99_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname99_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname99_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname99_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_inst_lut3_28 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_10_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_29 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname17_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname17_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname17_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname17_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname17_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname17_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal do_5_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_30 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_11 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_31 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_48 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_20_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_49 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_32 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_12_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_33 : STD_LOGIC; 
  signal do_10_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_50 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_21 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_51 : STD_LOGIC; 
  signal do_6_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_34 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_13 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_35 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname23_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname23_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname23_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname23_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname23_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname23_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname31_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname31_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname31_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname31_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname31_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname31_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname39_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname39_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname39_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname39_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname39_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname39_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_inst_lut3_52 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_22_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_53 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_36 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_14_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_37 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_68 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_30_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_69 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname135_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname135_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname135_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname135_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname135_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname135_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname127_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname127_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname127_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname127_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname127_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname127_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal do_11_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_54 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_23 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_55 : STD_LOGIC; 
  signal do_7_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_38 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_15 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_39 : STD_LOGIC; 
  signal do_15_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_70 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_31 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_71 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_56 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_24_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_57 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_40 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_16_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_41 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname76_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname76_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname76_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname76_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname76_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname76_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname84_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname84_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname84_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname84_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname84_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname84_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname92_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname92_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname92_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname92_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname92_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname92_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname100_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname100_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname100_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname100_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname100_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname100_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal do_12_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_58 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_25 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_59 : STD_LOGIC; 
  signal do_8_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_42 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_17 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_43 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_60 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_26_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_61 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_44 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_18_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_45 : STD_LOGIC; 
  signal do_13_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_62 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_27 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_63 : STD_LOGIC; 
  signal do_9_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_46 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_19 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_47 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_64 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_28_F5MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_65 : STD_LOGIC; 
  signal do_14_OBUF_F6MUX : STD_LOGIC; 
  signal Mram_ram_inst_lut3_66 : STD_LOGIC; 
  signal Mram_ram_inst_mux_f5_29 : STD_LOGIC; 
  signal Mram_ram_inst_lut3_67 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname24_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname24_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname24_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname24_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname24_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname24_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname32_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname32_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname32_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname32_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname32_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname32_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname40_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname40_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname40_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname40_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname40_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname40_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname48_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname48_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname48_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname48_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname48_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname48_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname77_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname77_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname77_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname77_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname77_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname77_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname85_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname85_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname85_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname85_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname85_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname85_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname93_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname93_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname93_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname93_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname93_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname93_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname101_RAM32X1 : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname101_RAM32X1_GWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname101_RAM32X1_GRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname101_RAM32X1_FWEAND : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname101_RAM32X1_FRAMS : STD_LOGIC; 
  signal Mram_ram_xstmacro_int_tempname101_RAM32X1_ADR4_INV : STD_LOGIC; 
  signal GTS : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_do_10_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_11_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_12_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_0_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_13_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_1_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_14_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_2_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_15_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_3_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_4_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_5_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_6_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_7_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_8_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_do_9_OUTBUF_GTS_TRI_CTL : STD_LOGIC; 
begin
  a_0_IBUF_1_20 : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N83,
      ADR2 => VCC,
      ADR3 => VCC,
      O => a_0_IBUF_1_GROM
    );
  a_0_IBUF_1_YUSED : X_BUF
    port map (
      I => a_0_IBUF_1_GROM,
      O => a_0_IBUF_1
    );
  a_4_IBUF_1_21 : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N79,
      ADR2 => VCC,
      ADR3 => VCC,
      O => a_4_IBUF_1_GROM
    );
  a_4_IBUF_1_YUSED : X_BUF
    port map (
      I => a_4_IBUF_1_GROM,
      O => a_4_IBUF_1
    );
  a_1_IBUF_1_22 : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N82,
      ADR2 => VCC,
      ADR3 => VCC,
      O => a_1_IBUF_1_GROM
    );
  a_1_IBUF_1_YUSED : X_BUF
    port map (
      I => a_1_IBUF_1_GROM,
      O => a_1_IBUF_1
    );
  a_2_IBUF_1_23 : X_LUT4
    generic map(
      INIT => X"CCCC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N81,
      ADR2 => VCC,
      ADR3 => VCC,
      O => a_2_IBUF_1_GROM
    );
  a_2_IBUF_1_YUSED : X_BUF
    port map (
      I => a_2_IBUF_1_GROM,
      O => a_2_IBUF_1
    );
  Mram_ram_inst_lut2_4_24 : X_LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => we_IBUF,
      ADR2 => a_6_IBUF,
      ADR3 => a_7_IBUF,
      O => Mram_ram_inst_lut2_3_GROM
    );
  Mram_ram_inst_lut2_3_25 : X_LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      ADR0 => we_IBUF,
      ADR1 => a_6_IBUF,
      ADR2 => a_7_IBUF,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut2_3_FROM
    );
  Mram_ram_inst_lut2_3_YUSED : X_BUF
    port map (
      I => Mram_ram_inst_lut2_3_GROM,
      O => Mram_ram_inst_lut2_4
    );
  Mram_ram_inst_lut2_3_XUSED : X_BUF
    port map (
      I => Mram_ram_inst_lut2_3_FROM,
      O => Mram_ram_inst_lut2_3
    );
  Mram_ram_inst_lut2_5_26 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => we_IBUF,
      ADR1 => a_7_IBUF,
      ADR2 => a_5_IBUF,
      ADR3 => a_6_IBUF,
      O => Mram_ram_inst_lut2_2_GROM
    );
  Mram_ram_inst_lut2_2_27 : X_LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      ADR0 => a_7_IBUF,
      ADR1 => we_IBUF,
      ADR2 => a_6_IBUF,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut2_2_FROM
    );
  Mram_ram_inst_lut2_2_YUSED : X_BUF
    port map (
      I => Mram_ram_inst_lut2_2_GROM,
      O => Mram_ram_inst_lut2_5
    );
  Mram_ram_inst_lut2_2_XUSED : X_BUF
    port map (
      I => Mram_ram_inst_lut2_2_FROM,
      O => Mram_ram_inst_lut2_2
    );
  Mram_ram_inst_lut2_6_28 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => a_6_IBUF,
      ADR1 => we_IBUF,
      ADR2 => a_7_IBUF,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut2_1_GROM
    );
  Mram_ram_inst_lut2_1_29 : X_LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      ADR0 => a_6_IBUF,
      ADR1 => a_5_IBUF,
      ADR2 => a_7_IBUF,
      ADR3 => we_IBUF,
      O => Mram_ram_inst_lut2_1_FROM
    );
  Mram_ram_inst_lut2_1_YUSED : X_BUF
    port map (
      I => Mram_ram_inst_lut2_1_GROM,
      O => Mram_ram_inst_lut2_6
    );
  Mram_ram_inst_lut2_1_XUSED : X_BUF
    port map (
      I => Mram_ram_inst_lut2_1_FROM,
      O => Mram_ram_inst_lut2_1
    );
  Mram_ram_inst_lut2_7_30 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => a_7_IBUF,
      ADR1 => a_5_IBUF,
      ADR2 => a_6_IBUF,
      ADR3 => we_IBUF,
      O => Mram_ram_inst_lut2_0_GROM
    );
  Mram_ram_inst_lut2_0_31 : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => a_7_IBUF,
      ADR1 => a_6_IBUF,
      ADR2 => we_IBUF,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut2_0_FROM
    );
  Mram_ram_inst_lut2_0_YUSED : X_BUF
    port map (
      I => Mram_ram_inst_lut2_0_GROM,
      O => Mram_ram_inst_lut2_7
    );
  Mram_ram_inst_lut2_0_XUSED : X_BUF
    port map (
      I => Mram_ram_inst_lut2_0_FROM,
      O => Mram_ram_inst_lut2_0
    );
  a_3_IBUF_1_32 : X_LUT4
    generic map(
      INIT => X"AAAA"
    )
    port map (
      ADR0 => N80,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => a_3_IBUF_1_GROM
    );
  a_3_IBUF_1_YUSED : X_BUF
    port map (
      I => a_3_IBUF_1_GROM,
      O => a_3_IBUF_1
    );
  di_0_IBUF_33 : X_BUF
    port map (
      I => di(0),
      O => di_0_IBUF_0
    );
  di_0_IMUX : X_BUF
    port map (
      I => di_0_IBUF_0,
      O => di_0_IBUF
    );
  di_1_IBUF_34 : X_BUF
    port map (
      I => di(1),
      O => di_1_IBUF_1
    );
  di_1_IMUX : X_BUF
    port map (
      I => di_1_IBUF_1,
      O => di_1_IBUF
    );
  di_2_IBUF_35 : X_BUF
    port map (
      I => di(2),
      O => di_2_IBUF_2
    );
  di_2_IMUX : X_BUF
    port map (
      I => di_2_IBUF_2,
      O => di_2_IBUF
    );
  di_3_IBUF_36 : X_BUF
    port map (
      I => di(3),
      O => di_3_IBUF_3
    );
  di_3_IMUX : X_BUF
    port map (
      I => di_3_IBUF_3,
      O => di_3_IBUF
    );
  di_4_IBUF_37 : X_BUF
    port map (
      I => di(4),
      O => di_4_IBUF_4
    );
  di_4_IMUX : X_BUF
    port map (
      I => di_4_IBUF_4,
      O => di_4_IBUF
    );
  di_5_IBUF_38 : X_BUF
    port map (
      I => di(5),
      O => di_5_IBUF_5
    );
  di_5_IMUX : X_BUF
    port map (
      I => di_5_IBUF_5,
      O => di_5_IBUF
    );
  di_6_IBUF_39 : X_BUF
    port map (
      I => di(6),
      O => di_6_IBUF_6
    );
  di_6_IMUX : X_BUF
    port map (
      I => di_6_IBUF_6,
      O => di_6_IBUF
    );
  di_7_IBUF_40 : X_BUF
    port map (
      I => di(7),
      O => di_7_IBUF_7
    );
  di_7_IMUX : X_BUF
    port map (
      I => di_7_IBUF_7,
      O => di_7_IBUF
    );
  di_8_IBUF_41 : X_BUF
    port map (
      I => di(8),
      O => di_8_IBUF_8
    );
  di_8_IMUX : X_BUF
    port map (
      I => di_8_IBUF_8,
      O => di_8_IBUF
    );
  di_9_IBUF_42 : X_BUF
    port map (
      I => di(9),
      O => di_9_IBUF_9
    );
  di_9_IMUX : X_BUF
    port map (
      I => di_9_IBUF_9,
      O => di_9_IBUF
    );
  we_IBUF_43 : X_BUF
    port map (
      I => we,
      O => we_IBUF_10
    );
  we_IMUX : X_BUF
    port map (
      I => we_IBUF_10,
      O => we_IBUF
    );
  do_10_OMUX : X_BUF
    port map (
      I => do_10_OBUF,
      O => do_10_OD
    );
  do_10_OUTMUX_44 : X_BUF
    port map (
      I => do_10_OD,
      O => do_10_OUTMUX
    );
  do_10_OBUF_45 : X_BUF
    port map (
      I => do_10_OUTMUX,
      O => do_10_OUTBUF_GTS_TRI
    );
  do_10_OUTBUF_GTS_TRI_46 : X_TRI
    port map (
      I => do_10_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_10_OUTBUF_GTS_TRI_CTL,
      O => do(10)
    );
  do_11_OMUX : X_BUF
    port map (
      I => do_11_OBUF,
      O => do_11_OD
    );
  do_11_OUTMUX_47 : X_BUF
    port map (
      I => do_11_OD,
      O => do_11_OUTMUX
    );
  do_11_OBUF_48 : X_BUF
    port map (
      I => do_11_OUTMUX,
      O => do_11_OUTBUF_GTS_TRI
    );
  do_11_OUTBUF_GTS_TRI_49 : X_TRI
    port map (
      I => do_11_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_11_OUTBUF_GTS_TRI_CTL,
      O => do(11)
    );
  do_12_OMUX : X_BUF
    port map (
      I => do_12_OBUF,
      O => do_12_OD
    );
  do_12_OUTMUX_50 : X_BUF
    port map (
      I => do_12_OD,
      O => do_12_OUTMUX
    );
  do_12_OBUF_51 : X_BUF
    port map (
      I => do_12_OUTMUX,
      O => do_12_OUTBUF_GTS_TRI
    );
  do_12_OUTBUF_GTS_TRI_52 : X_TRI
    port map (
      I => do_12_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_12_OUTBUF_GTS_TRI_CTL,
      O => do(12)
    );
  do_0_OMUX : X_BUF
    port map (
      I => do_0_OBUF,
      O => do_0_OD
    );
  do_0_OUTMUX_53 : X_BUF
    port map (
      I => do_0_OD,
      O => do_0_OUTMUX
    );
  do_0_OBUF_54 : X_BUF
    port map (
      I => do_0_OUTMUX,
      O => do_0_OUTBUF_GTS_TRI
    );
  do_0_OUTBUF_GTS_TRI_55 : X_TRI
    port map (
      I => do_0_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_0_OUTBUF_GTS_TRI_CTL,
      O => do(0)
    );
  di_10_IBUF_56 : X_BUF
    port map (
      I => di(10),
      O => di_10_IBUF_11
    );
  di_10_IMUX : X_BUF
    port map (
      I => di_10_IBUF_11,
      O => di_10_IBUF
    );
  do_13_OMUX : X_BUF
    port map (
      I => do_13_OBUF,
      O => do_13_OD
    );
  do_13_OUTMUX_57 : X_BUF
    port map (
      I => do_13_OD,
      O => do_13_OUTMUX
    );
  do_13_OBUF_58 : X_BUF
    port map (
      I => do_13_OUTMUX,
      O => do_13_OUTBUF_GTS_TRI
    );
  do_13_OUTBUF_GTS_TRI_59 : X_TRI
    port map (
      I => do_13_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_13_OUTBUF_GTS_TRI_CTL,
      O => do(13)
    );
  do_1_OMUX : X_BUF
    port map (
      I => do_1_OBUF,
      O => do_1_OD
    );
  do_1_OUTMUX_60 : X_BUF
    port map (
      I => do_1_OD,
      O => do_1_OUTMUX
    );
  do_1_OBUF_61 : X_BUF
    port map (
      I => do_1_OUTMUX,
      O => do_1_OUTBUF_GTS_TRI
    );
  do_1_OUTBUF_GTS_TRI_62 : X_TRI
    port map (
      I => do_1_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_1_OUTBUF_GTS_TRI_CTL,
      O => do(1)
    );
  di_11_IBUF_63 : X_BUF
    port map (
      I => di(11),
      O => di_11_IBUF_12
    );
  di_11_IMUX : X_BUF
    port map (
      I => di_11_IBUF_12,
      O => di_11_IBUF
    );
  do_14_OMUX : X_BUF
    port map (
      I => do_14_OBUF,
      O => do_14_OD
    );
  do_14_OUTMUX_64 : X_BUF
    port map (
      I => do_14_OD,
      O => do_14_OUTMUX
    );
  do_14_OBUF_65 : X_BUF
    port map (
      I => do_14_OUTMUX,
      O => do_14_OUTBUF_GTS_TRI
    );
  do_14_OUTBUF_GTS_TRI_66 : X_TRI
    port map (
      I => do_14_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_14_OUTBUF_GTS_TRI_CTL,
      O => do(14)
    );
  do_2_OMUX : X_BUF
    port map (
      I => do_2_OBUF,
      O => do_2_OD
    );
  do_2_OUTMUX_67 : X_BUF
    port map (
      I => do_2_OD,
      O => do_2_OUTMUX
    );
  do_2_OBUF_68 : X_BUF
    port map (
      I => do_2_OUTMUX,
      O => do_2_OUTBUF_GTS_TRI
    );
  do_2_OUTBUF_GTS_TRI_69 : X_TRI
    port map (
      I => do_2_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_2_OUTBUF_GTS_TRI_CTL,
      O => do(2)
    );
  di_12_IBUF_70 : X_BUF
    port map (
      I => di(12),
      O => di_12_IBUF_13
    );
  di_12_IMUX : X_BUF
    port map (
      I => di_12_IBUF_13,
      O => di_12_IBUF
    );
  do_15_OMUX : X_BUF
    port map (
      I => do_15_OBUF,
      O => do_15_OD
    );
  do_15_OUTMUX_71 : X_BUF
    port map (
      I => do_15_OD,
      O => do_15_OUTMUX
    );
  do_15_OBUF_72 : X_BUF
    port map (
      I => do_15_OUTMUX,
      O => do_15_OUTBUF_GTS_TRI
    );
  do_15_OUTBUF_GTS_TRI_73 : X_TRI
    port map (
      I => do_15_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_15_OUTBUF_GTS_TRI_CTL,
      O => do(15)
    );
  a_0_IBUF_74 : X_BUF
    port map (
      I => a(0),
      O => a_0_IBUF
    );
  a_0_IMUX : X_BUF
    port map (
      I => a_0_IBUF,
      O => N83
    );
  do_3_OMUX : X_BUF
    port map (
      I => do_3_OBUF,
      O => do_3_OD
    );
  do_3_OUTMUX_75 : X_BUF
    port map (
      I => do_3_OD,
      O => do_3_OUTMUX
    );
  do_3_OBUF_76 : X_BUF
    port map (
      I => do_3_OUTMUX,
      O => do_3_OUTBUF_GTS_TRI
    );
  do_3_OUTBUF_GTS_TRI_77 : X_TRI
    port map (
      I => do_3_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_3_OUTBUF_GTS_TRI_CTL,
      O => do(3)
    );
  di_13_IBUF_78 : X_BUF
    port map (
      I => di(13),
      O => di_13_IBUF_14
    );
  di_13_IMUX : X_BUF
    port map (
      I => di_13_IBUF_14,
      O => di_13_IBUF
    );
  a_1_IBUF_79 : X_BUF
    port map (
      I => a(1),
      O => a_1_IBUF
    );
  a_1_IMUX : X_BUF
    port map (
      I => a_1_IBUF,
      O => N82
    );
  do_4_OMUX : X_BUF
    port map (
      I => do_4_OBUF,
      O => do_4_OD
    );
  do_4_OUTMUX_80 : X_BUF
    port map (
      I => do_4_OD,
      O => do_4_OUTMUX
    );
  do_4_OBUF_81 : X_BUF
    port map (
      I => do_4_OUTMUX,
      O => do_4_OUTBUF_GTS_TRI
    );
  do_4_OUTBUF_GTS_TRI_82 : X_TRI
    port map (
      I => do_4_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_4_OUTBUF_GTS_TRI_CTL,
      O => do(4)
    );
  di_14_IBUF_83 : X_BUF
    port map (
      I => di(14),
      O => di_14_IBUF_15
    );
  di_14_IMUX : X_BUF
    port map (
      I => di_14_IBUF_15,
      O => di_14_IBUF
    );
  a_2_IBUF_84 : X_BUF
    port map (
      I => a(2),
      O => a_2_IBUF
    );
  a_2_IMUX : X_BUF
    port map (
      I => a_2_IBUF,
      O => N81
    );
  do_5_OMUX : X_BUF
    port map (
      I => do_5_OBUF,
      O => do_5_OD
    );
  do_5_OUTMUX_85 : X_BUF
    port map (
      I => do_5_OD,
      O => do_5_OUTMUX
    );
  do_5_OBUF_86 : X_BUF
    port map (
      I => do_5_OUTMUX,
      O => do_5_OUTBUF_GTS_TRI
    );
  do_5_OUTBUF_GTS_TRI_87 : X_TRI
    port map (
      I => do_5_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_5_OUTBUF_GTS_TRI_CTL,
      O => do(5)
    );
  di_15_IBUF_88 : X_BUF
    port map (
      I => di(15),
      O => di_15_IBUF_16
    );
  di_15_IMUX : X_BUF
    port map (
      I => di_15_IBUF_16,
      O => di_15_IBUF
    );
  a_3_IBUF_89 : X_BUF
    port map (
      I => a(3),
      O => a_3_IBUF
    );
  a_3_IMUX : X_BUF
    port map (
      I => a_3_IBUF,
      O => N80
    );
  do_6_OMUX : X_BUF
    port map (
      I => do_6_OBUF,
      O => do_6_OD
    );
  do_6_OUTMUX_90 : X_BUF
    port map (
      I => do_6_OD,
      O => do_6_OUTMUX
    );
  do_6_OBUF_91 : X_BUF
    port map (
      I => do_6_OUTMUX,
      O => do_6_OUTBUF_GTS_TRI
    );
  do_6_OUTBUF_GTS_TRI_92 : X_TRI
    port map (
      I => do_6_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_6_OUTBUF_GTS_TRI_CTL,
      O => do(6)
    );
  a_4_IBUF_93 : X_BUF
    port map (
      I => a(4),
      O => a_4_IBUF
    );
  a_4_IMUX : X_BUF
    port map (
      I => a_4_IBUF,
      O => N79
    );
  do_7_OMUX : X_BUF
    port map (
      I => do_7_OBUF,
      O => do_7_OD
    );
  do_7_OUTMUX_94 : X_BUF
    port map (
      I => do_7_OD,
      O => do_7_OUTMUX
    );
  do_7_OBUF_95 : X_BUF
    port map (
      I => do_7_OUTMUX,
      O => do_7_OUTBUF_GTS_TRI
    );
  do_7_OUTBUF_GTS_TRI_96 : X_TRI
    port map (
      I => do_7_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_7_OUTBUF_GTS_TRI_CTL,
      O => do(7)
    );
  a_5_IBUF_97 : X_BUF
    port map (
      I => a(5),
      O => a_5_IBUF_17
    );
  a_5_IMUX : X_BUF
    port map (
      I => a_5_IBUF_17,
      O => a_5_IBUF
    );
  do_8_OMUX : X_BUF
    port map (
      I => do_8_OBUF,
      O => do_8_OD
    );
  do_8_OUTMUX_98 : X_BUF
    port map (
      I => do_8_OD,
      O => do_8_OUTMUX
    );
  do_8_OBUF_99 : X_BUF
    port map (
      I => do_8_OUTMUX,
      O => do_8_OUTBUF_GTS_TRI
    );
  do_8_OUTBUF_GTS_TRI_100 : X_TRI
    port map (
      I => do_8_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_8_OUTBUF_GTS_TRI_CTL,
      O => do(8)
    );
  a_6_IBUF_101 : X_BUF
    port map (
      I => a(6),
      O => a_6_IBUF_18
    );
  a_6_IMUX : X_BUF
    port map (
      I => a_6_IBUF_18,
      O => a_6_IBUF
    );
  do_9_OMUX : X_BUF
    port map (
      I => do_9_OBUF,
      O => do_9_OD
    );
  do_9_OUTMUX_102 : X_BUF
    port map (
      I => do_9_OD,
      O => do_9_OUTMUX
    );
  do_9_OBUF_103 : X_BUF
    port map (
      I => do_9_OUTMUX,
      O => do_9_OUTBUF_GTS_TRI
    );
  do_9_OUTBUF_GTS_TRI_104 : X_TRI
    port map (
      I => do_9_OUTBUF_GTS_TRI,
      CTL => NlwInverterSignal_do_9_OUTBUF_GTS_TRI_CTL,
      O => do(9)
    );
  a_7_IBUF_105 : X_BUF
    port map (
      I => a(7),
      O => a_7_IBUF_19
    );
  a_7_IMUX : X_BUF
    port map (
      I => a_7_IBUF_19,
      O => a_7_IBUF
    );
  Mram_ram_xstmacro_int_tempname108_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname108_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname108
    );
  Mram_ram_inst_ramx_100_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname108_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname108_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_100_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname108_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname108_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_100_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname108_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname108_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname108_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname108_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname108_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname108_RAM32X1_FWEAND_106 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname108_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname108_RAM32X1_GWEAND_107 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname108_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname108_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname25_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname25_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname25
    );
  Mram_ram_inst_ramx_17_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname25_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname25_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_17_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname25_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname25_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_17_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname25_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname25_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname25_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname25_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname25_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname25_RAM32X1_FWEAND_108 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname25_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname25_RAM32X1_GWEAND_109 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname25_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname25_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname33_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname33_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname33
    );
  Mram_ram_inst_ramx_25_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname33_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname33_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_25_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname33_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname33_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_25_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname33_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname33_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname33_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname33_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname33_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname33_RAM32X1_FWEAND_110 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname33_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname33_RAM32X1_GWEAND_111 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname33_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname33_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname41_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname41_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname41
    );
  Mram_ram_inst_ramx_33_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname41_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname41_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_33_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname41_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname41_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_33_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname41_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname41_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname41_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname41_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname41_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname41_RAM32X1_FWEAND_112 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname41_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname41_RAM32X1_GWEAND_113 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname41_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname41_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname49_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname49_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname49
    );
  Mram_ram_inst_ramx_41_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname49_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname49_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_41_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname49_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname49_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_41_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname49_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname49_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname49_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname49_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname49_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname49_RAM32X1_FWEAND_114 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname49_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname49_RAM32X1_GWEAND_115 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname49_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname49_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname86_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname86_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname86
    );
  Mram_ram_inst_ramx_78_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname86_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname86_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_78_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname86_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname86_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_78_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname86_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname86_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname86_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname86_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname86_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname86_RAM32X1_FWEAND_116 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname86_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname86_RAM32X1_GWEAND_117 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname86_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname86_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname94_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname94_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname94
    );
  Mram_ram_inst_ramx_86_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname94_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname94_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_86_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname94_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname94_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_86_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname94_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname94_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname94_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname94_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname94_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname94_RAM32X1_FWEAND_118 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname94_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname94_RAM32X1_GWEAND_119 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname94_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname94_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname102_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname102_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname102
    );
  Mram_ram_inst_ramx_94_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname102_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname102_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_94_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname102_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname102_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_94_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname102_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname102_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname102_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname102_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname102_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname102_RAM32X1_FWEAND_120 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname102_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname102_RAM32X1_GWEAND_121 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname102_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname102_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname109_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname109_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname109
    );
  Mram_ram_inst_ramx_101_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname109_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname109_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_101_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname109_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname109_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_101_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname109_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname109_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname109_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname109_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname109_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname109_RAM32X1_FWEAND_122 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname109_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname109_RAM32X1_GWEAND_123 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname109_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname109_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname26_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname26_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname26
    );
  Mram_ram_inst_ramx_18_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname26_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname26_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_18_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname26_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname26_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_18_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname26_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname26_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname26_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname26_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname26_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname26_RAM32X1_FWEAND_124 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname26_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname26_RAM32X1_GWEAND_125 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname26_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname26_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname34_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname34_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname34
    );
  Mram_ram_inst_ramx_26_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname34_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname34_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_26_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname34_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname34_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_26_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname34_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname34_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname34_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname34_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname34_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname34_RAM32X1_FWEAND_126 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname34_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname34_RAM32X1_GWEAND_127 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname34_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname34_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname42_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname42_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname42
    );
  Mram_ram_inst_ramx_34_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname42_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname42_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_34_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname42_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname42_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_34_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname42_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname42_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname42_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname42_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname42_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname42_RAM32X1_FWEAND_128 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname42_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname42_RAM32X1_GWEAND_129 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname42_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname42_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname50_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname50_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname50
    );
  Mram_ram_inst_ramx_42_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname50_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname50_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_42_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname50_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname50_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_42_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname50_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname50_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname50_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname50_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname50_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname50_RAM32X1_FWEAND_130 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname50_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname50_RAM32X1_GWEAND_131 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname50_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname50_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname58_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname58_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname58
    );
  Mram_ram_inst_ramx_50_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname58_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname58_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_50_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname58_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname58_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_50_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname58_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname58_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname58_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname58_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname58_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname58_RAM32X1_FWEAND_132 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname58_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname58_RAM32X1_GWEAND_133 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname58_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname58_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname8_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname8_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname8
    );
  Mram_ram_inst_ramx_0_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname8_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname8_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_0_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname8_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname8_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_0_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname8_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname8_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname8_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname8_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname8_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname8_RAM32X1_FWEAND_134 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname8_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname8_RAM32X1_GWEAND_135 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname8_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname8_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname87_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname87_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname87
    );
  Mram_ram_inst_ramx_79_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname87_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname87_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_79_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname87_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname87_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_79_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname87_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname87_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname87_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname87_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname87_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname87_RAM32X1_FWEAND_136 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname87_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname87_RAM32X1_GWEAND_137 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname87_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname87_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname95_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname95_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname95
    );
  Mram_ram_inst_ramx_87_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname95_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname95_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_87_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname95_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname95_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_87_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname95_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname95_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname95_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname95_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname95_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname95_RAM32X1_FWEAND_138 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname95_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname95_RAM32X1_GWEAND_139 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname95_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname95_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname103_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname103_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname103
    );
  Mram_ram_inst_ramx_95_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname103_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname103_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_95_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname103_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname103_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_95_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname103_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname103_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname103_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname103_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname103_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname103_RAM32X1_FWEAND_140 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname103_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname103_RAM32X1_GWEAND_141 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname103_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname103_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname110_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname110_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname110
    );
  Mram_ram_inst_ramx_102_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname110_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname110_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_102_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname110_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname110_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_102_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname110_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname110_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname110_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname110_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname110_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname110_RAM32X1_FWEAND_142 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname110_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname110_RAM32X1_GWEAND_143 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname110_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname110_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname118_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname118_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname118
    );
  Mram_ram_inst_ramx_110_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname118_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname118_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_110_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname118_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname118_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_110_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname118_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname118_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname118_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname118_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname118_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname118_RAM32X1_FWEAND_144 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname118_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname118_RAM32X1_GWEAND_145 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname118_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname118_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname27_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname27_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname27
    );
  Mram_ram_inst_ramx_19_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname27_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname27_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_19_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname27_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname27_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_19_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname27_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname27_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname27_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname27_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname27_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname27_RAM32X1_FWEAND_146 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname27_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname27_RAM32X1_GWEAND_147 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname27_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname27_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname35_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname35_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname35
    );
  Mram_ram_inst_ramx_27_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname35_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname35_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_27_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname35_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname35_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_27_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname35_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname35_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname35_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname35_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname35_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname35_RAM32X1_FWEAND_148 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname35_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname35_RAM32X1_GWEAND_149 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname35_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname35_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname43_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname43_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname43
    );
  Mram_ram_inst_ramx_35_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname43_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname43_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_35_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname43_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname43_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_35_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname43_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname43_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname43_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname43_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname43_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname43_RAM32X1_FWEAND_150 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname43_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname43_RAM32X1_GWEAND_151 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname43_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname43_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname51_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname51_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname51
    );
  Mram_ram_inst_ramx_43_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname51_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname51_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_43_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname51_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname51_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_43_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname51_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname51_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname51_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname51_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname51_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname51_RAM32X1_FWEAND_152 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname51_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname51_RAM32X1_GWEAND_153 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname51_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname51_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname59_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname59_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname59
    );
  Mram_ram_inst_ramx_51_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname59_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname59_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_51_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname59_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname59_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_51_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname59_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname59_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname59_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname59_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname59_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname59_RAM32X1_FWEAND_154 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname59_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname59_RAM32X1_GWEAND_155 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname59_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname59_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname9_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname9_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname9
    );
  Mram_ram_inst_ramx_1_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname9_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname9_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_1_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname9_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname9_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_1_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname9_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname9_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname9_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname9_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname9_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname9_RAM32X1_FWEAND_156 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname9_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname9_RAM32X1_GWEAND_157 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname9_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname9_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname96_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname96_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname96
    );
  Mram_ram_inst_ramx_88_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname96_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname96_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_88_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname96_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname96_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_88_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname96_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname96_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname96_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname96_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname96_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname96_RAM32X1_FWEAND_158 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname96_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname96_RAM32X1_GWEAND_159 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname96_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname96_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname104_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname104_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname104
    );
  Mram_ram_inst_ramx_96_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname104_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname104_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_96_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname104_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname104_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_96_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname104_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname104_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname104_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname104_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname104_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname104_RAM32X1_FWEAND_160 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname104_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname104_RAM32X1_GWEAND_161 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname104_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname104_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname111_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname111_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname111
    );
  Mram_ram_inst_ramx_103_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname111_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname111_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_103_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname111_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname111_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_103_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname111_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname111_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname111_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname111_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname111_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname111_RAM32X1_FWEAND_162 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname111_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname111_RAM32X1_GWEAND_163 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname111_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname111_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname119_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname119_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname119
    );
  Mram_ram_inst_ramx_111_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname119_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname119_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_111_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname119_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname119_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_111_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname119_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname119_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname119_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname119_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname119_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname119_RAM32X1_FWEAND_164 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname119_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname119_RAM32X1_GWEAND_165 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname119_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname119_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname36_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname36_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname36
    );
  Mram_ram_inst_ramx_28_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname36_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname36_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_28_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname36_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname36_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_28_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname36_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname36_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname36_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname36_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname36_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname36_RAM32X1_FWEAND_166 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname36_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname36_RAM32X1_GWEAND_167 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname36_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname36_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname44_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname44_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname44
    );
  Mram_ram_inst_ramx_36_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname44_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname44_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_36_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname44_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname44_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_36_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname44_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname44_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname44_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname44_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname44_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname44_RAM32X1_FWEAND_168 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname44_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname44_RAM32X1_GWEAND_169 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname44_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname44_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname52_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname52_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname52
    );
  Mram_ram_inst_ramx_44_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname52_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname52_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_44_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname52_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname52_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_44_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname52_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname52_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname52_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname52_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname52_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname52_RAM32X1_FWEAND_170 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname52_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname52_RAM32X1_GWEAND_171 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname52_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname52_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname60_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname60_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname60
    );
  Mram_ram_inst_ramx_52_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname60_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname60_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_52_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname60_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname60_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_52_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname60_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname60_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname60_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname60_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname60_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname60_RAM32X1_FWEAND_172 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname60_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname60_RAM32X1_GWEAND_173 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname60_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname60_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname68_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname68_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname68
    );
  Mram_ram_inst_ramx_60_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname68_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname68_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_60_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname68_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname68_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_60_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname68_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname68_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname68_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname68_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname68_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname68_RAM32X1_FWEAND_174 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname68_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname68_RAM32X1_GWEAND_175 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname68_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname68_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname10_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname10_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname10
    );
  Mram_ram_inst_ramx_2_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname10_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname10_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_2_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname10_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname10_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_2_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname10_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname10_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname10_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname10_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname10_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname10_RAM32X1_FWEAND_176 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname10_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname10_RAM32X1_GWEAND_177 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname10_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname10_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname97_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname97_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname97
    );
  Mram_ram_inst_ramx_89_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname97_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname97_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_89_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname97_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname97_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_89_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname97_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname97_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname97_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname97_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname97_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname97_RAM32X1_FWEAND_178 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname97_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname97_RAM32X1_GWEAND_179 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname97_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname97_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname105_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname105_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname105
    );
  Mram_ram_inst_ramx_97_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname105_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname105_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_97_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname105_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname105_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_97_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname105_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname105_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname105_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname105_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname105_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname105_RAM32X1_FWEAND_180 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname105_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname105_RAM32X1_GWEAND_181 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname105_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname105_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname112_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname112_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname112
    );
  Mram_ram_inst_ramx_104_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname112_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname112_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_104_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname112_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname112_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_104_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname112_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname112_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname112_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname112_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname112_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname112_RAM32X1_FWEAND_182 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname112_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname112_RAM32X1_GWEAND_183 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname112_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname112_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname120_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname120_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname120
    );
  Mram_ram_inst_ramx_112_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname120_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname120_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_112_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname120_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname120_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_112_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname120_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname120_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname120_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname120_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname120_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname120_RAM32X1_FWEAND_184 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname120_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname120_RAM32X1_GWEAND_185 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname120_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname120_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname128_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname128_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname128
    );
  Mram_ram_inst_ramx_120_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname128_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname128_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_120_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname128_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname128_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_120_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname128_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname128_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname128_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname128_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname128_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname128_RAM32X1_FWEAND_186 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname128_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname128_RAM32X1_GWEAND_187 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname128_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname128_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname37_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname37_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname37
    );
  Mram_ram_inst_ramx_29_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname37_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname37_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_29_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname37_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname37_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_29_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname37_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname37_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname37_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname37_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname37_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname37_RAM32X1_FWEAND_188 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname37_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname37_RAM32X1_GWEAND_189 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname37_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname37_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname45_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname45_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname45
    );
  Mram_ram_inst_ramx_37_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname45_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname45_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_37_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname45_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname45_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_37_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname45_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname45_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname45_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname45_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname45_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname45_RAM32X1_FWEAND_190 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname45_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname45_RAM32X1_GWEAND_191 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname45_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname45_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname53_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname53_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname53
    );
  Mram_ram_inst_ramx_45_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname53_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname53_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_45_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname53_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname53_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_45_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname53_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname53_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname53_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname53_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname53_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname53_RAM32X1_FWEAND_192 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname53_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname53_RAM32X1_GWEAND_193 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname53_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname53_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname61_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname61_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname61
    );
  Mram_ram_inst_ramx_53_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname61_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname61_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_53_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname61_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname61_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_53_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname61_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname61_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname61_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname61_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname61_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname61_RAM32X1_FWEAND_194 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname61_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname61_RAM32X1_GWEAND_195 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname61_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname61_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname69_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname69_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname69
    );
  Mram_ram_inst_ramx_61_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname69_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname69_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_61_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname69_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname69_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_61_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname69_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname69_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname69_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname69_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname69_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname69_RAM32X1_FWEAND_196 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname69_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname69_RAM32X1_GWEAND_197 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname69_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname69_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname11_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname11_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname11
    );
  Mram_ram_inst_ramx_3_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname11_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname11_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_3_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname11_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname11_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_3_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname11_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname11_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname11_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname11_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname11_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname11_RAM32X1_FWEAND_198 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname11_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname11_RAM32X1_GWEAND_199 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname11_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname11_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname106_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname106_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname106
    );
  Mram_ram_inst_ramx_98_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname106_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname106_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_98_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname106_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname106_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_98_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname106_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname106_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname106_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname106_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname106_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname106_RAM32X1_FWEAND_200 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname106_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname106_RAM32X1_GWEAND_201 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname106_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname106_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname113_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname113_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname113
    );
  Mram_ram_inst_ramx_105_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname113_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname113_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_105_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname113_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname113_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_105_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname113_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname113_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname113_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname113_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname113_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname113_RAM32X1_FWEAND_202 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname113_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname113_RAM32X1_GWEAND_203 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname113_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname113_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname121_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname121_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname121
    );
  Mram_ram_inst_ramx_113_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname121_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname121_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_113_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname121_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname121_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_113_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname121_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname121_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname121_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname121_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname121_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname121_RAM32X1_FWEAND_204 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname121_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname121_RAM32X1_GWEAND_205 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname121_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname121_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname129_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname129_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname129
    );
  Mram_ram_inst_ramx_121_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname129_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname129_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_121_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname129_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname129_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_121_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname129_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname129_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname129_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname129_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname129_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname129_RAM32X1_FWEAND_206 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname129_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname129_RAM32X1_GWEAND_207 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname129_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname129_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname46_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname46_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname46
    );
  Mram_ram_inst_ramx_38_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname46_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname46_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_38_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname46_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname46_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_38_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname46_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname46_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname46_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname46_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname46_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname46_RAM32X1_FWEAND_208 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname46_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname46_RAM32X1_GWEAND_209 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname46_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname46_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname54_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname54_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname54
    );
  Mram_ram_inst_ramx_46_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname54_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname54_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_46_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname54_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname54_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_46_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname54_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname54_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname54_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname54_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname54_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname54_RAM32X1_FWEAND_210 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname54_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname54_RAM32X1_GWEAND_211 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname54_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname54_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname62_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname62_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname62
    );
  Mram_ram_inst_ramx_54_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname62_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname62_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_54_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname62_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname62_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_54_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname62_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname62_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname62_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname62_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname62_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname62_RAM32X1_FWEAND_212 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname62_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname62_RAM32X1_GWEAND_213 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname62_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname62_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname70_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname70_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname70
    );
  Mram_ram_inst_ramx_62_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname70_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname70_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_62_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname70_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname70_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_62_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname70_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname70_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname70_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname70_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname70_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname70_RAM32X1_FWEAND_214 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname70_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname70_RAM32X1_GWEAND_215 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname70_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname70_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname78_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname78_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname78
    );
  Mram_ram_inst_ramx_70_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname78_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname78_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_70_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname78_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname78_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_70_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname78_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname78_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname78_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname78_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname78_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname78_RAM32X1_FWEAND_216 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname78_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname78_RAM32X1_GWEAND_217 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname78_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname78_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname12_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname12_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname12
    );
  Mram_ram_inst_ramx_4_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname12_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname12_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_4_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname12_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname12_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_4_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname12_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname12_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname12_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname12_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname12_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname12_RAM32X1_FWEAND_218 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname12_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname12_RAM32X1_GWEAND_219 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname12_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname12_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname107_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname107_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname107
    );
  Mram_ram_inst_ramx_99_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname107_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname107_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_99_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_12_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname107_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname107_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_99_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname107_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname107_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname107_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname107_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname107_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname107_RAM32X1_FWEAND_220 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname107_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname107_RAM32X1_GWEAND_221 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname107_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname107_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname18_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname18_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname18
    );
  Mram_ram_inst_ramx_10_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname18_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname18_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_10_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname18_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname18_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_10_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname18_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname18_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname18_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname18_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname18_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname18_RAM32X1_FWEAND_222 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname18_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname18_RAM32X1_GWEAND_223 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname18_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname18_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname114_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname114_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname114
    );
  Mram_ram_inst_ramx_106_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname114_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname114_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_106_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname114_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname114_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_106_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname114_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname114_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname114_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname114_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname114_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname114_RAM32X1_FWEAND_224 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname114_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname114_RAM32X1_GWEAND_225 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname114_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname114_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname122_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname122_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname122
    );
  Mram_ram_inst_ramx_114_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname122_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname122_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_114_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname122_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname122_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_114_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname122_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname122_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname122_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname122_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname122_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname122_RAM32X1_FWEAND_226 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname122_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname122_RAM32X1_GWEAND_227 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname122_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname122_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname130_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname130_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname130
    );
  Mram_ram_inst_ramx_122_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname130_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname130_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_122_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname130_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname130_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_122_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname130_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname130_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname130_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname130_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname130_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname130_RAM32X1_FWEAND_228 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname130_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname130_RAM32X1_GWEAND_229 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname130_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname130_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname47_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname47_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname47
    );
  Mram_ram_inst_ramx_39_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname47_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname47_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_39_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname47_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname47_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_39_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname47_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname47_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname47_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname47_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname47_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname47_RAM32X1_FWEAND_230 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname47_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname47_RAM32X1_GWEAND_231 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname47_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname47_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname55_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname55_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname55
    );
  Mram_ram_inst_ramx_47_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname55_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname55_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_47_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname55_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname55_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_47_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname55_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname55_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname55_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname55_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname55_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname55_RAM32X1_FWEAND_232 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname55_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname55_RAM32X1_GWEAND_233 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname55_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname55_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname63_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname63_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname63
    );
  Mram_ram_inst_ramx_55_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname63_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname63_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_55_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname63_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname63_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_55_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname63_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname63_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname63_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname63_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname63_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname63_RAM32X1_FWEAND_234 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname63_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname63_RAM32X1_GWEAND_235 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname63_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname63_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname71_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname71_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname71
    );
  Mram_ram_inst_ramx_63_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname71_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname71_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_63_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname71_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname71_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_63_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname71_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname71_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname71_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname71_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname71_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname71_RAM32X1_FWEAND_236 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname71_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname71_RAM32X1_GWEAND_237 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname71_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname71_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname79_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname79_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname79
    );
  Mram_ram_inst_ramx_71_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname79_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname79_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_71_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname79_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname79_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_71_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname79_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname79_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname79_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname79_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname79_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname79_RAM32X1_FWEAND_238 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname79_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname79_RAM32X1_GWEAND_239 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname79_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname79_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname13_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname13_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname13
    );
  Mram_ram_inst_ramx_5_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname13_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname13_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_5_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname13_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname13_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_5_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname13_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname13_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname13_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname13_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname13_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname13_RAM32X1_FWEAND_240 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname13_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname13_RAM32X1_GWEAND_241 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname13_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname13_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname19_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname19_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname19
    );
  Mram_ram_inst_ramx_11_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname19_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname19_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_11_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname19_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname19_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_11_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname19_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname19_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname19_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname19_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname19_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname19_RAM32X1_FWEAND_242 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname19_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname19_RAM32X1_GWEAND_243 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname19_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname19_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname131_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname131_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname131
    );
  Mram_ram_inst_ramx_123_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname131_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname131_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_123_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname131_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname131_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_123_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname131_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname131_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname131_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname131_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname131_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname131_RAM32X1_FWEAND_244 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname131_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname131_RAM32X1_GWEAND_245 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname131_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname131_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname115_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname115_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname115
    );
  Mram_ram_inst_ramx_107_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname115_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname115_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_107_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname115_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname115_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_107_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname115_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname115_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname115_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname115_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname115_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname115_RAM32X1_FWEAND_246 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname115_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname115_RAM32X1_GWEAND_247 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname115_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname115_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname123_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname123_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname123
    );
  Mram_ram_inst_ramx_115_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname123_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname123_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_115_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname123_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname123_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_115_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname123_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname123_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname123_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname123_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname123_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname123_RAM32X1_FWEAND_248 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname123_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname123_RAM32X1_GWEAND_249 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname123_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname123_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname56_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname56_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname56
    );
  Mram_ram_inst_ramx_48_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname56_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname56_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_48_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname56_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname56_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_48_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname56_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname56_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname56_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname56_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname56_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname56_RAM32X1_FWEAND_250 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname56_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname56_RAM32X1_GWEAND_251 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname56_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname56_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname64_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname64_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname64
    );
  Mram_ram_inst_ramx_56_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname64_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname64_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_56_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname64_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname64_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_56_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname64_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname64_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname64_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname64_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname64_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname64_RAM32X1_FWEAND_252 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname64_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname64_RAM32X1_GWEAND_253 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname64_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname64_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname72_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname72_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname72
    );
  Mram_ram_inst_ramx_64_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname72_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname72_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_64_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname72_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname72_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_64_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname72_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname72_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname72_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname72_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname72_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname72_RAM32X1_FWEAND_254 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname72_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname72_RAM32X1_GWEAND_255 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname72_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname72_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname80_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname80_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname80
    );
  Mram_ram_inst_ramx_72_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname80_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname80_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_72_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname80_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname80_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_72_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname80_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname80_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname80_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname80_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname80_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname80_RAM32X1_FWEAND_256 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname80_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname80_RAM32X1_GWEAND_257 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname80_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname80_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname88_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname88_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname88
    );
  Mram_ram_inst_ramx_80_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname88_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname88_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_80_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname88_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname88_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_80_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname88_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname88_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname88_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname88_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname88_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname88_RAM32X1_FWEAND_258 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname88_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname88_RAM32X1_GWEAND_259 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname88_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname88_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname14_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname14_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname14
    );
  Mram_ram_inst_ramx_6_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname14_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname14_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_6_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname14_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname14_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_6_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname14_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname14_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname14_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname14_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname14_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname14_RAM32X1_FWEAND_260 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname14_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname14_RAM32X1_GWEAND_261 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname14_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname14_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname20_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname20_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname20
    );
  Mram_ram_inst_ramx_12_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname20_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname20_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_12_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname20_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname20_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_12_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname20_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname20_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname20_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname20_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname20_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname20_RAM32X1_FWEAND_262 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname20_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname20_RAM32X1_GWEAND_263 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname20_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname20_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname28_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname28_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname28
    );
  Mram_ram_inst_ramx_20_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname28_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname28_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_20_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname28_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname28_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_20_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname28_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname28_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname28_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname28_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname28_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname28_RAM32X1_FWEAND_264 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname28_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname28_RAM32X1_GWEAND_265 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname28_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname28_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname132_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname132_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname132
    );
  Mram_ram_inst_ramx_124_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname132_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname132_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_124_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname132_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname132_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_124_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname132_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname132_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname132_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname132_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname132_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname132_RAM32X1_FWEAND_266 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname132_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname132_RAM32X1_GWEAND_267 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname132_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname132_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname116_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname116_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname116
    );
  Mram_ram_inst_ramx_108_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname116_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname116_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_108_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname116_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname116_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_108_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname116_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname116_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname116_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname116_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname116_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname116_RAM32X1_FWEAND_268 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname116_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname116_RAM32X1_GWEAND_269 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname116_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname116_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname124_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname124_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname124
    );
  Mram_ram_inst_ramx_116_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname124_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname124_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_116_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname124_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname124_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_116_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname124_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname124_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname124_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname124_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname124_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname124_RAM32X1_FWEAND_270 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname124_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname124_RAM32X1_GWEAND_271 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname124_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname124_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname57_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname57_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname57
    );
  Mram_ram_inst_ramx_49_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname57_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname57_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_49_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_6_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname57_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname57_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_49_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname57_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname57_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname57_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname57_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname57_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname57_RAM32X1_FWEAND_272 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname57_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname57_RAM32X1_GWEAND_273 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname57_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname57_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname65_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname65_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname65
    );
  Mram_ram_inst_ramx_57_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname65_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname65_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_57_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname65_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname65_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_57_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname65_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname65_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname65_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname65_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname65_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname65_RAM32X1_FWEAND_274 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname65_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname65_RAM32X1_GWEAND_275 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname65_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname65_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname73_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname73_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname73
    );
  Mram_ram_inst_ramx_65_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname73_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname73_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_65_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname73_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname73_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_65_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname73_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname73_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname73_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname73_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname73_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname73_RAM32X1_FWEAND_276 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname73_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname73_RAM32X1_GWEAND_277 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname73_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname73_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname81_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname81_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname81
    );
  Mram_ram_inst_ramx_73_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname81_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname81_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_73_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname81_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname81_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_73_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname81_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname81_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname81_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname81_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname81_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname81_RAM32X1_FWEAND_278 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname81_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname81_RAM32X1_GWEAND_279 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname81_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname81_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname89_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname89_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname89
    );
  Mram_ram_inst_ramx_81_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname89_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname89_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_81_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname89_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname89_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_81_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname89_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname89_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname89_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname89_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname89_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname89_RAM32X1_FWEAND_280 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname89_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname89_RAM32X1_GWEAND_281 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname89_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname89_RAM32X1_GWEAND
    );
  Mram_ram_inst_lut3_8_282 : X_LUT4
    generic map(
      INIT => X"FA0A"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname8,
      ADR1 => VCC,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname9,
      O => Mram_ram_inst_lut3_8
    );
  Mram_ram_inst_lut3_9_283 : X_LUT4
    generic map(
      INIT => X"F0AA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname10,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname11,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_9
    );
  Mram_ram_inst_mux_f5_0_284 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_8,
      IB => Mram_ram_inst_lut3_9,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_0_F5MUX
    );
  Mram_ram_inst_mux_f5_0_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_0_F5MUX,
      O => Mram_ram_inst_mux_f5_0
    );
  Mram_ram_xstmacro_int_tempname15_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname15_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname15
    );
  Mram_ram_inst_ramx_7_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname15_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname15_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_7_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_0_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname15_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname15_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_7_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname15_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname15_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname15_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname15_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname15_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname15_RAM32X1_FWEAND_285 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname15_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname15_RAM32X1_GWEAND_286 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname15_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname15_RAM32X1_GWEAND
    );
  Mram_ram_inst_mux_f6_0 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_0,
      IB => Mram_ram_inst_mux_f5_1,
      SEL => a_7_IBUF,
      O => do_0_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_10_287 : X_LUT4
    generic map(
      INIT => X"F3C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname13,
      ADR3 => Mram_ram_xstmacro_int_tempname12,
      O => Mram_ram_inst_lut3_10
    );
  Mram_ram_inst_lut3_11_288 : X_LUT4
    generic map(
      INIT => X"E2E2"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname14,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname15,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_11
    );
  Mram_ram_inst_mux_f5_1_289 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_10,
      IB => Mram_ram_inst_lut3_11,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_1
    );
  do_0_OBUF_YUSED : X_BUF
    port map (
      I => do_0_OBUF_F6MUX,
      O => do_0_OBUF
    );
  Mram_ram_inst_lut3_12_290 : X_LUT4
    generic map(
      INIT => X"FA0A"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname16,
      ADR1 => VCC,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname17,
      O => Mram_ram_inst_lut3_12
    );
  Mram_ram_inst_lut3_13_291 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname18,
      ADR2 => Mram_ram_xstmacro_int_tempname19,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_13
    );
  Mram_ram_inst_mux_f5_2_292 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_12,
      IB => Mram_ram_inst_lut3_13,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_2_F5MUX
    );
  Mram_ram_inst_mux_f5_2_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_2_F5MUX,
      O => Mram_ram_inst_mux_f5_2
    );
  Mram_ram_inst_mux_f6_1 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_2,
      IB => Mram_ram_inst_mux_f5_3,
      SEL => a_7_IBUF,
      O => do_1_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_14_293 : X_LUT4
    generic map(
      INIT => X"BB88"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname21,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname20,
      O => Mram_ram_inst_lut3_14
    );
  Mram_ram_inst_lut3_15_294 : X_LUT4
    generic map(
      INIT => X"FC30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname22,
      ADR3 => Mram_ram_xstmacro_int_tempname23,
      O => Mram_ram_inst_lut3_15
    );
  Mram_ram_inst_mux_f5_3_295 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_14,
      IB => Mram_ram_inst_lut3_15,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_3
    );
  do_1_OBUF_YUSED : X_BUF
    port map (
      I => do_1_OBUF_F6MUX,
      O => do_1_OBUF
    );
  Mram_ram_xstmacro_int_tempname21_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname21_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname21
    );
  Mram_ram_inst_ramx_13_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname21_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname21_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_13_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname21_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname21_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_13_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname21_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname21_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname21_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname21_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname21_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname21_RAM32X1_FWEAND_296 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname21_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname21_RAM32X1_GWEAND_297 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname21_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname21_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname29_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname29_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname29
    );
  Mram_ram_inst_ramx_21_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname29_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname29_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_21_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname29_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname29_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_21_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname29_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname29_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname29_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname29_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname29_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname29_RAM32X1_FWEAND_298 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname29_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname29_RAM32X1_GWEAND_299 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname29_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname29_RAM32X1_GWEAND
    );
  Mram_ram_inst_lut3_16_300 : X_LUT4
    generic map(
      INIT => X"AFA0"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname25,
      ADR1 => VCC,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname24,
      O => Mram_ram_inst_lut3_16
    );
  Mram_ram_inst_lut3_17_301 : X_LUT4
    generic map(
      INIT => X"E2E2"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname26,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname27,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_17
    );
  Mram_ram_inst_mux_f5_4_302 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_16,
      IB => Mram_ram_inst_lut3_17,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_4_F5MUX
    );
  Mram_ram_inst_mux_f5_4_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_4_F5MUX,
      O => Mram_ram_inst_mux_f5_4
    );
  Mram_ram_xstmacro_int_tempname133_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname133_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname133
    );
  Mram_ram_inst_ramx_125_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname133_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname133_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_125_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname133_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname133_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_125_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname133_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname133_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname133_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname133_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname133_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname133_RAM32X1_FWEAND_303 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname133_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname133_RAM32X1_GWEAND_304 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname133_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname133_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname117_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname117_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname117
    );
  Mram_ram_inst_ramx_109_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname117_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname117_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_109_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_13_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname117_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname117_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_109_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname117_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname117_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname117_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname117_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname117_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname117_RAM32X1_FWEAND_305 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname117_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname117_RAM32X1_GWEAND_306 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname117_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname117_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname125_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname125_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname125
    );
  Mram_ram_inst_ramx_117_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname125_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname125_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_117_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname125_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname125_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_117_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname125_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname125_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname125_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname125_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname125_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname125_RAM32X1_FWEAND_307 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname125_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname125_RAM32X1_GWEAND_308 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname125_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname125_RAM32X1_GWEAND
    );
  Mram_ram_inst_mux_f6_2 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_4,
      IB => Mram_ram_inst_mux_f5_5,
      SEL => a_7_IBUF,
      O => do_2_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_18_309 : X_LUT4
    generic map(
      INIT => X"BB88"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname29,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname28,
      O => Mram_ram_inst_lut3_18
    );
  Mram_ram_inst_lut3_19_310 : X_LUT4
    generic map(
      INIT => X"E2E2"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname30,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname31,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_19
    );
  Mram_ram_inst_mux_f5_5_311 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_18,
      IB => Mram_ram_inst_lut3_19,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_5
    );
  do_2_OBUF_YUSED : X_BUF
    port map (
      I => do_2_OBUF_F6MUX,
      O => do_2_OBUF
    );
  Mram_ram_inst_lut3_20_312 : X_LUT4
    generic map(
      INIT => X"B8B8"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname33,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname32,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_20
    );
  Mram_ram_inst_lut3_21_313 : X_LUT4
    generic map(
      INIT => X"F3C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname35,
      ADR3 => Mram_ram_xstmacro_int_tempname34,
      O => Mram_ram_inst_lut3_21
    );
  Mram_ram_inst_mux_f5_6_314 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_20,
      IB => Mram_ram_inst_lut3_21,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_6_F5MUX
    );
  Mram_ram_inst_mux_f5_6_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_6_F5MUX,
      O => Mram_ram_inst_mux_f5_6
    );
  Mram_ram_xstmacro_int_tempname66_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname66_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname66
    );
  Mram_ram_inst_ramx_58_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname66_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname66_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_58_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname66_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname66_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_58_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname66_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname66_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname66_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname66_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname66_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname66_RAM32X1_FWEAND_315 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname66_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname66_RAM32X1_GWEAND_316 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname66_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname66_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname74_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname74_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname74
    );
  Mram_ram_inst_ramx_66_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname74_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname74_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_66_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname74_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname74_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_66_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname74_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname74_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname74_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname74_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname74_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname74_RAM32X1_FWEAND_317 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname74_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname74_RAM32X1_GWEAND_318 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname74_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname74_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname82_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname82_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname82
    );
  Mram_ram_inst_ramx_74_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname82_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname82_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_74_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname82_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname82_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_74_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname82_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname82_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname82_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname82_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname82_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname82_RAM32X1_FWEAND_319 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname82_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname82_RAM32X1_GWEAND_320 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname82_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname82_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname90_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname90_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname90
    );
  Mram_ram_inst_ramx_82_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname90_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname90_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_82_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname90_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname90_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_82_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname90_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname90_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname90_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname90_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname90_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname90_RAM32X1_FWEAND_321 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname90_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname90_RAM32X1_GWEAND_322 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname90_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname90_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname98_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname98_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname98
    );
  Mram_ram_inst_ramx_90_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname98_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname98_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_90_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname98_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname98_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_90_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname98_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname98_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname98_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname98_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname98_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname98_RAM32X1_FWEAND_323 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname98_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname98_RAM32X1_GWEAND_324 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_2,
      I1 => Mram_ram_xstmacro_int_tempname98_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname98_RAM32X1_GWEAND
    );
  Mram_ram_inst_mux_f6_3 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_6,
      IB => Mram_ram_inst_mux_f5_7,
      SEL => a_7_IBUF,
      O => do_3_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_22_325 : X_LUT4
    generic map(
      INIT => X"AFA0"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname37,
      ADR1 => VCC,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname36,
      O => Mram_ram_inst_lut3_22
    );
  Mram_ram_inst_lut3_23_326 : X_LUT4
    generic map(
      INIT => X"ACAC"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname39,
      ADR1 => Mram_ram_xstmacro_int_tempname38,
      ADR2 => a_5_IBUF,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_23
    );
  Mram_ram_inst_mux_f5_7_327 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_22,
      IB => Mram_ram_inst_lut3_23,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_7
    );
  do_3_OBUF_YUSED : X_BUF
    port map (
      I => do_3_OBUF_F6MUX,
      O => do_3_OBUF
    );
  Mram_ram_inst_lut3_24_328 : X_LUT4
    generic map(
      INIT => X"F3C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname41,
      ADR3 => Mram_ram_xstmacro_int_tempname40,
      O => Mram_ram_inst_lut3_24
    );
  Mram_ram_inst_lut3_25_329 : X_LUT4
    generic map(
      INIT => X"EE22"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname42,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname43,
      O => Mram_ram_inst_lut3_25
    );
  Mram_ram_inst_mux_f5_8_330 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_24,
      IB => Mram_ram_inst_lut3_25,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_8_F5MUX
    );
  Mram_ram_inst_mux_f5_8_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_8_F5MUX,
      O => Mram_ram_inst_mux_f5_8
    );
  Mram_ram_xstmacro_int_tempname16_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname16_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname16
    );
  Mram_ram_inst_ramx_8_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname16_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname16_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_8_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname16_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname16_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_8_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname16_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname16_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname16_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname16_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname16_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname16_RAM32X1_FWEAND_331 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname16_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname16_RAM32X1_GWEAND_332 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname16_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname16_RAM32X1_GWEAND
    );
  Mram_ram_inst_mux_f6_4 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_8,
      IB => Mram_ram_inst_mux_f5_9,
      SEL => a_7_IBUF,
      O => do_4_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_26_333 : X_LUT4
    generic map(
      INIT => X"CFC0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname45,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname44,
      O => Mram_ram_inst_lut3_26
    );
  Mram_ram_inst_lut3_27_334 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname46,
      ADR1 => Mram_ram_xstmacro_int_tempname47,
      ADR2 => a_5_IBUF,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_27
    );
  Mram_ram_inst_mux_f5_9_335 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_26,
      IB => Mram_ram_inst_lut3_27,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_9
    );
  do_4_OBUF_YUSED : X_BUF
    port map (
      I => do_4_OBUF_F6MUX,
      O => do_4_OBUF
    );
  Mram_ram_xstmacro_int_tempname22_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname22_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname22
    );
  Mram_ram_inst_ramx_14_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname22_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname22_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_14_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname22_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname22_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_14_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname22_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname22_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname22_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname22_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname22_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname22_RAM32X1_FWEAND_336 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname22_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname22_RAM32X1_GWEAND_337 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname22_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname22_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname30_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname30_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname30
    );
  Mram_ram_inst_ramx_22_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname30_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname30_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_22_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname30_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname30_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_22_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname30_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname30_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname30_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname30_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname30_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname30_RAM32X1_FWEAND_338 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname30_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname30_RAM32X1_GWEAND_339 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname30_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname30_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname38_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname38_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname38
    );
  Mram_ram_inst_ramx_30_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname38_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname38_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_30_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname38_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname38_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_30_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname38_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname38_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname38_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname38_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname38_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname38_RAM32X1_FWEAND_340 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname38_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname38_RAM32X1_GWEAND_341 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname38_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname38_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname134_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname134_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname134
    );
  Mram_ram_inst_ramx_126_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname134_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname134_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_126_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname134_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname134_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_126_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname134_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname134_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname134_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname134_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname134_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname134_RAM32X1_FWEAND_342 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname134_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname134_RAM32X1_GWEAND_343 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname134_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname134_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname126_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname126_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname126
    );
  Mram_ram_inst_ramx_118_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname126_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname126_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_118_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname126_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname126_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_118_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname126_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname126_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname126_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname126_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname126_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname126_RAM32X1_FWEAND_344 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname126_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname126_RAM32X1_GWEAND_345 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_6,
      I1 => Mram_ram_xstmacro_int_tempname126_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname126_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname67_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname67_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname67
    );
  Mram_ram_inst_ramx_59_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname67_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname67_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_59_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_7_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname67_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname67_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_59_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname67_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname67_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname67_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname67_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname67_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname67_RAM32X1_FWEAND_346 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname67_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname67_RAM32X1_GWEAND_347 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname67_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname67_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname75_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname75_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname75
    );
  Mram_ram_inst_ramx_67_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname75_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname75_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_67_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname75_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname75_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_67_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname75_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname75_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname75_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname75_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname75_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname75_RAM32X1_FWEAND_348 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname75_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname75_RAM32X1_GWEAND_349 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname75_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname75_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname83_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname83_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname83
    );
  Mram_ram_inst_ramx_75_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname83_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname83_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_75_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname83_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname83_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_75_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname83_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname83_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname83_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname83_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname83_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname83_RAM32X1_FWEAND_350 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname83_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname83_RAM32X1_GWEAND_351 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname83_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname83_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname91_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname91_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname91
    );
  Mram_ram_inst_ramx_83_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname91_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname91_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_83_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname91_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname91_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_83_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname91_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname91_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname91_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname91_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname91_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname91_RAM32X1_FWEAND_352 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname91_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname91_RAM32X1_GWEAND_353 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname91_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname91_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname99_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname99_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname99
    );
  Mram_ram_inst_ramx_91_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname99_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname99_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_91_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname99_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname99_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_91_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname99_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname99_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname99_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname99_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname99_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname99_RAM32X1_FWEAND_354 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname99_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname99_RAM32X1_GWEAND_355 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_3,
      I1 => Mram_ram_xstmacro_int_tempname99_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname99_RAM32X1_GWEAND
    );
  Mram_ram_inst_lut3_28_356 : X_LUT4
    generic map(
      INIT => X"BB88"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname49,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname48,
      O => Mram_ram_inst_lut3_28
    );
  Mram_ram_inst_lut3_29_357 : X_LUT4
    generic map(
      INIT => X"FA50"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname50,
      ADR3 => Mram_ram_xstmacro_int_tempname51,
      O => Mram_ram_inst_lut3_29
    );
  Mram_ram_inst_mux_f5_10_358 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_28,
      IB => Mram_ram_inst_lut3_29,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_10_F5MUX
    );
  Mram_ram_inst_mux_f5_10_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_10_F5MUX,
      O => Mram_ram_inst_mux_f5_10
    );
  Mram_ram_xstmacro_int_tempname17_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname17_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname17
    );
  Mram_ram_inst_ramx_9_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname17_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname17_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_9_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname17_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname17_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_9_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname17_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname17_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname17_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname17_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname17_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname17_RAM32X1_FWEAND_359 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname17_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname17_RAM32X1_GWEAND_360 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_1,
      I1 => Mram_ram_xstmacro_int_tempname17_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname17_RAM32X1_GWEAND
    );
  Mram_ram_inst_mux_f6_5 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_10,
      IB => Mram_ram_inst_mux_f5_11,
      SEL => a_7_IBUF,
      O => do_5_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_30_361 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname52,
      ADR2 => Mram_ram_xstmacro_int_tempname53,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_30
    );
  Mram_ram_inst_lut3_31_362 : X_LUT4
    generic map(
      INIT => X"AACC"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname55,
      ADR1 => Mram_ram_xstmacro_int_tempname54,
      ADR2 => VCC,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_31
    );
  Mram_ram_inst_mux_f5_11_363 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_30,
      IB => Mram_ram_inst_lut3_31,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_11
    );
  do_5_OBUF_YUSED : X_BUF
    port map (
      I => do_5_OBUF_F6MUX,
      O => do_5_OBUF
    );
  Mram_ram_inst_lut3_48_364 : X_LUT4
    generic map(
      INIT => X"F0AA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname88,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname89,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_48
    );
  Mram_ram_inst_lut3_49_365 : X_LUT4
    generic map(
      INIT => X"F0CC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname90,
      ADR2 => Mram_ram_xstmacro_int_tempname91,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_49
    );
  Mram_ram_inst_mux_f5_20_366 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_48,
      IB => Mram_ram_inst_lut3_49,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_20_F5MUX
    );
  Mram_ram_inst_mux_f5_20_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_20_F5MUX,
      O => Mram_ram_inst_mux_f5_20
    );
  Mram_ram_inst_lut3_32_367 : X_LUT4
    generic map(
      INIT => X"FC0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname56,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname57,
      O => Mram_ram_inst_lut3_32
    );
  Mram_ram_inst_lut3_33_368 : X_LUT4
    generic map(
      INIT => X"FC0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname58,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname59,
      O => Mram_ram_inst_lut3_33
    );
  Mram_ram_inst_mux_f5_12_369 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_32,
      IB => Mram_ram_inst_lut3_33,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_12_F5MUX
    );
  Mram_ram_inst_mux_f5_12_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_12_F5MUX,
      O => Mram_ram_inst_mux_f5_12
    );
  Mram_ram_inst_mux_f6_10 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_20,
      IB => Mram_ram_inst_mux_f5_21,
      SEL => a_7_IBUF,
      O => do_10_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_50_370 : X_LUT4
    generic map(
      INIT => X"F0AA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname92,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname93,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_50
    );
  Mram_ram_inst_lut3_51_371 : X_LUT4
    generic map(
      INIT => X"DD88"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname95,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname94,
      O => Mram_ram_inst_lut3_51
    );
  Mram_ram_inst_mux_f5_21_372 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_50,
      IB => Mram_ram_inst_lut3_51,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_21
    );
  do_10_OBUF_YUSED : X_BUF
    port map (
      I => do_10_OBUF_F6MUX,
      O => do_10_OBUF
    );
  Mram_ram_inst_mux_f6_6 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_12,
      IB => Mram_ram_inst_mux_f5_13,
      SEL => a_7_IBUF,
      O => do_6_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_34_373 : X_LUT4
    generic map(
      INIT => X"EE22"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname60,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname61,
      O => Mram_ram_inst_lut3_34
    );
  Mram_ram_inst_lut3_35_374 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname62,
      ADR1 => Mram_ram_xstmacro_int_tempname63,
      ADR2 => a_5_IBUF,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_35
    );
  Mram_ram_inst_mux_f5_13_375 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_34,
      IB => Mram_ram_inst_lut3_35,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_13
    );
  do_6_OBUF_YUSED : X_BUF
    port map (
      I => do_6_OBUF_F6MUX,
      O => do_6_OBUF
    );
  Mram_ram_xstmacro_int_tempname23_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname23_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname23
    );
  Mram_ram_inst_ramx_15_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname23_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname23_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_15_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_1_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname23_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname23_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_15_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname23_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname23_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname23_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname23_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname23_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname23_RAM32X1_FWEAND_376 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname23_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname23_RAM32X1_GWEAND_377 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname23_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname23_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname31_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname31_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname31
    );
  Mram_ram_inst_ramx_23_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname31_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname31_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_23_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname31_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname31_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_23_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname31_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname31_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname31_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname31_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname31_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname31_RAM32X1_FWEAND_378 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname31_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname31_RAM32X1_GWEAND_379 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname31_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname31_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname39_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname39_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname39
    );
  Mram_ram_inst_ramx_31_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname39_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname39_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_31_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname39_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname39_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_31_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname39_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname39_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname39_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname39_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname39_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname39_RAM32X1_FWEAND_380 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname39_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname39_RAM32X1_GWEAND_381 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname39_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname39_RAM32X1_GWEAND
    );
  Mram_ram_inst_lut3_52_382 : X_LUT4
    generic map(
      INIT => X"D8D8"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname97,
      ADR2 => Mram_ram_xstmacro_int_tempname96,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_52
    );
  Mram_ram_inst_lut3_53_383 : X_LUT4
    generic map(
      INIT => X"EE44"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname98,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname99,
      O => Mram_ram_inst_lut3_53
    );
  Mram_ram_inst_mux_f5_22_384 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_52,
      IB => Mram_ram_inst_lut3_53,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_22_F5MUX
    );
  Mram_ram_inst_mux_f5_22_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_22_F5MUX,
      O => Mram_ram_inst_mux_f5_22
    );
  Mram_ram_inst_lut3_36_385 : X_LUT4
    generic map(
      INIT => X"BB88"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname65,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname64,
      O => Mram_ram_inst_lut3_36
    );
  Mram_ram_inst_lut3_37_386 : X_LUT4
    generic map(
      INIT => X"BB88"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname67,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname66,
      O => Mram_ram_inst_lut3_37
    );
  Mram_ram_inst_mux_f5_14_387 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_36,
      IB => Mram_ram_inst_lut3_37,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_14_F5MUX
    );
  Mram_ram_inst_mux_f5_14_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_14_F5MUX,
      O => Mram_ram_inst_mux_f5_14
    );
  Mram_ram_inst_lut3_68_388 : X_LUT4
    generic map(
      INIT => X"F3C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname129,
      ADR3 => Mram_ram_xstmacro_int_tempname128,
      O => Mram_ram_inst_lut3_68
    );
  Mram_ram_inst_lut3_69_389 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname130,
      ADR1 => Mram_ram_xstmacro_int_tempname131,
      ADR2 => a_5_IBUF,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_69
    );
  Mram_ram_inst_mux_f5_30_390 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_68,
      IB => Mram_ram_inst_lut3_69,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_30_F5MUX
    );
  Mram_ram_inst_mux_f5_30_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_30_F5MUX,
      O => Mram_ram_inst_mux_f5_30
    );
  Mram_ram_xstmacro_int_tempname135_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname135_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname135
    );
  Mram_ram_inst_ramx_127_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname135_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname135_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_127_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_15_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname135_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname135_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_127_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname135_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname135_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname135_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname135_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname135_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname135_RAM32X1_FWEAND_391 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname135_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname135_RAM32X1_GWEAND_392 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname135_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname135_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname127_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname127_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname127
    );
  Mram_ram_inst_ramx_119_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname127_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname127_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_119_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_14_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname127_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname127_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_119_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname127_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname127_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname127_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname127_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname127_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname127_RAM32X1_FWEAND_393 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname127_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname127_RAM32X1_GWEAND_394 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_7,
      I1 => Mram_ram_xstmacro_int_tempname127_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname127_RAM32X1_GWEAND
    );
  Mram_ram_inst_mux_f6_11 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_22,
      IB => Mram_ram_inst_mux_f5_23,
      SEL => a_7_IBUF,
      O => do_11_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_54_395 : X_LUT4
    generic map(
      INIT => X"FC0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname100,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname101,
      O => Mram_ram_inst_lut3_54
    );
  Mram_ram_inst_lut3_55_396 : X_LUT4
    generic map(
      INIT => X"AFA0"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname103,
      ADR1 => VCC,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname102,
      O => Mram_ram_inst_lut3_55
    );
  Mram_ram_inst_mux_f5_23_397 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_54,
      IB => Mram_ram_inst_lut3_55,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_23
    );
  do_11_OBUF_YUSED : X_BUF
    port map (
      I => do_11_OBUF_F6MUX,
      O => do_11_OBUF
    );
  Mram_ram_inst_mux_f6_7 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_14,
      IB => Mram_ram_inst_mux_f5_15,
      SEL => a_7_IBUF,
      O => do_7_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_38_398 : X_LUT4
    generic map(
      INIT => X"EE44"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname68,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname69,
      O => Mram_ram_inst_lut3_38
    );
  Mram_ram_inst_lut3_39_399 : X_LUT4
    generic map(
      INIT => X"DD88"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname71,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname70,
      O => Mram_ram_inst_lut3_39
    );
  Mram_ram_inst_mux_f5_15_400 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_38,
      IB => Mram_ram_inst_lut3_39,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_15
    );
  do_7_OBUF_YUSED : X_BUF
    port map (
      I => do_7_OBUF_F6MUX,
      O => do_7_OBUF
    );
  Mram_ram_inst_mux_f6_15 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_30,
      IB => Mram_ram_inst_mux_f5_31,
      SEL => a_7_IBUF,
      O => do_15_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_70_401 : X_LUT4
    generic map(
      INIT => X"FC0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname132,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname133,
      O => Mram_ram_inst_lut3_70
    );
  Mram_ram_inst_lut3_71_402 : X_LUT4
    generic map(
      INIT => X"AFA0"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname135,
      ADR1 => VCC,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname134,
      O => Mram_ram_inst_lut3_71
    );
  Mram_ram_inst_mux_f5_31_403 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_70,
      IB => Mram_ram_inst_lut3_71,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_31
    );
  do_15_OBUF_YUSED : X_BUF
    port map (
      I => do_15_OBUF_F6MUX,
      O => do_15_OBUF
    );
  Mram_ram_inst_lut3_56_404 : X_LUT4
    generic map(
      INIT => X"F0CC"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname104,
      ADR2 => Mram_ram_xstmacro_int_tempname105,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_56
    );
  Mram_ram_inst_lut3_57_405 : X_LUT4
    generic map(
      INIT => X"DD88"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname107,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname106,
      O => Mram_ram_inst_lut3_57
    );
  Mram_ram_inst_mux_f5_24_406 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_56,
      IB => Mram_ram_inst_lut3_57,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_24_F5MUX
    );
  Mram_ram_inst_mux_f5_24_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_24_F5MUX,
      O => Mram_ram_inst_mux_f5_24
    );
  Mram_ram_inst_lut3_40_407 : X_LUT4
    generic map(
      INIT => X"F3C0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_5_IBUF,
      ADR2 => Mram_ram_xstmacro_int_tempname73,
      ADR3 => Mram_ram_xstmacro_int_tempname72,
      O => Mram_ram_inst_lut3_40
    );
  Mram_ram_inst_lut3_41_408 : X_LUT4
    generic map(
      INIT => X"AAF0"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname75,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname74,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_41
    );
  Mram_ram_inst_mux_f5_16_409 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_40,
      IB => Mram_ram_inst_lut3_41,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_16_F5MUX
    );
  Mram_ram_inst_mux_f5_16_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_16_F5MUX,
      O => Mram_ram_inst_mux_f5_16
    );
  Mram_ram_xstmacro_int_tempname76_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname76_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname76
    );
  Mram_ram_inst_ramx_68_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname76_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname76_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_68_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname76_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname76_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_68_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname76_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname76_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname76_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname76_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname76_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname76_RAM32X1_FWEAND_410 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname76_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname76_RAM32X1_GWEAND_411 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname76_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname76_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname84_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname84_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname84
    );
  Mram_ram_inst_ramx_76_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname84_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname84_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_76_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname84_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname84_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_76_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname84_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname84_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname84_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname84_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname84_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname84_RAM32X1_FWEAND_412 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname84_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname84_RAM32X1_GWEAND_413 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname84_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname84_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname92_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname92_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname92
    );
  Mram_ram_inst_ramx_84_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname92_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname92_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_84_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname92_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname92_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_84_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname92_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname92_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname92_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname92_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname92_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname92_RAM32X1_FWEAND_414 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname92_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname92_RAM32X1_GWEAND_415 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname92_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname92_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname100_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname100_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname100
    );
  Mram_ram_inst_ramx_92_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname100_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname100_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_92_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname100_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname100_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_92_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname100_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname100_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname100_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname100_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname100_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname100_RAM32X1_FWEAND_416 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname100_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname100_RAM32X1_GWEAND_417 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_4,
      I1 => Mram_ram_xstmacro_int_tempname100_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname100_RAM32X1_GWEAND
    );
  Mram_ram_inst_mux_f6_12 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_24,
      IB => Mram_ram_inst_mux_f5_25,
      SEL => a_7_IBUF,
      O => do_12_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_58_418 : X_LUT4
    generic map(
      INIT => X"ACAC"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname109,
      ADR1 => Mram_ram_xstmacro_int_tempname108,
      ADR2 => a_5_IBUF,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_58
    );
  Mram_ram_inst_lut3_59_419 : X_LUT4
    generic map(
      INIT => X"AAF0"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname111,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname110,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_59
    );
  Mram_ram_inst_mux_f5_25_420 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_58,
      IB => Mram_ram_inst_lut3_59,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_25
    );
  do_12_OBUF_YUSED : X_BUF
    port map (
      I => do_12_OBUF_F6MUX,
      O => do_12_OBUF
    );
  Mram_ram_inst_mux_f6_8 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_16,
      IB => Mram_ram_inst_mux_f5_17,
      SEL => a_7_IBUF,
      O => do_8_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_42_421 : X_LUT4
    generic map(
      INIT => X"F0AA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname76,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname77,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_42
    );
  Mram_ram_inst_lut3_43_422 : X_LUT4
    generic map(
      INIT => X"FC0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname78,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname79,
      O => Mram_ram_inst_lut3_43
    );
  Mram_ram_inst_mux_f5_17_423 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_42,
      IB => Mram_ram_inst_lut3_43,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_17
    );
  do_8_OBUF_YUSED : X_BUF
    port map (
      I => do_8_OBUF_F6MUX,
      O => do_8_OBUF
    );
  Mram_ram_inst_lut3_60_424 : X_LUT4
    generic map(
      INIT => X"AAF0"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname113,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname112,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_60
    );
  Mram_ram_inst_lut3_61_425 : X_LUT4
    generic map(
      INIT => X"CCAA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname114,
      ADR1 => Mram_ram_xstmacro_int_tempname115,
      ADR2 => VCC,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_61
    );
  Mram_ram_inst_mux_f5_26_426 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_60,
      IB => Mram_ram_inst_lut3_61,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_26_F5MUX
    );
  Mram_ram_inst_mux_f5_26_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_26_F5MUX,
      O => Mram_ram_inst_mux_f5_26
    );
  Mram_ram_inst_lut3_44_427 : X_LUT4
    generic map(
      INIT => X"F0AA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname80,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname81,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_44
    );
  Mram_ram_inst_lut3_45_428 : X_LUT4
    generic map(
      INIT => X"F0AA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname82,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname83,
      ADR3 => a_5_IBUF,
      O => Mram_ram_inst_lut3_45
    );
  Mram_ram_inst_mux_f5_18_429 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_44,
      IB => Mram_ram_inst_lut3_45,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_18_F5MUX
    );
  Mram_ram_inst_mux_f5_18_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_18_F5MUX,
      O => Mram_ram_inst_mux_f5_18
    );
  Mram_ram_inst_mux_f6_13 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_26,
      IB => Mram_ram_inst_mux_f5_27,
      SEL => a_7_IBUF,
      O => do_13_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_62_430 : X_LUT4
    generic map(
      INIT => X"ACAC"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname117,
      ADR1 => Mram_ram_xstmacro_int_tempname116,
      ADR2 => a_5_IBUF,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_62
    );
  Mram_ram_inst_lut3_63_431 : X_LUT4
    generic map(
      INIT => X"EE44"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => Mram_ram_xstmacro_int_tempname118,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname119,
      O => Mram_ram_inst_lut3_63
    );
  Mram_ram_inst_mux_f5_27_432 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_62,
      IB => Mram_ram_inst_lut3_63,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_27
    );
  do_13_OBUF_YUSED : X_BUF
    port map (
      I => do_13_OBUF_F6MUX,
      O => do_13_OBUF
    );
  Mram_ram_inst_mux_f6_9 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_18,
      IB => Mram_ram_inst_mux_f5_19,
      SEL => a_7_IBUF,
      O => do_9_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_46_433 : X_LUT4
    generic map(
      INIT => X"FA50"
    )
    port map (
      ADR0 => a_5_IBUF,
      ADR1 => VCC,
      ADR2 => Mram_ram_xstmacro_int_tempname84,
      ADR3 => Mram_ram_xstmacro_int_tempname85,
      O => Mram_ram_inst_lut3_46
    );
  Mram_ram_inst_lut3_47_434 : X_LUT4
    generic map(
      INIT => X"BB88"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname87,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname86,
      O => Mram_ram_inst_lut3_47
    );
  Mram_ram_inst_mux_f5_19_435 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_46,
      IB => Mram_ram_inst_lut3_47,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_19
    );
  do_9_OBUF_YUSED : X_BUF
    port map (
      I => do_9_OBUF_F6MUX,
      O => do_9_OBUF
    );
  Mram_ram_inst_lut3_64_436 : X_LUT4
    generic map(
      INIT => X"EE22"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname120,
      ADR1 => a_5_IBUF,
      ADR2 => VCC,
      ADR3 => Mram_ram_xstmacro_int_tempname121,
      O => Mram_ram_inst_lut3_64
    );
  Mram_ram_inst_lut3_65_437 : X_LUT4
    generic map(
      INIT => X"FC0C"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Mram_ram_xstmacro_int_tempname122,
      ADR2 => a_5_IBUF,
      ADR3 => Mram_ram_xstmacro_int_tempname123,
      O => Mram_ram_inst_lut3_65
    );
  Mram_ram_inst_mux_f5_28_438 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_64,
      IB => Mram_ram_inst_lut3_65,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_28_F5MUX
    );
  Mram_ram_inst_mux_f5_28_F5USED : X_BUF
    port map (
      I => Mram_ram_inst_mux_f5_28_F5MUX,
      O => Mram_ram_inst_mux_f5_28
    );
  Mram_ram_inst_mux_f6_14 : X_MUX2
    port map (
      IA => Mram_ram_inst_mux_f5_28,
      IB => Mram_ram_inst_mux_f5_29,
      SEL => a_7_IBUF,
      O => do_14_OBUF_F6MUX
    );
  Mram_ram_inst_lut3_66_439 : X_LUT4
    generic map(
      INIT => X"ACAC"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname125,
      ADR1 => Mram_ram_xstmacro_int_tempname124,
      ADR2 => a_5_IBUF,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_66
    );
  Mram_ram_inst_lut3_67_440 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => Mram_ram_xstmacro_int_tempname126,
      ADR1 => Mram_ram_xstmacro_int_tempname127,
      ADR2 => a_5_IBUF,
      ADR3 => VCC,
      O => Mram_ram_inst_lut3_67
    );
  Mram_ram_inst_mux_f5_29_441 : X_MUX2
    port map (
      IA => Mram_ram_inst_lut3_66,
      IB => Mram_ram_inst_lut3_67,
      SEL => a_6_IBUF,
      O => Mram_ram_inst_mux_f5_29
    );
  do_14_OBUF_YUSED : X_BUF
    port map (
      I => do_14_OBUF_F6MUX,
      O => do_14_OBUF
    );
  Mram_ram_xstmacro_int_tempname24_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname24_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname24
    );
  Mram_ram_inst_ramx_16_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname24_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname24_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_16_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_2_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname24_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname24_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_16_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname24_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname24_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname24_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname24_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname24_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname24_RAM32X1_FWEAND_442 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname24_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname24_RAM32X1_GWEAND_443 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname24_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname24_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname32_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname32_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname32
    );
  Mram_ram_inst_ramx_24_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname32_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname32_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_24_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_3_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname32_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname32_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_24_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname32_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname32_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname32_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname32_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname32_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname32_RAM32X1_FWEAND_444 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname32_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname32_RAM32X1_GWEAND_445 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname32_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname32_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname40_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname40_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname40
    );
  Mram_ram_inst_ramx_32_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname40_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname40_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_32_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_4_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname40_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname40_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_32_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname40_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname40_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname40_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname40_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname40_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname40_RAM32X1_FWEAND_446 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname40_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname40_RAM32X1_GWEAND_447 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname40_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname40_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname48_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname48_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname48
    );
  Mram_ram_inst_ramx_40_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname48_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname48_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_40_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => N83,
      ADR1 => N82,
      ADR2 => N81,
      ADR3 => N80,
      I => di_5_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname48_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname48_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_40_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname48_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname48_RAM32X1_FRAMS,
      SEL => N79,
      O => Mram_ram_xstmacro_int_tempname48_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname48_RAM32X1_FWEINV : X_INV
    port map (
      I => N79,
      O => Mram_ram_xstmacro_int_tempname48_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname48_RAM32X1_FWEAND_448 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => N79,
      O => Mram_ram_xstmacro_int_tempname48_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname48_RAM32X1_GWEAND_449 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_0,
      I1 => Mram_ram_xstmacro_int_tempname48_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname48_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname77_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname77_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname77
    );
  Mram_ram_inst_ramx_69_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname77_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname77_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_69_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_8_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname77_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname77_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_69_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname77_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname77_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname77_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname77_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname77_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname77_RAM32X1_FWEAND_450 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname77_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname77_RAM32X1_GWEAND_451 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname77_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname77_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname85_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname85_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname85
    );
  Mram_ram_inst_ramx_77_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname85_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname85_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_77_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_9_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname85_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname85_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_77_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname85_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname85_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname85_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname85_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname85_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname85_RAM32X1_FWEAND_452 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname85_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname85_RAM32X1_GWEAND_453 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname85_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname85_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname93_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname93_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname93
    );
  Mram_ram_inst_ramx_85_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname93_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname93_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_85_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_10_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname93_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname93_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_85_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname93_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname93_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname93_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname93_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname93_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname93_RAM32X1_FWEAND_454 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname93_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname93_RAM32X1_GWEAND_455 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname93_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname93_RAM32X1_GWEAND
    );
  Mram_ram_xstmacro_int_tempname101_XUSED : X_BUF
    port map (
      I => Mram_ram_xstmacro_int_tempname101_RAM32X1,
      O => Mram_ram_xstmacro_int_tempname101
    );
  Mram_ram_inst_ramx_93_G : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname101_RAM32X1_GWEAND,
      O => Mram_ram_xstmacro_int_tempname101_RAM32X1_GRAMS
    );
  Mram_ram_inst_ramx_93_F : X_RAMS16
    generic map(
      INIT => X"0000"
    )
    port map (
      ADR0 => a_0_IBUF_1,
      ADR1 => a_1_IBUF_1,
      ADR2 => a_2_IBUF_1,
      ADR3 => a_3_IBUF_1,
      I => di_11_IBUF,
      CLK => clk_BUFGP,
      WE => Mram_ram_xstmacro_int_tempname101_RAM32X1_FWEAND,
      O => Mram_ram_xstmacro_int_tempname101_RAM32X1_FRAMS
    );
  Mram_ram_inst_ramx_93_F5 : X_MUX2
    port map (
      IA => Mram_ram_xstmacro_int_tempname101_RAM32X1_GRAMS,
      IB => Mram_ram_xstmacro_int_tempname101_RAM32X1_FRAMS,
      SEL => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname101_RAM32X1
    );
  Mram_ram_xstmacro_int_tempname101_RAM32X1_FWEINV : X_INV
    port map (
      I => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname101_RAM32X1_ADR4_INV
    );
  Mram_ram_xstmacro_int_tempname101_RAM32X1_FWEAND_456 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => a_4_IBUF_1,
      O => Mram_ram_xstmacro_int_tempname101_RAM32X1_FWEAND
    );
  Mram_ram_xstmacro_int_tempname101_RAM32X1_GWEAND_457 : X_AND2
    port map (
      I0 => Mram_ram_inst_lut2_5,
      I1 => Mram_ram_xstmacro_int_tempname101_RAM32X1_ADR4_INV,
      O => Mram_ram_xstmacro_int_tempname101_RAM32X1_GWEAND
    );
  clk_BUF : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG
    );
  clk_BUFGP_BUFG_BUF : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG,
      O => clk_BUFGP
    );
  NlwTieBlock_ram_distr_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_do_10_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_10_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_11_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_11_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_12_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_12_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_0_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_0_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_13_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_13_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_1_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_1_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_14_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_14_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_2_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_2_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_15_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_15_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_3_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_3_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_4_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_4_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_5_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_5_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_6_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_6_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_7_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_7_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_8_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_8_OUTBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_do_9_OUTBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_do_9_OUTBUF_GTS_TRI_CTL
    );
  NlwBlockTOC : TOC generic map ( WIDTH => 1 ns)
     port map (O => GTS);
end Structure;

