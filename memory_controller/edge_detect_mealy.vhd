			 library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------------------------------
entity edge_detect_mealy is
	port (
		clk,rst: in std_logic;
		level  : in std_logic;
		tick   : out std_logic
	     );
end edge_detect_mealy;
---------------------------------------------------------------------
architecture mealy_arch of edge_detect_mealy is
type state_type is (zero,one);
signal state_reg, state_next: state_type;
---------------------------------------------------------------------
begin
--state register
process (clk,rst)
begin
	if (rst='1') then
	  state_reg<=zero;
	elsif (clk'event and clk='1') then
	  state_reg<=state_next;
	end if;
end process;
---------------------------------------------------------------------
--next-state/output logic
process (state_reg,level)
begin
state_next<=state_reg;
tick<='0';
  case state_reg is
	when zero=>
	  if level='1' then
	    state_next<=one;
	    tick<='1';
	  end if;
	when one=>
	  if level='0' then
	    state_next<=zero;
	  end if;
  end case;
end process;
end mealy_arch;
