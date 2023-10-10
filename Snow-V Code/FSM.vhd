LIBRARY IEEE;
USE IEEE.std_logic_1164.all;


ENTITY FSM IS
PORT(
     lfsr_t1_in,lfsr_t2_in: IN std_logic_vector(127 downto 0);
     k_in: IN std_logic_vector(255 downto 0);
     clk,rst,sel_mux_r_0_in,sel_mux_r1_in,sel_mux_key_in: IN std_logic;
     keystream_out: OUT std_logic_vector(127 downto 0)
     );
END ENTITY;

ARCHITECTURE Circuit OF FSM IS

COMPONENT Modulo32 IS
GENERIC(N: integer:=128);
PORT( 
     mod32_in0,mod32_in1: IN std_logic_vector (N-1 downto 0);
     mod32_out: OUT std_logic_vector (N-1 downto 0)
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

COMPONENT PermutationBO IS
PORT(
     pbo_in: IN std_logic_vector(127 downto 0);
     pbo_out: OUT std_logic_vector(127 downto 0)
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

COMPONENT AES_C1 IS
PORT(
     aes_c1_in: IN std_logic_vector (127 downto 0);
     c1: IN std_logic_vector (127 downto 0);
     aes_c1_out: OUT std_logic_vector (127 downto 0)
     );
END COMPONENT;

COMPONENT AES_C2 IS
PORT(
     aes_c2_in: IN std_logic_vector (127 downto 0);
     c2: IN std_logic_vector (127 downto 0);
     aes_c2_out: OUT std_logic_vector (127 downto 0)
     );
END COMPONENT;

SIGNAL r3_out_xor_t2_in,permuation_out,r1_out,r3_out,r2_out,key_xor_permuation: std_logic_vector(127 downto 0);
SIGNAL mux_key_out,mux_r1_out,mux_r2_out,mux_r3_out,mux_r1_0_out,mux_r2_0_out,mux_r3_0_out: std_logic_vector(127 downto 0);
SIGNAL aes2_out,aes1_out,mod32b_out,mod32a_out: std_logic_vector(127 downto 0);

BEGIN


r3_out_xor_t2_in <= lfsr_t2_in XOR r3_out;
mod32a: Modulo32 PORT MAP(mod32_in0 => r3_out_xor_t2_in, mod32_in1 => r2_out, mod32_out => mod32a_out);


AES2: AES_C2 PORT MAP(aes_c2_in => r2_out, c2 => (0 => '0', OTHERS => '0'), aes_c2_out => aes2_out);
mux_r3_0: Mux GENERIC MAP(N => 128) PORT MAP(a => aes2_out, b => (0 => '0', OTHERS => '0'), c => mux_r3_0_out, sel => sel_mux_r_0_in);
r3: Register128 PORT MAP(reg_in => mux_r3_0_out, clk => clk, rst => rst, reg_out => r3_out);

AES1: AES_C1 PORT MAP(aes_c1_in => r1_out, c1 => (0 => '0', OTHERS => '0'), aes_c1_out => aes1_out);
mux_r2_0: Mux GENERIC MAP(N => 128) PORT MAP(a => aes1_out, b => (0 => '0', OTHERS => '0'), c => mux_r2_0_out, sel => sel_mux_r_0_in);
r2: Register128 PORT MAP(reg_in => mux_r2_0_out, clk => clk, rst => rst, reg_out => r2_out);


mux_K: Mux GENERIC MAP(N => 128) PORT MAP(a => k_in(127 downto 0), b => k_in(255 downto 128), c => mux_key_out, sel => sel_mux_key_in);
pbo: PermutationBO PORT MAP(pbo_in => mod32a_out , pbo_out => permuation_out);
key_xor_permuation <= mux_key_out XOR permuation_out;
mux_r1: Mux GENERIC MAP(N => 128) PORT MAP(a => key_xor_permuation, b => permuation_out, c => mux_r1_out, sel => sel_mux_r1_in);
mux_r1_0: Mux GENERIC MAP(N => 128) PORT MAP(a => mux_r1_out, b => (0 => '0', OTHERS => '0'), c => mux_r1_0_out, sel => sel_mux_r_0_in);
r1: Register128 PORT MAP(reg_in => mux_r1_0_out, clk => clk, rst => rst, reg_out => r1_out);


mod32b: Modulo32 PORT MAP(mod32_in0 => r1_out, mod32_in1 => lfsr_t1_in, mod32_out => mod32b_out);
keystream_out <= r2_out XOR mod32b_out;

END ARCHITECTURE;
