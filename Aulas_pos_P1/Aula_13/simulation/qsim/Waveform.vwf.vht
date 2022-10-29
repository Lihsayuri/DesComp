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
-- Generated on "10/29/2022 10:03:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          aula13
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY aula13_vhd_vec_tst IS
END aula13_vhd_vec_tst;
ARCHITECTURE aula13_arch OF aula13_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL Ctrl_write : STD_LOGIC;
SIGNAL Funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Instru_opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Rd_End : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Rs_End : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RS_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Rt_End : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RT_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Sel_ULA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ULAA_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT aula13
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	Ctrl_write : IN STD_LOGIC;
	Funct : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Instru_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Rd_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Rs_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RS_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Rt_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RT_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Sel_ULA : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ULAA_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : aula13
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	Ctrl_write => Ctrl_write,
	Funct => Funct,
	Instru_opcode => Instru_opcode,
	PC_OUT => PC_OUT,
	Rd_End => Rd_End,
	Rs_End => Rs_End,
	RS_OUT => RS_OUT,
	Rt_End => Rt_End,
	RT_OUT => RT_OUT,
	Sel_ULA => Sel_ULA,
	ULAA_OUT => ULAA_OUT
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 5
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 20000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- Ctrl_write
t_prcs_Ctrl_write: PROCESS
BEGIN
	Ctrl_write <= '1';
	WAIT FOR 160000 ps;
	Ctrl_write <= '0';
WAIT;
END PROCESS t_prcs_Ctrl_write;
-- Sel_ULA[1]
t_prcs_Sel_ULA_1: PROCESS
BEGIN
	Sel_ULA(1) <= '0';
WAIT;
END PROCESS t_prcs_Sel_ULA_1;
-- Sel_ULA[0]
t_prcs_Sel_ULA_0: PROCESS
BEGIN
	Sel_ULA(0) <= '1';
	WAIT FOR 40000 ps;
	Sel_ULA(0) <= '0';
	WAIT FOR 40000 ps;
	Sel_ULA(0) <= '1';
	WAIT FOR 40000 ps;
	Sel_ULA(0) <= '0';
WAIT;
END PROCESS t_prcs_Sel_ULA_0;
END aula13_arch;
