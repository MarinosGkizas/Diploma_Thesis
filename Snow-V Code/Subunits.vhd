LIBRARY IEEE;
USE IEEE.std_logic_1164.all;


ENTITY Subunits IS
PORT(
     subunits_in,coeff_in: IN std_logic_vector(15 downto 0);
     subunits_out: OUT std_logic_vector(15 downto 0)
     );
END ENTITY;

--Coeff_a = 0x990f
--Coeff b = 0xc963


ARCHITECTURE Circuit OF Subunits IS

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

Shifted <= subunits_in(14 downto 0) & '0';
Xored <= coeff_in XOR Shifted;
mux0: Mux GENERIC MAP ( N => 16) PORT MAP( a => Shifted, b => Xored, sel => subunits_in(15), c => subunits_out  );

END ARCHITECTURE;
