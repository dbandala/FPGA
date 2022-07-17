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
        num_bin : in  STD_LOGIC_VECTOR(11 downto 0);
		  UNIDADES: out STD_LOGIC_VECTOR(3 downto 0);
		  DECENAS : out STD_LOGIC_VECTOR(3 downto 0);
		  CENTENAS: out STD_LOGIC_VECTOR(3 downto 0);
		  MILLARES: out STD_LOGIC_VECTOR(3 downto 0)
		 );
end SEGMENTOS_DECODER;

architecture SEGMENTOS_DECODER of SEGMENTOS_DECODER is
begin
    proceso_bcd: process(num_bin)
        variable z: STD_LOGIC_VECTOR(28 downto 0);
    begin
        -- Inicialización de datos en cero.
        z := (others => '0');
        -- Se realizan los primeros tres corrimientos.
        z(14 downto 3) := num_bin;
        for i in 0 to 8
		  loop
            -- Unidades (4 bits).
            if z(15 downto 12) > 4 then
               z(15 downto 12) := z(15 downto 12) + 3;
            end if;
            -- Decenas (4 bits).
            if z(19 downto 16) > 4 then
                z(19 downto 16) := z(19 downto 16) + 3;
            end if;
            -- Centenas (4 bits).
            if z(23 downto 20) > 4 then
                z(23 downto 20) := z(23 downto 20) + 3;
            end if;
            -- Millares (4 bits).
            if z(27 downto 24) > 4 then
                z(27 downto 24) := z(27 downto 24) + 3;
            end if;				
            -- Corrimiento a la izquierda.
            z(27 downto 1) := z(26 downto 0);
        end loop;
        -- Pasando datos de variable Z, correspondiente a BCD.
        UNIDADES <= z(15 downto 12);
		  DECENAS  <= z(19 downto 16);
		  CENTENAS <= z(23 downto 20);
		  MILLARES <= z(27 downto 24);
    end process;

end SEGMENTOS_DECODER;

