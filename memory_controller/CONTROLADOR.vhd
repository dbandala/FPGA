----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:07:09 06/17/2017 
-- Design Name: 
-- Module Name:    CONTROLADOR - arch 
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

entity CONTROLADOR is
    Port ( clk, reset : in  STD_LOGIC;
           mem : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (23 downto 0);
           data_f2s : in  STD_LOGIC_VECTOR (15 downto 0);
           ready : out  STD_LOGIC;
           data_s2f_r, data_s2f_ur : out  STD_LOGIC_VECTOR (15 downto 0);
           ad : out  STD_LOGIC_VECTOR (23 downto 0);
           we_n, oe_n : out  STD_LOGIC;
           dio_a : inout  STD_LOGIC_VECTOR (15 downto 0);
           ce_a_n, ub_a_n, lb_a_n : out  STD_LOGIC);
end CONTROLADOR;

architecture arch of CONTROLADOR is
type estado_FSM is (idle, rd1, rd2, wr1, wr2);
signal state_reg, state_next : estado_FSM;
signal data_f2s_reg, data_f2s_next : STD_LOGIC_VECTOR (15 downto 0);
signal data_s2f_reg, data_s2f_next : STD_LOGIC_VECTOR (15 downto 0);
signal addr_reg, addr_next : STD_LOGIC_VECTOR (23 downto 0);
signal we_buf, oe_buf, tri_buf : STD_LOGIC;
signal we_reg, oe_reg, tri_reg : STD_LOGIC;

begin
	-- ESTADOS Y REGISTROS DE INFORMACION
	process(clk, reset)
	begin
		if reset='1' then
			state_reg <= idle;
			addr_reg <= (others => '0');
			data_f2s_reg <= (others => '0');
			data_s2f_reg <= (others => '0');
			tri_reg <= '1';
			we_reg <= '1';
			oe_reg <= '1';
		elsif clk'event and clk='1' then
			state_reg <= state_next;
			addr_reg <= addr_next;
			data_f2s_reg <= data_f2s_next;
			data_s2f_reg <= data_s2f_next;
			tri_reg <= tri_buf;
			we_reg <= we_buf;
			oe_reg <= oe_buf;
		end if;
	end process;
	--LOGICA DEL COMPORTAMIENTO DEL SIGUIENTE ESTADO
	process(state_reg, mem, rw, dio_a, addr, data_f2s, data_f2s_reg, data_s2f_reg, addr_reg)
	begin
		addr_next <= addr_reg;
		data_f2s_next <= data_f2s_reg;
		data_s2f_next <= data_s2f_reg;
		ready <= '0';
		case state_reg is
		
			when idle =>
				if mem='0' then
					state_next <= idle;
				else
					addr_next <= addr;
					if rw='0' then		--ESCRIBIR EN LA MEMORIA
						state_next <= wr1;
						data_f2s_next <= data_f2s;
					else		--LEER DE LA DE MEMORIA
						state_next <= rd1;
					end if;
				end if;
				ready <= '1';			
	--DOS TIEMPOS PARA CADA PROCESO
			when wr1 =>
				state_next <= wr2;
				
			when wr2 =>
				state_next <= idle;
				
			when rd1 =>
				state_next <= rd2;
				
			when rd2 =>
				data_s2f_next <= dio_a;
				state_next <= idle;
		end case;
	end process;	
	--LOGICA DE INDICADORES DE SALIDA
	process(state_next)
	begin
		tri_buf <= '1';	--DEFAULT
		we_buf <= '1';
		oe_buf <= '1';
		case state_next is
			when idle =>
			
			when wr1 =>
				tri_buf <= '0';
				we_buf <= '0';
				
			when wr2 =>
				tri_buf <= '0';
				
			when rd1 =>
				oe_buf <= '0';
				
			when rd2 =>
				oe_buf <= '0';
		end case;
	end process;
	--PARA EL SISTEMA PRINCIPAL
	data_s2f_r <= data_s2f_reg;
	data_s2f_ur <= dio_a;
	--PARA LA MEMORIA SRAM
	we_n <= we_reg;
	oe_n <= oe_reg;
	ad <= addr_reg;
	-- I/O PARA LA MEMORIA SRAM
	ce_a_n <= '0';
	ub_a_n <= '0';
	lb_a_n <= '0';

	dio_a <= data_f2s_reg when tri_reg='0'
			else (others => 'Z');
end arch;

