library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WriteController is
    Port (
        clk : in STD_LOGIC;
        key : in STD_LOGIC;
     --   rst : in STD_LOGIC;
        rxWrite : out STD_LOGIC
    );
end WriteController;

architecture Behavioral of WriteController is
    type StateType is (Idle, Primed, Sending);
    signal CurrentState, NextState : StateType := Idle;
    signal KeyRisingEdge, ClkFallingEdge, OutputActive: std_logic := '0';
    
begin    
    -- Update State logic
    process(CurrentState, clk, key)
    begin
		if falling_edge(clk) then
        case CurrentState is
            when Idle =>
                if key = '1' then
                    NextState <= Primed;
                else
                    NextState <= Idle;
                end if;
                
            when Primed =>
                if key = '0' then
                    NextState <= Sending;
                else
                    NextState <= Primed;
                end if;
                
            when Sending =>
                    NextState <= Idle;
        end case;
		 end if;
		 
		 
		  CurrentState <= NextState;
        case CurrentState is
            when Idle =>
                rxWrite <= '0';
            when Primed =>
                rxWrite <= '0';
            when Sending =>
                rxWrite <= '1';
        end case;
    end process;


end Behavioral;