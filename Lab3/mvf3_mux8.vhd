library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mvf3_mux8 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end mvf3_mux8;

architecture Behavioral of mvf3_mux8 is

component mux8 is
    Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
           a : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end component;

signal i0, i1, i2, i3, i4, i5, i6, i7 : std_logic;
signal i : std_logic_vector (7 downto 0);

signal addr : std_logic_vector (2 downto 0);

begin

i0 <= '0';
i1 <= '0';
i2 <= '0';
i3 <= '1';
i4 <= '0';
i5 <= '1';
i6 <= '1';
i7 <= '1';

i <= i7 & i6 & i5 & i4 & i3 & i2 & i1 & i0;

addr <= a & b & c;

u1 : mux8 port map (i => i,
                    a => addr,
                    y => f);

end Behavioral;
