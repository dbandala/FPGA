----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:24:04 06/18/2017 
-- Design Name: 
-- Module Name:    CODIF - arch 
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

entity CODIF is
    Port ( data_s2f_r, data_s2f_ur : in  STD_LOGIC_VECTOR (15 downto 0);
           leds : out  STD_LOGIC_VECTOR (7 downto 0));
end CODIF;

architecture arch of CODIF is

begin
leds <= data_s2f_r(7 downto 0);

end arch;

