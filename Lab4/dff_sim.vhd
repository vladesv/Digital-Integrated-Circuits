library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff_sim is
--  Port ( );
end dff_sim;

architecture Behavioral of dff_sim is

component dff is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           d : in STD_LOGIC;
           q : out STD_LOGIC);
end component dff;

signal rst, clk, d, q : std_logic;

begin

dut : dff port map (rst => rst,
                    clk => clk,
                    d => d,
                    q => q);
                    
rst <= '0' after 0 ns, '1' after 0.5 ns, '0' after 2 ns;

clock : process
begin
  clk <= '0'; wait for 3 ns;
  clk <= '1'; wait for 3 ns;
end process;                    

data : process
begin
  d <= '0'; wait for 8.5 ns;
  d <= '1'; wait for 8.5 ns;
end process;  

end Behavioral;
