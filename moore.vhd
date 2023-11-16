library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity moore is 
  port(E,reset,clk:in std_logic;
    s:out std_logic);
  end moore;
  
  architecture arch of moore is
    type Etat is (Etat0, Etat1, Etat2);
Signal Etat_present, Etat_futur : Etat := Etat0;
begin 
Sequentiel_maj_etat : process (clk, reset)
begin
if reset = '0' then
Etat_present <= Etat0;
elsif clk'event and clk = '1' then
Etat_present <= Etat_futur;
end if;
end process Sequentiel_maj_etat;
    
    Combinatoire_etats : process (E, Etat_present)
begin
case Etat_present is
when Etat0 => if E = '1' then

Etat_futur <= Etat1;
else
Etat_futur <= Etat0;
end if;
when Etat1 => if E = '0' then

Etat_futur <= Etat2;
else
Etat_futur <= Etat1;
end if;
when Etat2 => if E = '1' then

Etat_futur <= Etat1;
else
Etat_futur <= Etat0;
end if;

end case;
end process Combinatoire_etats;

Combinatoire_sorties : process (Etat_present)
begin
case Etat_present is
when Etat0 => S <= '0';
when Etat1 => S <= '0';
when Etat2 => S <= '1';
end case;
end process Combinatoire_sorties;
  end arch ;
  
