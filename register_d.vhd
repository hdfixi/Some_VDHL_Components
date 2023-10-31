Library ieee;
use ieee.std_logic_1164.all ;
entity register_d is
port(CLK,RESET,SI: in std_logic;
PO: OUT std_logic_vector(0 to 31));

end register_d;



architecture ACR of register_d is
signal TEMP: std_logic_vector(0 to 31);
signal TEMP_b: std_logic_vector(0 to 31);
signal r: std_logic;
begin
premier: entity work.bascule port map (SI,r, CLK, TEMP(0),TEMP_b(0));
autres : for I in 0 to 30 generate
boucle: entity work.bascule port map
(TEMP(I),r,CLK,TEMP(I+1),TEMP_b(I+1));
end generate;
PO <= TEMP;
end ACR;