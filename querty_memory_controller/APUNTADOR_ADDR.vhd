---------------------------------------------------------------------------------------------------
--
-- Title       : APUNTADOR_ADDR
-- Design      : PRUEBA_RAM
-- Author      : ABAD
-- Company     : ABAD_Corp
--
---------------------------------------------------------------------------------------------------
--
-- File        : APUNTADOR_ADDR.vhd
-- Generated   : Mon Nov 16 14:03:46 2009
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {APUNTADOR_ADDR} architecture {APUNTADOR_ADDR}}
---------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_unsigned.all;
---------------------------------------------------------------------------------------------------
entity APUNTADOR_ADDR is
	 port(
		 CLK : in STD_LOGIC;
		 RST : in STD_LOGIC;	  
		 E : in STD_LOGIC;
		 DDR_OUT : out STD_LOGIC_VECTOR(23 downto 0) 
	     );
end APUNTADOR_ADDR;
---------------------------------------------------------------------------------------------------
architecture APUNTADOR_ADDR of APUNTADOR_ADDR is
signal Conta_Reloj: STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
begin  
---------------------------------------------------------------------------------------------------	
process(clk,rst)	 
	begin 
		if rst='1' then
		Conta_Reloj <= (others =>'0');
			elsif	clk'event and clk='1' then 
				IF E='1' THEN
					Conta_Reloj <= Conta_Reloj + 1;
				ELSE
					Conta_Reloj <= Conta_Reloj;	 
			end if;	 
	end if;
end process;
DDR_OUT <= Conta_Reloj;  
---------------------------------------------------------------------------------------------------
end APUNTADOR_ADDR;
---------------------------------------------------------------------------------------------------		  	 

