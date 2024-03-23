--===========================================================================--
-- 
-- MUX 8:1
--
--  - MAY 2004
--  - UPV / EHU.  
--
--  - APPLIED ELECTRONICS RESEARCH TEAM (APERT)-
--  DEPARTMENT OF ELECTRONICS AND TELECOMMUNICATIONS - BASQUE COUNTRY UNIVERSITY
--
--
-- Design units   : FPGA SEMINAR
--
-- File name      : mux81.vhd
--
-- Purpose        : 
--                  
-- Library        : WORK
--
-- Dependencies   : IEEE.Std_Logic_1164
--
-- Simulator      : ModelSim SE version 5.5e on a WindowsXP PC
--===========================================================================--
-------------------------------------------------------------------------------
-- Revision list
-- Version   Author                 Date           Changes
--
-- 040513    Unai Bidarte     		13 May	 		--
-------------------------------------------------------------------------------
-- Description    : 8:1 Multiplexer
--                  
-------------------------------------------------------------------------------
-- Entity for mux81 Unit 		                       		     	  --
-------------------------------------------------------------------------------
-- 8:1 multiplexer = 4 LUTs + F5 + F6 = 1 CLB = 2 Slices



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;


entity mux81 is
   port (
   a, b, c, d, e, f, g, h: in std_logic;
	sel: in std_logic_vector(2 downto 0); 
	mux_out: out std_logic);
end mux81;

architecture arch of mux81 is
begin
process (sel, a, b, c, d, e, f, g, h)
begin
   case sel is
      when "000" => mux_out <= a;
      when "001" => mux_out <= b;
      when "010" => mux_out <= c;
      when "011" => mux_out <= d;
      when "100" => mux_out <= e;
      when "101" => mux_out <= f;
      when "110" => mux_out <= g;
      when "111" => mux_out <= h;
	   when others => mux_out <= a;
   end case;
end process;
end arch;
 