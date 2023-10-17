library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity parity_gen is
   port(A0,A1,A2,A3:in std_logic;
p:out std_logic);
end parity_gen ;
architecture arch of parity_gen is 
signal a,b : std_logic;
begin 
  xor_1:entity work.xorab port map(A0,A1,a);
  xor_2:entity work.xorab port map(a,A2,b);
  xor_3:entity work.xorab port map(b,A3,p);
end arch;
