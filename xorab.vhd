library IEEE;
use IEEE.STD_LOGIC_1164.All;


entity xorab is
    Port ( a: in STD_LOGIC;
            b: in STD_LOGIC;
           c : out STD_LOGIC);
end xorab;
ARCHITECTURE behaviour OF xorab IS

BEGIN
c<=a xor b;
END behaviour ;



