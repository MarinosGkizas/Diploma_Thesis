LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY D_FF IS
PORT(
     d_in: IN std_logic;
     q_out: OUT std_logic;
     clk,rst: IN std_logic
     );
END ENTITY;

ARCHITECTURE Circuit OF D_FF IS
BEGIN
    PROCESS(clk,rst)
    BEGIN
        IF (rst='1') THEN
        q_out <= '0';
        
        ELSIF (clk'EVENT and clk='1') THEN
        q_out <= d_in;
                
        END IF;
    END PROCESS;
END ARCHITECTURE;
