LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY FA IS
PORT(
     fa_in0,fa_in1,fa_c_in: IN std_logic;  
     fa_sum_out,fa_c_out: OUT std_logic
     );
END ENTITY;

ARCHITECTURE Circuit OF FA IS
BEGIN  
     
        fa_sum_out<= (fa_in0  XOR fa_in1 ) XOR fa_c_in;
        fa_c_out<=  (fa_in0  AND fa_in1 ) OR ((fa_in0   XOR fa_in1 ) AND fa_c_in);
                      
END ARCHITECTURE;
