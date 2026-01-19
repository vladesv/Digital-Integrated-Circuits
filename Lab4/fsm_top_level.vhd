library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_top_level is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (1 downto 0));
end fsm_top_level;

architecture Behavioral of fsm_top_level is

component div is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component div;

component fsm_structural is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (1 downto 0));
end component fsm_structural;

component fsm_behavioral is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (1 downto 0));
end component fsm_behavioral;

signal clk1Hz : std_logic;

begin

divider : div port map (rst => rst,
                        clk => clk,
                        clk_out => clk1Hz);

fsm : fsm_structural port map (rst => rst,
                               clk => clk1Hz,
                               q => q);
                               
--fsm : fsm_behavioral port map (rst => rst,
--                               clk => clk1Hz,
--                               q => q);                               

end Behavioral;
