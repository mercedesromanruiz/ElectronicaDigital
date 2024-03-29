library IEEE;
use IEEE.std_logic_1164.all;

entity sum4 is
	port (X : in std_logic_vector (3 downto 0);
	      Y : in std_logic_vector (3 downto 0);
	      S : out std_logic_vector (3 downto 0);
	      Co : out std_logic;
	      Ci : in std_logic);
end sum4;

architecture Arch_sum4 of sum4 is
	signal C3, C2, C1 : std_logic;	
begin
	suma0 : entity work.sum1 port map (X(0), Y(0), Ci, S(0), C1);
	suma1 : entity work.sum1 port map (X(1), Y(1), C1, S(1), C2);
	suma2 : entity work.sum1 port map (X(2), Y(2), C2, S(2), C3);
	suma3 : entity work.sum1 port map (X(3), Y(3), C3, S(3), Co);	
end Arch_sum4;