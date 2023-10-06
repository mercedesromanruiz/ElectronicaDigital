use IEEE.std_logic_1164.all;

entity TBSum4 is
end TBSum4;

architecture Arch_TBSum4 of TBSum4 is
	signal TB_X, TB_Y, TB_S : std_logic_vector;
	signal TB_Ci : std_logic;
begin
	sum4: entity work.sum4 port map ();

	TB_X <= "1111", "0000" after 40ns;
	TB_Y <= "1111", "0000" after 20ns, "1111" after 40ns, "0000" after 60ns;
	TB_Ci <= '0', '1' after 10ns, '0' after 20ns, '1' after 30ns, '0' after 40ns, '1' after 50ns, '0' after 60ns, '1' after 60ns, '0' after 70ns;
end Arch_TBSum4;