library ieee;
use ieee.std_logic_1164.all;

entity test_e is
end entity;

           
architecture test_a of test_e is
  COMPONENT moore is
  PORT(E,clk,reset: in std_logic;
S : out std_logic);
END COMPONENT;
Signal  clk_tb : std_logic := '0' ;
Signal  rst_tb : std_logic :='0';
Signal  E_tb : std_logic :='0' ;
Signal  S_tb : std_logic ;
begin
 
 
 
DI: moore PORT MAP(E_tb,clk_tb,rst_tb,S_tb);
clk_tb <= not clk_tb after 50 ns;
rst_tb <='1','0' after 200 ns;
E_tb <='1','0' after 120 ns;
end test_a;
