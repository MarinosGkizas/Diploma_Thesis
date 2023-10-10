LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY Multiply_XOR IS
PORT(
     a_high,a_low,b_high,b_low: IN std_logic_vector(127 downto 0);
     a_high_new_out,b_high_new_out: OUT std_logic_vector(127 downto 0)
     );

END ENTITY;

ARCHITECTURE Circuit OF Multiply_XOR IS

COMPONENT Subunits IS
PORT(
     subunits_in,coeff_in: IN std_logic_vector(15 downto 0);
     subunits_out: OUT std_logic_vector(15 downto 0)
     );
END COMPONENT;


COMPONENT Inv_Subunits IS
PORT(
     inv_subunits_in,coeff_in: IN std_logic_vector(15 downto 0);
     inv_subunits_out: OUT std_logic_vector(15 downto 0)
     );
END COMPONENT;

--Signals for A PART
SIGNAL sub_a0_out,sub_a1_out,sub_a2_out,sub_a3_out,sub_a4_out,sub_a5_out,sub_a6_out,sub_a7_out: std_logic_vector(15 downto 0);
SIGNAL mul_a0_out,mul_a1_out,mul_a2_out,mul_a3_out,mul_a4_out,mul_a5_out,mul_a6_out,mul_a7_out: std_logic_vector(15 downto 0);
SIGNAL inv_sub_a0_out,inv_sub_a1_out,inv_sub_a2_out,inv_sub_a3_out,inv_sub_a4_out,inv_sub_a5_out,inv_sub_a6_out,inv_sub_a7_out: std_logic_vector(15 downto 0);
SIGNAL mul_a8_out,mul_a9_out,mul_a10_out,mul_a11_out,mul_a12_out,mul_a13_out,mul_a14_out,mul_a15_out: std_logic_vector(15 downto 0);

--Signals for B PART
SIGNAL sub_b0_out,sub_b1_out,sub_b2_out,sub_b3_out,sub_b4_out,sub_b5_out,sub_b6_out,sub_b7_out: std_logic_vector(15 downto 0);
SIGNAL mul_b0_out,mul_b1_out,mul_b2_out,mul_b3_out,mul_b4_out,mul_b5_out,mul_b6_out,mul_b7_out: std_logic_vector(15 downto 0);
SIGNAL inv_sub_b0_out,inv_sub_b1_out,inv_sub_b2_out,inv_sub_b3_out,inv_sub_b4_out,inv_sub_b5_out,inv_sub_b6_out,inv_sub_b7_out: std_logic_vector(15 downto 0);
SIGNAL mul_b8_out,mul_b9_out,mul_b10_out,mul_b11_out,mul_b12_out,mul_b13_out,mul_b14_out,mul_b15_out: std_logic_vector(15 downto 0);

--Signals for XOR A PART
SIGNAL xor_a0,xor_a1,xor_a2,xor_a3,xor_a4,xor_a5,xor_a6,xor_a7:std_logic_vector(15 downto 0);
SIGNAL xor_a8,xor_a9,xor_a10,xor_a11,xor_a12,xor_a13,xor_a14,xor_a15:std_logic_vector(15 downto 0);

--Signals for XOR B PART
SIGNAL xor_b0,xor_b1,xor_b2,xor_b3,xor_b4,xor_b5,xor_b6,xor_b7:std_logic_vector(15 downto 0);
SIGNAL xor_b8,xor_b9,xor_b10,xor_b11,xor_b12,xor_b13,xor_b14,xor_b15:std_logic_vector(15 downto 0);

BEGIN 
-- alpha is produced
sub_a0: Subunits PORT MAP (subunits_in => a_low(15 downto 0), coeff_in => x"990f",subunits_out => sub_a0_out);
sub_a1: Subunits PORT MAP (subunits_in => a_low(31 downto 16), coeff_in => x"990f",subunits_out => sub_a1_out);
sub_a2: Subunits PORT MAP (subunits_in => a_low(47 downto 32), coeff_in => x"990f",subunits_out => sub_a2_out);
sub_a3: Subunits PORT MAP (subunits_in => a_low(63 downto 48), coeff_in => x"990f",subunits_out => sub_a3_out);
sub_a4: Subunits PORT MAP (subunits_in => a_low(79 downto 64), coeff_in => x"990f",subunits_out => sub_a4_out);
sub_a5: Subunits PORT MAP (subunits_in => a_low(95 downto 80), coeff_in => x"990f",subunits_out => sub_a5_out);
sub_a6: Subunits PORT MAP (subunits_in => a_low(111 downto 96), coeff_in => x"990f",subunits_out => sub_a6_out);
sub_a7: Subunits PORT MAP (subunits_in => a_low(127 downto 112), coeff_in => x"990f",subunits_out => sub_a7_out);

