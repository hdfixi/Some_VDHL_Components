library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY   tb_compteur IS
END   tb_compteur;

ARCHITECTURE architest OF tb_compteur IS




Signal  rst_tb : std_logic ;
Signal  clk_tb : std_logic :='1';
Signal  qc_tb : unsigned(2 downto 0) ;


BEGIN
UUT: entity work.counterRTL PORT MAP(clk_tb,rst_tb,qc_tb);

-- arreter la simulation Ã  100ns (settings)

rst_tb <='0','1' after 100 ns;
clk_tb <= not clk_tb after 50 ns;

END  architest;
