LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AES_C2 IS
PORT (AES_C2_in: IN std_logic_vector (127 downto 0);
    C2: IN std_logic_vector (127 downto 0);
    AES_C2_out: OUT std_logic_vector (127 downto 0));
END ENTITY;



ARCHITECTURE Circuit OF AES_C2 IS

COMPONENT SubBytes IS
Port(SubBytes_in: IN std_logic_vector (127 downto 0);
    SubBytes_out: OUT std_logic_vector (127 downto 0));
END COMPONENT;

COMPONENT ShiftRows IS
PORT(ShiftRows_in: IN std_logic_vector (127 downto 0);
     ShiftRows_out: OUT std_logic_vector (127 downto 0));
END COMPONENT;

COMPONENT MixColumns IS
PORT(MixColumns_in: IN std_logic_vector (127 downto 0);
     MixColumns_out: OUT std_logic_vector (127 downto 0));
END COMPONENT;

SIGNAL SubBytes_ShiftRows,ShiftRows_MixColumns,C2XOR: std_logic_vector(127 downto 0);
BEGIN

SubBytes0: SubBytes PORT MAP (SubBytes_in => AES_C2_in, SubBytes_out=> SubBytes_ShiftRows);
ShiftRows0: ShiftRows PORT MAP(ShiftRows_in => SubBytes_ShiftRows,ShiftRows_out => ShiftRows_MixColumns);
MixColumns0: MixColumns PORT MAP (MixColumns_in => ShiftRows_MixColumns,MixColumns_out => C2XOR);
AES_C2_OUT <= C2 XOR C2XOR;
END ARCHITECTURE;
