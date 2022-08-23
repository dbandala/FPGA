----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:40:34 06/18/2017 
-- Design Name: 
-- Module Name:    NUM_DISP - arch 
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

entity NUM_DISP is
    Port ( addr : in  STD_LOGIC_VECTOR (23 downto 0);
           num : out  STD_LOGIC_VECTOR (11 downto 0));
end NUM_DISP;

architecture arch of NUM_DISP is

begin
num <= addr(11 downto 0);

end arch;

