library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FallingEdgeLatch is
	Port (
		clk	: in STD_LOGIC; -- Clock input
		D : in STD_LOGIC; -- Data output
		Q	: out STD_LOGIC -- Output data
		);
end entity FallingEdgeLatch;

architecture Behavioral of FallingEdgeLatch is
	signal s_register : STD_LOGIC;
begin
	process (clk)
	begin
		if falling_edge(clk) then
			s_register <= D;
		end if;
	end process;
	
	Q <= s_register;
	
end architecture Behavioral;

