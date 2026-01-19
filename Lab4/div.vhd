library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end div;

architecture Behavioral of div is

signal cnt : integer := 0;

begin

counter : process (rst, clk)
begin
  if rst = '1' then
    cnt <= 0;
    clk_out <= '0';
  elsif rising_edge(clk) then
    if cnt = 10**8 - 1 then     -- for f_out = 1Hz, n = 10**8
      cnt <= 0;
      clk_out <= '1';
    else
      cnt <= cnt + 1;
      clk_out <= '0';
    end if;
  end if;         
end process;

end Behavioral;
