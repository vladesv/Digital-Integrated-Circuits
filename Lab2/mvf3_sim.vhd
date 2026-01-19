library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mvf3_sim is
--  Port ( );
end mvf3_sim;

architecture Behavioral of mvf3_sim is

component mvf3_gate_level is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end component mvf3_gate_level;

component mvf3_analytic is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end component mvf3_analytic;

component mvf3_mux2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end component mvf3_mux2;

component mvf3_mux4 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end component mvf3_mux4;

component mvf3_mux8 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end component mvf3_mux8;

component mvf3_canonical is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           f : out STD_LOGIC);
end component mvf3_canonical;

signal a, b, c, f : std_logic;

begin

dut : mvf3_gate_level port map (a => a,
                                b => b,
                                c => c,
                                f => f);

--dut : mvf3_analytic port map (a => a,
--                              b => b,
--                              c => c,
--                              f => f);

--dut : mvf3_mux2 port map (a => a,
--                          b => b,
--                          c => c,
--                          f => f);

--dut : mvf3_mux4 port map (a => a,
--                          b => b,
--                          c => c,
--                          f => f);

--dut : mvf3_mux8 port map (a => a,
--                          b => b,
--                          c => c,
--                          f => f);

--dut : mvf3_canonical port map (a => a,
--                               b => b,
--                               c => c,
--                               f => f);

sig_a : process
begin
  a <= '0'; wait for 4 ns;
  a <= '1'; wait for 4 ns;
end process;

sig_b : process
begin
  b <= '0'; wait for 2 ns;
  b <= '1'; wait for 2 ns;
end process;

sig_c : process
begin
  c <= '0'; wait for 1 ns;
  c <= '1'; wait for 1 ns;
end process;

end Behavioral;
