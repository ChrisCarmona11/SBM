--
-- Definition of a single port ROM for KCPSM program defined by ROM0.asm
-- and assmbled using KCPSM assembler.
--
-- Standard IEEE libraries
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
-- The Unisim Library is used to define Xilinx primitives. It is also used during
-- simulation. The source can be viewed at %XILINX%\vhdl\src\unisims\unisim_VCOMP.vhd
--  
library unisim;
use unisim.vcomponents.all;
--
--
entity ROM0 is
    Port (      address : in std_logic_vector(7 downto 0);
            instruction : out std_logic_vector(15 downto 0);
                    clk : in std_logic);
    end ROM0;
--
architecture low_level_definition of ROM0 is
--
-- Attributes to define ROM contents during implementation synthesis. 
-- The information is repeated in the generic map for functional simulation
--
attribute INIT_00 : string; 
attribute INIT_01 : string; 
attribute INIT_02 : string; 
attribute INIT_03 : string; 
attribute INIT_04 : string; 
attribute INIT_05 : string; 
attribute INIT_06 : string; 
attribute INIT_07 : string; 
attribute INIT_08 : string; 
attribute INIT_09 : string; 
attribute INIT_0A : string; 
attribute INIT_0B : string; 
attribute INIT_0C : string; 
attribute INIT_0D : string; 
attribute INIT_0E : string; 
attribute INIT_0F : string; 
--
-- Attributes to define ROM contents during implementation synthesis.
--
attribute INIT_00 of ram_256_x_16 : label is  "810432FF95066001950764019508650105FF04FF00FFE200803002AA02AA0300";
attribute INIT_01 of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_02 of ram_256_x_16 : label is  "000000000000000000000000000000000000000000000000000080F0E3014301";
attribute INIT_03 of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_04 of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_05 of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_06 of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_07 of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_08 of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_09 of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0A of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0B of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0C of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0D of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0E of ram_256_x_16 : label is  "0000000000000000000000000000000000000000000000000000000000000000";
attribute INIT_0F of ram_256_x_16 : label is  "8120000000000000000000000000000000000000000000000000000000000000";
--
begin
--
  --Instantiate the Xilinx primitive for a block RAM
  ram_256_x_16: RAMB4_S16
  --translate_off
  --INIT values repeated to define contents for functional simulation
  generic map (INIT_00 => X"810432FF95066001950764019508650105FF04FF00FFE200803002AA02AA0300",
               INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_02 => X"000000000000000000000000000000000000000000000000000080F0E3014301",
               INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
               INIT_0F => X"8120000000000000000000000000000000000000000000000000000000000000")
  --translate_on
  port map(    DI => "0000000000000000",
               EN => '1',
               WE => '0',
              RST => '0',
              CLK => clk,
             ADDR => address,
               DO => instruction(15 downto 0)); 
--
end low_level_definition;
--
------------------------------------------------------------------------------------
--
-- END OF FILE ROM0.vhd
--
------------------------------------------------------------------------------------

