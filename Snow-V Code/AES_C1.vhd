LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AES_C1 IS
PORT(
     aes_c1_in: IN std_logic_vector (127 downto 0);
     c1: IN std_logic_vector (127 downto 0);
     aes_c1_out: OUT std_logic_vector (127 downto 0)
     );
END ENTITY;



ARCHITECTURE Circuit OF AES_C1 IS

COMPONENT SubBytes IS
Port(
     sub_bytes_in: IN std_logic_vector (127 downto 0);
     sub_bytes_out: OUT std_logic_vector (127 downto 0)
     );
END COMPONENT;

COMPONENT ShiftRows IS
PORT(
     shift_rows_in: IN std_logic_vector (127 downto 0);
     shift_rows_out: OUT std_logic_vector (127 downto 0)
     );
END COMPONENT;

COMPONENT MixColumns IS
PORT(
    mix_columns_in: IN std_logic_vector (127 downto 0);
    mix_columns_out: OUT std_logic_vector (127 downto 0)
    );
END COMPONENT;

SIGNAL SubBytes_ShiftRows,ShiftRows_MixColumns,MixColumns_Out: std_logic_vector(127 downto 0);
BEGIN

SubBytes0: SubBytes PORT MAP (sub_bytes_in => aes_c1_in, sub_bytes_out=> SubBytes_ShiftRows);
ShiftRows0: ShiftRows PORT MAP(shift_rows_in => SubBytes_ShiftRows,shift_rows_out => ShiftRows_MixColumns);
MixColumns0: MixColumns PORT MAP (mix_columns_in => ShiftRows_MixColumns,mix_columns_out => MixColumns_Out);
aes_c1_out <= c1 XOR MixColumns_Out;

END ARCHITECTURE;