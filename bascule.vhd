library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity bascule is
    Port ( D: in STD_LOGIC;
            Reset: in STD_LOGIC;
            clk : in STD_LOGIC;
            Q : out STD_LOGIC;
            Q_b:out STD_LOGIC
            );
end bascule;

architecture behaviour OF bascule IS
begin
    process(clk)
    begin
        if Reset = '1' then
            Q <= '0';
        elsif rising_edge(clk) then
            Q <= D;
            Q_b<=not D;
        end if;
    end process;
end behaviour;
