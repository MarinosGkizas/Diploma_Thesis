LIBRARY IEEE;
USE IEEE.std_logic_1164.all;


ENTITY LFSR_Parallel IS
PORT(
     k_in : IN std_logic_vector(255 downto 0);
     iv_in,keystream_in: IN std_logic_vector(127 downto 0);
     t1_out,t2_out: OUT std_logic_vector(127 downto 0);
     clk,rst,sel_mux_in,sel_mux_a_high2_in: IN std_logic
     );
END ENTITY;

ARCHITECTURE Circuit OF LFSR_Parallel IS

COMPONENT Multiply_XOR IS
PORT(
     a_high,a_low,b_high,b_low: IN std_logic_vector(127 downto 0);
     a_high_new_out,b_high_new_out: OUT std_logic_vector(127 downto 0)
     );

END COMPONENT;

COMPONENT Register128 IS
GENERIC(N:integer:=128);
PORT(
     reg_in: IN std_logic_vector (N-1 downto 0);
     clk,rst: IN std_logic;
     reg_out:OUT std_logic_vector (N-1 downto 0)
     );
END COMPONENT;

COMPONENT Mux IS
GENERIC(N:integer);
PORT(
     a,b: IN std_logic_vector (N-1 downto 0);
     c: OUT std_logic_vector(N-1 downto 0);
     sel: IN std_logic
     );
END COMPONENT; 




SIGNAL a_high_out,a_low_out,b_high_out,b_low_out,a_high_new_out,b_high_new_out: std_logic_vector(127 downto 0);
SIGNAL mux_b_low_out,mux_a_low_out,mux_b_high_out,mux_a_high_out,mux_a_high2_out:std_logic_vector(127 downto 0);
SIGNAL a_high_xor_keystream:std_logic_vector(127 downto 0);
BEGIN 

mux_BL: Mux GENERIC MAP (N=>128) PORT MAP(a => b_high_out, b =>  (0 => '0', OTHERS => '0'), c => mux_b_low_out, sel => sel_mux_in);
mux_BH: Mux GENERIC MAP (N=>128) PORT MAP(a => b_high_new_out, b => k_in(255 downto 128), c => mux_b_high_out, sel => sel_mux_in);
mux_AL: Mux GENERIC MAP (N=>128) PORT MAP(a => a_high_out, b => iv_in(127 downto 0), c => mux_a_low_out, sel => sel_mux_in);
mux_AH: Mux GENERIC MAP (N=>128) PORT MAP(a => a_high_new_out, b => k_in(127 downto 0), c => mux_a_high_out, sel => sel_mux_in);
a_high_xor_keystream <= a_high_new_out XOR keystream_in;
mux_AH2: mux GENERIC MAP (N=>128) PORT MAP(a => mux_a_high_out, b => a_high_xor_keystream, c => mux_a_high2_out, sel => sel_mux_a_high2_in);

BL: Register128 PORT MAP(reg_in => mux_b_low_out, clk => clk, rst => rst, reg_out => b_low_out);
BH: Register128 PORT MAP(reg_in => mux_b_high_out, clk => clk, rst => rst, reg_out => b_high_out);
AL: Register128 PORT MAP(reg_in => mux_a_low_out, clk => clk, rst => rst, reg_out => a_low_out);
AH: Register128 PORT MAP(reg_in => mux_a_high2_out, clk => clk, rst => rst, reg_out => a_high_out);

MX: Multiply_XOR PORT MAP(a_high => a_high_out, a_low => a_low_out, b_high => b_high_out, b_low => b_low_out, a_high_new_out => a_high_new_out, b_high_new_out =>b_high_new_out);

t1_out <= b_high_out;
t2_out <= a_low_out;
END ARCHITECTURE;