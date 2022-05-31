--------------------------------------------------------------------------------
--
--   FileName:         pwm.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 12.1 Build 177 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 8/1/2013 Scott Larson
--     Initial Public Release
--   Version 2.0 1/9/2015 Scott Larson
--     Transistion between duty cycles always starts at center of pulse to avoid
--     anomalies in pulse shapes
--    
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY pwm IS
  GENERIC(
      sys_clk         : INTEGER := 50_000_000; 
      pwm_freq        : INTEGER := 100_000;    
      bits_resolution : INTEGER := 8;          
      phases          : INTEGER := 1);         
  PORT(
      clk       : IN  STD_LOGIC;                                    
      duty      : IN  STD_LOGIC_VECTOR(bits_resolution-1 DOWNTO 0); 
      pwm_out   : OUT STD_LOGIC_VECTOR(phases-1 DOWNTO 0));          
END pwm;

ARCHITECTURE logic OF pwm IS
  CONSTANT  period     :  INTEGER := sys_clk/pwm_freq;                      --number of clocks in one pwm period
  TYPE counters IS ARRAY (0 TO phases-1) OF INTEGER RANGE 0 TO period - 1;  --data type for array of period counters
  SIGNAL  count        :  counters := (OTHERS => 0);                        --array of period counters
  SIGNAL   half_duty_new  :  INTEGER RANGE 0 TO period/2 := 0;              --number of clocks in 1/2 duty cycle
  TYPE half_duties IS ARRAY (0 TO phases-1) OF INTEGER RANGE 0 TO period/2; --data type for array of half duty values
  SIGNAL  half_duty    :  half_duties := (OTHERS => 0);                     --array of half duty values (for each phase)
BEGIN
  PROCESS(clk)
  BEGIN
		IF(clk'EVENT AND clk = '1') THEN                                      --rising system clock edge
        half_duty_new <= conv_integer(duty)*period/(2**bits_resolution)/2;   --determine clocks in 1/2 duty cycle
      FOR i IN 0 to phases-1 LOOP       
        IF(count(0) = period - 1 - i*period/phases) THEN                       --end of period reached
          count(i) <= 0;                                                         --reset counter
          half_duty(i) <= half_duty_new;                                         --set most recent duty cycle value
        ELSE                                                                   --end of period not reached
          count(i) <= count(i) + 1;                                              --increment counter
        END IF;
      END LOOP;
      FOR i IN 0 to phases-1 LOOP                                            --control outputs for each phase
        IF(count(i) = half_duty(i)) THEN                                       --phase's falling edge reached
          pwm_out(i) <= '0';                                                     --deassert the pwm output
        ELSIF(count(i) = period - half_duty(i)) THEN                           --phase's rising edge reached
          pwm_out(i) <= '1';                                                     --assert the pwm output
        END IF;
      END LOOP;
    END IF;
  END PROCESS;
END logic;
