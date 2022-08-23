--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : TOP_IMPLEMENTACION.vhf
-- /___/   /\     Timestamp : 06/19/2017 00:23:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/Armando Leyva/Desktop/qwerty/FPGA/TERCER PARCIAL/Controlador_Memoria/TOP_IMPLEMENTACION.vhf" -w "C:/Users/Armando Leyva/Desktop/qwerty/FPGA/TERCER PARCIAL/Controlador_Memoria/TOP_IMPLEMENTACION.sch"
--Design Name: TOP_IMPLEMENTACION
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity TOP_MUSER_TOP_IMPLEMENTACION is
   port ( CLK_IN        : in    std_logic; 
          NUM_BIN       : in    std_logic_vector (11 downto 0); 
          RST_IN        : in    std_logic; 
          MUX_OUT       : out   std_logic_vector (3 downto 0); 
          SEGMENTOS_OUT : out   std_logic_vector (6 downto 0));
end TOP_MUSER_TOP_IMPLEMENTACION;

architecture BEHAVIORAL of TOP_MUSER_TOP_IMPLEMENTACION is
   signal XLXN_5        : std_logic;
   signal XLXN_31       : std_logic_vector (3 downto 0);
   signal XLXN_32       : std_logic_vector (3 downto 0);
   signal XLXN_33       : std_logic_vector (3 downto 0);
   signal XLXN_34       : std_logic_vector (3 downto 0);
   signal XLXN_36       : std_logic_vector (6 downto 0);
   signal XLXN_37       : std_logic_vector (6 downto 0);
   signal XLXN_38       : std_logic_vector (6 downto 0);
   signal XLXN_39       : std_logic_vector (6 downto 0);
   component DIVISOR_FRECUENCIA
      port ( RST     : in    std_logic; 
             CLK     : in    std_logic; 
             CLK_DIV : out   std_logic);
   end component;
   
   component MUX_DECODER7SEG
      port ( CLK       : in    std_logic; 
             RST       : in    std_logic; 
             C         : in    std_logic_vector (6 downto 0); 
             D         : in    std_logic_vector (6 downto 0); 
             M         : in    std_logic_vector (6 downto 0); 
             U         : in    std_logic_vector (6 downto 0); 
             MUX       : out   std_logic_vector (3 downto 0); 
             SEGMENTOS : out   std_logic_vector (6 downto 0));
   end component;
   
   component BCD_7SEGMENTOS_DECO
      port ( BCD_IN  : in    std_logic_vector (3 downto 0); 
             SEG_OUT : out   std_logic_vector (6 downto 0));
   end component;
   
   component SEGMENTOS_DECODER
      port ( num_bin  : in    std_logic_vector (11 downto 0); 
             UNIDADES : out   std_logic_vector (3 downto 0); 
             DECENAS  : out   std_logic_vector (3 downto 0); 
             CENTENAS : out   std_logic_vector (3 downto 0); 
             MILLARES : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : DIVISOR_FRECUENCIA
      port map (CLK=>CLK_IN,
                RST=>RST_IN,
                CLK_DIV=>XLXN_5);
   
   XLXI_3 : MUX_DECODER7SEG
      port map (C(6 downto 0)=>XLXN_38(6 downto 0),
                CLK=>XLXN_5,
                D(6 downto 0)=>XLXN_37(6 downto 0),
                M(6 downto 0)=>XLXN_39(6 downto 0),
                RST=>RST_IN,
                U(6 downto 0)=>XLXN_36(6 downto 0),
                MUX(3 downto 0)=>MUX_OUT(3 downto 0),
                SEGMENTOS(6 downto 0)=>SEGMENTOS_OUT(6 downto 0));
   
   XLXI_4 : BCD_7SEGMENTOS_DECO
      port map (BCD_IN(3 downto 0)=>XLXN_31(3 downto 0),
                SEG_OUT(6 downto 0)=>XLXN_36(6 downto 0));
   
   XLXI_5 : BCD_7SEGMENTOS_DECO
      port map (BCD_IN(3 downto 0)=>XLXN_32(3 downto 0),
                SEG_OUT(6 downto 0)=>XLXN_37(6 downto 0));
   
   XLXI_6 : BCD_7SEGMENTOS_DECO
      port map (BCD_IN(3 downto 0)=>XLXN_33(3 downto 0),
                SEG_OUT(6 downto 0)=>XLXN_38(6 downto 0));
   
   XLXI_7 : BCD_7SEGMENTOS_DECO
      port map (BCD_IN(3 downto 0)=>XLXN_34(3 downto 0),
                SEG_OUT(6 downto 0)=>XLXN_39(6 downto 0));
   
   XLXI_8 : SEGMENTOS_DECODER
      port map (num_bin(11 downto 0)=>NUM_BIN(11 downto 0),
                CENTENAS(3 downto 0)=>XLXN_33(3 downto 0),
                DECENAS(3 downto 0)=>XLXN_32(3 downto 0),
                MILLARES(3 downto 0)=>XLXN_34(3 downto 0),
                UNIDADES(3 downto 0)=>XLXN_31(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity TOP_IMPLEMENTACION is
   port ( CLK     : in    std_logic; 
          RsRx    : in    std_logic; 
          RST     : in    std_logic; 
          RW      : in    std_logic; 
          an      : out   std_logic_vector (3 downto 0); 
          Led     : out   std_logic_vector (7 downto 0); 
          MemAdr  : out   std_logic_vector (23 downto 0); 
          MemOE   : out   std_logic; 
          MemWR   : out   std_logic; 
          RamClk  : out   std_logic; 
          RamCS   : out   std_logic; 
          RamLB   : out   std_logic; 
          RamUB   : out   std_logic; 
          RamWait : out   std_logic; 
          seg     : out   std_logic_vector (6 downto 0); 
          MemDB   : inout std_logic_vector (15 downto 0));
end TOP_IMPLEMENTACION;

architecture BEHAVIORAL of TOP_IMPLEMENTACION is
   signal XLXN_37      : std_logic_vector (7 downto 0);
   signal XLXN_40      : std_logic_vector (15 downto 0);
   signal XLXN_41      : std_logic;
   signal XLXN_64      : std_logic_vector (23 downto 0);
   signal XLXN_70      : std_logic;
   signal XLXN_76      : std_logic_vector (15 downto 0);
   signal XLXN_77      : std_logic_vector (15 downto 0);
   signal XLXN_91      : std_logic_vector (11 downto 0);
   signal XLXN_96      : std_logic;
   signal XLXN_97      : std_logic;
   signal RamClk_DUMMY : std_logic;
   component CONTROLADOR
      port ( clk         : in    std_logic; 
             reset       : in    std_logic; 
             mem         : in    std_logic; 
             rw          : in    std_logic; 
             addr        : in    std_logic_vector (23 downto 0); 
             data_f2s    : in    std_logic_vector (15 downto 0); 
             dio_a       : inout std_logic_vector (15 downto 0); 
             ready       : out   std_logic; 
             we_n        : out   std_logic; 
             oe_n        : out   std_logic; 
             ce_a_n      : out   std_logic; 
             ub_a_n      : out   std_logic; 
             lb_a_n      : out   std_logic; 
             data_s2f_r  : out   std_logic_vector (15 downto 0); 
             data_s2f_ur : out   std_logic_vector (15 downto 0); 
             ad          : out   std_logic_vector (23 downto 0));
   end component;
   
   component CLK_DIV1
      port ( CLKIN_IN  : in    std_logic; 
             RST_IN    : in    std_logic; 
             CLKDV_OUT : out   std_logic; 
             CLK0_OUT  : out   std_logic);
   end component;
   
   component UART_RX
      port ( i_Clk       : in    std_logic; 
             i_RX_Serial : in    std_logic; 
             o_RX_DV     : out   std_logic; 
             o_RX_Byte   : out   std_logic_vector (7 downto 0));
   end component;
   
   component FSM_UART
      port ( clk_in    : in    std_logic; 
             rst       : in    std_logic; 
             ena       : in    std_logic; 
             rw        : in    std_logic; 
             serial_RX : in    std_logic_vector (7 downto 0); 
             mem_en    : out   std_logic; 
             data      : out   std_logic_vector (15 downto 0));
   end component;
   
   component DIRECCIONAMIENTO
      port ( clk  : in    std_logic; 
             rst  : in    std_logic; 
             rw   : in    std_logic; 
             ena  : in    std_logic; 
             addr : out   std_logic_vector (23 downto 0));
   end component;
   
   component CODIF
      port ( data_s2f_r  : in    std_logic_vector (15 downto 0); 
             data_s2f_ur : in    std_logic_vector (15 downto 0); 
             leds        : out   std_logic_vector (7 downto 0));
   end component;
   
   component TOP_MUSER_TOP_IMPLEMENTACION
      port ( CLK_IN        : in    std_logic; 
             NUM_BIN       : in    std_logic_vector (11 downto 0); 
             RST_IN        : in    std_logic; 
             MUX_OUT       : out   std_logic_vector (3 downto 0); 
             SEGMENTOS_OUT : out   std_logic_vector (6 downto 0));
   end component;
   
   component NUM_DISP
      port ( addr : in    std_logic_vector (23 downto 0); 
             num  : out   std_logic_vector (11 downto 0));
   end component;
   
   component OR_OP
      port ( rw     : in    std_logic; 
             mem_en : in    std_logic; 
             mem    : out   std_logic);
   end component;
   
begin
   RamClk <= RamClk_DUMMY;
   XLXI_1 : CONTROLADOR
      port map (addr(23 downto 0)=>XLXN_64(23 downto 0),
                clk=>RamClk_DUMMY,
                data_f2s(15 downto 0)=>XLXN_40(15 downto 0),
                mem=>XLXN_97,
                reset=>RST,
                rw=>RW,
                ad(23 downto 0)=>MemAdr(23 downto 0),
                ce_a_n=>RamCS,
                data_s2f_r(15 downto 0)=>XLXN_76(15 downto 0),
                data_s2f_ur(15 downto 0)=>XLXN_77(15 downto 0),
                lb_a_n=>RamLB,
                oe_n=>MemOE,
                ready=>RamWait,
                ub_a_n=>RamUB,
                we_n=>MemWR,
                dio_a(15 downto 0)=>MemDB(15 downto 0));
   
   XLXI_2 : CLK_DIV1
      port map (CLKIN_IN=>CLK,
                RST_IN=>RST,
                CLKDV_OUT=>RamClk_DUMMY,
                CLK0_OUT=>XLXN_41);
   
   XLXI_3 : UART_RX
      port map (i_Clk=>XLXN_41,
                i_RX_Serial=>RsRx,
                o_RX_Byte(7 downto 0)=>XLXN_37(7 downto 0),
                o_RX_DV=>XLXN_70);
   
   XLXI_10 : FSM_UART
      port map (clk_in=>XLXN_41,
                ena=>XLXN_70,
                rst=>RST,
                rw=>RW,
                serial_RX(7 downto 0)=>XLXN_37(7 downto 0),
                data(15 downto 0)=>XLXN_40(15 downto 0),
                mem_en=>XLXN_96);
   
   XLXI_14 : DIRECCIONAMIENTO
      port map (clk=>XLXN_41,
                ena=>XLXN_70,
                rst=>RST,
                rw=>RW,
                addr(23 downto 0)=>XLXN_64(23 downto 0));
   
   XLXI_16 : CODIF
      port map (data_s2f_r(15 downto 0)=>XLXN_76(15 downto 0),
                data_s2f_ur(15 downto 0)=>XLXN_77(15 downto 0),
                leds(7 downto 0)=>Led(7 downto 0));
   
   XLXI_17 : TOP_MUSER_TOP_IMPLEMENTACION
      port map (CLK_IN=>CLK,
                NUM_BIN(11 downto 0)=>XLXN_91(11 downto 0),
                RST_IN=>RST,
                MUX_OUT(3 downto 0)=>an(3 downto 0),
                SEGMENTOS_OUT(6 downto 0)=>seg(6 downto 0));
   
   XLXI_20 : NUM_DISP
      port map (addr(23 downto 0)=>XLXN_64(23 downto 0),
                num(11 downto 0)=>XLXN_91(11 downto 0));
   
   XLXI_21 : OR_OP
      port map (mem_en=>XLXN_96,
                rw=>RW,
                mem=>XLXN_97);
   
end BEHAVIORAL;


