library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           d : in STD_LOGIC;
           q : out STD_LOGIC);
end dff;

architecture Behavioral of dff is

signal q_local : std_logic := '0';

begin

flipflop : process (rst, clk)
begin
  if rst = '1' then
    q_local <= '0';
  elsif rising_edge(clk) then
    q_local <= d;
  end if;    
end process;

q <= q_local;

end Behavioral;
