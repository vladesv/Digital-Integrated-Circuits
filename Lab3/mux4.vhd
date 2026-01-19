library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
    Port ( i : in STD_LOGIC_VECTOR (3 downto 0);
           a : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC);
end mux4;

architecture Behavioral of mux4 is

begin

y <= i(0) when a = "00" else
     i(1) when a = "01" else
     i(2) when a = "10" else
     i(3) when a = "11" else
     'Z';   -- high impedance = the mux is blocked

--with a select
--y <= i(0) when "00",
--     i(1) when "01",
--     i(2) when "10",
--     i(3) when "11",
--     'Z' when others;  -- high impedance = the mux is blocked

end Behavioral;
