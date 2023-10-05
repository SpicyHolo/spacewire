library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WriteController is
    Port (
        clk : in STD_LOGIC;
        key : in STD_LOGIC;
        rst : in STD_LOGIC;
        rxWrite : out STD_LOGIC
    );
end WriteController;

architecture Behavioral of WriteController is
    type StateType is (Idle, Waiting, Active);
    signal CurrentState, NextState : StateType := Idle;
    signal KeyRisingEdge, ClkFallingEdge, OutputActive: std_logic := '0';
    
begin
    -- reset, edge detection on clk, key
    process(clk, rst)
    begin
        if rst = '1' then
            CurrentState <= Idle;
        elsif rising_edge(clk) then
            KeyRisingEdge <= key;
            ClkFallingEdge <= '0';
        elsif falling_edge(clk) then
            ClkFallingEdge <= '1';
            KeyRisingEdge <= '0';
        end if;
    end process;
    
    -- Update State logic
    process(CurrentState, KeyRisingEdge, ClkFallingEdge)
    begin
        case CurrentState is
            when Idle =>
                if KeyRisingEdge = '1' then
                    NextState <= Waiting;
                else
                    NextState <= Idle;
                end if;
                
            when Waiting =>
                if ClkFallingEdge = '1' then
                    NextState <= Active;
                else
                    NextState <= Waiting;
                end if;
                
            when Active =>
                if ClkFallingEdge = '1' then
                    NextState <= Idle;
                else
                    NextState <= Active;
                end if;
        end case;
    end process;

    -- Update Output
   process(CurrentState)
   begin
        CurrentState <= NextState;
        case CurrentState is
            when Idle =>
                rxWrite <= '0';
            when Waiting =>
                rxWrite <= '0';
            when Active =>
                rxWrite <= '1';
        end case;
	end process;
end Behavioral;