library IEEE;
use IEEE.STD_LOGIC_1164.All;

entity andab is
  port (
    a : in std_logic ;
    b : in std_logic ;
    c : out std_logic
  );
end andab ;

architecture behv of andab is
begin
  c <= a and b ;
end behv ;

