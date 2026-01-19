library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_behavioral is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (1 downto 0));
end fsm_behavioral;

architecture Behavioral of fsm_behavioral is

signal data, q_local : std_logic_vector (1 downto 0) := "00";

begin

flipflop : process (rst, clk)
begin
  if rst = '1' then
    q_local <= "00";
  elsif rising_edge(clk) then
    q_local <= data;
  end if;    
end process;

with q_local select
data <= "01" when "00",
        "10" when "01",
        "11" when "10",
        "00" when "11",
        "ZZ" when others; 
        
q <= q_local;        

end Behavioral;
