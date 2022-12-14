-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "10/09/2022 16:41:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula7
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula7_vhd_vec_tst IS
END Aula7_vhd_vec_tst;
ARCHITECTURE Aula7_arch OF Aula7_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADD_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL EQUAL_FLAG : STD_LOGIC;
SIGNAL HabilitaRAM : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL MEM_ADDRESS : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Palavra : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL REGA_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Aula7
	PORT (
	ADD_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	EQUAL_FLAG : BUFFER STD_LOGIC;
	HabilitaRAM : BUFFER STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	MEM_ADDRESS : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	Palavra : BUFFER STD_LOGIC_VECTOR(11 DOWNTO 0);
	PC_OUT : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	REGA_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula7
	PORT MAP (
-- list connections between master ports and signals
	ADD_OUT => ADD_OUT,
	CLOCK_50 => CLOCK_50,
	EQUAL_FLAG => EQUAL_FLAG,
	HabilitaRAM => HabilitaRAM,
	KEY => KEY,
	LEDR => LEDR,
	MEM_ADDRESS => MEM_ADDRESS,
	Palavra => Palavra,
	PC_OUT => PC_OUT,
	REGA_OUT => REGA_OUT
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		KEY(0) <= '0';
		WAIT FOR 20000 ps;
		KEY(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END Aula7_arch;
