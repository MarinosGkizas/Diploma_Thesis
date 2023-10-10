LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY Register128 IS
GENERIC(N:integer:=128);
PORT(
     reg_in: IN std_logic_vector (N-1 downto 0);
     clk,rst: IN std_logic;
     reg_out:OUT std_logic_vector (N-1 downto 0)
     );
END ENTITY;

ARCHITECTURE Circuit OF Register128 IS

-- COMPONENT D-FLIP FLOP
COMPONENT D_FF IS
PORT(
     d_in: IN std_logic;
     q_out: OUT std_logic;
     clk,rst: IN std_logic
     );
END COMPONENT;

BEGIN
ff_0: D_FF PORT MAP( d_in => reg_in(0), clk => clk, rst => rst, q_out => reg_out(0));
ff_1: D_FF PORT MAP( d_in => reg_in(1), clk => clk, rst => rst, q_out => reg_out(1));
ff_2: D_FF PORT MAP( d_in => reg_in(2), clk => clk, rst => rst, q_out => reg_out(2));
ff_3: D_FF PORT MAP( d_in => reg_in(3), clk => clk, rst => rst, q_out => reg_out(3));
ff_4: D_FF PORT MAP( d_in => reg_in(4), clk => clk, rst => rst, q_out => reg_out(4));
ff_5: D_FF PORT MAP( d_in => reg_in(5), clk => clk, rst => rst, q_out => reg_out(5));
ff_6: D_FF PORT MAP( d_in => reg_in(6), clk => clk, rst => rst, q_out => reg_out(6));
ff_7: D_FF PORT MAP( d_in => reg_in(7), clk => clk, rst => rst, q_out => reg_out(7));
ff_8: D_FF PORT MAP( d_in => reg_in(8), clk => clk, rst => rst, q_out => reg_out(8));
ff_9: D_FF PORT MAP( d_in => reg_in(9), clk => clk, rst => rst, q_out => reg_out(9));
ff_10: D_FF PORT MAP( d_in => reg_in(10), clk => clk, rst => rst, q_out => reg_out(10));
ff_11: D_FF PORT MAP( d_in => reg_in(11), clk => clk, rst => rst, q_out => reg_out(11));
ff_12: D_FF PORT MAP( d_in => reg_in(12), clk => clk, rst => rst, q_out => reg_out(12));
ff_13: D_FF PORT MAP( d_in => reg_in(13), clk => clk, rst => rst, q_out => reg_out(13));
ff_14: D_FF PORT MAP( d_in => reg_in(14), clk => clk, rst => rst, q_out => reg_out(14));
ff_15: D_FF PORT MAP( d_in => reg_in(15), clk => clk, rst => rst, q_out => reg_out(15));
ff_16: D_FF PORT MAP( d_in => reg_in(16), clk => clk, rst => rst, q_out => reg_out(16));
ff_17: D_FF PORT MAP( d_in => reg_in(17), clk => clk, rst => rst, q_out => reg_out(17));
ff_18: D_FF PORT MAP( d_in => reg_in(18), clk => clk, rst => rst, q_out => reg_out(18));
ff_19: D_FF PORT MAP( d_in => reg_in(19), clk => clk, rst => rst, q_out => reg_out(19));
ff_20: D_FF PORT MAP( d_in => reg_in(20), clk => clk, rst => rst, q_out => reg_out(20));
ff_21: D_FF PORT MAP( d_in => reg_in(21), clk => clk, rst => rst, q_out => reg_out(21));
ff_22: D_FF PORT MAP( d_in => reg_in(22), clk => clk, rst => rst, q_out => reg_out(22));
ff_23: D_FF PORT MAP( d_in => reg_in(23), clk => clk, rst => rst, q_out => reg_out(23));
ff_24: D_FF PORT MAP( d_in => reg_in(24), clk => clk, rst => rst, q_out => reg_out(24));
ff_25: D_FF PORT MAP( d_in => reg_in(25), clk => clk, rst => rst, q_out => reg_out(25));
ff_26: D_FF PORT MAP( d_in => reg_in(26), clk => clk, rst => rst, q_out => reg_out(26));
ff_27: D_FF PORT MAP( d_in => reg_in(27), clk => clk, rst => rst, q_out => reg_out(27));
ff_28: D_FF PORT MAP( d_in => reg_in(28), clk => clk, rst => rst, q_out => reg_out(28));
ff_29: D_FF PORT MAP( d_in => reg_in(29), clk => clk, rst => rst, q_out => reg_out(29));
ff_30: D_FF PORT MAP( d_in => reg_in(30), clk => clk, rst => rst, q_out => reg_out(30));
ff_31: D_FF PORT MAP( d_in => reg_in(31), clk => clk, rst => rst, q_out => reg_out(31));
ff_32: D_FF PORT MAP( d_in => reg_in(32), clk => clk, rst => rst, q_out => reg_out(32));
ff_33: D_FF PORT MAP( d_in => reg_in(33), clk => clk, rst => rst, q_out => reg_out(33));
ff_34: D_FF PORT MAP( d_in => reg_in(34), clk => clk, rst => rst, q_out => reg_out(34));
ff_35: D_FF PORT MAP( d_in => reg_in(35), clk => clk, rst => rst, q_out => reg_out(35));
ff_36: D_FF PORT MAP( d_in => reg_in(36), clk => clk, rst => rst, q_out => reg_out(36));
ff_37: D_FF PORT MAP( d_in => reg_in(37), clk => clk, rst => rst, q_out => reg_out(37));
ff_38: D_FF PORT MAP( d_in => reg_in(38), clk => clk, rst => rst, q_out => reg_out(38));
ff_39: D_FF PORT MAP( d_in => reg_in(39), clk => clk, rst => rst, q_out => reg_out(39));
ff_40: D_FF PORT MAP( d_in => reg_in(40), clk => clk, rst => rst, q_out => reg_out(40));
ff_41: D_FF PORT MAP( d_in => reg_in(41), clk => clk, rst => rst, q_out => reg_out(41));
ff_42: D_FF PORT MAP( d_in => reg_in(42), clk => clk, rst => rst, q_out => reg_out(42));
ff_43: D_FF PORT MAP( d_in => reg_in(43), clk => clk, rst => rst, q_out => reg_out(43));
ff_44: D_FF PORT MAP( d_in => reg_in(44), clk => clk, rst => rst, q_out => reg_out(44));
ff_45: D_FF PORT MAP( d_in => reg_in(45), clk => clk, rst => rst, q_out => reg_out(45));
ff_46: D_FF PORT MAP( d_in => reg_in(46), clk => clk, rst => rst, q_out => reg_out(46));
ff_47: D_FF PORT MAP( d_in => reg_in(47), clk => clk, rst => rst, q_out => reg_out(47));
ff_48: D_FF PORT MAP( d_in => reg_in(48), clk => clk, rst => rst, q_out => reg_out(48));
ff_49: D_FF PORT MAP( d_in => reg_in(49), clk => clk, rst => rst, q_out => reg_out(49));
ff_50: D_FF PORT MAP( d_in => reg_in(50), clk => clk, rst => rst, q_out => reg_out(50));
ff_51: D_FF PORT MAP( d_in => reg_in(51), clk => clk, rst => rst, q_out => reg_out(51));
ff_52: D_FF PORT MAP( d_in => reg_in(52), clk => clk, rst => rst, q_out => reg_out(52));
ff_53: D_FF PORT MAP( d_in => reg_in(53), clk => clk, rst => rst, q_out => reg_out(53));
ff_54: D_FF PORT MAP( d_in => reg_in(54), clk => clk, rst => rst, q_out => reg_out(54));
ff_55: D_FF PORT MAP( d_in => reg_in(55), clk => clk, rst => rst, q_out => reg_out(55));
ff_56: D_FF PORT MAP( d_in => reg_in(56), clk => clk, rst => rst, q_out => reg_out(56));
ff_57: D_FF PORT MAP( d_in => reg_in(57), clk => clk, rst => rst, q_out => reg_out(57));
ff_58: D_FF PORT MAP( d_in => reg_in(58), clk => clk, rst => rst, q_out => reg_out(58));
ff_59: D_FF PORT MAP( d_in => reg_in(59), clk => clk, rst => rst, q_out => reg_out(59));
ff_60: D_FF PORT MAP( d_in => reg_in(60), clk => clk, rst => rst, q_out => reg_out(60));
ff_61: D_FF PORT MAP( d_in => reg_in(61), clk => clk, rst => rst, q_out => reg_out(61));
ff_62: D_FF PORT MAP( d_in => reg_in(62), clk => clk, rst => rst, q_out => reg_out(62));
ff_63: D_FF PORT MAP( d_in => reg_in(63), clk => clk, rst => rst, q_out => reg_out(63));
ff_64: D_FF PORT MAP( d_in => reg_in(64), clk => clk, rst => rst, q_out => reg_out(64));
ff_65: D_FF PORT MAP( d_in => reg_in(65), clk => clk, rst => rst, q_out => reg_out(65));
ff_66: D_FF PORT MAP( d_in => reg_in(66), clk => clk, rst => rst, q_out => reg_out(66));
ff_67: D_FF PORT MAP( d_in => reg_in(67), clk => clk, rst => rst, q_out => reg_out(67));
ff_68: D_FF PORT MAP( d_in => reg_in(68), clk => clk, rst => rst, q_out => reg_out(68));
ff_69: D_FF PORT MAP( d_in => reg_in(69), clk => clk, rst => rst, q_out => reg_out(69));
ff_70: D_FF PORT MAP( d_in => reg_in(70), clk => clk, rst => rst, q_out => reg_out(70));
ff_71: D_FF PORT MAP( d_in => reg_in(71), clk => clk, rst => rst, q_out => reg_out(71));
ff_72: D_FF PORT MAP( d_in => reg_in(72), clk => clk, rst => rst, q_out => reg_out(72));
ff_73: D_FF PORT MAP( d_in => reg_in(73), clk => clk, rst => rst, q_out => reg_out(73));
ff_74: D_FF PORT MAP( d_in => reg_in(74), clk => clk, rst => rst, q_out => reg_out(74));
ff_75: D_FF PORT MAP( d_in => reg_in(75), clk => clk, rst => rst, q_out => reg_out(75));
ff_76: D_FF PORT MAP( d_in => reg_in(76), clk => clk, rst => rst, q_out => reg_out(76));
ff_77: D_FF PORT MAP( d_in => reg_in(77), clk => clk, rst => rst, q_out => reg_out(77));
ff_78: D_FF PORT MAP( d_in => reg_in(78), clk => clk, rst => rst, q_out => reg_out(78));
ff_79: D_FF PORT MAP( d_in => reg_in(79), clk => clk, rst => rst, q_out => reg_out(79));
ff_80: D_FF PORT MAP( d_in => reg_in(80), clk => clk, rst => rst, q_out => reg_out(80));
ff_81: D_FF PORT MAP( d_in => reg_in(81), clk => clk, rst => rst, q_out => reg_out(81));
ff_82: D_FF PORT MAP( d_in => reg_in(82), clk => clk, rst => rst, q_out => reg_out(82));
ff_83: D_FF PORT MAP( d_in => reg_in(83), clk => clk, rst => rst, q_out => reg_out(83));
ff_84: D_FF PORT MAP( d_in => reg_in(84), clk => clk, rst => rst, q_out => reg_out(84));
ff_85: D_FF PORT MAP( d_in => reg_in(85), clk => clk, rst => rst, q_out => reg_out(85));
ff_86: D_FF PORT MAP( d_in => reg_in(86), clk => clk, rst => rst, q_out => reg_out(86));
ff_87: D_FF PORT MAP( d_in => reg_in(87), clk => clk, rst => rst, q_out => reg_out(87));
ff_88: D_FF PORT MAP( d_in => reg_in(88), clk => clk, rst => rst, q_out => reg_out(88));
ff_89: D_FF PORT MAP( d_in => reg_in(89), clk => clk, rst => rst, q_out => reg_out(89));
ff_90: D_FF PORT MAP( d_in => reg_in(90), clk => clk, rst => rst, q_out => reg_out(90));
ff_91: D_FF PORT MAP( d_in => reg_in(91), clk => clk, rst => rst, q_out => reg_out(91));
ff_92: D_FF PORT MAP( d_in => reg_in(92), clk => clk, rst => rst, q_out => reg_out(92));
ff_93: D_FF PORT MAP( d_in => reg_in(93), clk => clk, rst => rst, q_out => reg_out(93));
ff_94: D_FF PORT MAP( d_in => reg_in(94), clk => clk, rst => rst, q_out => reg_out(94));
ff_95: D_FF PORT MAP( d_in => reg_in(95), clk => clk, rst => rst, q_out => reg_out(95));
ff_96: D_FF PORT MAP( d_in => reg_in(96), clk => clk, rst => rst, q_out => reg_out(96));
ff_97: D_FF PORT MAP( d_in => reg_in(97), clk => clk, rst => rst, q_out => reg_out(97));
ff_98: D_FF PORT MAP( d_in => reg_in(98), clk => clk, rst => rst, q_out => reg_out(98));
ff_99: D_FF PORT MAP( d_in => reg_in(99), clk => clk, rst => rst, q_out => reg_out(99));
ff_100: D_FF PORT MAP( d_in => reg_in(100), clk => clk, rst => rst, q_out => reg_out(100));
ff_101: D_FF PORT MAP( d_in => reg_in(101), clk => clk, rst => rst, q_out => reg_out(101));
ff_102: D_FF PORT MAP( d_in => reg_in(102), clk => clk, rst => rst, q_out => reg_out(102));
ff_103: D_FF PORT MAP( d_in => reg_in(103), clk => clk, rst => rst, q_out => reg_out(103));
ff_104: D_FF PORT MAP( d_in => reg_in(104), clk => clk, rst => rst, q_out => reg_out(104));
ff_105: D_FF PORT MAP( d_in => reg_in(105), clk => clk, rst => rst, q_out => reg_out(105));
ff_106: D_FF PORT MAP( d_in => reg_in(106), clk => clk, rst => rst, q_out => reg_out(106));
ff_107: D_FF PORT MAP( d_in => reg_in(107), clk => clk, rst => rst, q_out => reg_out(107));
ff_108: D_FF PORT MAP( d_in => reg_in(108), clk => clk, rst => rst, q_out => reg_out(108));
ff_109: D_FF PORT MAP( d_in => reg_in(109), clk => clk, rst => rst, q_out => reg_out(109));
ff_110: D_FF PORT MAP( d_in => reg_in(110), clk => clk, rst => rst, q_out => reg_out(110));
ff_111: D_FF PORT MAP( d_in => reg_in(111), clk => clk, rst => rst, q_out => reg_out(111));
ff_112: D_FF PORT MAP( d_in => reg_in(112), clk => clk, rst => rst, q_out => reg_out(112));
ff_113: D_FF PORT MAP( d_in => reg_in(113), clk => clk, rst => rst, q_out => reg_out(113));
ff_114: D_FF PORT MAP( d_in => reg_in(114), clk => clk, rst => rst, q_out => reg_out(114));
ff_115: D_FF PORT MAP( d_in => reg_in(115), clk => clk, rst => rst, q_out => reg_out(115));
ff_116: D_FF PORT MAP( d_in => reg_in(116), clk => clk, rst => rst, q_out => reg_out(116));
ff_117: D_FF PORT MAP( d_in => reg_in(117), clk => clk, rst => rst, q_out => reg_out(117));
ff_118: D_FF PORT MAP( d_in => reg_in(118), clk => clk, rst => rst, q_out => reg_out(118));
ff_119: D_FF PORT MAP( d_in => reg_in(119), clk => clk, rst => rst, q_out => reg_out(119));
ff_120: D_FF PORT MAP( d_in => reg_in(120), clk => clk, rst => rst, q_out => reg_out(120));
ff_121: D_FF PORT MAP( d_in => reg_in(121), clk => clk, rst => rst, q_out => reg_out(121));
ff_122: D_FF PORT MAP( d_in => reg_in(122), clk => clk, rst => rst, q_out => reg_out(122));
ff_123: D_FF PORT MAP( d_in => reg_in(123), clk => clk, rst => rst, q_out => reg_out(123));
ff_124: D_FF PORT MAP( d_in => reg_in(124), clk => clk, rst => rst, q_out => reg_out(124));
ff_125: D_FF PORT MAP( d_in => reg_in(125), clk => clk, rst => rst, q_out => reg_out(125));
ff_126: D_FF PORT MAP( d_in => reg_in(126), clk => clk, rst => rst, q_out => reg_out(126));
ff_127: D_FF PORT MAP( d_in => reg_in(127), clk => clk, rst => rst, q_out => reg_out(127)); 



END ARCHITECTURE;