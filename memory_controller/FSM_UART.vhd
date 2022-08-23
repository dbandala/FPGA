----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:36:39 06/17/2017 
-- Design Name: 
-- Module Name:    FSM_UART - arch 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM_UART is
    Port ( clk_in, rst, ena, rw : in  STD_LOGIC;
           serial_RX : in  STD_LOGIC_VECTOR (7 downto 0);
           data : out  STD_LOGIC_VECTOR (15 downto 0);
           mem_en : out  STD_LOGIC);
end FSM_UART;

architecture arch of FSM_UART is
type st is (borra_reg, guarda_muestra, stand1, stand2, stand3, stand4);
signal estado, estado_sig : st:= borra_reg;
signal registro : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal mem_en_reg : STD_LOGIC;

begin
	process(clk_in,rst)
	begin
		if rst='1' then
			estado <= borra_reg;
		elsif rw='1' then
			estado <= borra_reg;
		elsif rising_edge(clk_in) then
			estado <= estado_sig;
		end if;
	end process;
	
	--LOGICA DEL SIGUIENTE ESTADO
	process(estado, estado_sig, ena, serial_RX)
	begin
		case estado is
		
			when borra_reg =>
				registro <= (others => '0');
				mem_en_reg <= '0';
				if ena='1' then
					estado_sig <= guarda_muestra;
				else
					estado_sig <= borra_reg;
				end if;
			
			when guarda_muestra =>
				registro(7 downto 0) <= serial_RX;
				mem_en_reg <= '1';
				estado_sig <= stand1;
				
			when stand1 =>
				estado_sig <= stand2;
				
			when stand2 =>
				estado_sig <= stand3;
			
			when stand3 =>
				estado_sig <= stand4;
				
			when stand4 =>
				estado_sig <= borra_reg;
		end case;			
	end process;
	
	data <= registro;
	mem_en <= mem_en_reg;

end arch;

