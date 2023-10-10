LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY AES_C2 IS
PORT(
     aes_c2_in: IN std_logic_vector (127 downto 0);
     c2: IN std_logic_vector (127 downto 0);
     aes_c2_out: OUT std_logic_vector (127 downto 0)
     );
END ENTITY;



ARCHITECTURE Circuit OF AES_C2 IS

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

SIGNAL SubBytes_ShiftRows,ShiftRows_MixColumns,MixColumns_out: std_logic_vector(127 downto 0);
BEGIN

SubBytes_inst: SubBytes PORT MAP (sub_bytes_in => aes_c2_in, sub_bytes_out=> SubBytes_ShiftRows);
ShiftRows_inst: ShiftRows PORT MAP(shift_rows_in => SubBytes_ShiftRows, shift_rows_out => ShiftRows_MixColumns);
MixColumns_inst: MixColumns PORT MAP (mix_columns_in => ShiftRows_MixColumns, mix_columns_out => MixColumns_out);
aes_c2_out <= c2 XOR MixColumns_out;

END ARCHITECTURE;
