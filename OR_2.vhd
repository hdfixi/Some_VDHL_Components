library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY OR_2 IS
	PORT(a, b: IN std_logic; c: OUT std_logic);
END OR_2;

ARCHITECTURE beh OF OR_2 IS
BEGIN
	c <= a OR b;
END beh;
