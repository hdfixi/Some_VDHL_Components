library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY UAL IS
	PORT(
		in1, in2,cin,sel : IN std_logic;
		result, carry : OUT std_logic
	);
END UAL;

ARCHITECTURE behavioral OF UAL IS
SIGNAL s1, s2, s3 : std_logic;
BEGIN
    process(in1, in2, cin, sel)
       
    begin
        case sel is
            when '0' =>
                H1 : half_adder  PORT MAP(in1, in2, s1, s2);
                H2 : half_adder  PORT MAP(s1, cin, result, s3);
                O1 : OR_2  PORT MAP(s2, s3, carry);
            when '1' =>
                result <= in1 and in2;
            when '2' =>
              
                result <= in1 or in2;
            when others =>
                result <= 'X';
                carry <= 'X';
        end case;
    end process;
END behavioral;
