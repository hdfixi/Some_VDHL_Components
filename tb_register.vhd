Library ieee;
use ieee.std_logic_1164.all ;

entity tb_register is
end tb_register;

ARCHITECTURE architest OF tb_register IS
  
Signal  rst_tb : std_logic:='0' ;
Signal  clk_tb : std_logic :='1';
Signal  SI : std_logic :='1';
Signal PO :std_logic_vector(0 to 31);

begin 
  reg: entity work.register_d port map(clk_tb ,rst_tb,SI,PO);
  clk_tb <= not clk_tb after 50 ns;
  SI<= '1' after 0 ns ,'0' after 28 ns,'1' after 104 ns ,'0' after 142 ns,'1' after 214 ns ,'0' after 254 ns,'1' after 290 ns ,'0' after 390 ns,'1' after 487 ns ,'0' after 514 ns,'1' after 527 ns ,'0' after 561 ns,'1' after 624 ns ,'0' after 649 ns,'1' after 695 ns ,'0' after 756 ns,'1' after 849 ns ,'0' after 936 ns,'1' after 952 ns ,'0' after 1048 ns,'1' after 1114 ns ,'0' after 1144 ns,'1' after 1225 ns ,'0' after 1246 ns,'1' after 1340 ns ,'0' after 1421 ns,'1' after 1474 ns ,'0' after 1531 ns,'1' after 1551 ns ,'0' after 1609 ns,'1' after 1648 ns ,'0' after 1669 ns,'1' after 1766 ns ,'0' after 1801 ns,'1' after 1835 ns ,'0' after 1885 ns,'1' after 1894 ns ,'0' after 1976 ns,'1' after 2032 ns ,'0' after 2122 ns;

end architest; 
