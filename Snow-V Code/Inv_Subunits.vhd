LIBRARY IEEE;
USE IEEE.std_logic_1164.all;



ENTITY Inv_Subunits IS
PORT(
     inv_subunits_in,coeff_in: IN std_logic_vector(15 downto 0);
     inv_subunits_out: OUT std_logic_vector(15 downto 0)
     );
END ENTITY;

-- Coeff a = 0xcc87
-- Coeff b = 0xe4b1

ARCHITECTURE Circuit OF Inv_Subunits IS

COMPONENT Mux IS
GENERIC(N:integer);
PORT(
     a,b: IN std_logic_vector (N-1 downto 0);
     c: OUT std_logic_vector(N-1 downto 0);
     sel: IN std_logic
     );
END COMPONENT;  

SIGNAL Shifted,Xored: std_logic_vector (15 downto 0);

BEGIN

Shifted <= '0' & inv_subunits_in(15 downto 1) ;
Xored <= Coeff_in XOR Shifted;
mux0: Mux GENERIC MAP ( N => 16) PORT MAP( a => Shifted, b => Xored, sel => inv_subunits_in(0), c => inv_subunits_out  );


END ARCHITECTURE;
