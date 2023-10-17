library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parity_gen_tb is
end parity_gen_tb;

architecture arch of parity_gen_tb is
  signal A0, A1, A2, A3, p: std_logic;
begin
  partity: entity work.parity_gen port map (A0, A1, A2, A3, p);

  process
    variable delay: time := 10 ns;
  begin
    for i in 0 to 9 loop
      case i is
        when 2 | 4 | 8 =>
          A0 <= '1';
        when 3 =>
          A1 <= '1';
      when 5=>
        A2 <= '1';
         A0 <= '1';
        when  7 =>
          A1 <= '1';
          A2 <= '1';
        when 6=>
          A3 <= '1';
          A0 <= '1';
        when  9 =>
          A3 <= '1';
        when others =>
          null; 
      end case;

      wait for delay;
    end loop;

    wait;
  end process;
end arch;
