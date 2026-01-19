library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mvf3_mux2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end mvf3_mux2;

architecture Behavioral of mvf3_mux2 is

component mux2 is
    Port ( i : in STD_LOGIC_VECTOR (1 downto 0);
           a : in STD_LOGIC;
           y : out STD_LOGIC);
end component;

signal i0, i1 : std_logic;
signal i : std_logic_vector (1 downto 0);

begin

i0 <= b and c;
i1 <= b or c;

i <= i1 & i0;

u1 : mux2 port map (i => i,
                    a => a,
                    y => f);

end Behavioral;
