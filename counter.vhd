library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
	entity counter is
    port (
        clk   : in  std_logic;
        reset : in  std_logic;
        count : out std_logic_vector(3 downto 0));
end counter;

architecture Behavioral of counter is
    signal c : std_logic_vector(3 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            c <= (others => '0');  
        elsif rising_edge(clk) then
            c <= c + 1; 
            if c = "1111" then 
                c <= (others => '0');
            end if;
        end if;
    end process;

    count <= c;  
end Behavioral;