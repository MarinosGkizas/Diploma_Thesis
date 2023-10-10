LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SnowV_Core IS
PORT(
     key_in: IN std_logic_vector(255 downto 0);
     iv_in: IN std_logic_vector(127 downto 0);
     keystream_out: INOUT std_logic_vector(127 downto 0);
     clk,rst,sel_mux_in,sel_mux_a_high2_in,sel_mux_r_0_in,sel_mux_r1_in,sel_mux_key_in: std_logic
     );

END ENTITY;

ARCHITECTURE Circuit OF SnowV_Core IS

COMPONENT LFSR_Parallel IS
PORT(
     k_in : IN std_logic_vector(255 downto 0);
     iv_in,keystream_in: IN std_logic_vector(127 downto 0);
     t1_out,t2_out: OUT std_logic_vector(127 downto 0);
     clk,rst,sel_mux_in,sel_mux_a_high2_in: IN std_logic
     );
END COMPONENT;

COMPONENT FSM IS
PORT(
     lfsr_t1_in,lfsr_t2_in: IN std_logic_vector(127 downto 0);
     k_in: IN std_logic_vector(255 downto 0);
     clk,rst,sel_mux_r_0_in,sel_mux_r1_in,sel_mux_key_in: IN std_logic;
     keystream_out: OUT std_logic_vector(127 downto 0)
     );
END COMPONENT;

SIGNAL t1,t2 : std_logic_vector(127 downto 0);

BEGIN
LFSR_inst: LFSR_Parallel PORT MAP(k_in => key_in, iv_in => iv_in,keystream_in => keystream_out, 
t1_out => t1, t2_out => t2,
clk => clk, rst => rst, 
sel_mux_in => sel_mux_in ,sel_mux_a_high2_in => sel_mux_a_high2_in);
 
FSM_inst: FSM PORT MAP(lfsr_t1_in => t1, lfsr_t2_in => t2, k_in => key_in, 
clk => clk, rst => rst, 
keystream_out => keystream_out, sel_mux_r_0_in => sel_mux_r_0_in ,
sel_mux_r1_in=> sel_mux_r1_in, sel_mux_key_in => sel_mux_key_in);
END ARCHITECTURE;
