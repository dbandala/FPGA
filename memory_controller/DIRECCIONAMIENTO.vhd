----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:31:21 06/17/2017 
-- Design Name: 
-- Module Name:    DIRECCIONAMIENTO - arch 
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

entity DIRECCIONAMIENTO is
    Port ( clk, rst, rw, ena: in  STD_LOGIC;
           addr : out  STD_LOGIC_VECTOR (23 downto 0));
end DIRECCIONAMIENTO;

architecture arch of DIRECCIONAMIENTO is
type tipo_estado is (reset, borrar_r, borrar_w, conteo_r, conteo_w);
signal estado, estado_sig : tipo_estado := reset;
signal divisor : STD_LOGIC_VECTOR (25 downto 0);
signal addr_cont_w : STD_LOGIC_VECTOR (23 downto 0);
signal addr_cont_r : STD_LOGIC_VECTOR (23 downto 0);

begin
	--RESET Y CAMBIO DE ESTADO
	process(rst,clk)
	begin
		if rst='1' then
			estado <= reset;
		elsif rising_edge(clk) then
			estado <= estado_sig;
		end if;
	end process;
	--LOGICA DEL ESTADO SIGUIENTE
	process(estado, rw, ena)
	begin
		case estado is
			
			when reset =>
				addr_cont_w <= (others => '0');
				addr_cont_r <= (others => '0');
				divisor <= (others => '0');
				if rw='0' then
					estado_sig <= conteo_w;
				else
					estado_sig <= conteo_r;
				end if;
			
			when borrar_w =>
				addr_cont_w <= (others => '0');
				estado_sig <= conteo_w;
			
			when conteo_w =>
				if ena='1' then
					addr_cont_w <= addr_cont_w + 1;
				end if;
				if rw='0' then
					estado_sig <= conteo_w;
				else
					estado_sig <= borrar_r;
				end if;
			
			when borrar_r =>
				addr_cont_r <= (others => '0');
				divisor <= (others => '0');
				estado_sig <= conteo_r;
				
			when conteo_r =>
				divisor <= divisor + 1;
				if rw='0' then
					estado_sig <= borrar_w;
				else
					estado_sig <= conteo_r;
				end if;
		end case;
	end process;
	
	process(divisor)
	begin
		if rising_edge(divisor(25)) and addr_cont_r <= addr_cont_w then
			addr_cont_r <= addr_cont_r + 1;
		end if;
	end process;
	
end arch;
