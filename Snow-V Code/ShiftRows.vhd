LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY ShiftRows IS
PORT(
     shift_rows_in: IN std_logic_vector (127 downto 0);
     shift_rows_out: OUT std_logic_vector (127 downto 0)
     );
END ENTITY;

ARCHITECTURE Circuit OF ShiftRows IS
BEGIN

-- 0 4 8 12       1st line, 0 shifts
-- 5 9 13 1       2nd line, 1 shift
-- 10 14 2 6      3rd line, 2 shifts
-- 15 3 7 11      4th line, 3 shifts

shift_rows_out(7 downto 0) <= shift_rows_in(7 downto 0) ; --Byte 0
shift_rows_out(15 downto 8) <= shift_rows_in (47 downto 40); --Byte 1
shift_rows_out(23 downto 16) <= shift_rows_in (87 downto 80); --Byte 2
shift_rows_out(31 downto 24) <= shift_rows_in (127 downto 120); --Byte 3
shift_rows_out(39 downto 32) <= shift_rows_in (39 downto 32); --Byte 4
shift_rows_out(47 downto 40) <= shift_rows_in (79 downto 72); --Byte 5
shift_rows_out(55 downto 48) <= shift_rows_in (119 downto 112); --Byte 6
shift_rows_out(63 downto 56) <= shift_rows_in (31 downto 24); --Byte 7
shift_rows_out(71 downto 64) <= shift_rows_in (71 downto 64); --Byte 8
shift_rows_out(79 downto 72) <= shift_rows_in (111 downto 104); --Byte 9
shift_rows_out(87 downto 80) <= shift_rows_in (23 downto 16); --Byte 10
shift_rows_out(95 downto 88) <= shift_rows_in (63 downto 56); --Byte 11
shift_rows_out(103 downto 96) <= shift_rows_in (103 downto 96); --Byte 12
shift_rows_out(111 downto 104) <= shift_rows_in (15 downto 8); --Byte 13
shift_rows_out(119 downto 112) <= shift_rows_in (55 downto 48); --Byte 14
shift_rows_out(127 downto 120) <= shift_rows_in (95 downto 88); --Byte 15



END ARCHITECTURE;