LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY RippleCarryAdder IS
PORT(
     rcadd_in0,rcadd_in1: IN std_logic_vector(31 downto 0);
     rcadd_c_in: IN std_logic:='0';
     rcadd_sum_out: OUT std_logic_vector(31 downto 0);
     rcadd_c_out: OUT std_logic
     );
END ENTITY;

ARCHITECTURE Circuit OF RippleCarryAdder IS

--Component FullAdder
COMPONENT FA IS
PORT(
     fa_in0,fa_in1,fa_c_in: IN std_logic;  
     fa_sum_out,fa_c_out: OUT std_logic
     );
END COMPONENT;

SIGNAL c_out0,c_out1,c_out2,c_out3,c_out4,c_out5,c_out6,c_out7,c_out8,c_out9,c_out10,c_out11,c_out12,c_out13,c_out14,c_out15,c_out16,c_out17,c_out18,c_out19,c_out20,c_out21,c_out22,c_out23,c_out24,c_out25,c_out26,c_out27,c_out28,c_out29,c_out30,c_out31: std_logic;

BEGIN
FA_0: FA PORT MAP( fa_in0 => rcadd_in0(0), fa_in1 => rcadd_in1(0), fa_c_in => rcadd_c_in, fa_sum_out => rcadd_sum_out(0), fa_c_out => c_out0 );
FA_1: FA PORT MAP( fa_in0 => rcadd_in0(1), fa_in1 => rcadd_in1(1), fa_c_in => c_out0, fa_sum_out => rcadd_sum_out(1), fa_c_out => c_out1 );
FA_2: FA PORT MAP( fa_in0 => rcadd_in0(2), fa_in1 => rcadd_in1(2), fa_c_in => c_out1, fa_sum_out => rcadd_sum_out(2), fa_c_out => c_out2 );
FA_3: FA PORT MAP( fa_in0 => rcadd_in0(3), fa_in1 => rcadd_in1(3), fa_c_in => c_out2, fa_sum_out => rcadd_sum_out(3), fa_c_out => c_out3 );
FA_4: FA PORT MAP( fa_in0 => rcadd_in0(4), fa_in1 => rcadd_in1(4), fa_c_in => c_out3, fa_sum_out => rcadd_sum_out(4), fa_c_out => c_out4 );
FA_5: FA PORT MAP( fa_in0 => rcadd_in0(5), fa_in1 => rcadd_in1(5), fa_c_in => c_out4, fa_sum_out => rcadd_sum_out(5), fa_c_out => c_out5 );
FA_6: FA PORT MAP( fa_in0 => rcadd_in0(6), fa_in1 => rcadd_in1(6), fa_c_in => c_out5, fa_sum_out => rcadd_sum_out(6), fa_c_out => c_out6 );
FA_7: FA PORT MAP( fa_in0 => rcadd_in0(7), fa_in1 => rcadd_in1(7), fa_c_in => c_out6, fa_sum_out => rcadd_sum_out(7), fa_c_out => c_out7 );
FA_8: FA PORT MAP( fa_in0 => rcadd_in0(8), fa_in1 => rcadd_in1(8), fa_c_in => c_out7, fa_sum_out => rcadd_sum_out(8), fa_c_out => c_out8 );
FA_9: FA PORT MAP( fa_in0 => rcadd_in0(9), fa_in1 => rcadd_in1(9), fa_c_in => c_out8, fa_sum_out => rcadd_sum_out(9), fa_c_out => c_out9 );
FA_10: FA PORT MAP( fa_in0 => rcadd_in0(10), fa_in1 => rcadd_in1(10), fa_c_in => c_out9, fa_sum_out => rcadd_sum_out(10), fa_c_out => c_out10 );
FA_11: FA PORT MAP( fa_in0 => rcadd_in0(11), fa_in1 => rcadd_in1(11), fa_c_in => c_out10, fa_sum_out => rcadd_sum_out(11), fa_c_out => c_out11 );
FA_12: FA PORT MAP( fa_in0 => rcadd_in0(12), fa_in1 => rcadd_in1(12), fa_c_in => c_out11, fa_sum_out => rcadd_sum_out(12), fa_c_out => c_out12 );
FA_13: FA PORT MAP( fa_in0 => rcadd_in0(13), fa_in1 => rcadd_in1(13), fa_c_in => c_out12, fa_sum_out => rcadd_sum_out(13), fa_c_out => c_out13 );
FA_14: FA PORT MAP( fa_in0 => rcadd_in0(14), fa_in1 => rcadd_in1(14), fa_c_in => c_out13, fa_sum_out => rcadd_sum_out(14), fa_c_out => c_out14 );
FA_15: FA PORT MAP( fa_in0 => rcadd_in0(15), fa_in1 => rcadd_in1(15), fa_c_in => c_out14, fa_sum_out => rcadd_sum_out(15), fa_c_out => c_out15 );
FA_16: FA PORT MAP( fa_in0 => rcadd_in0(16), fa_in1 => rcadd_in1(16), fa_c_in => c_out15, fa_sum_out => rcadd_sum_out(16), fa_c_out => c_out16 );
FA_17: FA PORT MAP( fa_in0 => rcadd_in0(17), fa_in1 => rcadd_in1(17), fa_c_in => c_out16, fa_sum_out => rcadd_sum_out(17), fa_c_out => c_out17 );
FA_18: FA PORT MAP( fa_in0 => rcadd_in0(18), fa_in1 => rcadd_in1(18), fa_c_in => c_out17, fa_sum_out => rcadd_sum_out(18), fa_c_out => c_out18 );
FA_19: FA PORT MAP( fa_in0 => rcadd_in0(19), fa_in1 => rcadd_in1(19), fa_c_in => c_out18, fa_sum_out => rcadd_sum_out(19), fa_c_out => c_out19 );
FA_20: FA PORT MAP( fa_in0 => rcadd_in0(20), fa_in1 => rcadd_in1(20), fa_c_in => c_out19, fa_sum_out => rcadd_sum_out(20), fa_c_out => c_out20 );
FA_21: FA PORT MAP( fa_in0 => rcadd_in0(21), fa_in1 => rcadd_in1(21), fa_c_in => c_out20, fa_sum_out => rcadd_sum_out(21), fa_c_out => c_out21 );
FA_22: FA PORT MAP( fa_in0 => rcadd_in0(22), fa_in1 => rcadd_in1(22), fa_c_in => c_out21, fa_sum_out => rcadd_sum_out(22), fa_c_out => c_out22 );
FA_23: FA PORT MAP( fa_in0 => rcadd_in0(23), fa_in1 => rcadd_in1(23), fa_c_in => c_out22, fa_sum_out => rcadd_sum_out(23), fa_c_out => c_out23 );
FA_24: FA PORT MAP( fa_in0 => rcadd_in0(24), fa_in1 => rcadd_in1(24), fa_c_in => c_out23, fa_sum_out => rcadd_sum_out(24), fa_c_out => c_out24 );
FA_25: FA PORT MAP( fa_in0 => rcadd_in0(25), fa_in1 => rcadd_in1(25), fa_c_in => c_out24, fa_sum_out => rcadd_sum_out(25), fa_c_out => c_out25 );
FA_26: FA PORT MAP( fa_in0 => rcadd_in0(26), fa_in1 => rcadd_in1(26), fa_c_in => c_out25, fa_sum_out => rcadd_sum_out(26), fa_c_out => c_out26 );
FA_27: FA PORT MAP( fa_in0 => rcadd_in0(27), fa_in1 => rcadd_in1(27), fa_c_in => c_out26, fa_sum_out => rcadd_sum_out(27), fa_c_out => c_out27 );
FA_28: FA PORT MAP( fa_in0 => rcadd_in0(28), fa_in1 => rcadd_in1(28), fa_c_in => c_out27, fa_sum_out => rcadd_sum_out(28), fa_c_out => c_out28 );
FA_29: FA PORT MAP( fa_in0 => rcadd_in0(29), fa_in1 => rcadd_in1(29), fa_c_in => c_out28, fa_sum_out => rcadd_sum_out(29), fa_c_out => c_out29 );
FA_30: FA PORT MAP( fa_in0 => rcadd_in0(30), fa_in1 => rcadd_in1(30), fa_c_in => c_out29, fa_sum_out => rcadd_sum_out(30), fa_c_out => c_out30 );
FA_31: FA PORT MAP( fa_in0 => rcadd_in0(31), fa_in1 => rcadd_in1(31), fa_c_in => c_out30, fa_sum_out => rcadd_sum_out(31), fa_c_out => c_out31 );


END ARCHITECTURE;
