LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY Modulo32 IS
GENERIC(N: integer:=128);
PORT(
     mod32_in0,mod32_in1: IN std_logic_vector (N-1 downto 0);
     mod32_out: OUT std_logic_vector (N-1 downto 0)
     );    
END ENTITY;

ARCHITECTURE Circuit OF Modulo32 IS

--Component of Ripple Carry Adder(without the use of the last carry out bit)
COMPONENT RippleCarryAdder IS
PORT(
     rcadd_in0,rcadd_in1: IN std_logic_vector(31 downto 0);
     rcadd_c_in: IN std_logic:='0';
     rcadd_sum_out: OUT std_logic_vector(31 downto 0);
     rcadd_c_out: OUT std_logic
     );
END COMPONENT;

SIGNAL cout0,cout1,cout2,cout3: std_logic;

BEGIN

RCA_0: RippleCarryAdder PORT MAP( rcadd_in0 => mod32_in0 (31 downto 0), rcadd_in1 => mod32_in1 (31 downto 0), rcadd_c_in => '0', rcadd_sum_out =>  mod32_out (31 downto 0), rcadd_c_out => cout0);
RCA_1: RippleCarryAdder PORT MAP( rcadd_in0 => mod32_in0 (63 downto 32), rcadd_in1 => mod32_in1 (63 downto 32), rcadd_c_in => '0', rcadd_sum_out => mod32_out (63 downto 32), rcadd_c_out => cout1);
RCA_2: RippleCarryAdder PORT MAP( rcadd_in0 => mod32_in0 (95 downto 64), rcadd_in1 => mod32_in1 (95 downto 64), rcadd_c_in => '0', rcadd_sum_out => mod32_out (95 downto 64), rcadd_c_out => cout2);
RCA_3: RippleCarryAdder PORT MAP( rcadd_in0 => mod32_in0 (127 downto 96), rcadd_in1 => mod32_in1 (127 downto 96), rcadd_c_in => '0', rcadd_sum_out => mod32_out (127 downto 96), rcadd_c_out => cout3);

END ARCHITECTURE;
