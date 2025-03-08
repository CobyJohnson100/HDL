-- and_gate_tb.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_tb is
end and_gate_tb;

architecture Behavioral of and_gate_tb is
    signal a, b, y : STD_LOGIC;
begin
    uut: entity work.and_gate
        port map (
            a => a,
            b => b,
            y => y
        );

    process
    begin
        -- Test case 1
        a <= '0'; b <= '0';
        wait for 10 ns;
        -- Test case 2
        a <= '0'; b <= '1';
        wait for 10 ns;
        -- Test case 3
        a <= '1'; b <= '0';
        wait for 10 ns;
        -- Test case 4
        a <= '1'; b <= '1';
        wait for 10 ns;
        wait;
    end process;
end Behavioral;