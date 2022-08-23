----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:05:40 06/09/2017 
-- Design Name: 
-- Module Name:    FSM_LEDS - ARCH 
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

entity FSM_LEDS is
    Port ( clk, ena, rst : in  STD_LOGIC;
           datos : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end FSM_LEDS;

architecture ARCH of FSM_LEDS is
type st is (borra_reg, guarda_muestra, stand_by);
signal estado : st:= borra_reg;
signal registro : STD_LOGIC_VECTOR(7 downto 0);

begin
	process(clk,ena,rst)
	begin
		if rst='1' then
			estado <= borra_reg;
		elsif rising_edge(clk) then
			case estado is
				
				when borra_reg =>
					registro <= (others => '0');
					if ena='1' then
						estado <= guarda_muestra;
					else
						estado <= borra_reg;
					end if;
				
				when guarda_muestra =>
					registro <= datos;
					estado <= stand_by;
					
				when stand_by =>
					if ena='1' then
						estado <= guarda_muestra;
					else
						estado <= stand_by;
					end if;
					
				when others =>
					estado <= stand_by;
				end case;
		end if;
	end process;

led <= registro;		

end ARCH;
