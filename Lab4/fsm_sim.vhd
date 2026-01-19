library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_sim is
--  Port ( );
end fsm_sim;

architecture Behavioral of fsm_sim is

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

component fsm_top_level is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (1 downto 0));
end component fsm_top_level;

signal rst, clk : std_logic;
signal q : std_logic_vector (1 downto 0) := "00";

begin

--dut : fsm_structural port map (rst => rst,
--                               clk => clk,
--                               q => q);

--dut : fsm_behavioral port map (rst => rst,
--                               clk => clk,
--                               q => q);

dut : fsm_top_level port map (rst => rst,
                               clk => clk,
                               q => q);

rst <= '0' after 0 ns, '1' after 0.3 ns, '0' after 2.3 ns;

clock : process
begin
  clk <= '0'; wait for 0.5 ns;
  clk <= '1'; wait for 0.5 ns;
end process; 

end Behavioral;
