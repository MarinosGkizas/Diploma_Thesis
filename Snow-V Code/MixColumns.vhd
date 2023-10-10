LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY MixColumns IS
PORT(
    mix_columns_in: IN std_logic_vector (127 downto 0);
    mix_columns_out: OUT std_logic_vector (127 downto 0)
    );
END ENTITY;



ARCHITECTURE Circuit  OF MixColumns IS
SIGNAL r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31: std_logic_vector (7 downto 0);
 
-- 02 03 01 01
-- 01 02 03 01
-- 01 01 02 03
-- 03 01 01 02
BEGIN

--1st row,1st column
PROCESS(mix_columns_in(7 downto 0))
BEGIN
    CASE mix_columns_in(7) IS
    when '0' => r0 <= mix_columns_in(6 downto 0) & '0';
    when '1' => r0 <= (mix_columns_in(6 downto 0) & '0') XOR "00011011";
    when OTHERS => r0<= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(15 downto 8))
BEGIN
CASE mix_columns_in(15) IS
    when '0' => r1 <= mix_columns_in (14 downto 8) & '0' XOR mix_columns_in (15 downto 8);
    when '1' => r1 <= mix_columns_in (14 downto 8) & '0' XOR mix_columns_in (15 downto 8) XOR "00011011";
    when OTHERS => r1 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--2nd row,1st column
PROCESS(mix_columns_in(15 downto 8))
BEGIN
    CASE mix_columns_in(15) IS
    when '0' => r2 <= mix_columns_in(14 downto 8) & '0';
    when '1' => r2 <= (mix_columns_in(14 downto 8) & '0') XOR "00011011";
    when OTHERS => r2 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(23 downto 16))
BEGIN
CASE mix_columns_in(23) IS
    when '0' => r3 <= (mix_columns_in(22 downto 16) & '0') XOR mix_columns_in (23 downto 16);
    when '1' => r3 <= (mix_columns_in (22 downto 16) & '0') XOR mix_columns_in (23 downto 16) XOR "00011011";
    when OTHERS => r3 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--3rd row,1st column
PROCESS(mix_columns_in(23 downto 16))
BEGIN
    CASE mix_columns_in(23) IS
    when '0' => r4 <= mix_columns_in(22 downto 16) & '0';
    when '1' => r4 <= (mix_columns_in(22 downto 16) & '0') XOR "00011011";
    when OTHERS => r4 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(31 downto 24))
BEGIN
    CASE mix_columns_in(31) IS
    when '0' => r5 <= (mix_columns_in(30 downto 24) & '0') XOR mix_columns_in(31 downto 24);
    when '1' => r5 <= (mix_columns_in (30 downto 24) & '0') XOR mix_columns_in (31 downto 24) XOR "00011011";
    when OTHERS => r5 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--4th row,1st column
PROCESS(mix_columns_in(31 downto 24))
BEGIN
    CASE mix_columns_in(31) IS
    when '0' => r6 <= mix_columns_in(30 downto 24) & '0';
    when '1' => r6 <= (mix_columns_in(30 downto 24) & '0') XOR "00011011";
    when OTHERS => r6 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(7 downto 0))
BEGIN
    CASE mix_columns_in(7) IS
    when '0' => r7 <= (mix_columns_in(6 downto 0) & '0') XOR mix_columns_in(7 downto 0);
    when '1' => r7 <= (mix_columns_in(6 downto 0) & '0')XOR mix_columns_in(7 downto 0) XOR "00011011";
    when OTHERS => r7 <= (OTHERS => 'U');
    END CASE;
END PROCESS;



--1st row,2nd column
PROCESS(mix_columns_in(39 downto 32))
BEGIN
    CASE mix_columns_in(39) IS
    when '0' => r8 <= mix_columns_in(38 downto 32) & '0';
    when '1' => r8 <= (mix_columns_in(38 downto 32) & '0') XOR "00011011";
    when OTHERS => r8 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(47 downto 40))
BEGIN
    CASE mix_columns_in(47) IS
    when '0' => r9 <= (mix_columns_in(46 downto 40) & '0') XOR mix_columns_in(47 downto 40);
    when '1' => r9 <= (mix_columns_in(46 downto 40) & '0')XOR mix_columns_in(47 downto 40) XOR "00011011";
    when OTHERS => r9 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--2nd rown,2nd column
PROCESS(mix_columns_in(47 downto 40))
BEGIN
    CASE mix_columns_in(47) IS
    when '0' => r10 <= mix_columns_in(46 downto 40) & '0';
    when '1' => r10 <= (mix_columns_in(46 downto 40) & '0') XOR "00011011";
    when OTHERS => r10 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(55 downto 48))
BEGIN
    CASE mix_columns_in(55) IS
    when '0' => r11 <= (mix_columns_in(54 downto 48) & '0') XOR mix_columns_in(55 downto 48);
    when '1' => r11 <= (mix_columns_in(54 downto 48) & '0')XOR mix_columns_in(55 downto 48) XOR "00011011";
    when OTHERS => r11 <= (OTHERS => 'U');
    END CASE;
