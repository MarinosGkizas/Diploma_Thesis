LIBRARY IEEE;
USE IEEE.std_logic_1164.all;


ENTITY Mux IS
GENERIC(N:integer);
PORT( 
     a,b: IN std_logic_vector (N-1 downto 0);
     c: OUT std_logic_vector(N-1 downto 0);
     sel: IN std_logic
     );
END ENTITY;  

ARCHITECTURE Circuit OF Mux IS
BEGIN
    PROCESS(a,b,sel)
    BEGIN
    
        CASE sel IS
            WHEN '0' => c<=a;
            WHEN '1' => c<=b;
            WHEN OTHERS => c<= (others=>'X'); 
        END CASE;
        
    END PROCESS;

END ARCHITECTURE;
