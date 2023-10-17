library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY sum IS
PORT(in1,in2,cin: IN std_logic;
result,carry,s: OUT std_logic);
END sum;
ARCHITECTURE structural OF sum is 

COMPONENT half_adder is
		PORT(a,b: IN std_logic;
		su,carry: OUT std_logic);
END COMPONENT;

COMPONENT OR_2 is 
		PORT(a,b: IN std_logic;
		c : OUT std_logic);
END COMPONENT;

SIGNAL s1,s2,s3 : std_logic;
BEGIN
H1 : half_adder PORT MAP(in1,in2, s1, s2);
H2 : half_adder PORT MAP(s1,cin, s,s3);
O1 : or_2 PORT MAP(s2,s3, carry);

END structural;