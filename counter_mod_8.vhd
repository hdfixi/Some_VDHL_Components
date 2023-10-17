library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_mod_8 is
  port(clk,rst:in std_logic;
q,q_b:inout std_logic_vector(3 downto 0));
end counter_mod_8;

architecture behavior of counter_mod_8 is
  signal D2, D3, R1, a,Q1_b: std_logic;
  begin
  Q1_b<=q_b(0);
  bascule_1:entity work.bascule port map(Q1_b,R1,clk,q(0),q_b(0));
  xor_1:entity work.xorab port map(q(0),q(1),D2);
  bascule_2:entity work.bascule port map(D2,R1,clk,q(1),q_b(1));
  and_1:entity work.xorab port map(q(0),q(1),a);
  xor_2:entity work.xorab port map(a,q(2),D3);
  bascule_3:entity work.bascule port map(D3,R1,clk,q(2),q_b(2));

end behavior;
