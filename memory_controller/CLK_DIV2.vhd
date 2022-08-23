----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:12:54 06/18/2017 
-- Design Name: 
-- Module Name:    CLK_DIV2 - arch 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLK_DIV2 is
	 port(
				rst 		: in STD_LOGIC;
				clk 		: in STD_LOGIC;
				clk_div 	: out STD_LOGIC
	     );
end CLK_DIV2;

architecture arch of CLK_DIV2 is
signal cnt_clk: STD_LOGIC_VECTOR(26 downto 0);
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
end arch;