END PROCESS;
--3rd row, 2nd column
PROCESS(mix_columns_in(55 downto 48))
BEGIN
    CASE mix_columns_in(55) IS
    when '0' => r12 <= mix_columns_in(54 downto 48) & '0';
    when '1' => r12 <= (mix_columns_in(54 downto 48) & '0') XOR "00011011";
    when OTHERS => r12 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(63 downto 56))
BEGIN
    CASE mix_columns_in(63) IS
    when '0' => r13 <= (mix_columns_in(62 downto 56) & '0') XOR mix_columns_in(63 downto 56);
    when '1' => r13 <= (mix_columns_in(62 downto 56) & '0')XOR mix_columns_in(63 downto 56) XOR "00011011";
    when OTHERS => r13 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--4th row,2nd column
PROCESS(mix_columns_in(63 downto 56))
BEGIN
    CASE mix_columns_in(63) IS
    when '0' => r14 <= mix_columns_in(62 downto 56) & '0';
    when '1' => r14 <= (mix_columns_in(62 downto 56) & '0') XOR "00011011";
    when OTHERS => r14 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(39 downto 32))
BEGIN
    CASE mix_columns_in(39) IS
    when '0' => r15 <= (mix_columns_in(38 downto 32) & '0') XOR mix_columns_in(39 downto 32);
    when '1' => r15 <= (mix_columns_in(38 downto 32) & '0')XOR mix_columns_in(39 downto 32) XOR "00011011";
    when OTHERS => r15 <= (OTHERS => 'U');
    END CASE;
END PROCESS;


--1st row,3rd column
PROCESS(mix_columns_in(71 downto 64))
BEGIN
    CASE mix_columns_in(71) IS
    when '0' => r16 <= mix_columns_in(70 downto 64) & '0';
    when '1' => r16 <= (mix_columns_in(70 downto 64) & '0') XOR "00011011";
    when OTHERS => r16 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(79 downto 72))
BEGIN
    CASE mix_columns_in(79) IS
    when '0' => r17 <= (mix_columns_in(78 downto 72) & '0') XOR mix_columns_in(79 downto 72);
    when '1' => r17 <= (mix_columns_in(78 downto 72) & '0')XOR mix_columns_in(79 downto 72) XOR "00011011";
    when OTHERS => r17 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--2nd row,3rd column
PROCESS(mix_columns_in(79 downto 72))
BEGIN
    CASE mix_columns_in(79) IS
    when '0' => r18 <= mix_columns_in(78 downto 72) & '0';
    when '1' => r18 <= (mix_columns_in(78 downto 72) & '0') XOR "00011011";
    when OTHERS => r18 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(87 downto 80))
BEGIN
    CASE mix_columns_in(87) IS
    when '0' => r19 <= (mix_columns_in(86 downto 80) & '0') XOR mix_columns_in(87 downto 80);
    when '1' => r19 <= (mix_columns_in(86 downto 80) & '0')XOR mix_columns_in(87 downto 80) XOR "00011011";
    when OTHERS => r19 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--3rd row,3rd column
PROCESS(mix_columns_in(87 downto 80))
BEGIN
    CASE mix_columns_in(87) IS
    when '0' => r20 <= mix_columns_in(86 downto 80) & '0';
    when '1' => r20 <= (mix_columns_in(86 downto 80) & '0') XOR "00011011";
    when OTHERS => r20 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(95 downto 88))
BEGIN
    CASE mix_columns_in(95) IS
    when '0' => r21 <= (mix_columns_in(94 downto 88) & '0') XOR mix_columns_in(95 downto 88);
    when '1' => r21 <= (mix_columns_in(94 downto 88) & '0')XOR mix_columns_in(95 downto 88) XOR "00011011";
    when OTHERS => r21 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--4th row,3rd column
PROCESS(mix_columns_in(95 downto 88))
BEGIN
    CASE mix_columns_in(95) IS
    when '0' => r22 <= mix_columns_in(94 downto 88) & '0';
    when '1' => r22 <= (mix_columns_in(94 downto 88) & '0') XOR "00011011";
    when OTHERS => r22 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(71 downto 64))
BEGIN
    CASE mix_columns_in(71) IS
    when '0' => r23 <= (mix_columns_in(70 downto 64) & '0') XOR mix_columns_in(71 downto 64);
    when '1' => r23 <= (mix_columns_in(70 downto 64) & '0')XOR mix_columns_in(71 downto 64) XOR "00011011";
    when OTHERS => r23 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--1st row,4th column
PROCESS(mix_columns_in(103 downto 96))
BEGIN
    CASE mix_columns_in(103) IS
    when '0' => r24 <= mix_columns_in(102 downto 96) & '0';
    when '1' => r24 <= (mix_columns_in(102 downto 96) & '0') XOR "00011011";
    when OTHERS => r24 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(111 downto 104))
BEGIN
    CASE mix_columns_in(111) IS
    when '0' => r25 <= (mix_columns_in(110 downto 104) & '0') XOR mix_columns_in(111 downto 104);
    when '1' => r25 <= (mix_columns_in(110 downto 104) & '0')XOR mix_columns_in(111 downto 104) XOR "00011011";
    when OTHERS => r25 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--2nd row,4th column
