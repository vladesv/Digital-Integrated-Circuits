library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and2_sim is
    --Port ();
end and2_sim;

architecture Behavioral of and2_sim is

component and2 is
  Port (a, b : in std_logic;
           f : out std_logic);
end component and2;

signal a, b, f : std_logic;

begin

dut : and2 port map (a => a,
                     b => b,
                     f => f);

sig_a : process
begin
  a <= '0'; wait for 2 ns;
  a <= '1'; wait for 2 ns;
end process;

sig_b : process
begin
  b <= '0'; wait for 1 ns;
  b <= '1'; wait for 1 ns;
end process;

end Behavioral;