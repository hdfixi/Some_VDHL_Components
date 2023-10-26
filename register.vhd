
library IEEE;
use ieee.std_logic_1164.all;

entity register_d is 
  port(clk,d:in std_logic;
        q:out std_logic_vector(3 downto 0));
end register_d;

architecture arch of register_d is 
signal R1,q1,q2,q3,d2,q_b1,q_b2,q_b3: std_logic;
begin
  bascule_1:entity work.bascule port map(d,R1,clk,q1,q_b1);
    q(0)<=q1;

  bascule_2:entity work.bascule port map(q1,R1,clk,q2,q_b2);
    q(1)<=q2;

  bascule_3:entity work.bascule port map(q2,R1,clk,q3,q_b2);
    q(2)<=q3;
    
end arch;