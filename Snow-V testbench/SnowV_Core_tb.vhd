LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SnowV_Core_tb IS
--PORT();
END ENTITY;


ARCHITECTURE Circuit OF SnowV_Core_tb IS

COMPONENT SnowV_Core IS
PORT(
     key_in: IN std_logic_vector(255 downto 0);
     iv_in: IN std_logic_vector(127 downto 0);
     keystream_out: INOUT std_logic_vector(127 downto 0);
     clk,rst,sel_mux_in,sel_mux_a_high2_in,sel_mux_r_0_in,sel_mux_r1_in,sel_mux_key_in: std_logic
     );

END COMPONENT;

SIGNAL key: std_logic_vector(255 downto 0):= X"faeadacabaaa9a8a7a6a5a4a3a2a1a0a5f5e5d5c5b5a59585756555453525150";
SIGNAL iv: std_logic_vector(127 downto 0):= X"1032547698badcfeefcdab8967452301";
SIGNAL sel_mux_in,sel_mux_r_0_in ,sel_mux_r1_in: std_logic := '1';
SIGNAL rst,clk,sel_mux_a_high2_in,sel_mux_key_in: std_logic:= '0';
SIGNAL keystream_out: std_logic_vector(127 downto 0);

BEGIN

DUT: SnowV_Core PORT MAP(key_in => key, iv_in => iv, keystream_out => keystream_out, clk => clk, rst => rst, 
sel_mux_in => sel_mux_in, sel_mux_a_high2_in => sel_mux_a_high2_in,
sel_mux_r_0_in => sel_mux_r_0_in ,
sel_mux_r1_in=> sel_mux_r1_in, sel_mux_key_in => sel_mux_key_in); 

clk <= NOT clk after 5ns;
rst<= '1','0' after 5ns;

PROCESS
BEGIN
wait for 5ns;
sel_mux_r_0_in <= '0';
sel_mux_in <='0';

FOR i IN 1 TO 15 LOOP

sel_mux_a_high2_in <= '1';   
wait for 10ns;

IF (i=14) THEN
 sel_mux_r1_in <='0';
 sel_mux_key_in <='0';
 ELSIF (i=15) THEN
 sel_mux_key_in <='1';
 end if;
 
 
END LOOP;

wait for 10ns;
sel_mux_r1_in <= '1';
 sel_mux_a_high2_in <= '0';
 wait for 70ns;

END PROCESS;

END ARCHITECTURE;