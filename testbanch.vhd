library IEEE;
use IEEE.STD_LOGIC_1164.All;
ENTITY testandab IS
END testandab ;
ARCHITECTURE behaviour OF testandab IS
COMPONENT andab
PORT ( a: in std_logic ;
b: in std_logic ;
c: out std_logic );
END COMPONENT ;
Signal A_tb, B_tb, C_tb : std_logic ;
BEGIN
DUT : andab PORT MAP ( A_tb, B_tb, C_tb ) ;
PROCESS
BEGIN
A_tb <= '1';
B_tb <= '1';
wait for 20 ns ;
END PROCESS ;
END behavior ;