----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:05:55 06/17/2017 
-- Design Name: 
-- Module Name:    ADDR_READ - arch 
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

entity ADDR_READ is
    Port ( clk, rst, rw : in  STD_LOGIC;
			  w_cont : in STD_LOGIC_VECTOR (23 downto 0);
           addr_read : out  STD_LOGIC_VECTOR (23 downto 0));
end ADDR_READ;

architecture arch of ADDR_READ is
signal addr_cont : STD_LOGIC_VECTOR (23 downto 0) := (others => '0');

begin
	process(clk, rst, rw)
	begin
		if rst='1' then
			addr_cont <= (others => '0');
		elsif rw'event and rw='1' then
			addr_cont <= (others => '0');
		elsif rising_edge(clk) then
			if rw='1' and addr_cont <= w_cont then
				addr_cont <= addr_cont+1;
			end if;
		end if;
	end process;

addr_read <= addr_cont;
end arch;

