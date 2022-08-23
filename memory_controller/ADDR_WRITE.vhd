----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:45 06/17/2017 
-- Design Name: 
-- Module Name:    ADDR_WRITE - arch 
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

entity ADDR_WRITE is
    Port ( clk, rst, rw, ena : in  STD_LOGIC;
           addr_write : out  STD_LOGIC_VECTOR (23 downto 0));
end ADDR_WRITE;

architecture arch of ADDR_WRITE is
signal addr_cont : STD_LOGIC_VECTOR (23 downto 0);

begin
	process(clk, rst, rw, ena)
	begin
		if rst='1' then
			addr_cont <= (others => '0');
		elsif rw'event and rw='0' then
			addr_cont <= (others => '0');
		elsif rising_edge(clk) then
			if rw='0' then
				if ena='1' then
					addr_cont <= addr_cont+1;
				end if;
			end if;
		end if;
	end process;
end arch;

