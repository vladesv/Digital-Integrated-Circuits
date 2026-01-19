library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           f : out STD_LOGIC);
end and2;

architecture Behavioral of and2 is

begin

f <= a and b;  

end Behavioral;
