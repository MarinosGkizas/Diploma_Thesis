LIBRARY IEEE;
USE IEEE.std_logic_1164.all;


ENTITY PermutationBO IS
PORT(
     pbo_in: IN std_logic_vector(127 downto 0);
     pbo_out: OUT std_logic_vector(127 downto 0)
     );
END ENTITY; 

ARCHITECTURE Circuit OF PermutationBO IS

BEGIN
--Permutation block sigma = [ 0, 4, 8, 12, 1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15 ]
pbo_out(7 downto 0) <= pbo_in (7 downto 0);
pbo_out(15 downto 8) <= pbo_in (39 downto 32);
pbo_out(23 downto 16) <= pbo_in (71 downto 64);
pbo_out(31 downto 24) <= pbo_in (103 downto 96);
pbo_out(39 downto 32) <= pbo_in (15 downto 8);
pbo_out(47 downto 40) <= pbo_in (47 downto 40);
pbo_out(55 downto 48) <= pbo_in (79 downto 72);
pbo_out(63 downto 56) <= pbo_in (111 downto 104);
pbo_out(71 downto 64) <= pbo_in (23 downto 16);
pbo_out(79 downto 72) <= pbo_in (55 downto 48);
pbo_out(87 downto 80) <= pbo_in (87 downto 80);
pbo_out(95 downto 88) <= pbo_in (119 downto 112);
pbo_out(103 downto 96) <= pbo_in (31 downto 24);
pbo_out(111 downto 104) <= pbo_in (63 downto 56);
pbo_out(119 downto 112) <= pbo_in (95 downto 88);
pbo_out(127 downto 120) <= pbo_in (127 downto 120);

END ARCHITECTURE;
