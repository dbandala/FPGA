----------------------------------------------------------------------------------
-- Compañía:            Estado Finito
-- Ingeniero:           Carlos Ramos
--
-- Fecha de creación:   2016/10/22 21:10:41
-- Nombre del módulo:   contador_v1 - Behavioral
-- Descripción:
--   Contador de cuatro bits, de 0 a 15.
--   Simple, con una única entrada, el reloj, y una única salida, el contador.
--
-- Revisión:
--   Revisión 0.01 - Archivo creado.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador_v1 is
    PORT (
        clk, a, rst, en : IN  STD_LOGIC;
        cnt_out: OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
end contador_v1;

architecture Behavioral of contador_v1 is
-- Señal temporal para el contador.
signal cnt_tmp: STD_LOGIC_VECTOR(11 DOWNTO 0) := "000000000000";

begin
process (clk, rst) 
begin
   if rst='1' then 
      cnt_tmp <= (others => '0');
   elsif clk='1' and clk'event then
      if en='1' then
         if a='1' then   
            cnt_tmp <= cnt_tmp + 1;
         else
            cnt_tmp <= cnt_tmp - 1;
         end if;
      end if;
   end if;
end process;

cnt_out <= cnt_tmp;

end Behavioral;
