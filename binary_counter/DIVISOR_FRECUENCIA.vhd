----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:49 12/15/2014 
-- Design Name: 
-- Module Name:    DIVISOR_FRECUENCIA - DIVISOR_FRECUENCIA 
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
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DIVISOR_FRECUENCIA is
	 port(
				RST 		: in STD_LOGIC;
				CLK 		: in STD_LOGIC;
				CLK_DIV 	: out STD_LOGIC
	     );
end DIVISOR_FRECUENCIA;

architecture DIVISOR_FRECUENCIA of DIVISOR_FRECUENCIA is
signal cnt_clk: STD_LOGIC_VECTOR(15 downto 0);
begin
process (CLK,RST)
	begin
		if RST = '1' then
			cnt_clk <= (others => '0');
		else
			if rising_edge(CLK) then
				cnt_clk <= cnt_clk + 1;
			end if;
		end if;
	end process;
	CLK_DIV <= cnt_clk(15);

end DIVISOR_FRECUENCIA;

