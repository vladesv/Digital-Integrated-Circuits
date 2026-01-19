library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mvf3_mux4 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end mvf3_mux4;

architecture Behavioral of mvf3_mux4 is

component mux4 is
    Port ( i : in STD_LOGIC_VECTOR (3 downto 0);
           a : in STD_LOGIC_VECTOR (1 downto 0);
           y : out STD_LOGIC);
end component;

signal i0, i1, i2, i3 : std_logic;
signal i : std_logic_vector (3 downto 0);

signal addr : std_logic_vector (1 downto 0);

begin

i0 <= '0';
i1 <= c;
i2 <= c;
i3 <= '1';

i <= i3 & i2 & i1 & i0;

addr <= a & b;

u1 : mux4 port map (i => i,
                    a => addr,
                    y => f);

end Behavioral;
