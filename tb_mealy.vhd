library ieee;
use ieee.std_logic_1164.all;

entity tb_mealy is
end entity;

           
architecture arch of tb_mealy is
  COMPONENT mealy is
  PORT(E,clk,reset: in std_logic;
S : out std_logic);
END COMPONENT;
Signal  clk_tb : std_logic := '0' ;
Signal  rst_tb : std_logic :='0';
Signal  E_tb : std_logic :='0' ;
Signal  S_tb : std_logic ;
begin
DI: mealy PORT MAP(E_tb,clk_tb,rst_tb,S_tb);
clk_tb <= not clk_tb after 50 ns;
rst_tb <='1','0' after 200 ns;
E_tb <='1','0' after 120 ns;
end arch;

