-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "10/04/2023 14:45:30"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sw IS
    PORT (
	transmitter_spw_do : OUT std_logic;
	clk : IN std_logic;
	linkstart : IN std_logic;
	receiver_spw_do : OUT std_logic;
	transmitter_spw_so : OUT std_logic;
	receiver_spw_so : OUT std_logic
	);
END sw;

-- Design Ports Information
-- transmitter_spw_do	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- receiver_spw_do	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- transmitter_spw_so	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- receiver_spw_so	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- linkstart	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sw IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_transmitter_spw_do : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_linkstart : std_logic;
SIGNAL ww_receiver_spw_do : std_logic;
SIGNAL ww_transmitter_spw_so : std_logic;
SIGNAL ww_receiver_spw_so : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \transmitter_spw_do~output_o\ : std_logic;
SIGNAL \receiver_spw_do~output_o\ : std_logic;
SIGNAL \transmitter_spw_so~output_o\ : std_logic;
SIGNAL \receiver_spw_so~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi1~q\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~feeder_combout\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~q\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~feeder_combout\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~8_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add0~1_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[8]~4_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[7]~1_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[6]~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[5]~8_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[4]~5_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[3]~7_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[2]~6_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[1]~3_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitshift[0]~2_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|Equal0~1_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|Equal0~2_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|Equal0~3_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~6_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.null_seen~q\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~9_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~13_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[8]~8_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[7]~7_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[6]~6_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[5]~5_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[4]~4_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~12_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[2]~3_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[1]~2_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v.bitcnt[0]~1_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.parity~2_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.parity~3_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.parity~q\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~7_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~8_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.escaped~q\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~5_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.tick_out~q\ : std_logic;
SIGNAL \spw_receiver|recv_inst|process_0~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|Mux2~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|Mux2~1_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.rxchar~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[0]~8_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[3]~16\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[4]~17_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[4]~18\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[5]~19_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[5]~20\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[6]~21_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[6]~22\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[7]~23_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|Equal1~1_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[6]~10_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[0]~9\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[1]~11_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[1]~12\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[2]~13_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[2]~14\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.disccnt[3]~15_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|Equal1~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|Equal0~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~3_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~4_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.erresc~q\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~2_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.errpar~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|process_0~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.bit_seen~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|process_0~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector3~4_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~5_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector3~2_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector3~3_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.state.S_Started~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~25_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~21_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.sent_null~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~18_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~feeder_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~11_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~20_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.rx_credit[0]~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~1\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~2_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~19_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~3\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~4_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~18_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~5\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~6_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~15_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~12_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~7\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~8_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~17_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~9\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add4~10_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~16_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~13_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|xmit_fct_in~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~10_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~11_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.rxflag~q\ : std_logic;
SIGNAL \spw_receiver|v~3_combout\ : std_logic;
SIGNAL \spw_receiver|r.rxpacket~q\ : std_logic;
SIGNAL \spw_receiver|Add1~0_combout\ : std_logic;
SIGNAL \spw_receiver|Equal1~2_combout\ : std_logic;
SIGNAL \spw_receiver|Equal1~3_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~11\ : std_logic;
SIGNAL \spw_receiver|Add1~12_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~13\ : std_logic;
SIGNAL \spw_receiver|Add1~14_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~15\ : std_logic;
SIGNAL \spw_receiver|Add1~16_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~17\ : std_logic;
SIGNAL \spw_receiver|Add1~18_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~19\ : std_logic;
SIGNAL \spw_receiver|Add1~20_combout\ : std_logic;
SIGNAL \spw_receiver|Equal1~0_combout\ : std_logic;
SIGNAL \spw_receiver|Equal1~4_combout\ : std_logic;
SIGNAL \spw_receiver|r.rxfull~q\ : std_logic;
SIGNAL \spw_receiver|v~2_combout\ : std_logic;
SIGNAL \spw_receiver|r.rxeep~q\ : std_logic;
SIGNAL \spw_receiver|v~1_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~1\ : std_logic;
SIGNAL \spw_receiver|Add1~2_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~3\ : std_logic;
SIGNAL \spw_receiver|Add1~4_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~5\ : std_logic;
SIGNAL \spw_receiver|Add1~6_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~7\ : std_logic;
SIGNAL \spw_receiver|Add1~8_combout\ : std_logic;
SIGNAL \spw_receiver|Add1~9\ : std_logic;
SIGNAL \spw_receiver|Add1~10_combout\ : std_logic;
SIGNAL \spw_receiver|Equal1~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add3~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add3~1_combout\ : std_logic;
SIGNAL \spw_receiver|v.rxroom[4]~0_combout\ : std_logic;
SIGNAL \spw_receiver|v.rxroom[3]~1_combout\ : std_logic;
SIGNAL \spw_receiver|v.rxroom[2]~2_combout\ : std_logic;
SIGNAL \spw_receiver|v.rxroom[1]~3_combout\ : std_logic;
SIGNAL \spw_receiver|v.rxroom[0]~4_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|LessThan2~1_cout\ : std_logic;
SIGNAL \spw_receiver|link_inst|LessThan2~3_cout\ : std_logic;
SIGNAL \spw_receiver|link_inst|LessThan2~5_cout\ : std_logic;
SIGNAL \spw_receiver|link_inst|LessThan2~7_cout\ : std_logic;
SIGNAL \spw_receiver|link_inst|LessThan2~9_cout\ : std_logic;
SIGNAL \spw_receiver|link_inst|LessThan2~10_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|xmit_fct_in~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.xmit_fct_in~q\ : std_logic;
SIGNAL \linkstart~input_o\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~4_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~3_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~11_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector1~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.state.S_ErrorWait~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector2~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector2~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.state.S_Ready~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Equal0~2_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~13\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~14_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~24_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~15\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~16_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~25_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~17\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~18_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~23_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~19\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~20_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~22_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Equal0~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~2_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector6~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector6~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~32_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~1\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~2_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~31_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~3\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~4_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~30_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~5\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~6_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~28_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~7\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~8_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~27_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~9\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~10_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~26_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~11\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~12_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add5~29_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Equal0~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Equal0~3_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~25_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.timerdone~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~14_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|process_0~3_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~6_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~7_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~8_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~9_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~10_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.state.S_ErrorReset~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~9_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.tx_credit[2]~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~1\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~2_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~8_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~3\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~4_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~7_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~5\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~7\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~8_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~6_combout\ : std_logic;
SIGNAL \spw_receiver|v~0_combout\ : std_logic;
SIGNAL \spw_receiver|r.txpacket~q\ : std_logic;
SIGNAL \spw_receiver|r.txdiscard~0_combout\ : std_logic;
SIGNAL \spw_receiver|r.txdiscard~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~22_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~26_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.sent_fct~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~19_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.allow_char~q\ : std_logic;
SIGNAL \spw_receiver|process_0~0_combout\ : std_logic;
SIGNAL \spw_receiver|process_0~1_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~0_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~1\ : std_logic;
SIGNAL \spw_receiver|Add4~2_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~3\ : std_logic;
SIGNAL \spw_receiver|Add4~4_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~5\ : std_logic;
SIGNAL \spw_receiver|Add4~6_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~7\ : std_logic;
SIGNAL \spw_receiver|Add4~8_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~9\ : std_logic;
SIGNAL \spw_receiver|Add4~10_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~11\ : std_logic;
SIGNAL \spw_receiver|Add4~12_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~13\ : std_logic;
SIGNAL \spw_receiver|Add4~14_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~15\ : std_logic;
SIGNAL \spw_receiver|Add4~16_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~17\ : std_logic;
SIGNAL \spw_receiver|Add4~18_combout\ : std_logic;
SIGNAL \spw_receiver|Add4~19\ : std_logic;
SIGNAL \spw_receiver|Add4~20_combout\ : std_logic;
SIGNAL \spw_receiver|Equal2~0_combout\ : std_logic;
SIGNAL \spw_receiver|Equal2~1_combout\ : std_logic;
SIGNAL \spw_receiver|Equal2~2_combout\ : std_logic;
SIGNAL \spw_receiver|Equal2~3_combout\ : std_logic;
SIGNAL \spw_receiver|r.txfifo_rvalid~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|process_0~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Equal2~0_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~6_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~10_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add0~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~9\ : std_logic;
SIGNAL \spw_receiver|link_inst|Add1~10_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~5_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~21_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~22_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~23_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|v~24_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.errcred~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector0~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector5~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector5~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.state.S_Run~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~9\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~10_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~11\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~12_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.state.S_Run~_wirecell_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~13\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~14_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~15\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~16_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~17\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~18_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~19\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~20_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~21\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[7]~22_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|Equal0~1_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|Equal0~0_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~14_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~12_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~13_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]~0_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~10_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~24_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~11_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~15_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~16_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~4_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~5_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~3_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~23_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~20_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~9_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|parity~0_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~17_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.parity~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~6_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~8_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.out_strobe~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|spw_so~feeder_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|spw_so~q\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi1~q\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~feeder_combout\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~q\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~feeder_combout\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~q\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~0_combout\ : std_logic;
SIGNAL \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.control~0_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.control~q\ : std_logic;
SIGNAL \spw_receiver|recv_inst|v~1_combout\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.gotfct~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|process_0~2_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector4~0_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|Selector4~1_combout\ : std_logic;
SIGNAL \spw_receiver|link_inst|r.state.S_Connecting~q\ : std_logic;
SIGNAL \spw_receiver|link_inst|xmiti.txen~0_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|v~7_combout\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.out_data~q\ : std_logic;
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|spw_do~q\ : std_logic;
SIGNAL \spw_receiver|recv_inst|r.bitshift\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \spw_receiver|r.rxroom\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spw_receiver|r.txfifo_raddr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spw_receiver|r.rxfifo_waddr\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \spw_receiver|link_inst|r.rx_credit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spw_receiver|link_inst|r.tx_credit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \spw_receiver|link_inst|r.timercnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \spw_receiver|recv_inst|r.disccnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spw_receiver|recv_inst|r.bitcnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

transmitter_spw_do <= ww_transmitter_spw_do;
ww_clk <= clk;
ww_linkstart <= linkstart;
receiver_spw_do <= ww_receiver_spw_do;
transmitter_spw_so <= ww_transmitter_spw_so;
receiver_spw_so <= ww_receiver_spw_so;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\ <= NOT \spw_receiver|link_inst|r.state.S_ErrorReset~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N2
\transmitter_spw_do~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spw_receiver|xmit_sel0:xmit_inst|spw_do~q\,
	devoe => ww_devoe,
	o => \transmitter_spw_do~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\receiver_spw_do~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spw_receiver|xmit_sel0:xmit_inst|spw_do~q\,
	devoe => ww_devoe,
	o => \receiver_spw_do~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\transmitter_spw_so~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spw_receiver|xmit_sel0:xmit_inst|spw_so~q\,
	devoe => ww_devoe,
	o => \transmitter_spw_so~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\receiver_spw_so~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spw_receiver|xmit_sel0:xmit_inst|spw_so~q\,
	devoe => ww_devoe,
	o => \receiver_spw_so~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X23_Y7_N13
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spw_receiver|xmit_sel0:xmit_inst|spw_do~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi1~q\);

-- Location: LCCOMB_X23_Y7_N10
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~feeder_combout\ = \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi1~q\,
	combout => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~feeder_combout\);

-- Location: FF_X23_Y7_N11
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~q\);

-- Location: LCCOMB_X23_Y7_N2
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~feeder_combout\ = \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~q\,
	combout => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~feeder_combout\);

-- Location: FF_X23_Y7_N3
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\);

-- Location: LCCOMB_X19_Y9_N10
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~8_combout\ = \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(0) $ (VCC)
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~9\ = CARRY(\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(0),
	datad => VCC,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~8_combout\,
	cout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~9\);

-- Location: LCCOMB_X24_Y9_N8
\spw_receiver|link_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add0~1_combout\ = (\spw_receiver|recv_inst|r.gotfct~q\ & \spw_receiver|link_inst|r.tx_credit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|recv_inst|r.gotfct~q\,
	datad => \spw_receiver|link_inst|r.tx_credit\(3),
	combout => \spw_receiver|link_inst|Add0~1_combout\);

-- Location: LCCOMB_X23_Y10_N24
\spw_receiver|recv_inst|v.bitshift[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[8]~4_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & !\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\,
	combout => \spw_receiver|recv_inst|v.bitshift[8]~4_combout\);

-- Location: LCCOMB_X24_Y10_N24
\spw_receiver|recv_inst|v.bitcnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\ = (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\) # (!\spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	datad => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	combout => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\);

-- Location: FF_X23_Y10_N25
\spw_receiver|recv_inst|r.bitshift[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[8]~4_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(8));

-- Location: LCCOMB_X24_Y10_N30
\spw_receiver|recv_inst|v.bitshift[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[7]~1_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|recv_inst|r.bitshift\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|recv_inst|r.bitshift\(8),
	combout => \spw_receiver|recv_inst|v.bitshift[7]~1_combout\);

-- Location: FF_X24_Y10_N31
\spw_receiver|recv_inst|r.bitshift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[7]~1_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(7));

-- Location: LCCOMB_X24_Y10_N20
\spw_receiver|recv_inst|v.bitshift[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[6]~0_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|recv_inst|r.bitshift\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|recv_inst|r.bitshift\(7),
	combout => \spw_receiver|recv_inst|v.bitshift[6]~0_combout\);

-- Location: FF_X24_Y10_N21
\spw_receiver|recv_inst|r.bitshift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[6]~0_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(6));

-- Location: LCCOMB_X24_Y10_N26
\spw_receiver|recv_inst|v.bitshift[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[5]~8_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|recv_inst|r.bitshift\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|recv_inst|r.bitshift\(6),
	combout => \spw_receiver|recv_inst|v.bitshift[5]~8_combout\);

-- Location: FF_X24_Y10_N27
\spw_receiver|recv_inst|r.bitshift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[5]~8_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(5));

-- Location: LCCOMB_X24_Y10_N0
\spw_receiver|recv_inst|v.bitshift[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[4]~5_combout\ = (\spw_receiver|recv_inst|r.bitshift\(5) & \spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|recv_inst|r.bitshift\(5),
	datad => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	combout => \spw_receiver|recv_inst|v.bitshift[4]~5_combout\);

-- Location: FF_X24_Y10_N1
\spw_receiver|recv_inst|r.bitshift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[4]~5_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(4));

-- Location: LCCOMB_X24_Y10_N12
\spw_receiver|recv_inst|v.bitshift[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[3]~7_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|recv_inst|r.bitshift\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|recv_inst|r.bitshift\(4),
	combout => \spw_receiver|recv_inst|v.bitshift[3]~7_combout\);

-- Location: FF_X24_Y10_N13
\spw_receiver|recv_inst|r.bitshift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[3]~7_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(3));

-- Location: LCCOMB_X24_Y10_N18
\spw_receiver|recv_inst|v.bitshift[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[2]~6_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|recv_inst|r.bitshift\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|recv_inst|r.bitshift\(3),
	combout => \spw_receiver|recv_inst|v.bitshift[2]~6_combout\);

-- Location: FF_X24_Y10_N19
\spw_receiver|recv_inst|r.bitshift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[2]~6_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(2));

-- Location: LCCOMB_X24_Y10_N8
\spw_receiver|recv_inst|v.bitshift[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[1]~3_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|recv_inst|r.bitshift\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|recv_inst|r.bitshift\(2),
	combout => \spw_receiver|recv_inst|v.bitshift[1]~3_combout\);

-- Location: FF_X24_Y10_N9
\spw_receiver|recv_inst|r.bitshift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[1]~3_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(1));

-- Location: LCCOMB_X24_Y10_N2
\spw_receiver|recv_inst|v.bitshift[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitshift[0]~2_combout\ = (\spw_receiver|recv_inst|r.bitshift\(1) & \spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.bitshift\(1),
	datad => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	combout => \spw_receiver|recv_inst|v.bitshift[0]~2_combout\);

-- Location: FF_X24_Y10_N3
\spw_receiver|recv_inst|r.bitshift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitshift[0]~2_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitshift\(0));