PROCESS(mix_columns_in(111 downto 104))
BEGIN
    CASE mix_columns_in(111) IS
    when '0' => r26 <= mix_columns_in(110 downto 104) & '0';
    when '1' => r26 <= (mix_columns_in(110 downto 104) & '0') XOR "00011011";
    when OTHERS => r26 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(119 downto 112))
BEGIN
    CASE mix_columns_in(119) IS
    when '0' => r27 <= (mix_columns_in(118 downto 112) & '0') XOR mix_columns_in(119 downto 112);
    when '1' => r27 <= (mix_columns_in(118 downto 112) & '0')XOR mix_columns_in(119 downto 112) XOR "00011011";
    when OTHERS => r27 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--3rd row,4th column
PROCESS(mix_columns_in(119 downto 112))
BEGIN
    CASE mix_columns_in(119) IS
    when '0' => r28 <= mix_columns_in(118 downto 112) & '0';
    when '1' => r28 <= (mix_columns_in(118 downto 112) & '0') XOR "00011011";
    when OTHERS => r28 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(127 downto 120))
BEGIN
    CASE mix_columns_in(127) IS
    when '0' => r29 <= (mix_columns_in(126 downto 120) & '0') XOR mix_columns_in(127 downto 120);
    when '1' => r29 <= (mix_columns_in(126 downto 120) & '0')XOR mix_columns_in(127 downto 120) XOR "00011011";
    when OTHERS => r29 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

--4th row,4th column
PROCESS(mix_columns_in(127 downto 120))
BEGIN
    CASE mix_columns_in(127) IS
    when '0' => r30 <= mix_columns_in(126 downto 120) & '0';
    when '1' => r30 <= (mix_columns_in(126 downto 120) & '0') XOR "00011011";
    when OTHERS => r30 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

PROCESS(mix_columns_in(103 downto 96))
BEGIN
    CASE mix_columns_in(103) IS
    when '0' => r31 <= (mix_columns_in(102 downto 96) & '0') XOR mix_columns_in(103 downto 96);
    when '1' => r31 <= (mix_columns_in(102 downto 96) & '0') XOR mix_columns_in(103 downto 96) XOR "00011011";
    when OTHERS => r31 <= (OTHERS => 'U');
    END CASE;
END PROCESS;

mix_columns_out(7 downto 0) <= r0 XOR r1 XOR mix_columns_in(23 downto 16) XOR mix_columns_in(31 downto 24);--Position 0,0
mix_columns_out(15 downto 8) <= mix_columns_in(7 downto 0) XOR r2 XOR r3 XOR mix_columns_in( 31 downto 24); --Position 1,0 
mix_columns_out(23 downto 16) <= mix_columns_in(7 downto 0) XOR mix_columns_in(15 downto 8) XOR r4 XOR r5;-- Position 2,0
mix_columns_out(31 downto 24) <= r6 XOR mix_columns_in(15 downto 8) XOR mix_columns_in(23 downto 16) XOR r7;--Position 3,0

mix_columns_out(39 downto 32) <= r8 XOR r9 XOR mix_columns_in(55 downto 48) XOR mix_columns_in(63 downto 56);--Position 0,1
mix_columns_out(47 downto 40) <= mix_columns_in(39 downto 32) XOR r10 XOR r11 XOR mix_columns_in( 63 downto 56);--Position 1,1
mix_columns_out(55 downto 48) <= mix_columns_in(39 downto 32) XOR mix_columns_in(47 downto 40) XOR r12 XOR r13;--Position 2,1
mix_columns_out(63 downto 56) <= r14 XOR mix_columns_in( 47 downto 40) XOR mix_columns_in(55 downto 48) XOR r15;--Position 3,1

mix_columns_out(71 downto 64) <= r16 XOR r17 XOR mix_columns_in(87 downto 80) XOR mix_columns_in(95 downto 88);--Position 0,2
mix_columns_out(79 downto 72) <= mix_columns_in(71 downto 64) XOR r18 XOR r19 XOR mix_columns_in(95 downto 88);--Position 1,2
mix_columns_out(87 downto 80) <= mix_columns_in(71 downto 64) XOR mix_columns_in(79 downto 72) XOR r20 XOR r21;--Position 2,2
mix_columns_out(95 downto 88) <= r22 XOR mix_columns_in(79 downto 72) XOR mix_columns_in(87 downto 80) XOR r23;--Position 3,2

mix_columns_out(103 downto 96) <= r24 XOR r25 XOR mix_columns_in(119 downto 112) XOR mix_columns_in(127 downto 120);--Position 0,3
mix_columns_out(111 downto 104) <= mix_columns_in(103 downto 96) XOR r26 XOR r27 XOR mix_columns_in(127 downto 120);--Position 1,3
mix_columns_out(119 downto 112) <= mix_columns_in(103 downto 96) XOR mix_columns_in(111 downto 104) XOR r28 XOR r29;--Position 2,3
mix_columns_out(127 downto 120) <= r30 XOR mix_columns_in(111 downto 104) XOR mix_columns_in(119 downto 112) XOR r31;--Position 3,3



END ARCHITECTURE;