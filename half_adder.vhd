library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY half_adder IS
	PORT (
		a, b: IN std_logic;
		sum, cout: OUT std_logic
	);
END half_adder;

ARCHITECTURE beh OF half_adder IS
BEGIN
	sum <= a XOR b;
	cout <= a AND b;
END beh;