-- Location: LCCOMB_X24_Y10_N10
\spw_receiver|recv_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|Equal0~1_combout\ = (\spw_receiver|recv_inst|r.bitshift\(7) & (\spw_receiver|recv_inst|r.bitshift\(0) & (!\spw_receiver|recv_inst|r.bitshift\(1) & \spw_receiver|recv_inst|r.bitshift\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.bitshift\(7),
	datab => \spw_receiver|recv_inst|r.bitshift\(0),
	datac => \spw_receiver|recv_inst|r.bitshift\(1),
	datad => \spw_receiver|recv_inst|r.bitshift\(6),
	combout => \spw_receiver|recv_inst|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y10_N28
\spw_receiver|recv_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|Equal0~2_combout\ = (!\spw_receiver|recv_inst|r.bitshift\(3) & (!\spw_receiver|recv_inst|r.bitshift\(2) & (!\spw_receiver|recv_inst|r.bitshift\(5) & \spw_receiver|recv_inst|r.bitshift\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.bitshift\(3),
	datab => \spw_receiver|recv_inst|r.bitshift\(2),
	datac => \spw_receiver|recv_inst|r.bitshift\(5),
	datad => \spw_receiver|recv_inst|r.bitshift\(4),
	combout => \spw_receiver|recv_inst|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y10_N10
\spw_receiver|recv_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|Equal0~3_combout\ = (\spw_receiver|recv_inst|r.bitshift\(8) & (\spw_receiver|recv_inst|Equal0~1_combout\ & \spw_receiver|recv_inst|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.bitshift\(8),
	datac => \spw_receiver|recv_inst|Equal0~1_combout\,
	datad => \spw_receiver|recv_inst|Equal0~2_combout\,
	combout => \spw_receiver|recv_inst|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y10_N16
\spw_receiver|recv_inst|v~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~6_combout\ = (\spw_receiver|recv_inst|r.null_seen~q\) # ((\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & \spw_receiver|recv_inst|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	datac => \spw_receiver|recv_inst|r.null_seen~q\,
	datad => \spw_receiver|recv_inst|Equal0~3_combout\,
	combout => \spw_receiver|recv_inst|v~6_combout\);

-- Location: FF_X23_Y10_N17
\spw_receiver|recv_inst|r.null_seen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~6_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.null_seen~q\);

-- Location: LCCOMB_X23_Y10_N28
\spw_receiver|recv_inst|v~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~9_combout\ = (!\spw_receiver|recv_inst|r.null_seen~q\ & (\spw_receiver|recv_inst|r.bitshift\(8) & (\spw_receiver|recv_inst|Equal0~1_combout\ & \spw_receiver|recv_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.null_seen~q\,
	datab => \spw_receiver|recv_inst|r.bitshift\(8),
	datac => \spw_receiver|recv_inst|Equal0~1_combout\,
	datad => \spw_receiver|recv_inst|Equal0~2_combout\,
	combout => \spw_receiver|recv_inst|v~9_combout\);

-- Location: LCCOMB_X23_Y10_N6
\spw_receiver|recv_inst|v~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~13_combout\ = (!\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\ & (\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\,
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v~13_combout\);

-- Location: FF_X23_Y10_N7
\spw_receiver|recv_inst|r.bitcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~13_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(9));

-- Location: LCCOMB_X23_Y10_N18
\spw_receiver|recv_inst|v.bitcnt[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[8]~8_combout\ = (\spw_receiver|recv_inst|r.bitcnt\(9) & (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (!\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.bitcnt\(9),
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v.bitcnt[8]~8_combout\);

-- Location: FF_X23_Y10_N19
\spw_receiver|recv_inst|r.bitcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitcnt[8]~8_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(8));

-- Location: LCCOMB_X19_Y10_N22
\spw_receiver|recv_inst|v.bitcnt[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[7]~7_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (\spw_receiver|recv_inst|r.bitcnt\(8) & (!\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datab => \spw_receiver|recv_inst|r.bitcnt\(8),
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v.bitcnt[7]~7_combout\);

-- Location: FF_X19_Y10_N23
\spw_receiver|recv_inst|r.bitcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitcnt[7]~7_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(7));

-- Location: LCCOMB_X19_Y10_N24
\spw_receiver|recv_inst|v.bitcnt[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[6]~6_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (\spw_receiver|recv_inst|r.bitcnt\(7) & (!\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datab => \spw_receiver|recv_inst|r.bitcnt\(7),
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v.bitcnt[6]~6_combout\);

-- Location: FF_X19_Y10_N25
\spw_receiver|recv_inst|r.bitcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitcnt[6]~6_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(6));

-- Location: LCCOMB_X19_Y10_N2
\spw_receiver|recv_inst|v.bitcnt[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[5]~5_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (\spw_receiver|recv_inst|r.bitcnt\(6) & (!\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datab => \spw_receiver|recv_inst|r.bitcnt\(6),
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v.bitcnt[5]~5_combout\);

-- Location: FF_X19_Y10_N3
\spw_receiver|recv_inst|r.bitcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitcnt[5]~5_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(5));

-- Location: LCCOMB_X19_Y10_N28
\spw_receiver|recv_inst|v.bitcnt[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[4]~4_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (\spw_receiver|recv_inst|r.bitcnt\(5) & (!\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datab => \spw_receiver|recv_inst|r.bitcnt\(5),
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v.bitcnt[4]~4_combout\);

-- Location: FF_X19_Y10_N29
\spw_receiver|recv_inst|r.bitcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitcnt[4]~4_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(4));

-- Location: LCCOMB_X23_Y10_N12
\spw_receiver|recv_inst|v~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~12_combout\ = (\spw_receiver|recv_inst|v~9_combout\) # ((\spw_receiver|recv_inst|r.bitcnt\(0) & (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\)) # (!\spw_receiver|recv_inst|r.bitcnt\(0) & 
-- ((\spw_receiver|recv_inst|r.bitcnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\,
	datab => \spw_receiver|recv_inst|r.bitcnt\(0),
	datac => \spw_receiver|recv_inst|r.bitcnt\(4),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v~12_combout\);

-- Location: FF_X23_Y10_N13
\spw_receiver|recv_inst|r.bitcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~12_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(3));

-- Location: LCCOMB_X23_Y10_N4
\spw_receiver|recv_inst|v.bitcnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[2]~3_combout\ = (\spw_receiver|recv_inst|r.bitcnt\(3) & (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (!\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.bitcnt\(3),
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v.bitcnt[2]~3_combout\);

-- Location: FF_X23_Y10_N5
\spw_receiver|recv_inst|r.bitcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitcnt[2]~3_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(2));

-- Location: LCCOMB_X23_Y10_N30
\spw_receiver|recv_inst|v.bitcnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[1]~2_combout\ = (!\spw_receiver|recv_inst|r.bitcnt\(0) & (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (\spw_receiver|recv_inst|r.bitcnt\(2) & !\spw_receiver|recv_inst|v~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.bitcnt\(0),
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datac => \spw_receiver|recv_inst|r.bitcnt\(2),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v.bitcnt[1]~2_combout\);

-- Location: FF_X23_Y10_N31
\spw_receiver|recv_inst|r.bitcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitcnt[1]~2_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(1));

-- Location: LCCOMB_X23_Y10_N2
\spw_receiver|recv_inst|v.bitcnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v.bitcnt[0]~1_combout\ = (\spw_receiver|recv_inst|r.bitcnt\(1) & (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (!\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.bitcnt\(1),
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|v.bitcnt[0]~1_combout\);

-- Location: FF_X23_Y10_N3
\spw_receiver|recv_inst|r.bitcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v.bitcnt[0]~1_combout\,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bitcnt\(0));

-- Location: LCCOMB_X23_Y7_N0
\spw_receiver|recv_inst|r.parity~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.parity~2_combout\ = (!\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|v~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|v~9_combout\,
	combout => \spw_receiver|recv_inst|r.parity~2_combout\);

-- Location: LCCOMB_X23_Y7_N30
\spw_receiver|recv_inst|r.parity~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.parity~3_combout\ = (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & (\spw_receiver|recv_inst|r.parity~2_combout\ & (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\ $ 
-- (\spw_receiver|recv_inst|r.parity~q\)))) # (!\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & (((\spw_receiver|recv_inst|r.parity~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	datab => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\,
	datac => \spw_receiver|recv_inst|r.parity~q\,
	datad => \spw_receiver|recv_inst|r.parity~2_combout\,
	combout => \spw_receiver|recv_inst|r.parity~3_combout\);

-- Location: FF_X23_Y7_N31
\spw_receiver|recv_inst|r.parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.parity~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.parity~q\);

-- Location: LCCOMB_X23_Y7_N8
\spw_receiver|recv_inst|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~0_combout\ = (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & (\spw_receiver|recv_inst|r.bitcnt\(0) & (\spw_receiver|recv_inst|r.parity~q\ $ (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	datab => \spw_receiver|recv_inst|r.bitcnt\(0),
	datac => \spw_receiver|recv_inst|r.parity~q\,
	datad => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\,
	combout => \spw_receiver|recv_inst|v~0_combout\);

-- Location: LCCOMB_X23_Y7_N28
\spw_receiver|recv_inst|v~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~7_combout\ = (!\spw_receiver|recv_inst|r.bitshift\(7) & !\spw_receiver|recv_inst|r.bitshift\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.bitshift\(7),
	datad => \spw_receiver|recv_inst|r.bitshift\(6),
	combout => \spw_receiver|recv_inst|v~7_combout\);

-- Location: LCCOMB_X24_Y10_N4
\spw_receiver|recv_inst|v~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~8_combout\ = (\spw_receiver|recv_inst|v~0_combout\ & (\spw_receiver|recv_inst|v~7_combout\ & ((\spw_receiver|recv_inst|r.control~q\)))) # (!\spw_receiver|recv_inst|v~0_combout\ & (((\spw_receiver|recv_inst|r.escaped~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|v~0_combout\,
	datab => \spw_receiver|recv_inst|v~7_combout\,
	datac => \spw_receiver|recv_inst|r.escaped~q\,
	datad => \spw_receiver|recv_inst|r.control~q\,
	combout => \spw_receiver|recv_inst|v~8_combout\);

-- Location: FF_X24_Y10_N5
\spw_receiver|recv_inst|r.escaped\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~8_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.escaped~q\);

-- Location: LCCOMB_X24_Y10_N14
\spw_receiver|recv_inst|v~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~5_combout\ = (!\spw_receiver|recv_inst|r.control~q\ & (\spw_receiver|recv_inst|r.escaped~q\ & \spw_receiver|recv_inst|v~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.control~q\,
	datab => \spw_receiver|recv_inst|r.escaped~q\,
	datad => \spw_receiver|recv_inst|v~0_combout\,
	combout => \spw_receiver|recv_inst|v~5_combout\);

-- Location: FF_X24_Y10_N15
\spw_receiver|recv_inst|r.tick_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~5_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.tick_out~q\);

-- Location: LCCOMB_X23_Y7_N26
\spw_receiver|recv_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|process_0~0_combout\ = \spw_receiver|recv_inst|r.parity~q\ $ (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.parity~q\,
	datad => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\,
	combout => \spw_receiver|recv_inst|process_0~0_combout\);

-- Location: LCCOMB_X23_Y7_N16
\spw_receiver|recv_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|Mux2~0_combout\ = (\spw_receiver|recv_inst|process_0~0_combout\ & ((\spw_receiver|recv_inst|r.bitshift\(7) $ (\spw_receiver|recv_inst|r.bitshift\(6))) # (!\spw_receiver|recv_inst|r.control~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|process_0~0_combout\,
	datab => \spw_receiver|recv_inst|r.bitshift\(7),
	datac => \spw_receiver|recv_inst|r.control~q\,
	datad => \spw_receiver|recv_inst|r.bitshift\(6),
	combout => \spw_receiver|recv_inst|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y10_N30
\spw_receiver|recv_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|Mux2~1_combout\ = (!\spw_receiver|recv_inst|r.escaped~q\ & (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & (\spw_receiver|recv_inst|r.bitcnt\(0) & \spw_receiver|recv_inst|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.escaped~q\,
	datab => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	datac => \spw_receiver|recv_inst|r.bitcnt\(0),
	datad => \spw_receiver|recv_inst|Mux2~0_combout\,
	combout => \spw_receiver|recv_inst|Mux2~1_combout\);

-- Location: FF_X22_Y13_N17
\spw_receiver|recv_inst|r.rxchar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spw_receiver|recv_inst|Mux2~1_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.rxchar~q\);

-- Location: LCCOMB_X23_Y11_N6
\spw_receiver|link_inst|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~0_combout\ = \spw_receiver|link_inst|r.timercnt\(0) $ (VCC)
-- \spw_receiver|link_inst|Add5~1\ = CARRY(\spw_receiver|link_inst|r.timercnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.timercnt\(0),
	datad => VCC,
	combout => \spw_receiver|link_inst|Add5~0_combout\,
	cout => \spw_receiver|link_inst|Add5~1\);

-- Location: LCCOMB_X19_Y10_N4
\spw_receiver|recv_inst|r.disccnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[0]~8_combout\ = \spw_receiver|recv_inst|r.disccnt\(0) $ (VCC)
-- \spw_receiver|recv_inst|r.disccnt[0]~9\ = CARRY(\spw_receiver|recv_inst|r.disccnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.disccnt\(0),
	datad => VCC,
	combout => \spw_receiver|recv_inst|r.disccnt[0]~8_combout\,
	cout => \spw_receiver|recv_inst|r.disccnt[0]~9\);

-- Location: LCCOMB_X19_Y10_N10
\spw_receiver|recv_inst|r.disccnt[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[3]~15_combout\ = (\spw_receiver|recv_inst|r.disccnt\(3) & (\spw_receiver|recv_inst|r.disccnt[2]~14\ & VCC)) # (!\spw_receiver|recv_inst|r.disccnt\(3) & (!\spw_receiver|recv_inst|r.disccnt[2]~14\))
-- \spw_receiver|recv_inst|r.disccnt[3]~16\ = CARRY((!\spw_receiver|recv_inst|r.disccnt\(3) & !\spw_receiver|recv_inst|r.disccnt[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.disccnt\(3),
	datad => VCC,
	cin => \spw_receiver|recv_inst|r.disccnt[2]~14\,
	combout => \spw_receiver|recv_inst|r.disccnt[3]~15_combout\,
	cout => \spw_receiver|recv_inst|r.disccnt[3]~16\);

-- Location: LCCOMB_X19_Y10_N12
\spw_receiver|recv_inst|r.disccnt[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[4]~17_combout\ = (\spw_receiver|recv_inst|r.disccnt\(4) & ((GND) # (!\spw_receiver|recv_inst|r.disccnt[3]~16\))) # (!\spw_receiver|recv_inst|r.disccnt\(4) & (\spw_receiver|recv_inst|r.disccnt[3]~16\ $ (GND)))
-- \spw_receiver|recv_inst|r.disccnt[4]~18\ = CARRY((\spw_receiver|recv_inst|r.disccnt\(4)) # (!\spw_receiver|recv_inst|r.disccnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.disccnt\(4),
	datad => VCC,
	cin => \spw_receiver|recv_inst|r.disccnt[3]~16\,
	combout => \spw_receiver|recv_inst|r.disccnt[4]~17_combout\,
	cout => \spw_receiver|recv_inst|r.disccnt[4]~18\);

-- Location: LCCOMB_X19_Y9_N4
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X19_Y10_N13
\spw_receiver|recv_inst|r.disccnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.disccnt[4]~17_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	ena => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.disccnt\(4));

-- Location: LCCOMB_X19_Y10_N14
\spw_receiver|recv_inst|r.disccnt[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[5]~19_combout\ = (\spw_receiver|recv_inst|r.disccnt\(5) & (\spw_receiver|recv_inst|r.disccnt[4]~18\ & VCC)) # (!\spw_receiver|recv_inst|r.disccnt\(5) & (!\spw_receiver|recv_inst|r.disccnt[4]~18\))
-- \spw_receiver|recv_inst|r.disccnt[5]~20\ = CARRY((!\spw_receiver|recv_inst|r.disccnt\(5) & !\spw_receiver|recv_inst|r.disccnt[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.disccnt\(5),
	datad => VCC,
	cin => \spw_receiver|recv_inst|r.disccnt[4]~18\,
	combout => \spw_receiver|recv_inst|r.disccnt[5]~19_combout\,
	cout => \spw_receiver|recv_inst|r.disccnt[5]~20\);

-- Location: FF_X19_Y10_N15
\spw_receiver|recv_inst|r.disccnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.disccnt[5]~19_combout\,
	asdata => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	sload => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	ena => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.disccnt\(5));

-- Location: LCCOMB_X19_Y10_N16
\spw_receiver|recv_inst|r.disccnt[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[6]~21_combout\ = (\spw_receiver|recv_inst|r.disccnt\(6) & ((GND) # (!\spw_receiver|recv_inst|r.disccnt[5]~20\))) # (!\spw_receiver|recv_inst|r.disccnt\(6) & (\spw_receiver|recv_inst|r.disccnt[5]~20\ $ (GND)))
-- \spw_receiver|recv_inst|r.disccnt[6]~22\ = CARRY((\spw_receiver|recv_inst|r.disccnt\(6)) # (!\spw_receiver|recv_inst|r.disccnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.disccnt\(6),
	datad => VCC,
	cin => \spw_receiver|recv_inst|r.disccnt[5]~20\,
	combout => \spw_receiver|recv_inst|r.disccnt[6]~21_combout\,
	cout => \spw_receiver|recv_inst|r.disccnt[6]~22\);

-- Location: FF_X19_Y10_N17
\spw_receiver|recv_inst|r.disccnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.disccnt[6]~21_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	ena => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.disccnt\(6));

-- Location: LCCOMB_X19_Y10_N18
\spw_receiver|recv_inst|r.disccnt[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[7]~23_combout\ = \spw_receiver|recv_inst|r.disccnt[6]~22\ $ (!\spw_receiver|recv_inst|r.disccnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|recv_inst|r.disccnt\(7),
	cin => \spw_receiver|recv_inst|r.disccnt[6]~22\,
	combout => \spw_receiver|recv_inst|r.disccnt[7]~23_combout\);

-- Location: FF_X19_Y10_N19
\spw_receiver|recv_inst|r.disccnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.disccnt[7]~23_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	ena => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.disccnt\(7));

-- Location: LCCOMB_X19_Y10_N26
\spw_receiver|recv_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|Equal1~1_combout\ = (!\spw_receiver|recv_inst|r.disccnt\(4) & (!\spw_receiver|recv_inst|r.disccnt\(6) & (!\spw_receiver|recv_inst|r.disccnt\(5) & !\spw_receiver|recv_inst|r.disccnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.disccnt\(4),
	datab => \spw_receiver|recv_inst|r.disccnt\(6),
	datac => \spw_receiver|recv_inst|r.disccnt\(5),
	datad => \spw_receiver|recv_inst|r.disccnt\(7),
	combout => \spw_receiver|recv_inst|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y10_N0
\spw_receiver|recv_inst|r.disccnt[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[6]~10_combout\ = (((\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\) # (!\spw_receiver|recv_inst|Equal1~1_combout\)) # (!\spw_receiver|recv_inst|Equal1~0_combout\)) # 
-- (!\spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datab => \spw_receiver|recv_inst|Equal1~0_combout\,
	datac => \spw_receiver|recv_inst|Equal1~1_combout\,
	datad => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	combout => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\);

-- Location: FF_X19_Y10_N5
\spw_receiver|recv_inst|r.disccnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.disccnt[0]~8_combout\,
	asdata => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	sload => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	ena => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.disccnt\(0));

-- Location: LCCOMB_X19_Y10_N6
\spw_receiver|recv_inst|r.disccnt[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[1]~11_combout\ = (\spw_receiver|recv_inst|r.disccnt\(1) & (\spw_receiver|recv_inst|r.disccnt[0]~9\ & VCC)) # (!\spw_receiver|recv_inst|r.disccnt\(1) & (!\spw_receiver|recv_inst|r.disccnt[0]~9\))
-- \spw_receiver|recv_inst|r.disccnt[1]~12\ = CARRY((!\spw_receiver|recv_inst|r.disccnt\(1) & !\spw_receiver|recv_inst|r.disccnt[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.disccnt\(1),
	datad => VCC,
	cin => \spw_receiver|recv_inst|r.disccnt[0]~9\,
	combout => \spw_receiver|recv_inst|r.disccnt[1]~11_combout\,
	cout => \spw_receiver|recv_inst|r.disccnt[1]~12\);

-- Location: FF_X19_Y10_N7
\spw_receiver|recv_inst|r.disccnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.disccnt[1]~11_combout\,
	asdata => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	sload => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	ena => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.disccnt\(1));

-- Location: LCCOMB_X19_Y10_N8
\spw_receiver|recv_inst|r.disccnt[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.disccnt[2]~13_combout\ = (\spw_receiver|recv_inst|r.disccnt\(2) & ((GND) # (!\spw_receiver|recv_inst|r.disccnt[1]~12\))) # (!\spw_receiver|recv_inst|r.disccnt\(2) & (\spw_receiver|recv_inst|r.disccnt[1]~12\ $ (GND)))
-- \spw_receiver|recv_inst|r.disccnt[2]~14\ = CARRY((\spw_receiver|recv_inst|r.disccnt\(2)) # (!\spw_receiver|recv_inst|r.disccnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.disccnt\(2),
	datad => VCC,
	cin => \spw_receiver|recv_inst|r.disccnt[1]~12\,
	combout => \spw_receiver|recv_inst|r.disccnt[2]~13_combout\,
	cout => \spw_receiver|recv_inst|r.disccnt[2]~14\);

-- Location: FF_X19_Y10_N9
\spw_receiver|recv_inst|r.disccnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.disccnt[2]~13_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	ena => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.disccnt\(2));

-- Location: FF_X19_Y10_N11
\spw_receiver|recv_inst|r.disccnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.disccnt[3]~15_combout\,
	asdata => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	sload => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	ena => \spw_receiver|recv_inst|r.disccnt[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.disccnt\(3));

-- Location: LCCOMB_X19_Y10_N20
\spw_receiver|recv_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|Equal1~0_combout\ = (!\spw_receiver|recv_inst|r.disccnt\(3) & (!\spw_receiver|recv_inst|r.disccnt\(0) & (!\spw_receiver|recv_inst|r.disccnt\(2) & !\spw_receiver|recv_inst|r.disccnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.disccnt\(3),
	datab => \spw_receiver|recv_inst|r.disccnt\(0),
	datac => \spw_receiver|recv_inst|r.disccnt\(2),
	datad => \spw_receiver|recv_inst|r.disccnt\(1),
	combout => \spw_receiver|recv_inst|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y7_N6
\spw_receiver|recv_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|Equal0~0_combout\ = (\spw_receiver|recv_inst|r.bitshift\(7) & \spw_receiver|recv_inst|r.bitshift\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.bitshift\(7),
	datad => \spw_receiver|recv_inst|r.bitshift\(6),
	combout => \spw_receiver|recv_inst|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y7_N18
\spw_receiver|recv_inst|v~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~3_combout\ = (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & (\spw_receiver|recv_inst|r.bitcnt\(0) & (\spw_receiver|recv_inst|process_0~0_combout\ & \spw_receiver|recv_inst|r.control~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	datab => \spw_receiver|recv_inst|r.bitcnt\(0),
	datac => \spw_receiver|recv_inst|process_0~0_combout\,
	datad => \spw_receiver|recv_inst|r.control~q\,
	combout => \spw_receiver|recv_inst|v~3_combout\);

-- Location: LCCOMB_X23_Y10_N22
\spw_receiver|recv_inst|v~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~4_combout\ = (\spw_receiver|recv_inst|r.erresc~q\) # ((!\spw_receiver|recv_inst|Equal0~0_combout\ & (\spw_receiver|recv_inst|r.escaped~q\ & \spw_receiver|recv_inst|v~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|Equal0~0_combout\,
	datab => \spw_receiver|recv_inst|r.escaped~q\,
	datac => \spw_receiver|recv_inst|r.erresc~q\,
	datad => \spw_receiver|recv_inst|v~3_combout\,
	combout => \spw_receiver|recv_inst|v~4_combout\);

-- Location: FF_X23_Y10_N23
\spw_receiver|recv_inst|r.erresc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~4_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.erresc~q\);

-- Location: LCCOMB_X23_Y10_N0
\spw_receiver|recv_inst|v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~2_combout\ = (\spw_receiver|recv_inst|r.errpar~q\) # ((\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & (\spw_receiver|recv_inst|r.bitcnt\(0) & !\spw_receiver|recv_inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	datab => \spw_receiver|recv_inst|r.bitcnt\(0),
	datac => \spw_receiver|recv_inst|r.errpar~q\,
	datad => \spw_receiver|recv_inst|process_0~0_combout\,
	combout => \spw_receiver|recv_inst|v~2_combout\);

-- Location: FF_X23_Y10_N1
\spw_receiver|recv_inst|r.errpar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~2_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.errpar~q\);

-- Location: LCCOMB_X23_Y10_N8
\spw_receiver|link_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|process_0~0_combout\ = (\spw_receiver|recv_inst|r.erresc~q\) # (\spw_receiver|recv_inst|r.errpar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|recv_inst|r.erresc~q\,
	datad => \spw_receiver|recv_inst|r.errpar~q\,
	combout => \spw_receiver|link_inst|process_0~0_combout\);

-- Location: FF_X21_Y10_N29
\spw_receiver|recv_inst|r.bit_seen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	sload => VCC,
	ena => \spw_receiver|recv_inst|v.bitcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.bit_seen~q\);

-- Location: LCCOMB_X21_Y10_N28
\spw_receiver|link_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|process_0~1_combout\ = (\spw_receiver|link_inst|process_0~0_combout\) # ((\spw_receiver|recv_inst|Equal1~0_combout\ & (\spw_receiver|recv_inst|r.bit_seen~q\ & \spw_receiver|recv_inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|Equal1~0_combout\,
	datab => \spw_receiver|link_inst|process_0~0_combout\,
	datac => \spw_receiver|recv_inst|r.bit_seen~q\,
	datad => \spw_receiver|recv_inst|Equal1~1_combout\,
	combout => \spw_receiver|link_inst|process_0~1_combout\);

-- Location: LCCOMB_X21_Y10_N20
\spw_receiver|link_inst|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector3~4_combout\ = (\spw_receiver|link_inst|process_0~2_combout\ & (((!\spw_receiver|link_inst|process_0~1_combout\ & !\spw_receiver|link_inst|r.errcred~q\)) # (!\spw_receiver|link_inst|r.state.S_Run~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|process_0~2_combout\,
	datab => \spw_receiver|link_inst|process_0~1_combout\,
	datac => \spw_receiver|link_inst|r.errcred~q\,
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|link_inst|Selector3~4_combout\);

-- Location: LCCOMB_X21_Y10_N22
\spw_receiver|link_inst|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~5_combout\ = (\spw_receiver|link_inst|r.state.S_Connecting~q\ & ((\spw_receiver|recv_inst|r.gotfct~q\) # (!\spw_receiver|link_inst|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|link_inst|process_0~3_combout\,
	datad => \spw_receiver|recv_inst|r.gotfct~q\,
	combout => \spw_receiver|link_inst|Selector0~5_combout\);

-- Location: LCCOMB_X22_Y10_N30
\spw_receiver|link_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector3~2_combout\ = (!\spw_receiver|link_inst|Selector0~1_combout\ & (\spw_receiver|link_inst|Selector6~0_combout\ & !\spw_receiver|link_inst|Selector0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector0~1_combout\,
	datab => \spw_receiver|link_inst|Selector6~0_combout\,
	datad => \spw_receiver|link_inst|Selector0~5_combout\,
	combout => \spw_receiver|link_inst|Selector3~2_combout\);

-- Location: LCCOMB_X22_Y10_N4
\spw_receiver|link_inst|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector3~3_combout\ = (\spw_receiver|link_inst|Selector0~0_combout\ & ((\spw_receiver|link_inst|Selector3~4_combout\) # ((\spw_receiver|link_inst|r.state.S_Started~q\ & \spw_receiver|link_inst|Selector3~2_combout\)))) # 
-- (!\spw_receiver|link_inst|Selector0~0_combout\ & (((\spw_receiver|link_inst|r.state.S_Started~q\ & \spw_receiver|link_inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector0~0_combout\,
	datab => \spw_receiver|link_inst|Selector3~4_combout\,
	datac => \spw_receiver|link_inst|r.state.S_Started~q\,
	datad => \spw_receiver|link_inst|Selector3~2_combout\,
	combout => \spw_receiver|link_inst|Selector3~3_combout\);

-- Location: FF_X22_Y10_N5
\spw_receiver|link_inst|r.state.S_Started\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.state.S_Started~q\);

-- Location: LCCOMB_X22_Y10_N28
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\ & ((\spw_receiver|link_inst|r.state.S_Started~q\) # ((\spw_receiver|link_inst|r.state.S_Connecting~q\) # 
-- (\spw_receiver|link_inst|r.state.S_Run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\,
	datab => \spw_receiver|link_inst|r.state.S_Started~q\,
	datac => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\);

-- Location: LCCOMB_X21_Y10_N26
\spw_receiver|xmit_sel0:xmit_inst|v~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~25_combout\ = (!\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & ((!\spw_receiver|link_inst|r.xmit_fct_in~q\) # 
-- (!\spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datad => \spw_receiver|link_inst|r.xmit_fct_in~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~25_combout\);

-- Location: LCCOMB_X21_Y10_N24
\spw_receiver|xmit_sel0:xmit_inst|v~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~21_combout\ = (\spw_receiver|link_inst|xmiti.txen~0_combout\ & ((\spw_receiver|xmit_sel0:xmit_inst|r.sent_null~q\) # ((\spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\ & \spw_receiver|xmit_sel0:xmit_inst|v~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\,
	datab => \spw_receiver|link_inst|xmiti.txen~0_combout\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.sent_null~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|v~25_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~21_combout\);

-- Location: FF_X21_Y10_N25
\spw_receiver|xmit_sel0:xmit_inst|r.sent_null\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.sent_null~q\);

-- Location: LCCOMB_X21_Y10_N30
\spw_receiver|xmit_sel0:xmit_inst|v~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~18_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.sent_null~q\ & (!\spw_receiver|link_inst|r.state.S_Started~q\ & ((\spw_receiver|link_inst|r.state.S_Connecting~q\) # (\spw_receiver|link_inst|r.state.S_Run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.sent_null~q\,
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|link_inst|r.state.S_Started~q\,
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~18_combout\);

-- Location: LCCOMB_X21_Y10_N0
\spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~feeder_combout\ = \spw_receiver|xmit_sel0:xmit_inst|v~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|xmit_sel0:xmit_inst|v~18_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~feeder_combout\);

-- Location: FF_X21_Y10_N1
\spw_receiver|xmit_sel0:xmit_inst|r.allow_fct\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\);

-- Location: LCCOMB_X19_Y11_N20
\spw_receiver|xmit_sel0:xmit_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\ & \spw_receiver|link_inst|r.xmit_fct_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\,
	datad => \spw_receiver|link_inst|r.xmit_fct_in~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\);

-- Location: LCCOMB_X19_Y11_N24
\spw_receiver|link_inst|v~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~11_combout\ = \spw_receiver|link_inst|r.rx_credit\(3) $ (((\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & 
-- \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(3),
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\,
	combout => \spw_receiver|link_inst|v~11_combout\);

-- Location: LCCOMB_X19_Y11_N18
\spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\ & (\spw_receiver|link_inst|r.xmit_fct_in~q\ & (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & 
-- \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\,
	datab => \spw_receiver|link_inst|r.xmit_fct_in~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\);

-- Location: LCCOMB_X18_Y11_N0
\spw_receiver|link_inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add4~0_combout\ = \spw_receiver|link_inst|r.rx_credit\(0) $ (VCC)
-- \spw_receiver|link_inst|Add4~1\ = CARRY(\spw_receiver|link_inst|r.rx_credit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.rx_credit\(0),
	datad => VCC,
	combout => \spw_receiver|link_inst|Add4~0_combout\,
	cout => \spw_receiver|link_inst|Add4~1\);

-- Location: LCCOMB_X18_Y11_N18
\spw_receiver|link_inst|v~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~20_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|link_inst|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|link_inst|Add4~0_combout\,
	combout => \spw_receiver|link_inst|v~20_combout\);

-- Location: LCCOMB_X18_Y11_N30
\spw_receiver|link_inst|r.rx_credit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|r.rx_credit[0]~0_combout\ = (\spw_receiver|recv_inst|r.rxchar~q\) # (!\spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.rxchar~q\,
	datad => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	combout => \spw_receiver|link_inst|r.rx_credit[0]~0_combout\);

-- Location: FF_X18_Y11_N19
\spw_receiver|link_inst|r.rx_credit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~20_combout\,
	ena => \spw_receiver|link_inst|r.rx_credit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.rx_credit\(0));

-- Location: LCCOMB_X18_Y11_N2
\spw_receiver|link_inst|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add4~2_combout\ = (\spw_receiver|link_inst|r.rx_credit\(1) & (\spw_receiver|link_inst|Add4~1\ & VCC)) # (!\spw_receiver|link_inst|r.rx_credit\(1) & (!\spw_receiver|link_inst|Add4~1\))
-- \spw_receiver|link_inst|Add4~3\ = CARRY((!\spw_receiver|link_inst|r.rx_credit\(1) & !\spw_receiver|link_inst|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.rx_credit\(1),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add4~1\,
	combout => \spw_receiver|link_inst|Add4~2_combout\,
	cout => \spw_receiver|link_inst|Add4~3\);

-- Location: LCCOMB_X18_Y11_N16
\spw_receiver|link_inst|v~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~19_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|link_inst|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|link_inst|Add4~2_combout\,
	combout => \spw_receiver|link_inst|v~19_combout\);

-- Location: FF_X18_Y11_N17
\spw_receiver|link_inst|r.rx_credit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~19_combout\,
	ena => \spw_receiver|link_inst|r.rx_credit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.rx_credit\(1));

-- Location: LCCOMB_X18_Y11_N4
\spw_receiver|link_inst|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add4~4_combout\ = (\spw_receiver|link_inst|r.rx_credit\(2) & ((GND) # (!\spw_receiver|link_inst|Add4~3\))) # (!\spw_receiver|link_inst|r.rx_credit\(2) & (\spw_receiver|link_inst|Add4~3\ $ (GND)))
-- \spw_receiver|link_inst|Add4~5\ = CARRY((\spw_receiver|link_inst|r.rx_credit\(2)) # (!\spw_receiver|link_inst|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(2),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add4~3\,
	combout => \spw_receiver|link_inst|Add4~4_combout\,
	cout => \spw_receiver|link_inst|Add4~5\);

-- Location: LCCOMB_X18_Y11_N22
\spw_receiver|link_inst|v~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~18_combout\ = (\spw_receiver|link_inst|Add4~4_combout\ & \spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|link_inst|Add4~4_combout\,
	datad => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	combout => \spw_receiver|link_inst|v~18_combout\);

-- Location: FF_X18_Y11_N23
\spw_receiver|link_inst|r.rx_credit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~18_combout\,
	ena => \spw_receiver|link_inst|r.rx_credit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.rx_credit\(2));

-- Location: LCCOMB_X18_Y11_N6
\spw_receiver|link_inst|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add4~6_combout\ = (\spw_receiver|link_inst|Add4~5\ & ((\spw_receiver|link_inst|r.rx_credit\(3) $ (\spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\)))) # (!\spw_receiver|link_inst|Add4~5\ & 
-- (\spw_receiver|link_inst|r.rx_credit\(3) $ ((!\spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\))))
-- \spw_receiver|link_inst|Add4~7\ = CARRY((!\spw_receiver|link_inst|Add4~5\ & (\spw_receiver|link_inst|r.rx_credit\(3) $ (!\spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(3),
	datab => \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\,
	datad => VCC,
	cin => \spw_receiver|link_inst|Add4~5\,
	combout => \spw_receiver|link_inst|Add4~6_combout\,
	cout => \spw_receiver|link_inst|Add4~7\);

-- Location: LCCOMB_X18_Y11_N12
\spw_receiver|link_inst|v~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~15_combout\ = (\spw_receiver|recv_inst|r.rxchar~q\ & ((\spw_receiver|link_inst|Add4~6_combout\))) # (!\spw_receiver|recv_inst|r.rxchar~q\ & (\spw_receiver|link_inst|v~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|v~11_combout\,
	datac => \spw_receiver|recv_inst|r.rxchar~q\,
	datad => \spw_receiver|link_inst|Add4~6_combout\,
	combout => \spw_receiver|link_inst|v~15_combout\);

-- Location: FF_X18_Y11_N13
\spw_receiver|link_inst|r.rx_credit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~15_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.rx_credit\(3));

-- Location: LCCOMB_X19_Y11_N2
\spw_receiver|link_inst|v~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~12_combout\ = \spw_receiver|link_inst|r.rx_credit\(4) $ (((\spw_receiver|link_inst|r.rx_credit\(3) & \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(3),
	datab => \spw_receiver|link_inst|r.rx_credit\(4),
	datad => \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\,
	combout => \spw_receiver|link_inst|v~12_combout\);

-- Location: LCCOMB_X18_Y11_N8
\spw_receiver|link_inst|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add4~8_combout\ = (\spw_receiver|link_inst|v~12_combout\ & ((GND) # (!\spw_receiver|link_inst|Add4~7\))) # (!\spw_receiver|link_inst|v~12_combout\ & (\spw_receiver|link_inst|Add4~7\ $ (GND)))
-- \spw_receiver|link_inst|Add4~9\ = CARRY((\spw_receiver|link_inst|v~12_combout\) # (!\spw_receiver|link_inst|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|v~12_combout\,
	datad => VCC,
	cin => \spw_receiver|link_inst|Add4~7\,
	combout => \spw_receiver|link_inst|Add4~8_combout\,
	cout => \spw_receiver|link_inst|Add4~9\);

-- Location: LCCOMB_X18_Y11_N20
\spw_receiver|link_inst|v~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~17_combout\ = (\spw_receiver|recv_inst|r.rxchar~q\ & (\spw_receiver|link_inst|Add4~8_combout\)) # (!\spw_receiver|recv_inst|r.rxchar~q\ & ((\spw_receiver|link_inst|v~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|recv_inst|r.rxchar~q\,
	datac => \spw_receiver|link_inst|Add4~8_combout\,
	datad => \spw_receiver|link_inst|v~12_combout\,
	combout => \spw_receiver|link_inst|v~17_combout\);

-- Location: FF_X18_Y11_N21
\spw_receiver|link_inst|r.rx_credit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~17_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.rx_credit\(4));

-- Location: LCCOMB_X18_Y11_N10
\spw_receiver|link_inst|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add4~10_combout\ = \spw_receiver|link_inst|Add4~9\ $ (!\spw_receiver|link_inst|v~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|link_inst|v~13_combout\,
	cin => \spw_receiver|link_inst|Add4~9\,
	combout => \spw_receiver|link_inst|Add4~10_combout\);

-- Location: LCCOMB_X18_Y11_N26
\spw_receiver|link_inst|v~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~16_combout\ = (\spw_receiver|recv_inst|r.rxchar~q\ & ((\spw_receiver|link_inst|Add4~10_combout\))) # (!\spw_receiver|recv_inst|r.rxchar~q\ & (\spw_receiver|link_inst|v~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|v~13_combout\,
	datac => \spw_receiver|recv_inst|r.rxchar~q\,
	datad => \spw_receiver|link_inst|Add4~10_combout\,
	combout => \spw_receiver|link_inst|v~16_combout\);

-- Location: FF_X18_Y11_N27
\spw_receiver|link_inst|r.rx_credit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~16_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.rx_credit\(5));

-- Location: LCCOMB_X18_Y11_N24
\spw_receiver|link_inst|v~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~13_combout\ = \spw_receiver|link_inst|r.rx_credit\(5) $ (((\spw_receiver|link_inst|r.rx_credit\(3) & (\spw_receiver|link_inst|r.rx_credit\(4) & \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(3),
	datab => \spw_receiver|link_inst|r.rx_credit\(4),
	datac => \spw_receiver|link_inst|r.rx_credit\(5),
	datad => \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\,
	combout => \spw_receiver|link_inst|v~13_combout\);

-- Location: LCCOMB_X19_Y11_N4
\spw_receiver|link_inst|xmit_fct_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|xmit_fct_in~0_combout\ = (\spw_receiver|link_inst|r.rx_credit\(1)) # ((\spw_receiver|link_inst|r.rx_credit\(2)) # ((\spw_receiver|link_inst|r.rx_credit\(0)) # (\spw_receiver|link_inst|v~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(1),
	datab => \spw_receiver|link_inst|r.rx_credit\(2),
	datac => \spw_receiver|link_inst|r.rx_credit\(0),
	datad => \spw_receiver|link_inst|v~11_combout\,
	combout => \spw_receiver|link_inst|xmit_fct_in~0_combout\);

-- Location: FF_X19_Y13_N11
\spw_receiver|r.rxfifo_waddr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(5));

-- Location: LCCOMB_X24_Y10_N6
\spw_receiver|recv_inst|v~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~10_combout\ = (\spw_receiver|recv_inst|r.rxflag~q\ & ((\spw_receiver|recv_inst|r.control~q\) # ((\spw_receiver|recv_inst|r.escaped~q\) # (!\spw_receiver|recv_inst|v~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.control~q\,
	datab => \spw_receiver|recv_inst|r.escaped~q\,
	datac => \spw_receiver|recv_inst|r.rxflag~q\,
	datad => \spw_receiver|recv_inst|v~0_combout\,
	combout => \spw_receiver|recv_inst|v~10_combout\);

-- Location: LCCOMB_X24_Y10_N22
\spw_receiver|recv_inst|v~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~11_combout\ = (\spw_receiver|recv_inst|v~10_combout\) # ((\spw_receiver|recv_inst|v~3_combout\ & (\spw_receiver|recv_inst|r.bitshift\(7) $ (\spw_receiver|recv_inst|r.bitshift\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|v~10_combout\,
	datab => \spw_receiver|recv_inst|r.bitshift\(7),
	datac => \spw_receiver|recv_inst|v~3_combout\,
	datad => \spw_receiver|recv_inst|r.bitshift\(6),
	combout => \spw_receiver|recv_inst|v~11_combout\);

-- Location: FF_X24_Y10_N23
\spw_receiver|recv_inst|r.rxflag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~11_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.rxflag~q\);

-- Location: LCCOMB_X22_Y13_N10
\spw_receiver|v~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v~3_combout\ = (\spw_receiver|link_inst|r.state.S_Run~q\ & ((\spw_receiver|recv_inst|r.rxchar~q\ & (!\spw_receiver|recv_inst|r.rxflag~q\)) # (!\spw_receiver|recv_inst|r.rxchar~q\ & ((\spw_receiver|r.rxpacket~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.rxflag~q\,
	datab => \spw_receiver|recv_inst|r.rxchar~q\,
	datac => \spw_receiver|r.rxpacket~q\,
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|v~3_combout\);

-- Location: FF_X22_Y13_N11
\spw_receiver|r.rxpacket\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|v~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxpacket~q\);

-- Location: FF_X19_Y13_N1
\spw_receiver|r.rxfifo_waddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(0));

-- Location: LCCOMB_X19_Y13_N0
\spw_receiver|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~0_combout\ = (\spw_receiver|v~1_combout\ & (\spw_receiver|r.rxfifo_waddr\(0) $ (VCC))) # (!\spw_receiver|v~1_combout\ & (\spw_receiver|r.rxfifo_waddr\(0) & VCC))
-- \spw_receiver|Add1~1\ = CARRY((\spw_receiver|v~1_combout\ & \spw_receiver|r.rxfifo_waddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|v~1_combout\,
	datab => \spw_receiver|r.rxfifo_waddr\(0),
	datad => VCC,
	combout => \spw_receiver|Add1~0_combout\,
	cout => \spw_receiver|Add1~1\);

-- Location: LCCOMB_X18_Y13_N30
\spw_receiver|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal1~2_combout\ = (\spw_receiver|Add1~4_combout\ & (\spw_receiver|Add1~0_combout\ & (\spw_receiver|Add1~2_combout\ & \spw_receiver|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|Add1~4_combout\,
	datab => \spw_receiver|Add1~0_combout\,
	datac => \spw_receiver|Add1~2_combout\,
	datad => \spw_receiver|Add1~6_combout\,
	combout => \spw_receiver|Equal1~2_combout\);

-- Location: LCCOMB_X18_Y13_N8
\spw_receiver|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal1~3_combout\ = (\spw_receiver|Add1~10_combout\ & \spw_receiver|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|Add1~10_combout\,
	datac => \spw_receiver|Add1~8_combout\,
	combout => \spw_receiver|Equal1~3_combout\);

-- Location: FF_X19_Y13_N21
\spw_receiver|r.rxfifo_waddr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(10));

-- Location: LCCOMB_X19_Y13_N10
\spw_receiver|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~10_combout\ = (\spw_receiver|r.rxfifo_waddr\(5) & (!\spw_receiver|Add1~9\)) # (!\spw_receiver|r.rxfifo_waddr\(5) & ((\spw_receiver|Add1~9\) # (GND)))
-- \spw_receiver|Add1~11\ = CARRY((!\spw_receiver|Add1~9\) # (!\spw_receiver|r.rxfifo_waddr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxfifo_waddr\(5),
	datad => VCC,
	cin => \spw_receiver|Add1~9\,
	combout => \spw_receiver|Add1~10_combout\,
	cout => \spw_receiver|Add1~11\);

-- Location: LCCOMB_X19_Y13_N12
\spw_receiver|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~12_combout\ = (\spw_receiver|r.rxfifo_waddr\(6) & (\spw_receiver|Add1~11\ $ (GND))) # (!\spw_receiver|r.rxfifo_waddr\(6) & (!\spw_receiver|Add1~11\ & VCC))
-- \spw_receiver|Add1~13\ = CARRY((\spw_receiver|r.rxfifo_waddr\(6) & !\spw_receiver|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.rxfifo_waddr\(6),
	datad => VCC,
	cin => \spw_receiver|Add1~11\,
	combout => \spw_receiver|Add1~12_combout\,
	cout => \spw_receiver|Add1~13\);

-- Location: FF_X19_Y13_N13
\spw_receiver|r.rxfifo_waddr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(6));

-- Location: LCCOMB_X19_Y13_N14
\spw_receiver|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~14_combout\ = (\spw_receiver|r.rxfifo_waddr\(7) & (!\spw_receiver|Add1~13\)) # (!\spw_receiver|r.rxfifo_waddr\(7) & ((\spw_receiver|Add1~13\) # (GND)))
-- \spw_receiver|Add1~15\ = CARRY((!\spw_receiver|Add1~13\) # (!\spw_receiver|r.rxfifo_waddr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxfifo_waddr\(7),
	datad => VCC,
	cin => \spw_receiver|Add1~13\,
	combout => \spw_receiver|Add1~14_combout\,
	cout => \spw_receiver|Add1~15\);

-- Location: FF_X19_Y13_N15
\spw_receiver|r.rxfifo_waddr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(7));

-- Location: LCCOMB_X19_Y13_N16
\spw_receiver|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~16_combout\ = (\spw_receiver|r.rxfifo_waddr\(8) & (\spw_receiver|Add1~15\ $ (GND))) # (!\spw_receiver|r.rxfifo_waddr\(8) & (!\spw_receiver|Add1~15\ & VCC))
-- \spw_receiver|Add1~17\ = CARRY((\spw_receiver|r.rxfifo_waddr\(8) & !\spw_receiver|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxfifo_waddr\(8),
	datad => VCC,
	cin => \spw_receiver|Add1~15\,
	combout => \spw_receiver|Add1~16_combout\,
	cout => \spw_receiver|Add1~17\);

-- Location: FF_X19_Y13_N17
\spw_receiver|r.rxfifo_waddr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(8));

-- Location: LCCOMB_X19_Y13_N18
\spw_receiver|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~18_combout\ = (\spw_receiver|r.rxfifo_waddr\(9) & (!\spw_receiver|Add1~17\)) # (!\spw_receiver|r.rxfifo_waddr\(9) & ((\spw_receiver|Add1~17\) # (GND)))
-- \spw_receiver|Add1~19\ = CARRY((!\spw_receiver|Add1~17\) # (!\spw_receiver|r.rxfifo_waddr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxfifo_waddr\(9),
	datad => VCC,
	cin => \spw_receiver|Add1~17\,
	combout => \spw_receiver|Add1~18_combout\,
	cout => \spw_receiver|Add1~19\);

-- Location: FF_X19_Y13_N19
\spw_receiver|r.rxfifo_waddr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(9));

-- Location: LCCOMB_X19_Y13_N20
\spw_receiver|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~20_combout\ = \spw_receiver|Add1~19\ $ (!\spw_receiver|r.rxfifo_waddr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|r.rxfifo_waddr\(10),
	cin => \spw_receiver|Add1~19\,
	combout => \spw_receiver|Add1~20_combout\);

-- Location: LCCOMB_X19_Y13_N26
\spw_receiver|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal1~0_combout\ = (\spw_receiver|Add1~12_combout\ & (\spw_receiver|Add1~16_combout\ & (\spw_receiver|Add1~14_combout\ & \spw_receiver|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|Add1~12_combout\,
	datab => \spw_receiver|Add1~16_combout\,
	datac => \spw_receiver|Add1~14_combout\,
	datad => \spw_receiver|Add1~18_combout\,
	combout => \spw_receiver|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y13_N12
\spw_receiver|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal1~4_combout\ = (\spw_receiver|Equal1~2_combout\ & (\spw_receiver|Equal1~3_combout\ & (\spw_receiver|Add1~20_combout\ & \spw_receiver|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|Equal1~2_combout\,
	datab => \spw_receiver|Equal1~3_combout\,
	datac => \spw_receiver|Add1~20_combout\,
	datad => \spw_receiver|Equal1~0_combout\,
	combout => \spw_receiver|Equal1~4_combout\);

-- Location: FF_X18_Y13_N13
\spw_receiver|r.rxfull\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfull~q\);

-- Location: LCCOMB_X22_Y13_N30
\spw_receiver|v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v~2_combout\ = (\spw_receiver|r.rxpacket~q\ & (((\spw_receiver|r.rxfull~q\ & \spw_receiver|r.rxeep~q\)) # (!\spw_receiver|link_inst|r.state.S_Run~q\))) # (!\spw_receiver|r.rxpacket~q\ & (\spw_receiver|r.rxfull~q\ & 
-- (\spw_receiver|r.rxeep~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxpacket~q\,
	datab => \spw_receiver|r.rxfull~q\,
	datac => \spw_receiver|r.rxeep~q\,
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|v~2_combout\);

-- Location: FF_X22_Y13_N31
\spw_receiver|r.rxeep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|v~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxeep~q\);

-- Location: LCCOMB_X22_Y13_N28
\spw_receiver|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v~1_combout\ = (!\spw_receiver|r.rxfull~q\ & ((\spw_receiver|r.rxeep~q\) # ((\spw_receiver|recv_inst|r.rxchar~q\ & \spw_receiver|link_inst|r.state.S_Run~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxeep~q\,
	datab => \spw_receiver|recv_inst|r.rxchar~q\,
	datac => \spw_receiver|r.rxfull~q\,
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|v~1_combout\);

-- Location: LCCOMB_X19_Y13_N2
\spw_receiver|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~2_combout\ = (\spw_receiver|r.rxfifo_waddr\(1) & (!\spw_receiver|Add1~1\)) # (!\spw_receiver|r.rxfifo_waddr\(1) & ((\spw_receiver|Add1~1\) # (GND)))
-- \spw_receiver|Add1~3\ = CARRY((!\spw_receiver|Add1~1\) # (!\spw_receiver|r.rxfifo_waddr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.rxfifo_waddr\(1),
	datad => VCC,
	cin => \spw_receiver|Add1~1\,
	combout => \spw_receiver|Add1~2_combout\,
	cout => \spw_receiver|Add1~3\);

-- Location: FF_X19_Y13_N3
\spw_receiver|r.rxfifo_waddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(1));

-- Location: LCCOMB_X19_Y13_N4
\spw_receiver|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~4_combout\ = (\spw_receiver|r.rxfifo_waddr\(2) & (\spw_receiver|Add1~3\ $ (GND))) # (!\spw_receiver|r.rxfifo_waddr\(2) & (!\spw_receiver|Add1~3\ & VCC))
-- \spw_receiver|Add1~5\ = CARRY((\spw_receiver|r.rxfifo_waddr\(2) & !\spw_receiver|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxfifo_waddr\(2),
	datad => VCC,
	cin => \spw_receiver|Add1~3\,
	combout => \spw_receiver|Add1~4_combout\,
	cout => \spw_receiver|Add1~5\);

-- Location: FF_X19_Y13_N5
\spw_receiver|r.rxfifo_waddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(2));

-- Location: LCCOMB_X19_Y13_N6
\spw_receiver|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~6_combout\ = (\spw_receiver|r.rxfifo_waddr\(3) & (!\spw_receiver|Add1~5\)) # (!\spw_receiver|r.rxfifo_waddr\(3) & ((\spw_receiver|Add1~5\) # (GND)))
-- \spw_receiver|Add1~7\ = CARRY((!\spw_receiver|Add1~5\) # (!\spw_receiver|r.rxfifo_waddr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxfifo_waddr\(3),
	datad => VCC,
	cin => \spw_receiver|Add1~5\,
	combout => \spw_receiver|Add1~6_combout\,
	cout => \spw_receiver|Add1~7\);

-- Location: FF_X19_Y13_N7
\spw_receiver|r.rxfifo_waddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(3));

-- Location: LCCOMB_X19_Y13_N8
\spw_receiver|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add1~8_combout\ = (\spw_receiver|r.rxfifo_waddr\(4) & (\spw_receiver|Add1~7\ $ (GND))) # (!\spw_receiver|r.rxfifo_waddr\(4) & (!\spw_receiver|Add1~7\ & VCC))
-- \spw_receiver|Add1~9\ = CARRY((\spw_receiver|r.rxfifo_waddr\(4) & !\spw_receiver|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.rxfifo_waddr\(4),
	datad => VCC,
	cin => \spw_receiver|Add1~7\,
	combout => \spw_receiver|Add1~8_combout\,
	cout => \spw_receiver|Add1~9\);

-- Location: FF_X19_Y13_N9
\spw_receiver|r.rxfifo_waddr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxfifo_waddr\(4));

-- Location: LCCOMB_X18_Y13_N0
\spw_receiver|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal1~1_combout\ = ((!\spw_receiver|Equal1~0_combout\) # (!\spw_receiver|Add1~20_combout\)) # (!\spw_receiver|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|Add1~10_combout\,
	datac => \spw_receiver|Add1~20_combout\,
	datad => \spw_receiver|Equal1~0_combout\,
	combout => \spw_receiver|Equal1~1_combout\);

-- Location: FF_X18_Y13_N1
\spw_receiver|r.rxroom[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxroom\(5));

-- Location: LCCOMB_X19_Y11_N0
\spw_receiver|link_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add3~0_combout\ = \spw_receiver|link_inst|r.rx_credit\(5) $ (((\spw_receiver|link_inst|r.rx_credit\(4) & ((\spw_receiver|link_inst|r.rx_credit\(3)) # (\spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(3),
	datab => \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\,
	datac => \spw_receiver|link_inst|r.rx_credit\(5),
	datad => \spw_receiver|link_inst|r.rx_credit\(4),
	combout => \spw_receiver|link_inst|Add3~0_combout\);

-- Location: LCCOMB_X19_Y11_N22
\spw_receiver|link_inst|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add3~1_combout\ = \spw_receiver|link_inst|r.rx_credit\(4) $ (((\spw_receiver|link_inst|r.rx_credit\(3)) # (\spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(3),
	datab => \spw_receiver|link_inst|r.rx_credit\(4),
	datad => \spw_receiver|xmit_sel0:xmit_inst|xmito.fctack~0_combout\,
	combout => \spw_receiver|link_inst|Add3~1_combout\);

-- Location: LCCOMB_X19_Y13_N30
\spw_receiver|v.rxroom[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v.rxroom[4]~0_combout\ = ((!\spw_receiver|Add1~20_combout\) # (!\spw_receiver|Equal1~0_combout\)) # (!\spw_receiver|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|Add1~8_combout\,
	datac => \spw_receiver|Equal1~0_combout\,
	datad => \spw_receiver|Add1~20_combout\,
	combout => \spw_receiver|v.rxroom[4]~0_combout\);

-- Location: FF_X19_Y13_N31
\spw_receiver|r.rxroom[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|v.rxroom[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxroom\(4));

-- Location: LCCOMB_X19_Y13_N24
\spw_receiver|v.rxroom[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v.rxroom[3]~1_combout\ = ((!\spw_receiver|Add1~20_combout\) # (!\spw_receiver|Equal1~0_combout\)) # (!\spw_receiver|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|Add1~6_combout\,
	datac => \spw_receiver|Equal1~0_combout\,
	datad => \spw_receiver|Add1~20_combout\,
	combout => \spw_receiver|v.rxroom[3]~1_combout\);

-- Location: FF_X19_Y13_N25
\spw_receiver|r.rxroom[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|v.rxroom[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxroom\(3));

-- Location: LCCOMB_X19_Y13_N22
\spw_receiver|v.rxroom[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v.rxroom[2]~2_combout\ = ((!\spw_receiver|Add1~20_combout\) # (!\spw_receiver|Equal1~0_combout\)) # (!\spw_receiver|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|Add1~4_combout\,
	datac => \spw_receiver|Equal1~0_combout\,
	datad => \spw_receiver|Add1~20_combout\,
	combout => \spw_receiver|v.rxroom[2]~2_combout\);

-- Location: FF_X19_Y13_N23
\spw_receiver|r.rxroom[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|v.rxroom[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxroom\(2));

-- Location: LCCOMB_X19_Y13_N28
\spw_receiver|v.rxroom[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v.rxroom[1]~3_combout\ = ((!\spw_receiver|Add1~20_combout\) # (!\spw_receiver|Equal1~0_combout\)) # (!\spw_receiver|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|Add1~2_combout\,
	datac => \spw_receiver|Equal1~0_combout\,
	datad => \spw_receiver|Add1~20_combout\,
	combout => \spw_receiver|v.rxroom[1]~3_combout\);

-- Location: FF_X19_Y13_N29
\spw_receiver|r.rxroom[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|v.rxroom[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxroom\(1));

-- Location: LCCOMB_X18_Y13_N6
\spw_receiver|v.rxroom[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v.rxroom[0]~4_combout\ = ((!\spw_receiver|Equal1~0_combout\) # (!\spw_receiver|Add1~20_combout\)) # (!\spw_receiver|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|Add1~0_combout\,
	datac => \spw_receiver|Add1~20_combout\,
	datad => \spw_receiver|Equal1~0_combout\,
	combout => \spw_receiver|v.rxroom[0]~4_combout\);

-- Location: FF_X18_Y13_N7
\spw_receiver|r.rxroom[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|v.rxroom[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.rxroom\(0));

-- Location: LCCOMB_X19_Y11_N6
\spw_receiver|link_inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|LessThan2~1_cout\ = CARRY((!\spw_receiver|r.rxroom\(0) & \spw_receiver|link_inst|r.rx_credit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxroom\(0),
	datab => \spw_receiver|link_inst|r.rx_credit\(0),
	datad => VCC,
	cout => \spw_receiver|link_inst|LessThan2~1_cout\);

-- Location: LCCOMB_X19_Y11_N8
\spw_receiver|link_inst|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|LessThan2~3_cout\ = CARRY((\spw_receiver|link_inst|r.rx_credit\(1) & (\spw_receiver|r.rxroom\(1) & !\spw_receiver|link_inst|LessThan2~1_cout\)) # (!\spw_receiver|link_inst|r.rx_credit\(1) & ((\spw_receiver|r.rxroom\(1)) # 
-- (!\spw_receiver|link_inst|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(1),
	datab => \spw_receiver|r.rxroom\(1),
	datad => VCC,
	cin => \spw_receiver|link_inst|LessThan2~1_cout\,
	cout => \spw_receiver|link_inst|LessThan2~3_cout\);

-- Location: LCCOMB_X19_Y11_N10
\spw_receiver|link_inst|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|LessThan2~5_cout\ = CARRY((\spw_receiver|r.rxroom\(2) & (\spw_receiver|link_inst|r.rx_credit\(2) & !\spw_receiver|link_inst|LessThan2~3_cout\)) # (!\spw_receiver|r.rxroom\(2) & ((\spw_receiver|link_inst|r.rx_credit\(2)) # 
-- (!\spw_receiver|link_inst|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxroom\(2),
	datab => \spw_receiver|link_inst|r.rx_credit\(2),
	datad => VCC,
	cin => \spw_receiver|link_inst|LessThan2~3_cout\,
	cout => \spw_receiver|link_inst|LessThan2~5_cout\);

-- Location: LCCOMB_X19_Y11_N12
\spw_receiver|link_inst|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|LessThan2~7_cout\ = CARRY((\spw_receiver|r.rxroom\(3) & ((\spw_receiver|link_inst|v~11_combout\) # (!\spw_receiver|link_inst|LessThan2~5_cout\))) # (!\spw_receiver|r.rxroom\(3) & (\spw_receiver|link_inst|v~11_combout\ & 
-- !\spw_receiver|link_inst|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.rxroom\(3),
	datab => \spw_receiver|link_inst|v~11_combout\,
	datad => VCC,
	cin => \spw_receiver|link_inst|LessThan2~5_cout\,
	cout => \spw_receiver|link_inst|LessThan2~7_cout\);

-- Location: LCCOMB_X19_Y11_N14
\spw_receiver|link_inst|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|LessThan2~9_cout\ = CARRY((\spw_receiver|link_inst|Add3~1_combout\ & ((!\spw_receiver|link_inst|LessThan2~7_cout\) # (!\spw_receiver|r.rxroom\(4)))) # (!\spw_receiver|link_inst|Add3~1_combout\ & (!\spw_receiver|r.rxroom\(4) & 
-- !\spw_receiver|link_inst|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Add3~1_combout\,
	datab => \spw_receiver|r.rxroom\(4),
	datad => VCC,
	cin => \spw_receiver|link_inst|LessThan2~7_cout\,
	cout => \spw_receiver|link_inst|LessThan2~9_cout\);

-- Location: LCCOMB_X19_Y11_N16
\spw_receiver|link_inst|LessThan2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|LessThan2~10_combout\ = (\spw_receiver|r.rxroom\(5) & (\spw_receiver|link_inst|LessThan2~9_cout\ & \spw_receiver|link_inst|Add3~0_combout\)) # (!\spw_receiver|r.rxroom\(5) & ((\spw_receiver|link_inst|LessThan2~9_cout\) # 
-- (\spw_receiver|link_inst|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.rxroom\(5),
	datad => \spw_receiver|link_inst|Add3~0_combout\,
	cin => \spw_receiver|link_inst|LessThan2~9_cout\,
	combout => \spw_receiver|link_inst|LessThan2~10_combout\);

-- Location: LCCOMB_X19_Y11_N28
\spw_receiver|link_inst|xmit_fct_in~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|xmit_fct_in~1_combout\ = (!\spw_receiver|link_inst|LessThan2~10_combout\ & (((!\spw_receiver|link_inst|xmit_fct_in~0_combout\) # (!\spw_receiver|link_inst|v~12_combout\)) # (!\spw_receiver|link_inst|v~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|v~13_combout\,
	datab => \spw_receiver|link_inst|v~12_combout\,
	datac => \spw_receiver|link_inst|xmit_fct_in~0_combout\,
	datad => \spw_receiver|link_inst|LessThan2~10_combout\,
	combout => \spw_receiver|link_inst|xmit_fct_in~1_combout\);

-- Location: FF_X19_Y11_N29
\spw_receiver|link_inst|r.xmit_fct_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|xmit_fct_in~1_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.xmit_fct_in~q\);

-- Location: IOIBUF_X34_Y10_N8
\linkstart~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_linkstart,
	o => \linkstart~input_o\);

-- Location: LCCOMB_X22_Y10_N18
\spw_receiver|link_inst|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~4_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorWait~q\ & ((\spw_receiver|link_inst|v~14_combout\) # (!\spw_receiver|link_inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_ErrorWait~q\,
	datac => \spw_receiver|link_inst|v~14_combout\,
	datad => \spw_receiver|link_inst|process_0~2_combout\,
	combout => \spw_receiver|link_inst|Selector0~4_combout\);

-- Location: LCCOMB_X22_Y10_N22
\spw_receiver|link_inst|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~3_combout\ = (\spw_receiver|link_inst|r.state.S_Started~q\ & ((\spw_receiver|recv_inst|r.null_seen~q\) # ((\spw_receiver|link_inst|v~14_combout\) # (!\spw_receiver|link_inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_Started~q\,
	datab => \spw_receiver|recv_inst|r.null_seen~q\,
	datac => \spw_receiver|link_inst|v~14_combout\,
	datad => \spw_receiver|link_inst|process_0~2_combout\,
	combout => \spw_receiver|link_inst|Selector0~3_combout\);

-- Location: LCCOMB_X22_Y10_N6
\spw_receiver|link_inst|Selector0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~11_combout\ = (!\spw_receiver|link_inst|Selector0~0_combout\ & (!\spw_receiver|link_inst|Selector0~4_combout\ & (!\spw_receiver|link_inst|Selector0~3_combout\ & !\spw_receiver|link_inst|Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector0~0_combout\,
	datab => \spw_receiver|link_inst|Selector0~4_combout\,
	datac => \spw_receiver|link_inst|Selector0~3_combout\,
	datad => \spw_receiver|link_inst|Selector0~5_combout\,
	combout => \spw_receiver|link_inst|Selector0~11_combout\);

-- Location: LCCOMB_X22_Y10_N20
\spw_receiver|link_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector1~0_combout\ = (!\spw_receiver|link_inst|Selector0~1_combout\ & ((\spw_receiver|link_inst|Selector0~6_combout\ & (\spw_receiver|link_inst|Selector0~11_combout\)) # (!\spw_receiver|link_inst|Selector0~6_combout\ & 
-- ((\spw_receiver|link_inst|r.state.S_ErrorWait~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector0~11_combout\,
	datab => \spw_receiver|link_inst|Selector0~6_combout\,
	datac => \spw_receiver|link_inst|r.state.S_ErrorWait~q\,
	datad => \spw_receiver|link_inst|Selector0~1_combout\,
	combout => \spw_receiver|link_inst|Selector1~0_combout\);

-- Location: FF_X22_Y10_N21
\spw_receiver|link_inst|r.state.S_ErrorWait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.state.S_ErrorWait~q\);

-- Location: LCCOMB_X21_Y10_N2
\spw_receiver|link_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector2~0_combout\ = (\spw_receiver|link_inst|process_0~2_combout\ & (!\spw_receiver|link_inst|Selector0~1_combout\ & (\spw_receiver|link_inst|v~14_combout\ & \spw_receiver|link_inst|r.state.S_ErrorWait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|process_0~2_combout\,
	datab => \spw_receiver|link_inst|Selector0~1_combout\,
	datac => \spw_receiver|link_inst|v~14_combout\,
	datad => \spw_receiver|link_inst|r.state.S_ErrorWait~q\,
	combout => \spw_receiver|link_inst|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y10_N8
\spw_receiver|link_inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector2~1_combout\ = (\spw_receiver|link_inst|Selector0~6_combout\ & (\spw_receiver|link_inst|Selector2~0_combout\)) # (!\spw_receiver|link_inst|Selector0~6_combout\ & (((\spw_receiver|link_inst|r.state.S_Ready~q\ & 
-- !\spw_receiver|link_inst|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector2~0_combout\,
	datab => \spw_receiver|link_inst|Selector0~6_combout\,
	datac => \spw_receiver|link_inst|r.state.S_Ready~q\,
	datad => \spw_receiver|link_inst|Selector0~1_combout\,
	combout => \spw_receiver|link_inst|Selector2~1_combout\);

-- Location: FF_X22_Y10_N9
\spw_receiver|link_inst|r.state.S_Ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.state.S_Ready~q\);

-- Location: LCCOMB_X21_Y10_N8
\spw_receiver|link_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~0_combout\ = (\spw_receiver|link_inst|r.state.S_Ready~q\ & (((\spw_receiver|link_inst|r.xmit_fct_in~q\ & \linkstart~input_o\)) # (!\spw_receiver|link_inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.xmit_fct_in~q\,
	datab => \linkstart~input_o\,
	datac => \spw_receiver|link_inst|r.state.S_Ready~q\,
	datad => \spw_receiver|link_inst|process_0~2_combout\,
	combout => \spw_receiver|link_inst|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y11_N24
\spw_receiver|link_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Equal0~2_combout\ = (\spw_receiver|link_inst|r.timercnt\(1)) # ((\spw_receiver|link_inst|r.timercnt\(2)) # (\spw_receiver|link_inst|r.timercnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.timercnt\(1),
	datac => \spw_receiver|link_inst|r.timercnt\(2),
	datad => \spw_receiver|link_inst|r.timercnt\(0),
	combout => \spw_receiver|link_inst|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y11_N18
\spw_receiver|link_inst|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~12_combout\ = (\spw_receiver|link_inst|r.timercnt\(6) & (\spw_receiver|link_inst|Add5~11\ $ (GND))) # (!\spw_receiver|link_inst|r.timercnt\(6) & ((GND) # (!\spw_receiver|link_inst|Add5~11\)))
-- \spw_receiver|link_inst|Add5~13\ = CARRY((!\spw_receiver|link_inst|Add5~11\) # (!\spw_receiver|link_inst|r.timercnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.timercnt\(6),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~11\,
	combout => \spw_receiver|link_inst|Add5~12_combout\,
	cout => \spw_receiver|link_inst|Add5~13\);

-- Location: LCCOMB_X23_Y11_N20
\spw_receiver|link_inst|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~14_combout\ = (\spw_receiver|link_inst|r.timercnt\(7) & (\spw_receiver|link_inst|Add5~13\ & VCC)) # (!\spw_receiver|link_inst|r.timercnt\(7) & (!\spw_receiver|link_inst|Add5~13\))
-- \spw_receiver|link_inst|Add5~15\ = CARRY((!\spw_receiver|link_inst|r.timercnt\(7) & !\spw_receiver|link_inst|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.timercnt\(7),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~13\,
	combout => \spw_receiver|link_inst|Add5~14_combout\,
	cout => \spw_receiver|link_inst|Add5~15\);

-- Location: LCCOMB_X23_Y11_N28
\spw_receiver|link_inst|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~24_combout\ = (\spw_receiver|link_inst|Add5~14_combout\ & (\spw_receiver|link_inst|Equal0~3_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Add5~14_combout\,
	datac => \spw_receiver|link_inst|Equal0~3_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~24_combout\);

-- Location: FF_X23_Y11_N29
\spw_receiver|link_inst|r.timercnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(7));

-- Location: LCCOMB_X23_Y11_N22
\spw_receiver|link_inst|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~16_combout\ = (\spw_receiver|link_inst|r.timercnt\(8) & (\spw_receiver|link_inst|Add5~15\ $ (GND))) # (!\spw_receiver|link_inst|r.timercnt\(8) & ((GND) # (!\spw_receiver|link_inst|Add5~15\)))
-- \spw_receiver|link_inst|Add5~17\ = CARRY((!\spw_receiver|link_inst|Add5~15\) # (!\spw_receiver|link_inst|r.timercnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.timercnt\(8),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~15\,
	combout => \spw_receiver|link_inst|Add5~16_combout\,
	cout => \spw_receiver|link_inst|Add5~17\);

-- Location: LCCOMB_X23_Y11_N0
\spw_receiver|link_inst|Add5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~25_combout\ = (\spw_receiver|link_inst|Equal0~3_combout\ & (!\spw_receiver|link_inst|Add5~16_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Equal0~3_combout\,
	datac => \spw_receiver|link_inst|Add5~16_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~25_combout\);

-- Location: FF_X23_Y11_N1
\spw_receiver|link_inst|r.timercnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(8));

-- Location: LCCOMB_X23_Y11_N24
\spw_receiver|link_inst|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~18_combout\ = (\spw_receiver|link_inst|r.timercnt\(9) & (\spw_receiver|link_inst|Add5~17\ & VCC)) # (!\spw_receiver|link_inst|r.timercnt\(9) & (!\spw_receiver|link_inst|Add5~17\))
-- \spw_receiver|link_inst|Add5~19\ = CARRY((!\spw_receiver|link_inst|r.timercnt\(9) & !\spw_receiver|link_inst|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.timercnt\(9),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~17\,
	combout => \spw_receiver|link_inst|Add5~18_combout\,
	cout => \spw_receiver|link_inst|Add5~19\);

-- Location: LCCOMB_X23_Y11_N30
\spw_receiver|link_inst|Add5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~23_combout\ = (\spw_receiver|link_inst|Add5~18_combout\ & (\spw_receiver|link_inst|Equal0~3_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Add5~18_combout\,
	datac => \spw_receiver|link_inst|Equal0~3_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~23_combout\);

-- Location: FF_X23_Y11_N31
\spw_receiver|link_inst|r.timercnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(9));

-- Location: LCCOMB_X23_Y11_N26
\spw_receiver|link_inst|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~20_combout\ = \spw_receiver|link_inst|r.timercnt\(10) $ (\spw_receiver|link_inst|Add5~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.timercnt\(10),
	cin => \spw_receiver|link_inst|Add5~19\,
	combout => \spw_receiver|link_inst|Add5~20_combout\);

-- Location: LCCOMB_X23_Y11_N4
\spw_receiver|link_inst|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~22_combout\ = (\spw_receiver|link_inst|Equal0~3_combout\ & (\spw_receiver|link_inst|Add5~20_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Equal0~3_combout\,
	datac => \spw_receiver|link_inst|Add5~20_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~22_combout\);

-- Location: FF_X23_Y11_N5
\spw_receiver|link_inst|r.timercnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(10));

-- Location: LCCOMB_X23_Y11_N2
\spw_receiver|link_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Equal0~0_combout\ = (\spw_receiver|link_inst|r.timercnt\(9)) # (((\spw_receiver|link_inst|r.timercnt\(10)) # (\spw_receiver|link_inst|r.timercnt\(7))) # (!\spw_receiver|link_inst|r.timercnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.timercnt\(9),
	datab => \spw_receiver|link_inst|r.timercnt\(8),
	datac => \spw_receiver|link_inst|r.timercnt\(10),
	datad => \spw_receiver|link_inst|r.timercnt\(7),
	combout => \spw_receiver|link_inst|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y11_N30
\spw_receiver|link_inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~2_combout\ = (!\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & (!\spw_receiver|link_inst|Equal0~2_combout\ & (!\spw_receiver|link_inst|Equal0~0_combout\ & !\spw_receiver|link_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datab => \spw_receiver|link_inst|Equal0~2_combout\,
	datac => \spw_receiver|link_inst|Equal0~0_combout\,
	datad => \spw_receiver|link_inst|Equal0~1_combout\,
	combout => \spw_receiver|link_inst|Selector0~2_combout\);

-- Location: LCCOMB_X22_Y10_N16
\spw_receiver|link_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector6~0_combout\ = (!\spw_receiver|link_inst|Selector0~0_combout\ & (!\spw_receiver|link_inst|Selector0~2_combout\ & (!\spw_receiver|link_inst|Selector0~3_combout\ & !\spw_receiver|link_inst|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector0~0_combout\,
	datab => \spw_receiver|link_inst|Selector0~2_combout\,
	datac => \spw_receiver|link_inst|Selector0~3_combout\,
	datad => \spw_receiver|link_inst|Selector0~4_combout\,
	combout => \spw_receiver|link_inst|Selector6~0_combout\);

-- Location: LCCOMB_X22_Y10_N0
\spw_receiver|link_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector6~1_combout\ = (\spw_receiver|link_inst|Selector0~1_combout\) # (((\spw_receiver|link_inst|r.state.S_Connecting~q\ & !\spw_receiver|link_inst|process_0~3_combout\)) # (!\spw_receiver|link_inst|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector0~1_combout\,
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|link_inst|process_0~3_combout\,
	datad => \spw_receiver|link_inst|Selector6~0_combout\,
	combout => \spw_receiver|link_inst|Selector6~1_combout\);

-- Location: LCCOMB_X22_Y11_N6
\spw_receiver|link_inst|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~32_combout\ = (\spw_receiver|link_inst|Add5~0_combout\ & (\spw_receiver|link_inst|Equal0~3_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Add5~0_combout\,
	datac => \spw_receiver|link_inst|Equal0~3_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~32_combout\);

-- Location: FF_X22_Y11_N7
\spw_receiver|link_inst|r.timercnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(0));

-- Location: LCCOMB_X23_Y11_N8
\spw_receiver|link_inst|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~2_combout\ = (\spw_receiver|link_inst|r.timercnt\(1) & (\spw_receiver|link_inst|Add5~1\ & VCC)) # (!\spw_receiver|link_inst|r.timercnt\(1) & (!\spw_receiver|link_inst|Add5~1\))
-- \spw_receiver|link_inst|Add5~3\ = CARRY((!\spw_receiver|link_inst|r.timercnt\(1) & !\spw_receiver|link_inst|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.timercnt\(1),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~1\,
	combout => \spw_receiver|link_inst|Add5~2_combout\,
	cout => \spw_receiver|link_inst|Add5~3\);

-- Location: LCCOMB_X22_Y11_N16
\spw_receiver|link_inst|Add5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~31_combout\ = (\spw_receiver|link_inst|Equal0~3_combout\ & (\spw_receiver|link_inst|Add5~2_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Equal0~3_combout\,
	datac => \spw_receiver|link_inst|Add5~2_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~31_combout\);

-- Location: FF_X22_Y11_N17
\spw_receiver|link_inst|r.timercnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(1));

-- Location: LCCOMB_X23_Y11_N10
\spw_receiver|link_inst|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~4_combout\ = (\spw_receiver|link_inst|r.timercnt\(2) & ((GND) # (!\spw_receiver|link_inst|Add5~3\))) # (!\spw_receiver|link_inst|r.timercnt\(2) & (\spw_receiver|link_inst|Add5~3\ $ (GND)))
-- \spw_receiver|link_inst|Add5~5\ = CARRY((\spw_receiver|link_inst|r.timercnt\(2)) # (!\spw_receiver|link_inst|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.timercnt\(2),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~3\,
	combout => \spw_receiver|link_inst|Add5~4_combout\,
	cout => \spw_receiver|link_inst|Add5~5\);

-- Location: LCCOMB_X22_Y11_N22
\spw_receiver|link_inst|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~30_combout\ = (\spw_receiver|link_inst|Equal0~3_combout\ & (\spw_receiver|link_inst|Add5~4_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Equal0~3_combout\,
	datac => \spw_receiver|link_inst|Add5~4_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~30_combout\);

-- Location: FF_X22_Y11_N23
\spw_receiver|link_inst|r.timercnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(2));

-- Location: LCCOMB_X23_Y11_N12
\spw_receiver|link_inst|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~6_combout\ = (\spw_receiver|link_inst|r.timercnt\(3) & (\spw_receiver|link_inst|Add5~5\ & VCC)) # (!\spw_receiver|link_inst|r.timercnt\(3) & (!\spw_receiver|link_inst|Add5~5\))
-- \spw_receiver|link_inst|Add5~7\ = CARRY((!\spw_receiver|link_inst|r.timercnt\(3) & !\spw_receiver|link_inst|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.timercnt\(3),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~5\,
	combout => \spw_receiver|link_inst|Add5~6_combout\,
	cout => \spw_receiver|link_inst|Add5~7\);

-- Location: LCCOMB_X22_Y11_N28
\spw_receiver|link_inst|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~28_combout\ = (\spw_receiver|link_inst|Equal0~3_combout\ & (\spw_receiver|link_inst|Add5~6_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Equal0~3_combout\,
	datac => \spw_receiver|link_inst|Add5~6_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~28_combout\);

-- Location: FF_X22_Y11_N29
\spw_receiver|link_inst|r.timercnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(3));

-- Location: LCCOMB_X23_Y11_N14
\spw_receiver|link_inst|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~8_combout\ = (\spw_receiver|link_inst|r.timercnt\(4) & ((GND) # (!\spw_receiver|link_inst|Add5~7\))) # (!\spw_receiver|link_inst|r.timercnt\(4) & (\spw_receiver|link_inst|Add5~7\ $ (GND)))
-- \spw_receiver|link_inst|Add5~9\ = CARRY((\spw_receiver|link_inst|r.timercnt\(4)) # (!\spw_receiver|link_inst|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.timercnt\(4),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~7\,
	combout => \spw_receiver|link_inst|Add5~8_combout\,
	cout => \spw_receiver|link_inst|Add5~9\);

-- Location: LCCOMB_X22_Y11_N10
\spw_receiver|link_inst|Add5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~27_combout\ = (\spw_receiver|link_inst|Equal0~3_combout\ & (\spw_receiver|link_inst|Add5~8_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Equal0~3_combout\,
	datac => \spw_receiver|link_inst|Add5~8_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~27_combout\);

-- Location: FF_X22_Y11_N11
\spw_receiver|link_inst|r.timercnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(4));

-- Location: LCCOMB_X23_Y11_N16
\spw_receiver|link_inst|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~10_combout\ = (\spw_receiver|link_inst|r.timercnt\(5) & (\spw_receiver|link_inst|Add5~9\ & VCC)) # (!\spw_receiver|link_inst|r.timercnt\(5) & (!\spw_receiver|link_inst|Add5~9\))
-- \spw_receiver|link_inst|Add5~11\ = CARRY((!\spw_receiver|link_inst|r.timercnt\(5) & !\spw_receiver|link_inst|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.timercnt\(5),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add5~9\,
	combout => \spw_receiver|link_inst|Add5~10_combout\,
	cout => \spw_receiver|link_inst|Add5~11\);

-- Location: LCCOMB_X22_Y11_N8
\spw_receiver|link_inst|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~26_combout\ = (\spw_receiver|link_inst|Add5~10_combout\ & (\spw_receiver|link_inst|Equal0~3_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Add5~10_combout\,
	datac => \spw_receiver|link_inst|Equal0~3_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~26_combout\);

-- Location: FF_X22_Y11_N9
\spw_receiver|link_inst|r.timercnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(5));

-- Location: LCCOMB_X22_Y11_N26
\spw_receiver|link_inst|Add5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add5~29_combout\ = (!\spw_receiver|link_inst|Add5~12_combout\ & (\spw_receiver|link_inst|Equal0~3_combout\ & !\spw_receiver|link_inst|Selector6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Add5~12_combout\,
	datac => \spw_receiver|link_inst|Equal0~3_combout\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|Add5~29_combout\);

-- Location: FF_X22_Y11_N27
\spw_receiver|link_inst|r.timercnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Add5~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timercnt\(6));

-- Location: LCCOMB_X22_Y11_N20
\spw_receiver|link_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Equal0~1_combout\ = ((\spw_receiver|link_inst|r.timercnt\(3)) # ((\spw_receiver|link_inst|r.timercnt\(5)) # (\spw_receiver|link_inst|r.timercnt\(4)))) # (!\spw_receiver|link_inst|r.timercnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.timercnt\(6),
	datab => \spw_receiver|link_inst|r.timercnt\(3),
	datac => \spw_receiver|link_inst|r.timercnt\(5),
	datad => \spw_receiver|link_inst|r.timercnt\(4),
	combout => \spw_receiver|link_inst|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y11_N4
\spw_receiver|link_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Equal0~3_combout\ = (\spw_receiver|link_inst|Equal0~1_combout\) # ((\spw_receiver|link_inst|Equal0~0_combout\) # (\spw_receiver|link_inst|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Equal0~1_combout\,
	datac => \spw_receiver|link_inst|Equal0~0_combout\,
	datad => \spw_receiver|link_inst|Equal0~2_combout\,
	combout => \spw_receiver|link_inst|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y11_N12
\spw_receiver|link_inst|v~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~25_combout\ = (!\spw_receiver|link_inst|Selector6~1_combout\ & ((\spw_receiver|link_inst|r.timerdone~q\) # (!\spw_receiver|link_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|Equal0~3_combout\,
	datac => \spw_receiver|link_inst|r.timerdone~q\,
	datad => \spw_receiver|link_inst|Selector6~1_combout\,
	combout => \spw_receiver|link_inst|v~25_combout\);

-- Location: FF_X22_Y11_N13
\spw_receiver|link_inst|r.timerdone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.timerdone~q\);

-- Location: LCCOMB_X22_Y11_N18
\spw_receiver|link_inst|v~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~14_combout\ = (\spw_receiver|link_inst|r.timerdone~q\ & (!\spw_receiver|link_inst|Equal0~1_combout\ & (!\spw_receiver|link_inst|Equal0~0_combout\ & !\spw_receiver|link_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.timerdone~q\,
	datab => \spw_receiver|link_inst|Equal0~1_combout\,
	datac => \spw_receiver|link_inst|Equal0~0_combout\,
	datad => \spw_receiver|link_inst|Equal0~2_combout\,
	combout => \spw_receiver|link_inst|v~14_combout\);

-- Location: LCCOMB_X21_Y10_N4
\spw_receiver|link_inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|process_0~3_combout\ = (!\spw_receiver|recv_inst|r.tick_out~q\ & (!\spw_receiver|recv_inst|r.rxchar~q\ & (!\spw_receiver|link_inst|v~14_combout\ & !\spw_receiver|link_inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.tick_out~q\,
	datab => \spw_receiver|recv_inst|r.rxchar~q\,
	datac => \spw_receiver|link_inst|v~14_combout\,
	datad => \spw_receiver|link_inst|process_0~1_combout\,
	combout => \spw_receiver|link_inst|process_0~3_combout\);

-- Location: LCCOMB_X22_Y10_N14
\spw_receiver|link_inst|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~6_combout\ = ((\spw_receiver|link_inst|r.state.S_Connecting~q\ & ((\spw_receiver|recv_inst|r.gotfct~q\) # (!\spw_receiver|link_inst|process_0~3_combout\)))) # (!\spw_receiver|link_inst|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.gotfct~q\,
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|link_inst|process_0~3_combout\,
	datad => \spw_receiver|link_inst|Selector6~0_combout\,
	combout => \spw_receiver|link_inst|Selector0~6_combout\);

-- Location: LCCOMB_X21_Y10_N16
\spw_receiver|link_inst|Selector0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~7_combout\ = (\spw_receiver|link_inst|r.state.S_Started~q\ & (\spw_receiver|link_inst|v~14_combout\)) # (!\spw_receiver|link_inst|r.state.S_Started~q\ & ((\spw_receiver|link_inst|r.state.S_ErrorWait~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_Started~q\,
	datac => \spw_receiver|link_inst|v~14_combout\,
	datad => \spw_receiver|link_inst|r.state.S_ErrorWait~q\,
	combout => \spw_receiver|link_inst|Selector0~7_combout\);

-- Location: LCCOMB_X21_Y10_N6
\spw_receiver|link_inst|Selector0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~8_combout\ = (\spw_receiver|link_inst|process_0~2_combout\ & (((\spw_receiver|link_inst|r.state.S_Started~q\ & \spw_receiver|link_inst|Selector0~7_combout\)))) # (!\spw_receiver|link_inst|process_0~2_combout\ & 
-- ((\spw_receiver|link_inst|Selector0~0_combout\) # ((\spw_receiver|link_inst|r.state.S_Started~q\) # (\spw_receiver|link_inst|Selector0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|process_0~2_combout\,
	datab => \spw_receiver|link_inst|Selector0~0_combout\,
	datac => \spw_receiver|link_inst|r.state.S_Started~q\,
	datad => \spw_receiver|link_inst|Selector0~7_combout\,
	combout => \spw_receiver|link_inst|Selector0~8_combout\);

-- Location: LCCOMB_X21_Y10_N12
\spw_receiver|link_inst|Selector0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~9_combout\ = (\spw_receiver|link_inst|r.state.S_Connecting~q\ & (((!\spw_receiver|recv_inst|r.gotfct~q\ & \spw_receiver|link_inst|Selector0~8_combout\)) # (!\spw_receiver|link_inst|process_0~3_combout\))) # 
-- (!\spw_receiver|link_inst|r.state.S_Connecting~q\ & (((\spw_receiver|link_inst|Selector0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datab => \spw_receiver|link_inst|process_0~3_combout\,
	datac => \spw_receiver|recv_inst|r.gotfct~q\,
	datad => \spw_receiver|link_inst|Selector0~8_combout\,
	combout => \spw_receiver|link_inst|Selector0~9_combout\);

-- Location: LCCOMB_X22_Y10_N2
\spw_receiver|link_inst|Selector0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~10_combout\ = (!\spw_receiver|link_inst|Selector0~1_combout\ & ((\spw_receiver|link_inst|Selector0~6_combout\ & ((!\spw_receiver|link_inst|Selector0~9_combout\))) # (!\spw_receiver|link_inst|Selector0~6_combout\ & 
-- (\spw_receiver|link_inst|r.state.S_ErrorReset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector0~1_combout\,
	datab => \spw_receiver|link_inst|Selector0~6_combout\,
	datac => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|link_inst|Selector0~9_combout\,
	combout => \spw_receiver|link_inst|Selector0~10_combout\);

-- Location: FF_X22_Y10_N3
\spw_receiver|link_inst|r.state.S_ErrorReset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.state.S_ErrorReset~q\);

-- Location: LCCOMB_X24_Y9_N12
\spw_receiver|link_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add1~0_combout\ = \spw_receiver|link_inst|r.tx_credit\(0) $ (VCC)
-- \spw_receiver|link_inst|Add1~1\ = CARRY(\spw_receiver|link_inst|r.tx_credit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.tx_credit\(0),
	datad => VCC,
	combout => \spw_receiver|link_inst|Add1~0_combout\,
	cout => \spw_receiver|link_inst|Add1~1\);

-- Location: LCCOMB_X23_Y9_N20
\spw_receiver|link_inst|v~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~9_combout\ = (\spw_receiver|link_inst|Add1~0_combout\ & \spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|link_inst|Add1~0_combout\,
	datad => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	combout => \spw_receiver|link_inst|v~9_combout\);

-- Location: LCCOMB_X23_Y9_N22
\spw_receiver|link_inst|r.tx_credit[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|r.tx_credit[2]~0_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\) # (!\spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\,
	combout => \spw_receiver|link_inst|r.tx_credit[2]~0_combout\);

-- Location: FF_X23_Y9_N21
\spw_receiver|link_inst|r.tx_credit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~9_combout\,
	ena => \spw_receiver|link_inst|r.tx_credit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.tx_credit\(0));

-- Location: LCCOMB_X24_Y9_N14
\spw_receiver|link_inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add1~2_combout\ = (\spw_receiver|link_inst|r.tx_credit\(1) & (\spw_receiver|link_inst|Add1~1\ & VCC)) # (!\spw_receiver|link_inst|r.tx_credit\(1) & (!\spw_receiver|link_inst|Add1~1\))
-- \spw_receiver|link_inst|Add1~3\ = CARRY((!\spw_receiver|link_inst|r.tx_credit\(1) & !\spw_receiver|link_inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.tx_credit\(1),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add1~1\,
	combout => \spw_receiver|link_inst|Add1~2_combout\,
	cout => \spw_receiver|link_inst|Add1~3\);

-- Location: LCCOMB_X23_Y9_N26
\spw_receiver|link_inst|v~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~8_combout\ = (\spw_receiver|link_inst|Add1~2_combout\ & \spw_receiver|link_inst|r.state.S_ErrorReset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|link_inst|Add1~2_combout\,
	datad => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	combout => \spw_receiver|link_inst|v~8_combout\);

-- Location: FF_X23_Y9_N27
\spw_receiver|link_inst|r.tx_credit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~8_combout\,
	ena => \spw_receiver|link_inst|r.tx_credit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.tx_credit\(1));

-- Location: LCCOMB_X24_Y9_N16
\spw_receiver|link_inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add1~4_combout\ = (\spw_receiver|link_inst|r.tx_credit\(2) & ((GND) # (!\spw_receiver|link_inst|Add1~3\))) # (!\spw_receiver|link_inst|r.tx_credit\(2) & (\spw_receiver|link_inst|Add1~3\ $ (GND)))
-- \spw_receiver|link_inst|Add1~5\ = CARRY((\spw_receiver|link_inst|r.tx_credit\(2)) # (!\spw_receiver|link_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.tx_credit\(2),
	datad => VCC,
	cin => \spw_receiver|link_inst|Add1~3\,
	combout => \spw_receiver|link_inst|Add1~4_combout\,
	cout => \spw_receiver|link_inst|Add1~5\);

-- Location: LCCOMB_X23_Y9_N24
\spw_receiver|link_inst|v~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~7_combout\ = (\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|link_inst|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datad => \spw_receiver|link_inst|Add1~4_combout\,
	combout => \spw_receiver|link_inst|v~7_combout\);

-- Location: FF_X23_Y9_N25
\spw_receiver|link_inst|r.tx_credit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~7_combout\,
	ena => \spw_receiver|link_inst|r.tx_credit[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.tx_credit\(2));

-- Location: LCCOMB_X24_Y9_N18
\spw_receiver|link_inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add1~6_combout\ = (\spw_receiver|link_inst|Add1~5\ & ((\spw_receiver|link_inst|r.tx_credit\(3) $ (\spw_receiver|recv_inst|r.gotfct~q\)))) # (!\spw_receiver|link_inst|Add1~5\ & (\spw_receiver|link_inst|r.tx_credit\(3) $ 
-- ((!\spw_receiver|recv_inst|r.gotfct~q\))))
-- \spw_receiver|link_inst|Add1~7\ = CARRY((!\spw_receiver|link_inst|Add1~5\ & (\spw_receiver|link_inst|r.tx_credit\(3) $ (!\spw_receiver|recv_inst|r.gotfct~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.tx_credit\(3),
	datab => \spw_receiver|recv_inst|r.gotfct~q\,
	datad => VCC,
	cin => \spw_receiver|link_inst|Add1~5\,
	combout => \spw_receiver|link_inst|Add1~6_combout\,
	cout => \spw_receiver|link_inst|Add1~7\);

-- Location: LCCOMB_X24_Y9_N20
\spw_receiver|link_inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add1~8_combout\ = (\spw_receiver|link_inst|Add1~7\ & (\spw_receiver|link_inst|r.tx_credit\(4) $ (\spw_receiver|link_inst|Add0~1_combout\ $ (VCC)))) # (!\spw_receiver|link_inst|Add1~7\ & ((\spw_receiver|link_inst|r.tx_credit\(4) $ 
-- (\spw_receiver|link_inst|Add0~1_combout\)) # (GND)))
-- \spw_receiver|link_inst|Add1~9\ = CARRY((\spw_receiver|link_inst|r.tx_credit\(4) $ (\spw_receiver|link_inst|Add0~1_combout\)) # (!\spw_receiver|link_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.tx_credit\(4),
	datab => \spw_receiver|link_inst|Add0~1_combout\,
	datad => VCC,
	cin => \spw_receiver|link_inst|Add1~7\,
	combout => \spw_receiver|link_inst|Add1~8_combout\,
	cout => \spw_receiver|link_inst|Add1~9\);

-- Location: LCCOMB_X24_Y9_N10
\spw_receiver|link_inst|v~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~6_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\ & (((\spw_receiver|link_inst|Add1~8_combout\)))) # (!\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\ & (\spw_receiver|link_inst|Add0~1_combout\ $ 
-- ((\spw_receiver|link_inst|r.tx_credit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\,
	datab => \spw_receiver|link_inst|Add0~1_combout\,
	datac => \spw_receiver|link_inst|r.tx_credit\(4),
	datad => \spw_receiver|link_inst|Add1~8_combout\,
	combout => \spw_receiver|link_inst|v~6_combout\);

-- Location: FF_X24_Y9_N11
\spw_receiver|link_inst|r.tx_credit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~6_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.tx_credit\(4));

-- Location: LCCOMB_X23_Y9_N28
\spw_receiver|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|v~0_combout\ = (\spw_receiver|link_inst|r.state.S_Run~q\ & ((\spw_receiver|r.txpacket~q\) # (\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_Run~q\,
	datac => \spw_receiver|r.txpacket~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\,
	combout => \spw_receiver|v~0_combout\);

-- Location: FF_X23_Y9_N29
\spw_receiver|r.txpacket\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|v~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txpacket~q\);

-- Location: LCCOMB_X23_Y9_N18
\spw_receiver|r.txdiscard~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|r.txdiscard~0_combout\ = (\spw_receiver|r.txdiscard~q\) # ((!\spw_receiver|link_inst|r.state.S_Run~q\ & ((\spw_receiver|r.txpacket~q\) # (\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_Run~q\,
	datab => \spw_receiver|r.txpacket~q\,
	datac => \spw_receiver|r.txdiscard~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\,
	combout => \spw_receiver|r.txdiscard~0_combout\);

-- Location: FF_X23_Y9_N19
\spw_receiver|r.txdiscard\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|r.txdiscard~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txdiscard~q\);

-- Location: LCCOMB_X19_Y9_N6
\spw_receiver|xmit_sel0:xmit_inst|v~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~22_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.sent_fct~q\) # ((\spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\ & (\spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\ & 
-- \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.sent_fct~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~22_combout\);

-- Location: LCCOMB_X21_Y9_N6
\spw_receiver|xmit_sel0:xmit_inst|v~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~26_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|v~22_combout\ & ((\spw_receiver|link_inst|r.state.S_Run~q\) # ((\spw_receiver|link_inst|r.state.S_Connecting~q\) # (\spw_receiver|link_inst|r.state.S_Started~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_Run~q\,
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|link_inst|r.state.S_Started~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|v~22_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~26_combout\);

-- Location: FF_X21_Y9_N7
\spw_receiver|xmit_sel0:xmit_inst|r.sent_fct\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.sent_fct~q\);

-- Location: LCCOMB_X21_Y9_N28
\spw_receiver|xmit_sel0:xmit_inst|v~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~19_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.sent_fct~q\ & (!\spw_receiver|link_inst|r.state.S_Connecting~q\ & \spw_receiver|xmit_sel0:xmit_inst|v~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.sent_fct~q\,
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|v~18_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~19_combout\);

-- Location: FF_X23_Y9_N9
\spw_receiver|xmit_sel0:xmit_inst|r.allow_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spw_receiver|xmit_sel0:xmit_inst|v~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.allow_char~q\);

-- Location: FF_X22_Y9_N27
\spw_receiver|r.txfifo_raddr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(9));

-- Location: LCCOMB_X21_Y9_N24
\spw_receiver|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|process_0~0_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (!\spw_receiver|link_inst|r.xmit_fct_in~q\ & \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datac => \spw_receiver|link_inst|r.xmit_fct_in~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\,
	combout => \spw_receiver|process_0~0_combout\);

-- Location: LCCOMB_X22_Y9_N30
\spw_receiver|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|process_0~1_combout\ = (\spw_receiver|r.txfifo_rvalid~q\ & ((\spw_receiver|r.txdiscard~q\) # ((\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\ & \spw_receiver|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.txfifo_rvalid~q\,
	datab => \spw_receiver|r.txdiscard~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	datad => \spw_receiver|process_0~0_combout\,
	combout => \spw_receiver|process_0~1_combout\);

-- Location: LCCOMB_X22_Y9_N8
\spw_receiver|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~0_combout\ = (\spw_receiver|process_0~1_combout\ & (\spw_receiver|r.txfifo_raddr\(0) $ (VCC))) # (!\spw_receiver|process_0~1_combout\ & (\spw_receiver|r.txfifo_raddr\(0) & VCC))
-- \spw_receiver|Add4~1\ = CARRY((\spw_receiver|process_0~1_combout\ & \spw_receiver|r.txfifo_raddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|process_0~1_combout\,
	datab => \spw_receiver|r.txfifo_raddr\(0),
	datad => VCC,
	combout => \spw_receiver|Add4~0_combout\,
	cout => \spw_receiver|Add4~1\);

-- Location: FF_X22_Y9_N9
\spw_receiver|r.txfifo_raddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(0));

-- Location: LCCOMB_X22_Y9_N10
\spw_receiver|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~2_combout\ = (\spw_receiver|r.txfifo_raddr\(1) & (!\spw_receiver|Add4~1\)) # (!\spw_receiver|r.txfifo_raddr\(1) & ((\spw_receiver|Add4~1\) # (GND)))
-- \spw_receiver|Add4~3\ = CARRY((!\spw_receiver|Add4~1\) # (!\spw_receiver|r.txfifo_raddr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.txfifo_raddr\(1),
	datad => VCC,
	cin => \spw_receiver|Add4~1\,
	combout => \spw_receiver|Add4~2_combout\,
	cout => \spw_receiver|Add4~3\);

-- Location: FF_X22_Y9_N11
\spw_receiver|r.txfifo_raddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(1));

-- Location: LCCOMB_X22_Y9_N12
\spw_receiver|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~4_combout\ = (\spw_receiver|r.txfifo_raddr\(2) & (\spw_receiver|Add4~3\ $ (GND))) # (!\spw_receiver|r.txfifo_raddr\(2) & (!\spw_receiver|Add4~3\ & VCC))
-- \spw_receiver|Add4~5\ = CARRY((\spw_receiver|r.txfifo_raddr\(2) & !\spw_receiver|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.txfifo_raddr\(2),
	datad => VCC,
	cin => \spw_receiver|Add4~3\,
	combout => \spw_receiver|Add4~4_combout\,
	cout => \spw_receiver|Add4~5\);

-- Location: FF_X22_Y9_N13
\spw_receiver|r.txfifo_raddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(2));

-- Location: LCCOMB_X22_Y9_N14
\spw_receiver|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~6_combout\ = (\spw_receiver|r.txfifo_raddr\(3) & (!\spw_receiver|Add4~5\)) # (!\spw_receiver|r.txfifo_raddr\(3) & ((\spw_receiver|Add4~5\) # (GND)))
-- \spw_receiver|Add4~7\ = CARRY((!\spw_receiver|Add4~5\) # (!\spw_receiver|r.txfifo_raddr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.txfifo_raddr\(3),
	datad => VCC,
	cin => \spw_receiver|Add4~5\,
	combout => \spw_receiver|Add4~6_combout\,
	cout => \spw_receiver|Add4~7\);

-- Location: FF_X22_Y9_N15
\spw_receiver|r.txfifo_raddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(3));

-- Location: LCCOMB_X22_Y9_N16
\spw_receiver|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~8_combout\ = (\spw_receiver|r.txfifo_raddr\(4) & (\spw_receiver|Add4~7\ $ (GND))) # (!\spw_receiver|r.txfifo_raddr\(4) & (!\spw_receiver|Add4~7\ & VCC))
-- \spw_receiver|Add4~9\ = CARRY((\spw_receiver|r.txfifo_raddr\(4) & !\spw_receiver|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.txfifo_raddr\(4),
	datad => VCC,
	cin => \spw_receiver|Add4~7\,
	combout => \spw_receiver|Add4~8_combout\,
	cout => \spw_receiver|Add4~9\);

-- Location: FF_X22_Y9_N17
\spw_receiver|r.txfifo_raddr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(4));

-- Location: LCCOMB_X22_Y9_N18
\spw_receiver|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~10_combout\ = (\spw_receiver|r.txfifo_raddr\(5) & (!\spw_receiver|Add4~9\)) # (!\spw_receiver|r.txfifo_raddr\(5) & ((\spw_receiver|Add4~9\) # (GND)))
-- \spw_receiver|Add4~11\ = CARRY((!\spw_receiver|Add4~9\) # (!\spw_receiver|r.txfifo_raddr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.txfifo_raddr\(5),
	datad => VCC,
	cin => \spw_receiver|Add4~9\,
	combout => \spw_receiver|Add4~10_combout\,
	cout => \spw_receiver|Add4~11\);

-- Location: FF_X22_Y9_N19
\spw_receiver|r.txfifo_raddr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(5));

-- Location: LCCOMB_X22_Y9_N20
\spw_receiver|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~12_combout\ = (\spw_receiver|r.txfifo_raddr\(6) & (\spw_receiver|Add4~11\ $ (GND))) # (!\spw_receiver|r.txfifo_raddr\(6) & (!\spw_receiver|Add4~11\ & VCC))
-- \spw_receiver|Add4~13\ = CARRY((\spw_receiver|r.txfifo_raddr\(6) & !\spw_receiver|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.txfifo_raddr\(6),
	datad => VCC,
	cin => \spw_receiver|Add4~11\,
	combout => \spw_receiver|Add4~12_combout\,
	cout => \spw_receiver|Add4~13\);

-- Location: FF_X22_Y9_N21
\spw_receiver|r.txfifo_raddr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(6));

-- Location: LCCOMB_X22_Y9_N22
\spw_receiver|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~14_combout\ = (\spw_receiver|r.txfifo_raddr\(7) & (!\spw_receiver|Add4~13\)) # (!\spw_receiver|r.txfifo_raddr\(7) & ((\spw_receiver|Add4~13\) # (GND)))
-- \spw_receiver|Add4~15\ = CARRY((!\spw_receiver|Add4~13\) # (!\spw_receiver|r.txfifo_raddr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.txfifo_raddr\(7),
	datad => VCC,
	cin => \spw_receiver|Add4~13\,
	combout => \spw_receiver|Add4~14_combout\,
	cout => \spw_receiver|Add4~15\);

-- Location: FF_X22_Y9_N23
\spw_receiver|r.txfifo_raddr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(7));

-- Location: LCCOMB_X22_Y9_N24
\spw_receiver|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~16_combout\ = (\spw_receiver|r.txfifo_raddr\(8) & (\spw_receiver|Add4~15\ $ (GND))) # (!\spw_receiver|r.txfifo_raddr\(8) & (!\spw_receiver|Add4~15\ & VCC))
-- \spw_receiver|Add4~17\ = CARRY((\spw_receiver|r.txfifo_raddr\(8) & !\spw_receiver|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|r.txfifo_raddr\(8),
	datad => VCC,
	cin => \spw_receiver|Add4~15\,
	combout => \spw_receiver|Add4~16_combout\,
	cout => \spw_receiver|Add4~17\);

-- Location: FF_X22_Y9_N25
\spw_receiver|r.txfifo_raddr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(8));

-- Location: LCCOMB_X22_Y9_N26
\spw_receiver|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~18_combout\ = (\spw_receiver|r.txfifo_raddr\(9) & (!\spw_receiver|Add4~17\)) # (!\spw_receiver|r.txfifo_raddr\(9) & ((\spw_receiver|Add4~17\) # (GND)))
-- \spw_receiver|Add4~19\ = CARRY((!\spw_receiver|Add4~17\) # (!\spw_receiver|r.txfifo_raddr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.txfifo_raddr\(9),
	datad => VCC,
	cin => \spw_receiver|Add4~17\,
	combout => \spw_receiver|Add4~18_combout\,
	cout => \spw_receiver|Add4~19\);

-- Location: FF_X22_Y9_N29
\spw_receiver|r.txfifo_raddr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Add4~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_raddr\(10));

-- Location: LCCOMB_X22_Y9_N28
\spw_receiver|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Add4~20_combout\ = \spw_receiver|Add4~19\ $ (!\spw_receiver|r.txfifo_raddr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|r.txfifo_raddr\(10),
	cin => \spw_receiver|Add4~19\,
	combout => \spw_receiver|Add4~20_combout\);

-- Location: LCCOMB_X22_Y9_N0
\spw_receiver|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal2~0_combout\ = (!\spw_receiver|Add4~2_combout\ & (!\spw_receiver|Add4~0_combout\ & (!\spw_receiver|Add4~6_combout\ & !\spw_receiver|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|Add4~2_combout\,
	datab => \spw_receiver|Add4~0_combout\,
	datac => \spw_receiver|Add4~6_combout\,
	datad => \spw_receiver|Add4~4_combout\,
	combout => \spw_receiver|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y9_N2
\spw_receiver|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal2~1_combout\ = (!\spw_receiver|Add4~10_combout\ & (!\spw_receiver|Add4~12_combout\ & (!\spw_receiver|Add4~8_combout\ & \spw_receiver|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|Add4~10_combout\,
	datab => \spw_receiver|Add4~12_combout\,
	datac => \spw_receiver|Add4~8_combout\,
	datad => \spw_receiver|Equal2~0_combout\,
	combout => \spw_receiver|Equal2~1_combout\);

-- Location: LCCOMB_X22_Y9_N6
\spw_receiver|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal2~2_combout\ = (!\spw_receiver|Add4~14_combout\ & \spw_receiver|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|Add4~14_combout\,
	datad => \spw_receiver|Equal2~1_combout\,
	combout => \spw_receiver|Equal2~2_combout\);

-- Location: LCCOMB_X22_Y9_N4
\spw_receiver|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|Equal2~3_combout\ = (\spw_receiver|Add4~18_combout\) # ((\spw_receiver|Add4~16_combout\) # ((\spw_receiver|Add4~20_combout\) # (!\spw_receiver|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|Add4~18_combout\,
	datab => \spw_receiver|Add4~16_combout\,
	datac => \spw_receiver|Add4~20_combout\,
	datad => \spw_receiver|Equal2~2_combout\,
	combout => \spw_receiver|Equal2~3_combout\);

-- Location: FF_X22_Y9_N5
\spw_receiver|r.txfifo_rvalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|r.txfifo_rvalid~q\);

-- Location: LCCOMB_X23_Y9_N8
\spw_receiver|xmit_sel0:xmit_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|process_0~0_combout\ = (!\spw_receiver|r.txdiscard~q\ & (\spw_receiver|xmit_sel0:xmit_inst|r.allow_char~q\ & \spw_receiver|r.txfifo_rvalid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|r.txdiscard~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.allow_char~q\,
	datad => \spw_receiver|r.txfifo_rvalid~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|process_0~0_combout\);

-- Location: LCCOMB_X23_Y9_N6
\spw_receiver|link_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Equal2~0_combout\ = (!\spw_receiver|link_inst|r.tx_credit\(2) & (!\spw_receiver|link_inst|r.tx_credit\(0) & (!\spw_receiver|link_inst|r.tx_credit\(1) & !\spw_receiver|link_inst|r.tx_credit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.tx_credit\(2),
	datab => \spw_receiver|link_inst|r.tx_credit\(0),
	datac => \spw_receiver|link_inst|r.tx_credit\(1),
	datad => \spw_receiver|link_inst|r.tx_credit\(3),
	combout => \spw_receiver|link_inst|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y9_N12
\spw_receiver|xmit_sel0:xmit_inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|process_0~0_combout\ & ((\spw_receiver|link_inst|r.tx_credit\(5)) # ((\spw_receiver|link_inst|r.tx_credit\(4)) # (!\spw_receiver|link_inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.tx_credit\(5),
	datab => \spw_receiver|link_inst|r.tx_credit\(4),
	datac => \spw_receiver|xmit_sel0:xmit_inst|process_0~0_combout\,
	datad => \spw_receiver|link_inst|Equal2~0_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\);

-- Location: LCCOMB_X23_Y9_N10
\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & 
-- !\spw_receiver|link_inst|r.xmit_fct_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datad => \spw_receiver|link_inst|r.xmit_fct_in~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\);

-- Location: LCCOMB_X24_Y9_N28
\spw_receiver|link_inst|v~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~10_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\ & (((\spw_receiver|link_inst|Add1~6_combout\)))) # (!\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\ & (\spw_receiver|recv_inst|r.gotfct~q\ $ 
-- ((\spw_receiver|link_inst|r.tx_credit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\,
	datab => \spw_receiver|recv_inst|r.gotfct~q\,
	datac => \spw_receiver|link_inst|r.tx_credit\(3),
	datad => \spw_receiver|link_inst|Add1~6_combout\,
	combout => \spw_receiver|link_inst|v~10_combout\);

-- Location: FF_X24_Y9_N29
\spw_receiver|link_inst|r.tx_credit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~10_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.tx_credit\(3));

-- Location: LCCOMB_X24_Y9_N26
\spw_receiver|link_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add0~0_combout\ = (\spw_receiver|link_inst|r.tx_credit\(3) & (\spw_receiver|recv_inst|r.gotfct~q\ & \spw_receiver|link_inst|r.tx_credit\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.tx_credit\(3),
	datac => \spw_receiver|recv_inst|r.gotfct~q\,
	datad => \spw_receiver|link_inst|r.tx_credit\(4),
	combout => \spw_receiver|link_inst|Add0~0_combout\);

-- Location: LCCOMB_X24_Y9_N22
\spw_receiver|link_inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Add1~10_combout\ = \spw_receiver|link_inst|Add0~0_combout\ $ (\spw_receiver|link_inst|r.tx_credit\(5) $ (!\spw_receiver|link_inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Add0~0_combout\,
	datab => \spw_receiver|link_inst|r.tx_credit\(5),
	cin => \spw_receiver|link_inst|Add1~9\,
	combout => \spw_receiver|link_inst|Add1~10_combout\);

-- Location: LCCOMB_X24_Y9_N24
\spw_receiver|link_inst|v~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~5_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\ & (((\spw_receiver|link_inst|Add1~10_combout\)))) # (!\spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\ & (\spw_receiver|link_inst|Add0~0_combout\ $ 
-- (((\spw_receiver|link_inst|r.tx_credit\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Add0~0_combout\,
	datab => \spw_receiver|link_inst|Add1~10_combout\,
	datac => \spw_receiver|link_inst|r.tx_credit\(5),
	datad => \spw_receiver|xmit_sel0:xmit_inst|xmito.txack~0_combout\,
	combout => \spw_receiver|link_inst|v~5_combout\);

-- Location: FF_X24_Y9_N25
\spw_receiver|link_inst|r.tx_credit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~5_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.tx_credit\(5));

-- Location: LCCOMB_X23_Y9_N16
\spw_receiver|link_inst|v~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~21_combout\ = (\spw_receiver|recv_inst|r.gotfct~q\ & (\spw_receiver|link_inst|r.tx_credit\(5) & (\spw_receiver|link_inst|r.tx_credit\(4) & !\spw_receiver|link_inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.gotfct~q\,
	datab => \spw_receiver|link_inst|r.tx_credit\(5),
	datac => \spw_receiver|link_inst|r.tx_credit\(4),
	datad => \spw_receiver|link_inst|Equal2~0_combout\,
	combout => \spw_receiver|link_inst|v~21_combout\);

-- Location: LCCOMB_X18_Y11_N28
\spw_receiver|link_inst|v~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~22_combout\ = (!\spw_receiver|link_inst|r.rx_credit\(2) & (\spw_receiver|recv_inst|r.rxchar~q\ & (!\spw_receiver|link_inst|r.rx_credit\(1) & !\spw_receiver|link_inst|r.rx_credit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(2),
	datab => \spw_receiver|recv_inst|r.rxchar~q\,
	datac => \spw_receiver|link_inst|r.rx_credit\(1),
	datad => \spw_receiver|link_inst|r.rx_credit\(0),
	combout => \spw_receiver|link_inst|v~22_combout\);

-- Location: LCCOMB_X18_Y11_N14
\spw_receiver|link_inst|v~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~23_combout\ = (!\spw_receiver|link_inst|r.rx_credit\(3) & (!\spw_receiver|link_inst|r.rx_credit\(4) & (!\spw_receiver|link_inst|r.rx_credit\(5) & \spw_receiver|link_inst|v~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.rx_credit\(3),
	datab => \spw_receiver|link_inst|r.rx_credit\(4),
	datac => \spw_receiver|link_inst|r.rx_credit\(5),
	datad => \spw_receiver|link_inst|v~22_combout\,
	combout => \spw_receiver|link_inst|v~23_combout\);

-- Location: LCCOMB_X19_Y11_N30
\spw_receiver|link_inst|v~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|v~24_combout\ = (\spw_receiver|link_inst|v~21_combout\) # ((\spw_receiver|link_inst|v~23_combout\) # ((\spw_receiver|link_inst|r.state.S_ErrorReset~q\ & \spw_receiver|link_inst|r.errcred~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|v~21_combout\,
	datab => \spw_receiver|link_inst|r.state.S_ErrorReset~q\,
	datac => \spw_receiver|link_inst|r.errcred~q\,
	datad => \spw_receiver|link_inst|v~23_combout\,
	combout => \spw_receiver|link_inst|v~24_combout\);

-- Location: FF_X19_Y11_N31
\spw_receiver|link_inst|r.errcred\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|v~24_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.errcred~q\);

-- Location: LCCOMB_X21_Y10_N14
\spw_receiver|link_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector0~1_combout\ = (\spw_receiver|link_inst|r.state.S_Run~q\ & ((\spw_receiver|link_inst|r.errcred~q\) # (\spw_receiver|link_inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.errcred~q\,
	datab => \spw_receiver|link_inst|process_0~1_combout\,
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|link_inst|Selector0~1_combout\);

-- Location: LCCOMB_X22_Y10_N12
\spw_receiver|link_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector5~0_combout\ = (\spw_receiver|recv_inst|r.gotfct~q\ & (\spw_receiver|link_inst|r.state.S_Connecting~q\ & (\spw_receiver|link_inst|process_0~3_combout\ & !\spw_receiver|link_inst|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.gotfct~q\,
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|link_inst|process_0~3_combout\,
	datad => \spw_receiver|link_inst|Selector0~1_combout\,
	combout => \spw_receiver|link_inst|Selector5~0_combout\);

-- Location: LCCOMB_X22_Y10_N24
\spw_receiver|link_inst|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector5~1_combout\ = (\spw_receiver|link_inst|Selector5~0_combout\) # ((!\spw_receiver|link_inst|Selector0~1_combout\ & (!\spw_receiver|link_inst|Selector0~6_combout\ & \spw_receiver|link_inst|r.state.S_Run~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector0~1_combout\,
	datab => \spw_receiver|link_inst|Selector0~6_combout\,
	datac => \spw_receiver|link_inst|r.state.S_Run~q\,
	datad => \spw_receiver|link_inst|Selector5~0_combout\,
	combout => \spw_receiver|link_inst|Selector5~1_combout\);

-- Location: FF_X22_Y10_N25
\spw_receiver|link_inst|r.state.S_Run\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.state.S_Run~q\);

-- Location: FF_X19_Y9_N11
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~8_combout\,
	asdata => \spw_receiver|link_inst|r.state.S_Run~q\,
	sload => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(0));

-- Location: LCCOMB_X19_Y9_N12
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~10_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(1) & (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~9\ & VCC)) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(1) & 
-- (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~9\))
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~11\ = CARRY((!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(1) & !\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(1),
	datad => VCC,
	cin => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[0]~9\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~10_combout\,
	cout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~11\);

-- Location: FF_X19_Y9_N13
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~10_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(1));

-- Location: LCCOMB_X19_Y9_N14
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~12_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(2) & ((GND) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~11\))) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(2) & 
-- (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~11\ $ (GND)))
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~13\ = CARRY((\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(2)) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(2),
	datad => VCC,
	cin => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[1]~11\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~12_combout\,
	cout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~13\);

-- Location: LCCOMB_X19_Y9_N30
\spw_receiver|link_inst|r.state.S_Run~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|r.state.S_Run~_wirecell_combout\ = !\spw_receiver|link_inst|r.state.S_Run~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|link_inst|r.state.S_Run~_wirecell_combout\);

-- Location: FF_X19_Y9_N15
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~12_combout\,
	asdata => \spw_receiver|link_inst|r.state.S_Run~_wirecell_combout\,
	sload => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(2));

-- Location: LCCOMB_X19_Y9_N16
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~14_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(3) & (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~13\ & VCC)) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(3) & 
-- (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~13\))
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~15\ = CARRY((!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(3) & !\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(3),
	datad => VCC,
	cin => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[2]~13\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~14_combout\,
	cout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~15\);

-- Location: FF_X19_Y9_N17
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~14_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(3));

-- Location: LCCOMB_X19_Y9_N18
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~16_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(4) & ((GND) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~15\))) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(4) & 
-- (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~15\ $ (GND)))
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~17\ = CARRY((\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(4)) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(4),
	datad => VCC,
	cin => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[3]~15\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~16_combout\,
	cout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~17\);

-- Location: FF_X19_Y9_N19
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~16_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(4));

-- Location: LCCOMB_X19_Y9_N20
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~18_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(5) & (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~17\ & VCC)) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(5) & 
-- (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~17\))
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~19\ = CARRY((!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(5) & !\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(5),
	datad => VCC,
	cin => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[4]~17\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~18_combout\,
	cout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~19\);

-- Location: FF_X19_Y9_N21
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~18_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(5));

-- Location: LCCOMB_X19_Y9_N22
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~20_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(6) & ((GND) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~19\))) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(6) & 
-- (\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~19\ $ (GND)))
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~21\ = CARRY((\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(6)) # (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(6),
	datad => VCC,
	cin => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[5]~19\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~20_combout\,
	cout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~21\);

-- Location: FF_X19_Y9_N23
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~20_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(6));

-- Location: LCCOMB_X19_Y9_N24
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[7]~22_combout\ = \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~21\ $ (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(7),
	cin => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[6]~21\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[7]~22_combout\);

-- Location: FF_X19_Y9_N25
\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt[7]~22_combout\,
	asdata => \~GND~combout\,
	sload => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(7));

-- Location: LCCOMB_X19_Y9_N26
\spw_receiver|xmit_sel0:xmit_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|Equal0~1_combout\ = (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(7) & (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(4) & (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(6) & 
-- !\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(7),
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(4),
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(6),
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(5),
	combout => \spw_receiver|xmit_sel0:xmit_inst|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y9_N28
\spw_receiver|xmit_sel0:xmit_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|Equal0~0_combout\ = (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(1) & (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(3) & (!\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(2) & 
-- !\spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(1),
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(3),
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(2),
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.txclkcnt\(0),
	combout => \spw_receiver|xmit_sel0:xmit_inst|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y9_N0
\spw_receiver|xmit_sel0:xmit_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|Equal0~1_combout\ & \spw_receiver|xmit_sel0:xmit_inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal0~1_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|Equal0~0_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\);

-- Location: FF_X22_Y10_N31
\spw_receiver|xmit_sel0:xmit_inst|r.txclken\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spw_receiver|xmit_sel0:xmit_inst|Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\);

-- Location: LCCOMB_X21_Y9_N8
\spw_receiver|xmit_sel0:xmit_inst|v~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~14_combout\ = (\spw_receiver|link_inst|xmiti.txen~0_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0) $ (\spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|xmiti.txen~0_combout\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0),
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~14_combout\);

-- Location: FF_X21_Y9_N9
\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0));

-- Location: LCCOMB_X21_Y9_N30
\spw_receiver|xmit_sel0:xmit_inst|v~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~12_combout\ = (\spw_receiver|link_inst|xmiti.txen~0_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2) $ (((!\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1) & !\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1),
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0),
	datac => \spw_receiver|link_inst|xmiti.txen~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2),
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~12_combout\);

-- Location: LCCOMB_X21_Y9_N2
\spw_receiver|xmit_sel0:xmit_inst|v~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~13_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|v~12_combout\ & (((!\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\ & !\spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\)) # 
-- (!\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|v~12_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~13_combout\);

-- Location: LCCOMB_X21_Y9_N20
\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]~0_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\) # ((!\spw_receiver|link_inst|r.state.S_Run~q\ & (!\spw_receiver|link_inst|r.state.S_Connecting~q\ & 
-- !\spw_receiver|link_inst|r.state.S_Started~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|r.state.S_Run~q\,
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|link_inst|r.state.S_Started~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]~0_combout\);

-- Location: FF_X21_Y9_N3
\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~13_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2));

-- Location: LCCOMB_X21_Y9_N26
\spw_receiver|xmit_sel0:xmit_inst|v~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~10_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(3) & ((\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1)) # ((\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0)) # (\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1),
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(3),
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0),
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2),
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~10_combout\);

-- Location: LCCOMB_X21_Y9_N14
\spw_receiver|xmit_sel0:xmit_inst|v~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~24_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\ & ((!\spw_receiver|link_inst|r.xmit_fct_in~q\) # (!\spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\,
	datab => \spw_receiver|link_inst|r.xmit_fct_in~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~24_combout\);

-- Location: LCCOMB_X21_Y9_N4
\spw_receiver|xmit_sel0:xmit_inst|v~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~11_combout\ = (\spw_receiver|link_inst|xmiti.txen~0_combout\ & ((\spw_receiver|xmit_sel0:xmit_inst|v~10_combout\) # ((\spw_receiver|xmit_sel0:xmit_inst|v~24_combout\ & 
-- \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|v~10_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|v~24_combout\,
	datac => \spw_receiver|link_inst|xmiti.txen~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~11_combout\);

-- Location: FF_X21_Y9_N5
\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~11_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(3));

-- Location: LCCOMB_X21_Y9_N12
\spw_receiver|xmit_sel0:xmit_inst|v~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~15_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1) & (((\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0))))) # (!\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1) & (!\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0) 
-- & ((\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(3)) # (\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1),
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(3),
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0),
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2),
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~15_combout\);

-- Location: LCCOMB_X21_Y9_N10
\spw_receiver|xmit_sel0:xmit_inst|v~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~16_combout\ = (\spw_receiver|link_inst|xmiti.txen~0_combout\ & ((\spw_receiver|xmit_sel0:xmit_inst|v~15_combout\) # ((!\spw_receiver|xmit_sel0:xmit_inst|v~24_combout\ & 
-- \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|v~15_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|v~24_combout\,
	datac => \spw_receiver|link_inst|xmiti.txen~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~16_combout\);

-- Location: FF_X21_Y9_N11
\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~16_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1));

-- Location: LCCOMB_X21_Y9_N16
\spw_receiver|xmit_sel0:xmit_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ = (!\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1) & (!\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0) & (!\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(3) & 
-- !\spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(1),
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(0),
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(3),
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt\(2),
	combout => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~4_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & !\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~4_combout\);

-- Location: LCCOMB_X21_Y11_N2
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~5_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\ & (((!\spw_receiver|link_inst|r.xmit_fct_in~q\) # (!\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\)) # 
-- (!\spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.allow_fct~q\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datac => \spw_receiver|link_inst|r.xmit_fct_in~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~5_combout\);

-- Location: FF_X21_Y11_N13
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~4_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(4));

-- Location: LCCOMB_X21_Y11_N18
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~3_combout\ = (!\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(4),
	combout => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~3_combout\);

-- Location: FF_X21_Y11_N19
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~3_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(3));

-- Location: LCCOMB_X21_Y11_N4
\spw_receiver|xmit_sel0:xmit_inst|v~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~23_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (!\spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\ & (!\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\))) # 
-- (!\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (((\spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(3),
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~23_combout\);

-- Location: FF_X21_Y11_N5
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~23_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(2));

-- Location: LCCOMB_X21_Y11_N10
\spw_receiver|xmit_sel0:xmit_inst|v~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~20_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (!\spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\ & ((!\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\)))) # 
-- (!\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (((\spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(2),
	datad => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~20_combout\);

-- Location: FF_X21_Y11_N11
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~20_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(1));

-- Location: LCCOMB_X21_Y11_N28
\spw_receiver|xmit_sel0:xmit_inst|v~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~9_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (((\spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\) # (!\spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\)))) # 
-- (!\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(1),
	datab => \spw_receiver|xmit_sel0:xmit_inst|process_0~1_combout\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~9_combout\);

-- Location: FF_X21_Y11_N29
\spw_receiver|xmit_sel0:xmit_inst|r.bitshift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~9_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(0));

-- Location: LCCOMB_X21_Y9_N22
\spw_receiver|xmit_sel0:xmit_inst|parity~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|parity~0_combout\ = \spw_receiver|xmit_sel0:xmit_inst|r.parity~q\ $ (\spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.parity~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(0),
	combout => \spw_receiver|xmit_sel0:xmit_inst|parity~0_combout\);

-- Location: LCCOMB_X21_Y9_N18
\spw_receiver|xmit_sel0:xmit_inst|v~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~17_combout\ = (\spw_receiver|link_inst|xmiti.txen~0_combout\ & ((\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & ((\spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\))) # 
-- (!\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|parity~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|parity~0_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datac => \spw_receiver|link_inst|xmiti.txen~0_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|process_0~2_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~17_combout\);

-- Location: FF_X21_Y9_N19
\spw_receiver|xmit_sel0:xmit_inst|r.parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~17_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.bitcnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.parity~q\);

-- Location: LCCOMB_X21_Y9_N0
\spw_receiver|xmit_sel0:xmit_inst|v~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~6_combout\ = (\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & ((\spw_receiver|xmit_sel0:xmit_inst|v~24_combout\ $ (\spw_receiver|xmit_sel0:xmit_inst|r.parity~q\)))) # 
-- (!\spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|xmit_sel0:xmit_inst|Equal1~0_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.bitshift\(0),
	datac => \spw_receiver|xmit_sel0:xmit_inst|v~24_combout\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.parity~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~6_combout\);

-- Location: LCCOMB_X23_Y7_N20
\spw_receiver|xmit_sel0:xmit_inst|v~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~8_combout\ = (\spw_receiver|link_inst|xmiti.txen~0_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|r.out_data~q\ $ (\spw_receiver|xmit_sel0:xmit_inst|r.out_strobe~q\ $ (!\spw_receiver|xmit_sel0:xmit_inst|v~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|xmiti.txen~0_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.out_data~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.out_strobe~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|v~6_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~8_combout\);

-- Location: FF_X23_Y7_N21
\spw_receiver|xmit_sel0:xmit_inst|r.out_strobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~8_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.out_strobe~q\);

-- Location: LCCOMB_X23_Y7_N24
\spw_receiver|xmit_sel0:xmit_inst|spw_so~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|spw_so~feeder_combout\ = \spw_receiver|xmit_sel0:xmit_inst|r.out_strobe~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|xmit_sel0:xmit_inst|r.out_strobe~q\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|spw_so~feeder_combout\);

-- Location: FF_X23_Y7_N25
\spw_receiver|xmit_sel0:xmit_inst|spw_so\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|spw_so~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|spw_so~q\);

-- Location: FF_X23_Y7_N23
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spw_receiver|xmit_sel0:xmit_inst|spw_so~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi1~q\);

-- Location: LCCOMB_X23_Y10_N14
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~feeder_combout\ = \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi1~q\,
	combout => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~feeder_combout\);

-- Location: FF_X23_Y10_N15
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~q\);

-- Location: LCCOMB_X23_Y10_N20
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~feeder_combout\ = \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~q\,
	combout => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~feeder_combout\);

-- Location: FF_X23_Y10_N21
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~q\);

-- Location: LCCOMB_X23_Y10_N26
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~0_combout\ = \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\ $ (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~q\ $ 
-- (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~q\ $ (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\,
	datab => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi3~q\,
	datac => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwsi2~q\,
	datad => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_spwdi2~q\,
	combout => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~0_combout\);

-- Location: FF_X23_Y10_N27
\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~0_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\);

-- Location: LCCOMB_X23_Y7_N4
\spw_receiver|recv_inst|r.control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|r.control~0_combout\ = (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & ((\spw_receiver|recv_inst|r.parity~2_combout\ & ((\spw_receiver|recv_inst|r.control~q\))) # (!\spw_receiver|recv_inst|r.parity~2_combout\ & 
-- (\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\)))) # (!\spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\ & (((\spw_receiver|recv_inst|r.control~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbvalid~q\,
	datab => \spw_receiver|recvfront_sel0:recvfront_generic_inst|s_inbit~q\,
	datac => \spw_receiver|recv_inst|r.control~q\,
	datad => \spw_receiver|recv_inst|r.parity~2_combout\,
	combout => \spw_receiver|recv_inst|r.control~0_combout\);

-- Location: FF_X23_Y7_N5
\spw_receiver|recv_inst|r.control\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|r.control~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.control~q\);

-- Location: LCCOMB_X24_Y10_N16
\spw_receiver|recv_inst|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|recv_inst|v~1_combout\ = (\spw_receiver|recv_inst|r.control~q\ & (!\spw_receiver|recv_inst|r.escaped~q\ & (\spw_receiver|recv_inst|Equal0~0_combout\ & \spw_receiver|recv_inst|v~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.control~q\,
	datab => \spw_receiver|recv_inst|r.escaped~q\,
	datac => \spw_receiver|recv_inst|Equal0~0_combout\,
	datad => \spw_receiver|recv_inst|v~0_combout\,
	combout => \spw_receiver|recv_inst|v~1_combout\);

-- Location: FF_X24_Y10_N17
\spw_receiver|recv_inst|r.gotfct\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|recv_inst|v~1_combout\,
	sclr => \spw_receiver|link_inst|ALT_INV_r.state.S_ErrorReset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|recv_inst|r.gotfct~q\);

-- Location: LCCOMB_X21_Y10_N10
\spw_receiver|link_inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|process_0~2_combout\ = (!\spw_receiver|recv_inst|r.gotfct~q\ & (!\spw_receiver|recv_inst|r.rxchar~q\ & (!\spw_receiver|recv_inst|r.tick_out~q\ & !\spw_receiver|link_inst|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|recv_inst|r.gotfct~q\,
	datab => \spw_receiver|recv_inst|r.rxchar~q\,
	datac => \spw_receiver|recv_inst|r.tick_out~q\,
	datad => \spw_receiver|link_inst|process_0~1_combout\,
	combout => \spw_receiver|link_inst|process_0~2_combout\);

-- Location: LCCOMB_X22_Y10_N10
\spw_receiver|link_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector4~0_combout\ = (!\spw_receiver|link_inst|v~14_combout\ & (\spw_receiver|link_inst|r.state.S_Started~q\ & ((\spw_receiver|recv_inst|r.null_seen~q\) # (!\spw_receiver|link_inst|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|process_0~2_combout\,
	datab => \spw_receiver|recv_inst|r.null_seen~q\,
	datac => \spw_receiver|link_inst|v~14_combout\,
	datad => \spw_receiver|link_inst|r.state.S_Started~q\,
	combout => \spw_receiver|link_inst|Selector4~0_combout\);

-- Location: LCCOMB_X22_Y10_N26
\spw_receiver|link_inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|Selector4~1_combout\ = (\spw_receiver|link_inst|Selector4~0_combout\ & ((\spw_receiver|link_inst|Selector3~4_combout\) # ((\spw_receiver|link_inst|r.state.S_Connecting~q\ & \spw_receiver|link_inst|Selector3~2_combout\)))) # 
-- (!\spw_receiver|link_inst|Selector4~0_combout\ & (((\spw_receiver|link_inst|r.state.S_Connecting~q\ & \spw_receiver|link_inst|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|Selector4~0_combout\,
	datab => \spw_receiver|link_inst|Selector3~4_combout\,
	datac => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datad => \spw_receiver|link_inst|Selector3~2_combout\,
	combout => \spw_receiver|link_inst|Selector4~1_combout\);

-- Location: FF_X22_Y10_N27
\spw_receiver|link_inst|r.state.S_Connecting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|link_inst|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|link_inst|r.state.S_Connecting~q\);

-- Location: LCCOMB_X21_Y10_N18
\spw_receiver|link_inst|xmiti.txen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|link_inst|xmiti.txen~0_combout\ = (\spw_receiver|link_inst|r.state.S_Connecting~q\) # ((\spw_receiver|link_inst|r.state.S_Started~q\) # (\spw_receiver|link_inst|r.state.S_Run~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spw_receiver|link_inst|r.state.S_Connecting~q\,
	datac => \spw_receiver|link_inst|r.state.S_Started~q\,
	datad => \spw_receiver|link_inst|r.state.S_Run~q\,
	combout => \spw_receiver|link_inst|xmiti.txen~0_combout\);

-- Location: LCCOMB_X23_Y7_N14
\spw_receiver|xmit_sel0:xmit_inst|v~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spw_receiver|xmit_sel0:xmit_inst|v~7_combout\ = (\spw_receiver|link_inst|xmiti.txen~0_combout\ & (((\spw_receiver|xmit_sel0:xmit_inst|v~6_combout\)))) # (!\spw_receiver|link_inst|xmiti.txen~0_combout\ & (\spw_receiver|xmit_sel0:xmit_inst|r.out_strobe~q\ 
-- & (\spw_receiver|xmit_sel0:xmit_inst|r.out_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spw_receiver|link_inst|xmiti.txen~0_combout\,
	datab => \spw_receiver|xmit_sel0:xmit_inst|r.out_strobe~q\,
	datac => \spw_receiver|xmit_sel0:xmit_inst|r.out_data~q\,
	datad => \spw_receiver|xmit_sel0:xmit_inst|v~6_combout\,
	combout => \spw_receiver|xmit_sel0:xmit_inst|v~7_combout\);

-- Location: FF_X23_Y7_N15
\spw_receiver|xmit_sel0:xmit_inst|r.out_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spw_receiver|xmit_sel0:xmit_inst|v~7_combout\,
	ena => \spw_receiver|xmit_sel0:xmit_inst|r.txclken~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|r.out_data~q\);

-- Location: FF_X23_Y7_N27
\spw_receiver|xmit_sel0:xmit_inst|spw_do\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \spw_receiver|xmit_sel0:xmit_inst|r.out_data~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spw_receiver|xmit_sel0:xmit_inst|spw_do~q\);

ww_transmitter_spw_do <= \transmitter_spw_do~output_o\;

ww_receiver_spw_do <= \receiver_spw_do~output_o\;

ww_transmitter_spw_so <= \transmitter_spw_so~output_o\;

ww_receiver_spw_so <= \receiver_spw_so~output_o\;
END structure;


