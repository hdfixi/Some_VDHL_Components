library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY sumf IS
	PORT(
		in1, in2, cin : IN std_logic;
		result, carry : OUT std_logic
	);
END sumf;

ARCHITECTURE structural OF sumf IS
	COMPONENT half_adder IS
		PORT(
			a, b : IN std_logic;
			sum, cout : OUT std_logic
		);
	END COMPONENT;

	COMPONENT OR_2 IS
		PORT(
			a, b : IN std_logic;
			c : OUT std_logic
		);
	END COMPONENT;

	SIGNAL s1, s2, s3 : std_logic;
BEGIN
	H1 : half_adder PORT MAP(in1, in2, s1, s2);
	H2 : half_adder PORT MAP(s1, cin, result, s3);
	O1 : OR_2 PORT MAP(s2, s3, carry);
END structural;
