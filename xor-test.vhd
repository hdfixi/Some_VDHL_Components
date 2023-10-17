library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_XOR_gate is
end TB_XOR_gate;

architecture behavior of TB_XOR_gate is
  signal  a2,a0, a1, a3,s1,s2, p: std_logic;  

--  component XOR_gate
  --  port (
  --    a: in std_logic;
  --    b: in std_logic;
  --    c: out std_logic
  --  );
 -- end component; 

begin
 xor1: entity work.xorab port map (a0, a1, s1);
 xor2: entity work.xorab port map (s1, a2, s2);
 xor3: entity work.xorab port map (s2, a3, p);
  process
  begin
    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    wait for 10 ns;



   
  end process;
end behavior;

