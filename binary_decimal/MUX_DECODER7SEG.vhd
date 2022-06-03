-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : RX_PRUEBA_DLP
-- Author      : PULPO
-- Company     : ABAD Corp
--
-------------------------------------------------------------------------------
--
-- File        : e:\My_Designs\DESING_DLP\RX_PRUEBA_DLP\compile\MUX_DECODER7SEG.vhd
-- Generated   : 12/15/14 19:28:01
-- From        : e:\My_Designs\DESING_DLP\RX_PRUEBA_DLP\src\MUX_DECODER7SEG.asf
-- By          : FSM2VHDL ver. 5.0.7.2
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_signed.all;

entity MUX_DECODER7SEG is 
	port (
		C: in STD_LOGIC_VECTOR (6 downto 0);
		CLK: in STD_LOGIC;
		D: in STD_LOGIC_VECTOR (6 downto 0);
		M: in STD_LOGIC_VECTOR (6 downto 0);
		RST: in STD_LOGIC;
		U: in STD_LOGIC_VECTOR (6 downto 0);
		MUX: out STD_LOGIC_VECTOR (3 downto 0);
		SEGMENTOS: out STD_LOGIC_VECTOR (6 downto 0));
end MUX_DECODER7SEG;

architecture MUX_DECODER7SEG_arch of MUX_DECODER7SEG is

-- SYMBOLIC ENCODED state machine: Sreg0
type Sreg0_type is (
    D3_S, RESET, D2_S, D1_S, D0_S
);
-- attribute enum_encoding of Sreg0_type: type is ... -- enum_encoding attribute is not supported for symbolic encoding

signal Sreg0, NextState_Sreg0: Sreg0_type;

-- Declarations of pre-registered internal signals

begin

-- concurrent signals assignments

-- Diagram ACTION

----------------------------------------------------------------------
-- Machine: Sreg0
----------------------------------------------------------------------
------------------------------------
-- Next State Logic (combinatorial)
------------------------------------
Sreg0_NextState: process (C, D, M, U, Sreg0)
begin
	NextState_Sreg0 <= Sreg0;
	-- Set default values for outputs and signals
	MUX <= "1111";
	SEGMENTOS <= "1111111";
	case Sreg0 is
		when D3_S =>
			---------------------------------------
			---------------------------------------
			MUX <= "0111";
			---------------------------------------
			---------------------------------------
			SEGMENTOS <= M;
			---------------------------------------
			---------------------------------------
			NextState_Sreg0 <= D2_S;
		when RESET =>
			---------------------------------------
			---------------------------------------
			MUX <= "1111";
			---------------------------------------
			---------------------------------------
			SEGMENTOS <= "1111111";
			---------------------------------------
			---------------------------------------
			NextState_Sreg0 <= D3_S;
		when D2_S =>
			---------------------------------------
			---------------------------------------
			MUX <= "1011";
			---------------------------------------
			---------------------------------------
			SEGMENTOS <= C;
			---------------------------------------
			---------------------------------------
			NextState_Sreg0 <= D1_S;
		when D1_S =>
			---------------------------------------
			---------------------------------------
			MUX <= "1101";
			---------------------------------------
			---------------------------------------
			SEGMENTOS <= D;
			---------------------------------------
			---------------------------------------
			NextState_Sreg0 <= D0_S;
		when D0_S =>
			---------------------------------------
			---------------------------------------
			MUX <= "1110";
			---------------------------------------
			---------------------------------------
			SEGMENTOS <= U;
			---------------------------------------
			---------------------------------------
			NextState_Sreg0 <= D3_S;
--vhdl_cover_off
		when others =>
			null;
--vhdl_cover_on
	end case;
end process;

------------------------------------
-- Current State Logic (sequential)
------------------------------------
Sreg0_CurrentState: process (CLK, rst)
begin
	if RST = '1' then
		Sreg0 <= RESET;
	elsif CLK'event and CLK = '1' then
		Sreg0 <= NextState_Sreg0;
	end if;
end process;

end MUX_DECODER7SEG_arch;
