----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:32 12/15/2014 
-- Design Name: 
-- Module Name:    BCD_7SEGMENTOS_DECO - BCD_7SEGMENTOS_DECO 
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

entity BCD_7SEGMENTOS_DECO is
		port(
        BCD_IN : in  STD_LOGIC_VECTOR(3 downto 0);
		  SEG_OUT: out STD_LOGIC_VECTOR(6 downto 0)
		 );
end BCD_7SEGMENTOS_DECO;

architecture BCD_7SEGMENTOS_DECO of BCD_7SEGMENTOS_DECO is
begin
process (BCD_IN) begin
        case BCD_IN is
            when "0000" =>  SEG_OUT <= "0000001"; -- 0
            when "0001" =>  SEG_OUT <= "1001111"; -- 1
            when "0010" =>  SEG_OUT <= "0010010"; -- 2
            when "0011" =>  SEG_OUT <= "0000110"; -- 3
            when "0100" =>  SEG_OUT <= "1001100"; -- 4
				when "0101" =>  SEG_OUT <= "0100100"; -- 5
				when "0110" =>  SEG_OUT <= "1100000"; -- 6
				when "0111" =>  SEG_OUT <= "0001110"; -- 7
				when "1000" =>  SEG_OUT <= "0000000"; -- 8
				when "1001" =>  SEG_OUT <= "0001100"; -- 9
				when others =>  SEG_OUT <= "1111111"; -- Nada
			end case;
end process;
end BCD_7SEGMENTOS_DECO;

