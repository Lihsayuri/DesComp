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
-- Generated on "11/27/2022 16:01:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          projetoMIPS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY projetoMIPS_vhd_vec_tst IS
END projetoMIPS_vhd_vec_tst;
ARCHITECTURE projetoMIPS_arch OF projetoMIPS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL flagEqual : STD_LOGIC;
SIGNAL flagNotEqual : STD_LOGIC;
SIGNAL FPGA_RESET_N : STD_LOGIC;
SIGNAL Funct : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL habEscritaReg : STD_LOGIC;
SIGNAL habFlagBEQ : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL imediato_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Instru_opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL MEM_INN : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL MEM_OUTT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL muxJmp : STD_LOGIC;
SIGNAL operacao : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL PC_OUTT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Rd_End : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RD_OUTT_MUX : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Rs_End : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RS_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Rt_End : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RT_OUTT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL ULA_MEM_Select : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ULAA_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT projetoMIPS
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	flagEqual : OUT STD_LOGIC;
	flagNotEqual : OUT STD_LOGIC;
	FPGA_RESET_N : IN STD_LOGIC;
	Funct : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	habEscritaReg : OUT STD_LOGIC;
	habFlagBEQ : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	imediato_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Instru_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	MEM_INN : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	MEM_OUTT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	muxJmp : OUT STD_LOGIC;
	operacao : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	PC_OUTT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Rd_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RD_OUTT_MUX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Rs_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RS_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Rt_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RT_OUTT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	ULA_MEM_Select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ULAA_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : projetoMIPS
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	flagEqual => flagEqual,
	flagNotEqual => flagNotEqual,
	FPGA_RESET_N => FPGA_RESET_N,
	Funct => Funct,
	habEscritaReg => habEscritaReg,
	habFlagBEQ => habFlagBEQ,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	imediato_OUT => imediato_OUT,
	Instru_opcode => Instru_opcode,
	KEY => KEY,
	LEDR => LEDR,
	MEM_INN => MEM_INN,
	MEM_OUTT => MEM_OUTT,
	muxJmp => muxJmp,
	operacao => operacao,
	PC_OUTT => PC_OUTT,
	Rd_End => Rd_End,
	RD_OUTT_MUX => RD_OUTT_MUX,
	Rs_End => Rs_End,
	RS_OUT => RS_OUT,
	Rt_End => Rt_End,
	RT_OUTT => RT_OUTT,
	SW => SW,
	ULA_MEM_Select => ULA_MEM_Select,
	ULAA_OUT => ULAA_OUT
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 20000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END projetoMIPS_arch;
