LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY SubBytes IS
Port(
     sub_bytes_in: IN std_logic_vector (127 downto 0);
     sub_bytes_out: OUT std_logic_vector (127 downto 0)
     );
END ENTITY;

ARCHITECTURE Circuit OF SubBytes IS

COMPONENT S_Box IS
PORT(
     s_box_in: IN std_logic_vector (7 downto 0);
     s_box_out: OUT std_logic_vector (7 downto 0)
     );
END COMPONENT;

--StateArray of Bytes
--{0} {4} {8} {12}
--{1} {5} {9} {13}
--{2} {6} {10} {14}
--{3} {7} {11} {15}

BEGIN
S_Box0: S_Box PORT MAP(s_box_in => sub_bytes_in(7 downto 0), s_box_out => sub_bytes_out(7 downto 0));
S_Box1: S_Box PORT MAP(s_box_in => sub_bytes_in(15 downto 8), s_box_out => sub_bytes_out(15 downto 8));
S_Box2: S_Box PORT MAP(s_box_in => sub_bytes_in(23 downto 16), s_box_out => sub_bytes_out(23 downto 16));
S_Box3: S_Box PORT MAP(s_box_in => sub_bytes_in(31 downto 24), s_box_out => sub_bytes_out(31 downto 24));
S_Box4: S_Box PORT MAP(s_box_in => sub_bytes_in(39 downto 32), s_box_out => sub_bytes_out(39 downto 32));
S_Box5: S_Box PORT MAP(s_box_in => sub_bytes_in(47 downto 40), s_box_out => sub_bytes_out(47 downto 40));
S_Box6: S_Box PORT MAP(s_box_in => sub_bytes_in(55 downto 48), s_box_out => sub_bytes_out(55 downto 48) );
S_Box7: S_Box PORT MAP(s_box_in => sub_bytes_in(63 downto 56), s_box_out => sub_bytes_out(63 downto 56));
S_Box8: S_Box PORT MAP(s_box_in => sub_bytes_in(71 downto 64), s_box_out => sub_bytes_out(71 downto 64) );
S_Box9: S_Box PORT MAP(s_box_in => sub_bytes_in(79 downto 72), s_box_out => sub_bytes_out(79 downto 72));
S_Box10: S_Box PORT MAP(s_box_in => sub_bytes_in(87 downto 80), s_box_out => sub_bytes_out(87 downto 80));
S_Box11: S_Box PORT MAP(s_box_in => sub_bytes_in(95 downto 88), s_box_out => sub_bytes_out(95 downto 88));
S_Box12: S_Box PORT MAP(s_box_in => sub_bytes_in(103 downto 96), s_box_out => sub_bytes_out(103 downto 96));
S_Box13: S_Box PORT MAP(s_box_in => sub_bytes_in(111 downto 104), s_box_out => sub_bytes_out(111 downto 104));
S_Box14: S_Box PORT MAP(s_box_in => sub_bytes_in(119 downto 112), s_box_out => sub_bytes_out(119 downto 112));
S_Box15: S_Box PORT MAP(s_box_in => sub_bytes_in(127 downto 120), s_box_out => sub_bytes_out(127 downto 120));

END ARCHITECTURE;