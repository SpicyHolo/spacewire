library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FallingEdgeLatch is
	Port (
		D : in STD_LOGIC_VECTOR(7 downto 0); -- Data output
		rxvalid : in STD_LOGIC; -- rxvalid input	
		clk	: in STD_LOGIC; -- Clock input
		Q	: out STD_LOGIC_VECTOR(7 downto 0) -- Output data
		);
end entity FallingEdgeLatch;

architecture Behavioral of FallingEdgeLatch is
	signal s_register : STD_LOGIC_VECTOR(7 downto 0);
begin
	process (clk)
	begin
		if falling_edge(clk) and rxvalid = '1' then
			s_register <= D;
		end if;
	end process;
	
	Q <= s_register;
	
end architecture Behavioral;

