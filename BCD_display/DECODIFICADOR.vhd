----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:01:00 05/14/2017 
-- Design Name: 
-- Module Name:    DECODIFICADOR - decodifica 
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

entity DECODIFICADOR is
    Port ( BCD : in  STD_LOGIC_VECTOR (3 downto 0);
           disp : out  STD_LOGIC_VECTOR (6 downto 0));
end DECODIFICADOR;

architecture decodifica of DECODIFICADOR is

begin
disp<="0000001" when (BCD="0000") else 
		"1001111" when (BCD="0001") else
		"0010010" when (BCD="0010") else
		"0000110" when (BCD="0011") else
		"1001100" when (BCD="0100") else
		"0100100" when (BCD="0101") else
		"0100000" when (BCD="0110") else
		"0001111" when (BCD="0111") else
		"0000000" when (BCD="1000") else
		"0001100" when (BCD="1001") else
		"0001000" when (BCD="1010") else
		"1100000" when (BCD="1011") else
		"0110001" when (BCD="1100") else
		"1000010" when (BCD="1101") else
		"0110000" when (BCD="1110") 
		else "0111000";

end decodifica;

