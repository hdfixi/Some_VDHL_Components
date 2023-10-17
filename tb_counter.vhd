library IEEE;
use IEEE.STD_LOGIC_1164.All;
--use ieee.std_logic_arith.all;

ENTITY   tb_counter IS
END   tb_counter;

ARCHITECTURE architest OF tb_counter IS


Signal  rst_tb : std_logic ;
Signal  clk_tb : std_logic ;
Signal  qc_tb :  std_logic_vector(3 downto 0) ;
Signal  qc_tb_b : std_logic_vector(3 downto 0) ;


BEGIN
UUT: entity work.counter_mod_8 PORT MAP(clk_tb,rst_tb,qc_tb,qc_tb_b);




END  architest;
