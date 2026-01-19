----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2025 11:42:38 AM
-- Design Name: 
-- Module Name: mux2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux2 is
    Port ( i : in STD_LOGIC_VECTOR (1 downto 0);
           a : in STD_LOGIC;
           y : out STD_LOGIC);
end mux2;

architecture Behavioral of mux2 is

begin

y <= i(0) when a = '0' else
     i(1) when a = '1' else
     'Z';   -- high impedance = the mux is blocked

--with a select
--y <= i(0) when '0',
--     i(1) when '1',
--     'Z' when others;  -- high impedance = the mux is blocked

end Behavioral;
