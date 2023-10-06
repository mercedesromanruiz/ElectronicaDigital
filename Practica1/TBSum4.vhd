library IEEE;
use IEEE.std_logic_1164.all;

entity TBSum4 is
end TBSum4;

architecture Arch_TBSum4 of TBSum4 is
	signal TB_X, TB_Y, TB_S : std_logic_vector (3 downto 0);
	signal TB_Ci, TB_Co : std_logic;
begin
	sum4: entity work.sum4 port map (TB_X, TB_Y, TB_S, TB_Co, TB_Ci);

	process
	begin
		TB_X <= "1111";
		TB_Y <= "1111";
		TB_Ci <= '0';
		wait for 10 ns;
	
		TB_X <= "1111";
		TB_Y <= "1111";
		TB_Ci <= '1';
		wait for 10 ns;

		TB_X <= "0000";
		TB_Y <= "0000";
		TB_Ci <= '0';
		wait for 10 ns;

		TB_X <= "1111";
		TB_Y <= "1111";
		TB_Ci <= '1';
		wait for 10 ns;	
	end process;

end Arch_TBSum4;