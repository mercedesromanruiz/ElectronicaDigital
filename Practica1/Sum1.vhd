library IEEE;
use IEEE.std_logic_1164.all;

entity sum1 is
	port(A, B, EA : in std_logic;
	S, SC : out std_logic);
end sum1;

architecture Arch_sum1 of sum1 is
begin
	S <= (EA XOR (A XOR B));
	SC <= ((A AND B) OR (EA AND (A XOR B)));
end Arch_sum1;