----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:28:04 05/24/2017 
-- Design Name: 
-- Module Name:    fsm - fsm 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm is
    Port ( clk,rst,sw : in  STD_LOGIC;
           db : out  STD_LOGIC);
end fsm;

architecture fsm of fsm is
constant N: integer :=19; --2^N*20 ns= 10 ms
signal q_reg, q_next: unsigned(N-1 downto 0);
signal m_tick: std_logic;
type eg_state_type is 	(zero, wait1_1, wait1_2,wait1_3, 
								one, wait0_1, wait0_2, wait0_3);
signal state_reg, state_next: eg_state_type;
begin
--===========================================
--Contador para generar 10 ms para tick
--(2^19*20 ns)
--===========================================
process(clk, rst)
begin
	if (clk' event and clk='1') then
		q_reg <= q_next;
	end if;
end process;
--Estado lógico siguiente
q_next <= q_reg + 1;
-- Tick de salida
m_tick <= 	'1' when q_reg=0 else
				'0';
--==========================================
--Rebote de la FSM
--==========================================
--Estado de registro
process(clk, rst)
begin
	if(rst='1') then
		state_reg <= zero;
	elsif (clk' event and clk = '1') then
		state_reg <= state_next;
	end if;
end process;
-- Estado siguiente/salida lógica
process (state_reg,sw,m_tick)
begin
state_next <= state_reg; --Regresar al mismo estado
db <=  '0'; --0
case state_reg is
	when zero =>
		if sw='1' then
			state_next <= wait1_1;
		end if;
	when wait1_1 =>
		if sw='0' then
			state_next <= zero;
		else
			if m_tick='1' then
				state_next <= wait1_2;
			end if;
		end if;
	when wait1_2 =>
		if sw='0' then
			state_next <= zero;
		else
			if m_tick='1' then
				state_next <= wait1_3;
			end if;
		end if;
	when wait1_3 =>
		if sw='0' then
			state_next <= zero;
		else
			if m_tick='1' then
				state_next <= one;
			end if;
		end if;
	when one =>
		db <='1';
		if sw='0' then
			state_next <= wait0_1;
		end if;
	when wait0_1 =>
		db <='1';
		if sw='1' then
			state_next <= one;
		else
			if m_tick='1' then
				state_next <= wait0_2;
			end if;
		end if;
	when wait0_2 =>
		db <='1';
		if sw='1' then
			state_next <= one;
		else
			if m_tick='1' then
				state_next <= wait0_3;
			end if;
		end if;
	when wait0_3 =>
		db <='1';
		if sw='1' then
			state_next <= one;
		else
			if m_tick='1' then
				state_next <= zero;
			end if;
		end if;
	end case;
end process;
end fsm;

