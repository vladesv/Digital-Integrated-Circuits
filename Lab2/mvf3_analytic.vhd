library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mvf3_analytic is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end mvf3_analytic;

architecture Behavioral of mvf3_analytic is

begin

f <= (a and b) or (a and c) or (b and c);

end Behavioral;
