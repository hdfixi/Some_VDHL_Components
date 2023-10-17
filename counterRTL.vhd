library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counterRTL is
  port (
    clk, rst: in std_logic;
    q: out unsigned(2 downto 0)
  );
end counterRTL;

architecture archi of counterRTL is
  signal s: unsigned(2 downto 0) := "000";
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        s <= "000";
        q <= s;
      else
        s <= s + 1;
        q <= s;
      end if;
    end if;
  end process;
end archi;
