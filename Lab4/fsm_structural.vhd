library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_structural is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (1 downto 0));
end fsm_structural;

architecture Behavioral of fsm_structural is

component dff is
    Port ( rst : in STD_LOGIC;
           clk : in STD_LOGIC;
           d : in STD_LOGIC;
           q : out STD_LOGIC);
end component;

signal data, q_local : std_logic_vector (1 downto 0) := "00";

begin

data(1) <= q_local(1) xor q_local(0);
data(0) <= not q_local(0);

--with q_local select
--data <= "01" when "00",
--        "10" when "01",
--        "11" when "10",
--        "00" when "11",
--        "ZZ" when others; 

d1 : dff port map (rst => rst,
                   clk => clk,
                   d => data(1),
                   q => q_local(1));
                   
d0 : dff port map (rst => rst,
                   clk => clk,
                   d => data(0),
                   q => q_local(0));                   

q <= q_local;

end Behavioral;
