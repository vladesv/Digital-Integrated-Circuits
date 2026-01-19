library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mvf3_canonical is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end mvf3_canonical;

architecture Behavioral of mvf3_canonical is

signal addr : std_logic_vector (2 downto 0);

begin

addr <= a & b & c;

--f <= '0' when addr = "000" else
--     '0' when addr = "001" else
--     '0' when addr = "010" else
--     '1' when addr = "011" else
--     '0' when addr = "100" else
--     '1' when addr = "101" else
--     '1' when addr = "110" else
--     '1' when addr = "111" else
--     'Z';

with addr select
f <= '0' when "000",
     '0' when "001",
     '0' when "010",
     '1' when "011",
     '0' when "100",
     '1' when "101",
     '1' when "110",
     '1' when "111",
     'Z' when others;

end Behavioral;
