----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:38 06/17/2017 
-- Design Name: 
-- Module Name:    CONV1 - arch 
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

entity CONV1 is
    Port ( Serial_RX : in  STD_LOGIC_VECTOR (7 downto 0);
           Serial_RX_DATA : out  STD_LOGIC_VECTOR (15 downto 0));
end CONV1;

architecture arch of CONV1 is

begin
Serial_RX_DATA <= "00000000"&Serial_RX;

end arch;