--alpha^-1 is produced
inv_sub_a0: inv_Subunits PORT MAP (inv_subunits_in => a_high(15 downto 0), coeff_in => x"cc87",inv_subunits_out => inv_sub_a0_out);
inv_sub_a1: inv_Subunits PORT MAP (inv_subunits_in => a_high(31 downto 16), coeff_in => x"cc87",inv_subunits_out => inv_sub_a1_out);
inv_sub_a2: inv_Subunits PORT MAP (inv_subunits_in => a_high(47 downto 32), coeff_in => x"cc87",inv_subunits_out => inv_sub_a2_out);
inv_sub_a3: inv_Subunits PORT MAP (inv_subunits_in => a_high(63 downto 48), coeff_in => x"cc87",inv_subunits_out => inv_sub_a3_out);
inv_sub_a4: inv_Subunits PORT MAP (inv_subunits_in => a_high(79 downto 64), coeff_in => x"cc87",inv_subunits_out => inv_sub_a4_out);
inv_sub_a5: inv_Subunits PORT MAP (inv_subunits_in => a_high(95 downto 80), coeff_in => x"cc87",inv_subunits_out => inv_sub_a5_out);
inv_sub_a6: inv_Subunits PORT MAP (inv_subunits_in => a_high(111 downto 96), coeff_in => x"cc87",inv_subunits_out => inv_sub_a6_out);
inv_sub_a7: inv_Subunits PORT MAP (inv_subunits_in => a_high(127 downto 112), coeff_in => x"cc87",inv_subunits_out => inv_sub_a7_out);

-- beta is produced
sub_b0: Subunits PORT MAP (subunits_in => b_low(15 downto 0), coeff_in => x"c963",subunits_out => sub_b0_out);
sub_b1: Subunits PORT MAP (subunits_in => b_low(31 downto 16), coeff_in => x"c963",subunits_out => sub_b1_out);
sub_b2: Subunits PORT MAP (subunits_in => b_low(47 downto 32), coeff_in => x"c963",subunits_out => sub_b2_out);
sub_b3: Subunits PORT MAP (subunits_in => b_low(63 downto 48), coeff_in => x"c963",subunits_out => sub_b3_out);
sub_b4: Subunits PORT MAP (subunits_in => b_low(79 downto 64), coeff_in => x"c963",subunits_out => sub_b4_out);
sub_b5: Subunits PORT MAP (subunits_in => b_low(95 downto 80), coeff_in => x"c963",subunits_out => sub_b5_out);
sub_b6: Subunits PORT MAP (subunits_in => b_low(111 downto 96), coeff_in => x"c963",subunits_out => sub_b6_out);
sub_b7: Subunits PORT MAP (subunits_in => b_low(127 downto 112), coeff_in => x"c963",subunits_out => sub_b7_out);

--beta^-1 is produced
inv_sub_b0: inv_Subunits PORT MAP (inv_subunits_in => b_high(15 downto 0), coeff_in => x"e4b1",inv_subunits_out => inv_sub_b0_out);
inv_sub_b1: inv_Subunits PORT MAP (inv_subunits_in => b_high(31 downto 16), coeff_in => x"e4b1",inv_subunits_out => inv_sub_b1_out);
inv_sub_b2: inv_Subunits PORT MAP (inv_subunits_in => b_high(47 downto 32), coeff_in => x"e4b1",inv_subunits_out => inv_sub_b2_out);
inv_sub_b3: inv_Subunits PORT MAP (inv_subunits_in => b_high(63 downto 48), coeff_in => x"e4b1",inv_subunits_out => inv_sub_b3_out);
inv_sub_b4: inv_Subunits PORT MAP (inv_subunits_in => b_high(79 downto 64), coeff_in => x"e4b1",inv_subunits_out => inv_sub_b4_out);
inv_sub_b5: inv_Subunits PORT MAP (inv_subunits_in => b_high(95 downto 80), coeff_in => x"e4b1",inv_subunits_out => inv_sub_b5_out);
inv_sub_b6: inv_Subunits PORT MAP (inv_subunits_in => b_high(111 downto 96), coeff_in => x"e4b1",inv_subunits_out => inv_sub_b6_out);
inv_sub_b7: inv_Subunits PORT MAP (inv_subunits_in => b_high(127 downto 112), coeff_in => x"e4b1",inv_subunits_out => inv_sub_b7_out);

