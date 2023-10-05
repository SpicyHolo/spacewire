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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/04/2023 14:45:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sw
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sw_vhd_vec_tst IS
END sw_vhd_vec_tst;
ARCHITECTURE sw_arch OF sw_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL linkstart : STD_LOGIC;
SIGNAL receiver_spw_do : STD_LOGIC;
SIGNAL receiver_spw_so : STD_LOGIC;
SIGNAL transmitter_spw_do : STD_LOGIC;
SIGNAL transmitter_spw_so : STD_LOGIC;
COMPONENT sw
	PORT (
	clk : IN STD_LOGIC;
	linkstart : IN STD_LOGIC;
	receiver_spw_do : OUT STD_LOGIC;
	receiver_spw_so : OUT STD_LOGIC;
	transmitter_spw_do : OUT STD_LOGIC;
	transmitter_spw_so : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sw
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	linkstart => linkstart,
	receiver_spw_do => receiver_spw_do,
	receiver_spw_so => receiver_spw_so,
	transmitter_spw_do => transmitter_spw_do,
	transmitter_spw_so => transmitter_spw_so
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- linkstart
t_prcs_linkstart: PROCESS
BEGIN
	linkstart <= '1';
WAIT;
END PROCESS t_prcs_linkstart;
END sw_arch;
