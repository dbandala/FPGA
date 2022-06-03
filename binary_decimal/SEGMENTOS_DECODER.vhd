----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:35:55 12/15/2014 
-- Design Name: 
-- Module Name:    SEGMENTOS_DECODER - SEGMENTOS_DECODER 
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

entity SEGMENTOS_DECODER is
		port(
        num_bin : in  STD_LOGIC_VECTOR(9 downto 0);
		  UNIDADES: out STD_LOGIC_VECTOR(3 downto 0);
		  DECENAS : out STD_LOGIC_VECTOR(3 downto 0);
		  CENTENAS: out STD_LOGIC_VECTOR(3 downto 0);
		  MILLARES: out STD_LOGIC_VECTOR(3 downto 0)
		 );
end SEGMENTOS_DECODER;

architecture SEGMENTOS_DECODER of SEGMENTOS_DECODER is
begin
    proceso_bcd: process(num_bin)
        variable z: STD_LOGIC_VECTOR(26 downto 0);
    begin
        -- Inicialización de datos en cero.
        z := (others => '0');
        -- Se realizan los primeros tres corrimientos.
        z(12 downto 3) := num_bin;
        for i in 0 to 6 
		  loop
            -- Unidades (4 bits).
            if z(13 downto 10) > 4 then
               z(13 downto 10) := z(13 downto 10) + 3;
            end if;
            -- Decenas (4 bits).
            if z(17 downto 14) > 4 then
                z(17 downto 14) := z(17 downto 14) + 3;
            end if;
            -- Centenas (4 bits).
            if z(21 downto 18) > 4 then
                z(21 downto 18) := z(21 downto 18) + 3;
            end if;
            -- Millares (4 bits).
            if z(25 downto 22) > 4 then
                z(25 downto 22) := z(25 downto 22) + 3;
            end if;				
            -- Corrimiento a la izquierda.
            z(25 downto 1) := z(24 downto 0);
        end loop;
        -- Pasando datos de variable Z, correspondiente a BCD.
        UNIDADES <= z(13 downto 10);
		  DECENAS  <= z(17 downto 14);
		  CENTENAS <= z(21 downto 18);
		  MILLARES <= z(25 downto 22);
    end process;

end SEGMENTOS_DECODER;

