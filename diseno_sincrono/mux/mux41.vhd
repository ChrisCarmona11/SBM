--===========================================================================--
-- 
-- MUX 4:1
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
-- File name      : mux41.vhd
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
-- Description    : 4:1 Multiplexer
--                  
-------------------------------------------------------------------------------
-- Entity for mux41 Unit 		                       		     	  --
-------------------------------------------------------------------------------
-- 4:1 multiplexer = 2 LUTs + F5 = 1 Slice



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;


entity mux41 is
   port (
   a, b, c, d: in std_logic;
	sel: in std_logic_vector(1 downto 0); 
	mux_out: out std_logic);
end mux41;

architecture arch of mux41 is
begin
process (sel, a, b, c, d)
begin
   case sel is
      when "00" => mux_out <= a;
      when "01" => mux_out <= b;
      when "10" => mux_out <= c;
      when "11" => mux_out <= d;
	   when others => mux_out <= a;
   end case;
end process;
end arch;
 
