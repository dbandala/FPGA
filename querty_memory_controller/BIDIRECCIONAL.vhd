---------------------------------------------------------------------------------------------------
--
-- Title       : BIDIRECCIONAL
-- Design      : PRUEBA_RAM
-- Author      : ABAD
-- Company     : ABAD_Corp
--
---------------------------------------------------------------------------------------------------
--
-- File        : BIDIRECCIONAL.vhd
-- Generated   : Mon Nov 16 12:40:19 2009
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {BIDIRECCIONAL} architecture {BIDIRECCIONAL}}

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bidir IS
    PORT(
        bidir   : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        WR, clk : IN STD_LOGIC;
        inp     : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        outp    : OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END bidir;

ARCHITECTURE maxpld OF bidir IS
SIGNAL  a  : STD_LOGIC_VECTOR (7 DOWNTO 0);  -- DFF that stores 
                                             -- value from input.
SIGNAL  b  : STD_LOGIC_VECTOR (7 DOWNTO 0);  -- DFF that stores 

BEGIN                                        -- feedback value.
    PROCESS(clk)
    BEGIN
		IF clk = '1' AND clk'EVENT THEN  -- Creates the flipflops
        a <= inp;                    
        outp <= b;                  
      END IF;
    END PROCESS;  
	 
    PROCESS (WR, bidir,a)          -- Behavioral representation 
        BEGIN                    -- of tri-states.
        IF( WR = '1') THEN
            bidir <= "ZZZZZZZZZZZZZZZZ";
            b <= bidir(7 DOWNTO 0);
        ELSE
            bidir <= "00000000"&a; 
            b <= bidir(7 DOWNTO 0);
        END IF;
    END PROCESS;

END maxpld;