--BLOCK A
 xor_a0 <=  sub_a0_out XOR a_low(31 downto 16);
 xor_a1 <=  sub_a1_out XOR a_low(47 downto 32);
 xor_a2 <=  sub_a2_out XOR a_low(63 downto 48);
 xor_a3 <=  sub_a3_out XOR a_low(79 downto 64);
 xor_a4 <=  sub_a4_out XOR a_low(95 downto 80);
 xor_a5 <=  sub_a5_out XOR a_low(111 downto 96);
 xor_a6 <=  sub_a6_out XOR a_low(127 downto 112);
 xor_a7 <=  sub_a7_out XOR a_high(15 downto 0);
 
 
 xor_a8 <=inv_sub_a0_out XOR b_low(15 downto 0);
 xor_a9 <= inv_sub_a1_out XOR b_low(31 downto 16);
 xor_a10 <= inv_sub_a2_out XOR b_low(47 downto 32);
 xor_a11 <= inv_sub_a3_out XOR b_low(63 downto 48);
 xor_a12 <= inv_sub_a4_out XOR b_low(79 downto 64);
 xor_a13 <=inv_sub_a5_out XOR b_low(95 downto 80);
 xor_a14 <= inv_sub_a6_out XOR b_low(111 downto 96);
 xor_a15 <= inv_sub_a7_out XOR b_low(127 downto 112);
 
 a_high_new_out(15 downto 0) <= xor_a0 XOR xor_a8;
 a_high_new_out(31 downto 16) <= xor_a1 XOR xor_a9;
 a_high_new_out(47 downto 32) <= xor_a2 XOR xor_a10;
 a_high_new_out(63 downto 48) <= xor_a3 XOR xor_a11;
 a_high_new_out(79 downto 64) <= xor_a4 XOR xor_a12;
 a_high_new_out(95 downto 80) <= xor_a5 XOR xor_a13;
 a_high_new_out(111 downto 96) <= xor_a6 XOR xor_a14;
 a_high_new_out(127 downto 112) <= xor_a7 XOR xor_a15;
 
--BLOCK B 
 xor_b0 <=  sub_b0_out XOR b_low(63 downto 48);
 xor_b1 <=  sub_b1_out XOR b_low(79 downto 64);
 xor_b2 <=  sub_b2_out XOR b_low(95 downto 80);
 xor_b3 <=  sub_b3_out XOR b_low(111 downto 96);
 xor_b4 <=  sub_b4_out XOR b_low(127 downto 112);
 xor_b5 <=  sub_b5_out XOR b_high(15 downto 0);
 xor_b6 <=  sub_b6_out XOR b_high(31 downto 16);
 xor_b7 <=  sub_b7_out XOR b_high(47 downto 32);
 
 xor_b8 <= inv_sub_b0_out XOR a_low(15 downto 0);
 xor_b9 <= inv_sub_b1_out XOR a_low(31 downto 16);
 xor_b10 <= inv_sub_b2_out XOR a_low(47 downto 32);
 xor_b11 <= inv_sub_b3_out XOR a_low(63 downto 48);
 xor_b12 <= inv_sub_b4_out XOR a_low(79 downto 64);
 xor_b13 <= inv_sub_b5_out XOR a_low(95 downto 80);
 xor_b14 <= inv_sub_b6_out XOR a_low(111 downto 96);
 xor_b15 <= inv_sub_b7_out XOR a_low(127 downto 112);
 
 b_high_new_out(15 downto 0) <= xor_b0 XOR xor_b8;
 b_high_new_out(31 downto 16) <= xor_b1 XOR xor_b9;
 b_high_new_out(47 downto 32) <= xor_b2 XOR xor_b10;
 b_high_new_out(63 downto 48) <= xor_b3 XOR xor_b11;
 b_high_new_out(79 downto 64) <= xor_b4 XOR xor_b12;
 b_high_new_out(95 downto 80) <= xor_b5 XOR xor_b13;
 b_high_new_out(111 downto 96) <= xor_b6 XOR xor_b14;
 b_high_new_out(127 downto 112) <= xor_b7 XOR xor_b15;
 
END ARCHITECTURE;