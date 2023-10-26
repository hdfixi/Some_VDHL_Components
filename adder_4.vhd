library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity adder_4 is
  port(
      a: IN std_logic_vector(3 downto 0);
      b: IN std_logic_vector(3 downto 0);
      s: OUT std_logic_vector(3 downto 0);
      c:OUT std_logic);
end adder_4;
ARCHITECTURE arch OF adder_4 is 
signal c1,carry1,carry2,carry3 : std_logic;
begin
  c1<='0';
  add1:entity work.sum port map(a(0),b(0),c1,carry1,s(0));
  add2:entity work.sum port map(a(1),b(1),carry1,carry2,s(1));
  add3:entity work.sum port map(a(2),b(2),carry2,carry3,s(2));
  add4:entity work.sum port map(a(3),b(3),carry3,c,s(3));
  
    

end arch;
