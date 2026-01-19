library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div_sim is
--  Port ( );
end div_sim;

architecture Behavioral of div_sim is

component div is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end component div;

signal rst, clk, clk_out : std_logic;

begin

dut : div port map (rst => rst,
                    clk => clk,
                    clk_out => clk_out);

rst <= '0' after 0 ns, '1' after 0.5 ns, '0' after 2 ns;

clock : process     --make sure to run the simulation for a few seconds
begin
  clk <= '0'; wait for 0.5 ns;
  clk <= '1'; wait for 0.5 ns;
end process; 

end Behavioral;
