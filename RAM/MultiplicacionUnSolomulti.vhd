----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:48:51 01/30/2024 
-- Design Name: 
-- Module Name:    MultiplicacionUnSolomulti - Behavioral 
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

library WORK; 

entity mult is 
 port ( 
 	entrada_a,entrada_b : in std_logic_vector(18 downto 0); 
 	salida_c  : out std_logic_vector(38 downto 0));
 end mult; 
 
 architecture arch of mult is 
 
 begin 
 salida_c <= entrada_a*entrada_b;
 
 end arch;
 
