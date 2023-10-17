
library IEEE;
use ieee.std_logic_1164.all;
entity async_counter is
  port(clk : in std_logic;
    q:out std_logic_vector(3 downto 0));
  end async_counter;
  
architecture behav of async_counter is 
signal R1,d1,d2,d3,q_b1,q_b2,q_b3:std_logic;
begin
  d1<=q_b1;
   bascule_1:entity work.bascule port map(d1,R1,clk,q(0),q_b1);
  d2<=q_b2;
   bascule_2:entity work.bascule port map(d2,R1,q_b1,q(1),q_b2); 
   d3<=q_b3; 
   bascule_3:entity work.bascule port map(d3,R1,q_b2,q(2),q_b3);


end behav ;