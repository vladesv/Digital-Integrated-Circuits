library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mvf3_gate_level is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end mvf3_gate_level;

architecture Behavioral of mvf3_gate_level is

component and2 is
  Port (a, b : in std_logic;
           f : out std_logic);
end component;

component or2 is
  Port (a, b : in std_logic;
           f : out std_logic);
end component;

signal ab, ac, bc, sig1 : std_logic;

begin

U1 : and2 port map (a => a,
                    b => b,
                    f => ab);

U2 : and2 port map (a => a,
                    b => c,
                    f => ac);
                    
U3 : and2 port map (a => b,
                    b => c,
                    f => bc);                    

U4 : or2 port map (a => ab,
                   b => ac,
                   f => sig1); 

U5 : or2 port map (a => sig1,
                   b => bc,
                   f => f); 

end Behavioral;
