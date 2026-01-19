library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8 is
    Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
           a : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end mux8;

architecture Behavioral of mux8 is

begin

y <= i(0) when a = "000" else
     i(1) when a = "001" else
     i(2) when a = "010" else
     i(3) when a = "011" else
     i(4) when a = "100" else
     i(5) when a = "101" else
     i(6) when a = "110" else
     i(7) when a = "111" else
     'Z';   -- high impedance = the mux is blocked

--with a select
--y <= i(0) when "000",
--     i(1) when "001",
--     i(2) when "010",
--     i(3) when "011",
--     i(4) when "100",
--     i(5) when "101",
--     i(6) when "110",
--     i(7) when "111",
--     'Z' when others;  -- high impedance = the mux is blocked

end Behavioral;
